INSERT INTO `centro_treinos`.`Modalidades` (`cod_modalidade`, `descrição`) VALUES 
(1, 'Futebol'), 
(2, 'Voleibol'),
(3, 'Basquetebol'), 
(4, 'Natação'), 
(5, 'Atletismo');


INSERT INTO `centro_treinos`.`Funcionários` (`nome`, `dta_inicio_serv`, `dta_fim_serv`) VALUES 
('Rita Costa', '2023-01-01', null), 
('Rita Silva', '2022-06-15', null),
('Ana Oliveira', '2023-03-10', null), 
('Pedro Santos', '2023-04-05', null), 
('Marta Sousa', '2023-05-20', '2024-01-20'), 
('Paulo Ferreira', '2023-07-15', null), 
('Sofia Pereira', '2023-08-30', null), 
('Carlos Almeida', '2023-09-25', '2024-01-20'), 
('Mariana Martins', '2023-10-10', null), 
('José Rodrigues', '2023-11-05', null), 
('Inês Gomes', '2023-12-20', null), 
('Luís Silva', '2021-01-15', null), 
('Carolina Fernandes', '2021-02-10', '2024-02-02'), 
('Ricardo Oliveira', '2021-03-05', null), 
('Andreia Santos', '2021-04-20', null), 
('Hugo Sousa', '2021-05-15', null), 
('Joana Ferreira', '2020-06-10', null), 
('Tiago Pereira', '2020-07-05', null), 
('Catarina Almeida', '2020-08-20', null), 
('Francisco Martins', '2020-09-15', null), 
('Diana Rodrigues', '2020-10-10', null), 
('Gonçalo Gomes', '2021-11-05', null);


INSERT INTO `centro_treinos`.`Treinadores` (`cod_modalidade`, `idTreinador`, `id_tutor`, `grau`) VALUES 
(1, 1, null, 'PhD'), 
(2, 2, null, 'PhD'),
(3, 3, null, 'PhD'),
(4, 4, null, 'PhD'),
(5, 14, null, 'PhD'),
(1, 6, null, '	MA'),
(1, 7, null, 'BA'),
(2, 15, 2, 'BA'),
(2, 9, 2, 'BA'),
(3, 10, 3, 'MA'),
(4, 11, 4, 'MA');

INSERT INTO `centro_treinos`.`Email_funcionarios` (`email`, `idFuncionário`) VALUES 
('ana@example.com', 3), 
('pedro@example.com', 4), 
('marta@example.com', 5), 
('paulo@example.com', 6), 
('sofia@example.com', 7), 
('carlos@example.com', 8), 
('mariana@example.com', 9), 
('josé@example.com', 10), 
('inês@example.com', 11), 
('luís@example.com', 12), 
('carolina@example.com', 13), 
('ricardo@example.com', 14), 
('andreia@example.com', 15), 
('hugo@example.com', 16), 
('joana@example.com', 17), 
('tiago@example.com', 18), 
('catarina@example.com', 19), 
('francisco@example.com', 20), 
('diana@example.com', 21), 
('gonçalo@example.com', 22);

INSERT INTO `centro_treinos`.`Telefone_funcionarios` (`telefone`, `idFuncionário`) VALUES 
('911511121', 1),
('911111121', 2), 
('911111111', 3), 
('922222222', 4), 
('933333333', 5), 
('966666666', 6), 
('911111112', 7), 
('922222223', 8), 
('933333334', 9), 
('966666667', 10), 
('911111113', 11), 
('922222224', 12), 
('933333335', 13), 
('966666668', 14), 
('911111114', 15), 
('922222225', 16), 
('933333336', 17), 
('966666669', 18), 
('911111115', 19), 
('922222226', 20), 
('933333337', 21), 
('966666670', 22);

INSERT INTO `centro_treinos`.`Exercícios` (`id_exercício`, `descrição`, `nome`) VALUES 
(13, 'Treino de Pernas - Leg Press', 'Leg Press'), 
(14, 'Treino de Pernas - Lunges', 'Lunges'), 
(15, 'Treino de Pernas - Agachamento Sumô', 'Agachamento Sumo'), 
(16, 'Treino de Braços - Rosca Direta', 'Rosca Direta'), 
(17, 'Treino de Braços - Tríceps Pulldown', 'Tríceps Pulldown'), 
(18, 'Treino de Braços - Flexões de Braço', 'Flexões de Braço'), 
(19, 'Treino de Abdominais - Prancha', 'Prancha'), 
(20, 'Treino de Abdominais - Crunches', 'Crunches'), 
(21, 'Treino de Abdominais - Russian Twists', 'Russian Twists'), 
(22, 'Treino de Costas - Pull-ups', 'Pull-ups'), 
(23, 'Treino de Costas - Remada', 'Remada'), 
(24, 'Treino de Costas - Deadlift', 'Deadlift');

