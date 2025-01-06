

-- -----------------------------------------------------
-- Schema centro_treinos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `centro_treinos` DEFAULT CHARACTER SET utf8 ;
USE `centro_treinos` ;

-- -----------------------------------------------------
-- Table `centro_treinos`.`Modalidades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_treinos`.`Modalidades` (
  `cod_modalidade` INT NOT NULL,
  `descrição` VARCHAR(45) NULL,
  PRIMARY KEY (`cod_modalidade`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `centro_treinos`.`Funcionários`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_treinos`.`Funcionários` (
  `idFuncionário` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `dta_inicio_serv` DATE NULL,
  `dta_fim_serv` VARCHAR(45) NULL,
  CONSTRAINT check_dates check (dta_inicio_serv < dta_fim_serv),
  PRIMARY KEY (`idFuncionário`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_treinos`.`Treinadores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_treinos`.`Treinadores` (
  `cod_modalidade` INT NOT NULL,
  `idTreinador` INT NOT NULL,
  `id_tutor` INT,
  `grau` VARCHAR(45) NULL,
  PRIMARY KEY (`idTreinador`),
  INDEX `fk_Treinador_Modalidade_idx` (`cod_modalidade` ASC) VISIBLE,
  INDEX `fk_Treinador_Funcionário1_idx` (`idTreinador` ASC) VISIBLE,
  INDEX `fk_Treinador_Treinador1_idx` (`id_tutor` ASC) VISIBLE,
  CONSTRAINT `fk_Treinador_Modalidade`
    FOREIGN KEY (`cod_modalidade`)
    REFERENCES `centro_treinos`.`Modalidades` (`cod_modalidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Treinador_Funcionário1`
    FOREIGN KEY (`idTreinador`)
    REFERENCES `centro_treinos`.`Funcionários` (`idFuncionário`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Treinador_Treinador1`
    FOREIGN KEY (`id_tutor`)
    REFERENCES `centro_treinos`.`Treinadores` (`idTreinador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_treinos`.`Telefone_funcionarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_treinos`.`Telefone_funcionarios` (
  `telefone` INT NOT NULL,
  `idFuncionário` INT NOT NULL,
  PRIMARY KEY (`telefone`, `idFuncionário`),
  INDEX `fk_Telefone_Funcionario_Funcionário1_idx` (`idFuncionário` ASC) VISIBLE,
  CONSTRAINT `fk_Telefone_Funcionario_Funcionário1`
    FOREIGN KEY (`idFuncionário`)
    REFERENCES `centro_treinos`.`Funcionários` (`idFuncionário`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_treinos`.`Email_funcionarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_treinos`.`Email_funcionarios` (
  `email` VARCHAR(100) NOT NULL,
  `idFuncionário` INT NOT NULL,
  PRIMARY KEY (`email`, `idFuncionário`),
  INDEX `fk_Email_Funcionario_Funcionário1_idx` (`idFuncionário` ASC) VISIBLE,
  CONSTRAINT `fk_Email_Funcionario_Funcionário1`
    FOREIGN KEY (`idFuncionário`)
    REFERENCES `centro_treinos`.`Funcionários` (`idFuncionário`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_treinos`.`Exercícios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_treinos`.`Exercícios` (
  `id_exercício` INT NOT NULL,
  `descrição` VARCHAR(45) NULL,
  `nome` VARCHAR(45) NULL,
  PRIMARY KEY (`id_exercício`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_treinos`.`Equipamentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_treinos`.`Equipamentos` (
  `id_equipamento` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `dta_aquisição` DATE NOT NULL,
  `codição` ENUM('novo', 'usado') NULL DEFAULT 'novo',
  PRIMARY KEY (`id_equipamento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_treinos`.`Espaços`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_treinos`.`Espaços` (
  `id_espaço` INT NOT NULL,
  `tipo` VARCHAR(45) NULL,
  `nome` VARCHAR(45) NULL,
  PRIMARY KEY (`id_espaço`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_treinos`.`Atletas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_treinos`.`Atletas` (
  `idAtleta` INT NOT NULL AUTO_INCREMENT,
  `data_nascimento` DATE NOT NULL,
  `NIF` VARCHAR(45) NULL,
  `estado_civil` ENUM('Casado', 'Solteiro') NOT NULL DEFAULT 'Solteiro',
  `rua` VARCHAR(45) NULL,
  `porta` VARCHAR(10) NULL,
  `código_postal` VARCHAR(8) NULL,
  `nome` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idAtleta`),
  UNIQUE INDEX `NIF_UNIQUE` (`NIF` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_treinos`.`Treinos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_treinos`.`Treinos` (
  `nr_treino` INT NOT NULL AUTO_INCREMENT,
  `dta_hora_realização` DATETIME NULL,
  `dta_hora_agendamento` DATETIME NULL,
  `id_espaço` INT NOT NULL,
  `idAtleta` INT NOT NULL,
  `idTreinador` INT NOT NULL,
  PRIMARY KEY (`nr_treino`),
  INDEX `fk_Treino_Espaço1_idx` (`id_espaço` ASC) VISIBLE,
  INDEX `fk_Treino_Atleta1_idx` (`idAtleta` ASC) VISIBLE,
  INDEX `fk_Treino_Treinador1_idx` (`idTreinador` ASC) VISIBLE,
  CONSTRAINT `fk_Treino_Espaço1`
    FOREIGN KEY (`id_espaço`)
    REFERENCES `centro_treinos`.`Espaços` (`id_espaço`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Treino_Atleta1`
    FOREIGN KEY (`idAtleta`)
    REFERENCES `centro_treinos`.`Atletas` (`idAtleta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Treino_Treinador1`
    FOREIGN KEY (`idTreinador`)
    REFERENCES `centro_treinos`.`Treinadores` (`idTreinador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_treinos`.`Planos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_treinos`.`Planos` (
  `intensidade` INT NULL,
  `descanso` INT NULL,
  `descrição` VARCHAR(100) NOT NULL,
  `duração` INT NULL,
  `id_exercício` INT NOT NULL,
  `treino` INT NOT NULL,
  PRIMARY KEY (`id_exercício`, `treino`),
  INDEX `fk_Plano_Treino1_idx` (`treino` ASC) VISIBLE,
  CONSTRAINT `fk_Plano_Exercício1`
    FOREIGN KEY (`id_exercício`)
    REFERENCES `centro_treinos`.`Exercícios` (`id_exercício`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Plano_Treino1`
    FOREIGN KEY (`treino`)
    REFERENCES `centro_treinos`.`Treinos` (`nr_treino`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_treinos`.`Requisições`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_treinos`.`Requisições` (
  `nr_treino` INT NOT NULL,
  `id_equipamento` INT NOT NULL,
  PRIMARY KEY (`nr_treino`, `id_equipamento`),
  INDEX `fk_Treino_has_Equipamento_Equipamento1_idx` (`id_equipamento` ASC) VISIBLE,
  INDEX `fk_Treino_has_Equipamento_Treino1_idx` (`nr_treino` ASC) VISIBLE,
  CONSTRAINT `fk_Treino`
    FOREIGN KEY (`nr_treino`)
    REFERENCES `centro_treinos`.`Treinos` (`nr_treino`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Equipamento`
    FOREIGN KEY (`id_equipamento`)
    REFERENCES `centro_treinos`.`Equipamentos` (`id_equipamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_treinos`.`Procedimentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_treinos`.`Procedimentos` (
  `idProcedimento` INT NOT NULL,
  `localização_anatómica` VARCHAR(45) NULL,
  `desc_procedimento` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idProcedimento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_treinos`.`Especialidades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_treinos`.`Especialidades` (
  `idEspecialidade` INT NOT NULL,
  `descricao` VARCHAR(100) NULL,
  PRIMARY KEY (`idEspecialidade`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_treinos`.`Profissionais_saude`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_treinos`.`Profissionais_saude` (
  `idProfissionalSaude` INT NOT NULL,
  `idEspecialidade` INT NOT NULL,
  `estado_licença` VARCHAR(45) NULL,
  PRIMARY KEY (`idProfissionalSaude`),
  INDEX `fk_Profissional de saúde_Funcionário1_idx` (`idProfissionalSaude` ASC) VISIBLE,
  INDEX `fk_Profissional de saúde_Especialidade1_idx` (`idEspecialidade` ASC) VISIBLE,
  CONSTRAINT `fk_Profissional de saúde_Funcionário1`
    FOREIGN KEY (`idProfissionalSaude`)
    REFERENCES `centro_treinos`.`Funcionários` (`idFuncionário`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Profissional de saúde_Especialidade1`
    FOREIGN KEY (`idEspecialidade`)
    REFERENCES `centro_treinos`.`Especialidades` (`idEspecialidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_treinos`.`Consultas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_treinos`.`Consultas` (
  `Atleta_idAtleta` INT NOT NULL,
  `nr_episodio` INT NOT NULL,
  `idEspaço` INT NOT NULL,
  `idProfissinaldeSaude` INT NOT NULL,
  `idProcedimento` INT ,
  `Inicio` DATETIME NULL,
  `Fim` DATETIME NULL,
  PRIMARY KEY (`nr_episodio`),
  INDEX `fk_Profissional de saúde_has_Atleta_Atleta1_idx` (`Atleta_idAtleta` ASC) VISIBLE,
  INDEX `fk_Consulta_Espaço1_idx` (`idEspaço` ASC) VISIBLE,
  INDEX `fk_Consulta_Profissional de saúde1_idx` (`idProfissinaldeSaude` ASC) VISIBLE,
  INDEX `fk_Consulta_Procedimento1_idx` (`idProcedimento` ASC) VISIBLE,
  CONSTRAINT `fk_Profissional de saúde_has_Atleta_Atleta1`
    FOREIGN KEY (`Atleta_idAtleta`)
    REFERENCES `centro_treinos`.`Atletas` (`idAtleta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Consulta_Espaço1`
    FOREIGN KEY (`idEspaço`)
    REFERENCES `centro_treinos`.`Espaços` (`id_espaço`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Consulta_Profissional de saúde1`
    FOREIGN KEY (`idProfissinaldeSaude`)
    REFERENCES `centro_treinos`.`Profissionais_saude` (`idProfissionalSaude`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Consulta_Procedimento1`
    FOREIGN KEY (`idProcedimento`)
    REFERENCES `centro_treinos`.`Procedimentos` (`idProcedimento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_treinos`.`Exames`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_treinos`.`Exames` (
  `cod_exame` INT NOT NULL,
  `tipo` VARCHAR(45) NULL,
  `desc_exame` VARCHAR(100) NOT NULL,
  `preço` DECIMAL(5,2) NULL,
  PRIMARY KEY (`cod_exame`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_treinos`.`Resultados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_treinos`.`Resultados` (
  `id_relatorio` INT NOT NULL,
  `versao` INT NULL,
  `relatorio` VARCHAR(600) NULL,
  `data_relatorio` DATETIME NULL,
  PRIMARY KEY (`id_relatorio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_treinos`.`Agendamentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_treinos`.`Agendamentos` (
  `nr_episodio` INT NOT NULL,
  `id_relatorio` INT NOT NULL,
  `cod_exame` INT NOT NULL,
  `prioridade` ENUM('emergente', 'urgente', 'alta', 'normal') NULL,
  PRIMARY KEY (`nr_episodio`, `id_relatorio`),
  INDEX `fk_Agendamento_Resultado1_idx` (`id_relatorio` ASC) VISIBLE,
  INDEX `fk_Agendamento_Exame1_idx` (`cod_exame` ASC) VISIBLE,
  UNIQUE INDEX `index4` (`id_relatorio` ASC, `cod_exame` ASC) VISIBLE,
  CONSTRAINT `fk_Agendamento_Consulta1`
    FOREIGN KEY (`nr_episodio`)
    REFERENCES `centro_treinos`.`Consultas` (`nr_episodio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Agendamento_Resultado1`
    FOREIGN KEY (`id_relatorio`)
    REFERENCES `centro_treinos`.`Resultados` (`id_relatorio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Agendamento_Exame1`
    FOREIGN KEY (`cod_exame`)
    REFERENCES `centro_treinos`.`Exames` (`cod_exame`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_treinos`.`Telefone_atletas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_treinos`.`Telefone_atletas` (
  `telefone` VARCHAR(13) NOT NULL,
  `idAtleta` INT NOT NULL,
  PRIMARY KEY (`telefone`, `idAtleta`),
  INDEX `fk_Telefone_atleta_Atleta1_idx` (`idAtleta` ASC) VISIBLE,
  CONSTRAINT `fk_Telefone_atleta_Atleta1`
    FOREIGN KEY (`idAtleta`)
    REFERENCES `centro_treinos`.`Atletas` (`idAtleta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


