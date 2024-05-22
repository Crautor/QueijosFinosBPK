    package com.example.demo.controller;

    import java.io.IOException;
    import java.nio.file.Files;
    import java.nio.file.Path;
    import java.nio.file.Paths;
    import java.util.List;

    import com.example.demo.service.ProducerService;
    import org.apache.commons.lang3.time.DateUtils;
    import org.slf4j.Logger;
    import org.slf4j.LoggerFactory;
    import org.springframework.beans.factory.annotation.Autowired;
    import org.springframework.dao.DataIntegrityViolationException;
    import org.springframework.format.annotation.DateTimeFormat;
    import org.springframework.http.ResponseEntity;
    import org.springframework.web.bind.annotation.DeleteMapping;
    import org.springframework.web.bind.annotation.GetMapping;
    import org.springframework.web.bind.annotation.ModelAttribute;
    import org.springframework.web.bind.annotation.PathVariable;
    import org.springframework.web.bind.annotation.PostMapping;
    import org.springframework.web.bind.annotation.RequestParam;
    import org.springframework.web.bind.annotation.RestController;
    import org.springframework.web.multipart.MultipartFile;
    import org.springframework.web.servlet.ModelAndView;
    import org.springframework.web.servlet.mvc.support.RedirectAttributes;
    import org.springframework.web.servlet.view.RedirectView;
    import java.sql.Date;

    import com.example.demo.entity.Document;
    import com.example.demo.service.DocumentService;

    @RestController
    public class DocumentController {

        private static final Logger logger = LoggerFactory.getLogger(DocumentController.class);
        private static final String UPLOAD_DIR = "uploads/";

        @Autowired
        private DocumentService documentService;

        @Autowired
        private ProducerService producerService;

        @GetMapping("/documents/{producerId}")
        public ModelAndView iniciarTela(@PathVariable Long producerId) {
            ModelAndView modelAndView = new ModelAndView("documents");
            modelAndView.addObject("documents", producerService.getListDocuments(producerId));
            return modelAndView;
        }



        @PostMapping("/Documentos/cadastrar")
        public RedirectView createDocument(@RequestParam("category") String category,
                                           @RequestParam("file") MultipartFile file,
                                           @RequestParam("title") String title,
                                           @RequestParam("date")
                                           @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) java.util.Date date,
                                           @RequestParam("dateSystem")
                                           @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) java.util.Date dateSystem,
                                           RedirectAttributes attributes) {
            Document document = new Document();
            document.setCategory(category);
            document.setTitle(title);

            // Log the received dates
            logger.info("Received date: {}", date);
            logger.info("Received dateSystem: {}", dateSystem);

            // Convert java.util.Date to java.sql.Date and set the dates
            if (date != null) {
                document.setDate(new Date(date.getTime()));
            } else {
                logger.warn("Date is null");
                attributes.addFlashAttribute("mensagem", "A data não pode estar vazia");
                return new RedirectView("/Documentos");
            }

            if (dateSystem != null) {
                document.setDateSystem(new Date(dateSystem.getTime()));
            } else {
                logger.warn("DateSystem is null");
                attributes.addFlashAttribute("mensagem", "A data do sistema não pode estar vazia");
                return new RedirectView("/Documentos");
            }

            try {
                String fileName = saveUploadedFile(file);
                document.setFile(fileName);

                logger.info("Saving document: {}", document);
                documentService.createDocument(document);

                attributes.addFlashAttribute("mensagem", "Documento adicionado com sucesso");
            } catch (DataIntegrityViolationException e) {
                logger.error("Data integrity violation: ", e);
                attributes.addFlashAttribute("mensagem", "Erro ao adicionar o documento: " + e.getMessage());
            } catch (IOException e) {
                logger.error("IO exception while saving file: ", e);
                attributes.addFlashAttribute("mensagem", "Erro ao salvar o arquivo: " + e.getMessage());
            } catch (Exception e) {
                logger.error("Unexpected error: ", e);
                attributes.addFlashAttribute("mensagem", "Erro inesperado: " + e.getMessage());
            }

            return new RedirectView("/Documentos");
        }

        @DeleteMapping("/Documentos/{documentId}")
        public ResponseEntity<Void> deleteDocument(@PathVariable Long documentId) {
            try {
                documentService.deleteDocument(documentId);
                return ResponseEntity.ok().build();
            } catch (Exception e) {
                logger.error("Error deleting document: ", e);
                return ResponseEntity.status(500).build();
            }
        }

        private String saveUploadedFile(MultipartFile file) throws IOException {
            if (file.isEmpty()) {
                throw new IOException("Arquivo vazio.");
            }

            // Cria o diretório de upload se não existir
            Path uploadPath = Paths.get(UPLOAD_DIR);
            if (!Files.exists(uploadPath)) {
                Files.createDirectories(uploadPath);
            }

            String fileName = file.getOriginalFilename();
            Path filePath = uploadPath.resolve(fileName);

            // Verifica se o arquivo já existe e renomeia se necessário
            filePath = resolveFileNameConflict(filePath);

            Files.copy(file.getInputStream(), filePath);

            logger.info("Saved file: {}", filePath);

            return filePath.getFileName().toString();
        }

        private Path resolveFileNameConflict(Path filePath) throws IOException {
            if (!Files.exists(filePath)) {
                return filePath;
            }

            String fileName = filePath.getFileName().toString();
            String name = fileName;
            String extension = "";
            int dotIndex = fileName.lastIndexOf('.');
            if (dotIndex > 0) {
                name = fileName.substring(0, dotIndex);
                extension = fileName.substring(dotIndex);
            }

            int count = 1;
            while (Files.exists(filePath)) {
                fileName = name + " (" + count + ")" + extension;
                filePath = filePath.getParent().resolve(fileName);
                count++;
            }

            return filePath;
        }

    }