INSERT INTO `centro_treinos`.`Equipamentos` ( `nome`, `dta_aquisição`, `codição`) VALUES 
('Máquina de Remo', '2021-08-15', 'usado'), 
('Bola de Medicina', '2021-09-20', 'novo'), 
('Corda de Pular', '2021-10-10', 'novo'), 
('Barra de Peso', '2021-11-25', 'usado'), 
('Kettlebell', '2021-12-30', 'novo'), 
('Plataforma de Salto', '2022-01-05', 'usado'), 
('Banda de Resistência', '2022-02-15', 'novo'), 
('Escada de Agilidade', '2022-03-20', 'usado'), 
('Roda Abdominal', '2022-04-10', 'novo'), 
('Banco de Musculação', '2022-05-15', 'usado'),
('Bola de Futebol', '2022-06-15', 'novo'), 
('Rede de Volei', '2022-07-20', 'usado'), 
('Raquete de Ténis', '2022-08-10', 'novo'), 
('Luvas de Boxe', '2022-09-25', 'usado'), 
('Taco de Baseball', '2022-11-05', 'usado'), 
('Raquete de Badminton', '2022-12-15', 'novo');

INSERT INTO `centro_treinos`.`Espaços` (`id_espaço`, `tipo`, `nome`) VALUES 
(1, 'Interior', 'Consultório 1'),
(2, 'Interior', 'Consultório 2'),
(3, 'Exterior', 'Campo de Futebol 2'),
(4, 'Exterior', 'Campo de Futebol 3'),
(5, 'Interior', 'Pavilhão 1'),
(6, 'Interior', 'Pavilhão 2'),
(7, 'Exterior', 'Piscina'),
(8, 'Interior', 'Piscina'),
(9, 'Interior', 'Sala de Cardio');

INSERT INTO `centro_treinos`.`Atletas` (`data_nascimento`, `NIF`, `estado_civil`, `rua`, `porta`, `código_postal`, `nome`) VALUES 
('1990-04-15', '111222333', 'Solteiro', 'Rua das Flores', '10', '1234-567', 'Ana Silva'),
('1992-07-25', '444555666', 'Casado', 'Avenida Central', '20', '2345-678', 'Pedro Santos'),
('1988-10-05', '777888999', 'Solteiro', 'Rua da Liberdade', '30', '3456-789', 'Marta Ferreira'),
('1995-03-12', '101112131', 'Solteiro', 'Rua do Sol', '40', '4567-890', 'Rui Oliveira'),
('1993-08-20', '141516171', 'Casado', 'Rua dos Pinheiros', '50', '5678-901', 'Carla Martins'),
('1991-11-30', '181920212', 'Solteiro', 'Rua das Oliveiras', '60', '6789-012', 'Diogo Costa'),
('1994-06-08', '222324252', 'Casado', 'Avenida da Praia', '70', '7890-123', 'Sofia Rodrigues'),
('1989-09-16', '262728293', 'Solteiro', 'Rua dos Cedros', '80', '8901-234', 'Ricardo Pereira'),
('1997-02-04', '303132333', 'Solteiro', 'Avenida das Palmeiras', '90', '9012-345', 'Inês Oliveira'),
('1996-05-22', '343536373', 'Casado', 'Rua das Laranjeiras', '100', '0123-456', 'Hugo Ferreira'),
('1998-12-18', '383940414', 'Solteiro', 'Avenida dos Girassóis', '110', '2345-678', 'Catarina Santos'),
('1990-07-10', '424344454', 'Casado', 'Rua das Violetas', '120', '3456-789', 'André Silva'),
('1992-04-05', '464748495', 'Solteiro', 'Avenida dos Louros', '130', '4567-890', 'Beatriz Martins'),
('1987-09-29', '505152535', 'Solteiro', 'Rua das Rosas', '140', '5678-901', 'Paulo Rodrigues'),
('1991-11-03', '545556575', 'Casado', 'Avenida das Acácias', '150', '6789-012', 'Sara Pereira'),
('1994-02-17', '585960616', 'Solteiro', 'Rua das Hortênsias', '160', '7890-123', 'Miguel Oliveira'),
('1993-05-14', '626364656', 'Solteiro', 'Avenida dos Cravos', '170', '8901-234', 'Joana Fernandes'),
('1996-08-08', '666768697', 'Casado', 'Rua dos Narcisos', '180', '9012-345', 'David Costa'),
('1999-01-21', '707172737', 'Solteiro', 'Avenida dos Jasmim', '190', '0123-456', 'Carolina Sousa'),
('1988-04-30', '747576777', 'Casado', 'Rua dos Jasmins', '200', '2345-678', 'Bruno Silva'),
('1997-07-24', '787980818', 'Solteiro', 'Avenida das Orquídeas', '210', '3456-789', 'Inês Rodrigues'),
('1992-10-12', '828384858', 'Casado', 'Rua dos Crisântemos', '220', '4567-890', 'Rúben Fernandes'),
('1995-03-06', '868788899', 'Solteiro', 'Avenida das Tulipas', '230', '5678-901', 'Mariana Costa'),
('1990-06-27', '909192939', 'Solteiro', 'Rua das Begónias', '240', '6789-012', 'Daniel Santos'),
('1998-09-15', '949596979', 'Casado', 'Avenida das Magnólias', '250', '7890-123', 'Laura Oliveira'),
('1991-12-02', '979899100', 'Solteiro', 'Rua das Camélias', '260', '8901-234', 'José Silva'),
('1994-02-28', '101102103', 'Solteiro', 'Avenida das Dálias', '270', '9012-345', 'Ana Pereira'),
('1996-05-18', '104105106', 'Casado', 'Rua das Hortênsias', '280', '0123-456', 'Luís Martins');


