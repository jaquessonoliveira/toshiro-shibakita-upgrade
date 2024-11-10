-- Tabela Cursos
CREATE TABLE Cursos (
    CursoID INT PRIMARY KEY,
    NomeCurso VARCHAR(100),
    DuracaoMeses INT
);

-- Tabela Materias
CREATE TABLE Materias (
    MateriaID INT PRIMARY KEY,
    NomeMateria VARCHAR(100),
    CargaHoraria INT
);

-- Tabela Aluno_Curso (Associação entre Alunos e Cursos)
CREATE TABLE Aluno_Curso (
    AlunoID INT,
    CursoID INT,
    PRIMARY KEY (AlunoID, CursoID),
    FOREIGN KEY (AlunoID) REFERENCES Alunos(AlunoID),
    FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID)
);

-- Tabela Curso_Materia (Associação entre Cursos e Materias)
CREATE TABLE Curso_Materia (
    CursoID INT,
    MateriaID INT,
    PRIMARY KEY (CursoID, MateriaID),
    FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID),
    FOREIGN KEY (MateriaID) REFERENCES Materias(MateriaID)
);

-- Inserir dados na tabela Alunos
INSERT INTO Alunos (AlunoID, Nome, Sobrenome, Endereco, Cidade, Host) VALUES
(1, 'Carlos', 'Silva', 'Rua A, 123', 'São Paulo', 'Residencial A'),
(2, 'Ana', 'Santos', 'Rua B, 456', 'Rio de Janeiro', 'Residencial B'),
(3, 'Pedro', 'Oliveira', 'Rua C, 789', 'Curitiba', 'Residencial C'),
(4, 'Mariana', 'Costa', 'Av. D, 101', 'Salvador', 'Residencial D'),
(5, 'João', 'Ferreira', 'Av. E, 202', 'Brasília', 'Residencial E'),
(6, 'Lucas', 'Pereira', 'Rua F, 303', 'Fortaleza', 'Residencial F'),
(7, 'Fernanda', 'Almeida', 'Rua G, 404', 'Belo Horizonte', 'Residencial G'),
(8, 'Juliana', 'Lima', 'Rua H, 505', 'Porto Alegre', 'Residencial H'),
(9, 'Rafael', 'Rodrigues', 'Av. I, 606', 'Manaus', 'Residencial I'),
(10, 'Camila', 'Martins', 'Rua J, 707', 'Recife', 'Residencial J');

-- Inserir dados na tabela Cursos
INSERT INTO Cursos (CursoID, NomeCurso, DuracaoMeses) VALUES
(1, 'Engenharia de Software', 48),
(2, 'Administração', 36),
(3, 'Ciência da Computação', 48),
(4, 'Design Gráfico', 24);

-- Inserir dados na tabela Materias
INSERT INTO Materias (MateriaID, NomeMateria, CargaHoraria) VALUES
(1, 'Matemática Discreta', 60),
(2, 'Algoritmos', 80),
(3, 'Gestão de Projetos', 40),
(4, 'Marketing Digital', 60),
(5, 'Banco de Dados', 80),
(6, 'Programação Orientada a Objetos', 70);

-- Inserir dados na tabela Aluno_Curso
INSERT INTO Aluno_Curso (AlunoID, CursoID) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 3),
(5, 4),
(6, 1),
(7, 2),
(8, 3),
(9, 4),
(10, 1);

-- Inserir dados na tabela Curso_Materia
INSERT INTO Curso_Materia (CursoID, MateriaID) VALUES
(1, 1), (1, 2), (1, 5), (1, 6),
(2, 3), (2, 4),
(3, 1), (3, 2), (3, 5),
(4, 4), (4, 6);
