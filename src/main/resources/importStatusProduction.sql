-- INSERÇÃO NA TB_PRODUCER (mantidos dois primeiros inserts)
INSERT INTO TB_PRODUCER (TIPO_STATUS_PRODUCTION, ID, CNPJ, COMMENTS, CPF_PRODUCER, EMAIL, NAME_PRODUCER, SOCIAL_REASON)
VALUES (1, 1, '12345678000100', 'Comentário 1', '12345678900', 'email1@example.com', 'Produtor 1', 1);

INSERT INTO TB_PRODUCER (TIPO_STATUS_PRODUCTION, ID, CNPJ, COMMENTS, CPF_PRODUCER, EMAIL, NAME_PRODUCER, SOCIAL_REASON)
VALUES (1, 2, '12345678000101', 'Comentário 2', '12345678901', 'email2@example.com', 'Produtor 2', 1);


-- INSERÇÃO NA TB_TECHNOLOGY (8 tecnologias ativas)
INSERT INTO TB_TECHNOLOGY (ID, NAME, OBSERVATION, ACTIVE_ITEM)
VALUES (1, 'Tecnologia A', 'Observação A', true);

INSERT INTO TB_TECHNOLOGY (ID, NAME, OBSERVATION, ACTIVE_ITEM)
VALUES (2, 'Tecnologia B', 'Observação B', true);

INSERT INTO TB_TECHNOLOGY (ID, NAME, OBSERVATION, ACTIVE_ITEM)
VALUES (3, 'Tecnologia C', 'Observação C', true);

INSERT INTO TB_TECHNOLOGY (ID, NAME, OBSERVATION, ACTIVE_ITEM)
VALUES (4, 'Tecnologia D', NULL, true);

INSERT INTO TB_TECHNOLOGY (ID, NAME, OBSERVATION, ACTIVE_ITEM)
VALUES (5, 'Tecnologia E', 'Observação E', true);

INSERT INTO TB_TECHNOLOGY (ID, NAME, OBSERVATION, ACTIVE_ITEM)
VALUES (6, 'Tecnologia F', NULL, true);

INSERT INTO TB_TECHNOLOGY (ID, NAME, OBSERVATION, ACTIVE_ITEM)
VALUES (7, 'Tecnologia G', 'Observação G', true);

INSERT INTO TB_TECHNOLOGY (ID, NAME, OBSERVATION, ACTIVE_ITEM)
VALUES (8, 'Tecnologia H', NULL, true);

-- Inserções na tabela TB_TRANSFER

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-01-02', '2023-01-02', 1, 2, 1, 2);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-01-05', '2023-01-05', 1, 5, 1, 1);
INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-01-06', '2023-01-06', 2, 6, 1, 2);
INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-01-07', '2023-01-07', 0, 7, 1, 3);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-01-09', '2023-01-09', 2, 9, 1, 1);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-01-14', '2023-01-14', 1, 14, 1, 2);
INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-01-15', '2023-01-15', 2, 15, 1, 3);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-01-19', '2023-01-19', 0, 19, 1, 3);
INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-01-20', '2023-01-20', 1, 20, 1, 4);
INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-01-21', '2023-01-21', 2, 21, 1, 1);
INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-01-22', '2023-01-22', 0, 22, 1, 2);
INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-01-23', '2023-01-23', 1, 23, 1, 3);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-01-31', '2023-01-31', 0, 31, 1, 3);
INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-02-01', '2023-02-01', 1, 32, 1, 4);
INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-02-02', '2023-02-02', 2, 33, 1, 1);
INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-02-03', '2023-02-03', 0, 34, 1, 2);
INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-02-04', '2023-02-04', 1, 35, 1, 3);
INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-02-05', '2023-02-05', 2, 36, 1, 4);
INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-02-06', '2023-02-06', 0, 37, 1, 1);
INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-02-07', '2023-02-07', 1, 38, 1, 2);
INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-02-08', '2023-02-08', 2, 39, 1, 3);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-02-10', '2023-02-10', 1, 41, 1, 1);
INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-02-13', '2023-02-13', 1, 44, 1, 4);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-02-15', '2023-02-15', 0, 46, 1, 2);
INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-02-16', '2023-02-16', 1, 47, 1, 3);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-02-18', '2023-02-18', 0, 49, 1, 1);
INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID) VALUES ('2023-02-19', '2023-02-19', 1, 50, 1, 2);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-02-19', '2023-02-19', 0, 50, 1, 4);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-02-20', '2023-02-20', 1, 51, 1, 5);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-02-21', '2023-02-21', 2, 52, 1, 6);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-02-22', '2023-02-22', 3, 53, 1, 7);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-02-23', '2023-02-23', 0, 54, 1, 8);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-02-24', '2023-02-24', 1, 55, 1, 9);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-02-25', '2023-02-25', 2, 56, 1, 10);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-02-26', '2023-02-26', 3, 57, 1, 11);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-02-27', '2023-02-27', 0, 58, 1, 12);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-02-28', '2023-02-28', 1, 59, 1, 13);


INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-03-16', '2023-03-16', 1, 77, 1, 31);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-03-17', '2023-03-17', 2, 78, 1, 32);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-03-18', '2023-03-18', 3, 79, 1, 33);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-03-19', '2023-03-19', 0, 80, 1, 34);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-03-20', '2023-03-20', 1, 81, 1, 35);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-03-21', '2023-03-21', 2, 82, 1, 36);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-03-22', '2023-03-22', 3, 83, 1, 37);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-03-23', '2023-03-23', 0, 84, 1, 38);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-03-24', '2023-03-24', 1, 85, 1, 39);


INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-03-28', '2023-03-28', 1, 89, 1, 43);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-03-29', '2023-03-29', 2, 90, 1, 44);

-- E aqui estão os próximos 10



INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-04-04', '2023-04-04', 0, 96, 1, 50);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-04-05', '2023-04-05', 1, 97, 1, 51);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-04-06', '2023-04-06', 2, 98, 1, 52);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-04-07', '2023-04-07', 3, 99, 1, 53);

INSERT INTO TB_TRANSFER (COMPLETION_DATE, START_DATE, TIPO_STATUS_PRODUCTION, ID, PRODUCER_ID, TECHNOLOGY_ID)
VALUES ('2023-04-08', '2023-04-08', 0, 100, 1, 54);