INSERT INTO `centro_treinos`.`Telefone_atletas` (`telefone`, `idAtleta`) VALUES 
('911111111', 1),
('922222222', 2),
('933333333', 3),
('924444444', 4),
('925555555', 5),
('936666666', 6),
('937777777', 7),
('938888888', 8),
('919999999', 9),
('911010101', 10),
('912111111', 11),
('913212121', 12),
('914313131', 13),
('915414141', 14),
('916515151', 15),
('917616161', 16),
('918717171', 17),
('919818181', 18),
('919919191', 19),
('920020202', 20),
('921121212', 21),
('922222222', 22),
('923323232', 23),
('924424242', 24),
('925525252', 25),
('926626262', 26),
('927727272', 27),
('928828282', 28);


INSERT INTO `centro_treinos`.`Treinos` (`dta_hora_realização`, `dta_hora_agendamento`, `id_espaço`, `idAtleta`, `idTreinador`) VALUES 
('2024-02-10 09:05:00', '2024-02-10 09:09:00', 3, 1, 1),
('2024-03-15 15:35:00', '2024-03-15 15:40:00', 5, 2, 2),
('2024-03-20 11:10:00', '2024-03-20 11:15:00', 8, 3, 4),
('2024-03-25 10:50:00', '2024-03-25 10:55:00', 7, 4, 11),
('2024-01-05 16:35:00', '2024-01-05 16:40:00', 6, 7, 3);

INSERT INTO `centro_treinos`.`Planos` (`intensidade`, `descanso`, `descrição`, `duração`, `id_exercício`, `treino`) VALUES 
(3, 5, 'Plano especifico para X', 60, 13, 1), 
(2, 10, 'Plano geral para X', 45, 14, 2),
(5, 3, 'Plano especifico para X', 30, 15, 3), 
(3, 4, 'Plano geral para X', 20, 16, 4),
(7, 10, 'Plano especifico para X', 60, 17, 5), 
(8, 15, 'Plano especico para y', 45, 18, 2),
(10, 10, 'Plano especifico para X', 45, 19, 3);


INSERT INTO `centro_treinos`.`Requisições` (`nr_treino`, `id_equipamento`) VALUES 
(1, 1), 
(2, 2),
(3, 3),
(4, 4),
(4, 5);

INSERT INTO `centro_treinos`.`Procedimentos` (`idProcedimento`, `localização_anatómica`, `desc_procedimento`) VALUES  
(1, 'Lombar', 'Ozonoterapia'),
(2, 'Pernas', 'Massagem terapeutica'),
(3, 'Abdômen', 'Avaliação postural'),
(4, 'Região lombar', 'Manipulação osteopática'),
(5, 'Pescoço', 'Alongamento muscular');

INSERT INTO `centro_treinos`.`Especialidades` (`idEspecialidade`, `descricao`) 
VALUES 
    (1, 'Fisioterapia'),
    (2, 'Nutrição'),
    (3, 'Psicologia'),
    (4, 'Ortopedia'),
    (5, 'Cardiologia');
    
INSERT INTO `centro_treinos`.`Profissionais_saude` (`idProfissionalSaude`, `idEspecialidade`, `estado_licença`) 
VALUES 
(16, 1, 'Suspensa'), 
(17, 2, 'Ativo'),
(18, 3, 'Ativo'), 
(19, 4, 'Ativo'), 
(20, 5, 'Ativo'),
(21, 1, 'Ativo'),
(22, 1, 'Ativo');

INSERT INTO `centro_treinos`.`Consultas` (`Atleta_idAtleta`, `nr_episodio`, `idEspaço`, `idProfissinaldeSaude`, `idProcedimento`, `Inicio`, `Fim`) VALUES 
(1, 123, 1 ,21, null, '2024-01-21 08:00:00', '2023-01-21 08:30:00'), 
(2, 124, 2, 22, 2, '2024-03-26 09:00:00', '2024-03-26 09:15:00'),
(4, 126, 2, 17, null, '2024-03-26 09:00:00', '2024-03-26 09:15:00'),
(5, 127, 1, 19, null, '2024-03-26 09:00:00', '2024-03-26 09:15:00'),
(6, 128, 2, 20, null, '2024-03-26 09:00:00', '2024-03-26 09:15:00');

INSERT INTO `centro_treinos`.`Exames` (`cod_exame`, `tipo`, `desc_exame`, `preço`) 
VALUES 
    (1, 'Ressonância Magnética', 'Exame de imagem para diagnóstico de lesões musculares e articulares', 150.00),
    (2, 'Eletrocardiograma', 'Exame para avaliar a atividade elétrica do coração', 80.00),
    (3, 'Teste Ergoespirométrico', 'Exame de esforço físico para avaliar capacidade cardiopulmonar', 120.00),
    (4, 'Densitometria Óssea', 'Exame para avaliar a densidade mineral dos ossos', 100.00),
    (5, 'Ultrassonografia Muscular', 'Exame de imagem para avaliar a estrutura e função dos músculos', 90.00);

INSERT INTO `centro_treinos`.`Resultados` (`id_relatorio`, `versao`, `relatorio`, `data_relatorio`) VALUES 
(1, 1, 'Exame sem alterações', '2024-01-22 10:00:00'), 
(2, 1, 'Exame sem alterações significativas', '2024-03-27 11:30:00'),
(3, 1, 'Com alterações', '2024-03-27 11:20:00'),
(4, 1, 'Com alterações', '2024-03-27 10:20:00'),
(5, 1, 'Com alterações', '2024-03-27 09:20:00');

INSERT INTO `centro_treinos`.`Agendamentos` (`nr_episodio`, `id_relatorio`, `cod_exame`, `prioridade`) VALUES 
(123, 1, 1, 'normal'), 
(124, 2, 2, 'urgente'),
(128, 3, 3, 'emergente'),
(126, 4, 4, 'normal'),
(127, 5, 4, 'normal');

INSERT INTO `centro_treinos`.`Telefone_atletas` (`telefone`, `idAtleta`) VALUES 
('911611111', 1),
('922322222', 2),
('913433333', 3),
('914344444', 4),
('915355555', 5),
('916664666', 6),
('977774777', 7),
('918887888', 8),
('919947999', 9),
('911048101', 10),
('912166111', 11),
('913215121', 12),
('914343131', 13),
('915415141', 14),
('916545151', 15),
('917646161', 16),
('918747171', 17),
('919848181', 18),
('919949191', 19),
('920040202', 20),
('921141212', 21),
('922242222', 22),
('923345232', 23),
('924426242', 24),
('925555252', 25),
('926626562', 26),
('927727572', 27),
('928828182', 28);

