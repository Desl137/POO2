-- CreateTable
CREATE TABLE "Professor" (
    "idProfessor" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "nomeProfessor" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "Aluno" (
    "idAluno" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "nomeAluno" TEXT NOT NULL,
    "matricula" TEXT NOT NULL,
    "idEquipe" INTEGER NOT NULL,
    CONSTRAINT "Aluno_idEquipe_fkey" FOREIGN KEY ("idEquipe") REFERENCES "Equipe" ("idEquipe") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Equipe" (
    "idEquipe" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT
);

-- CreateTable
CREATE TABLE "Avaliacao" (
    "idAvaliacao" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "avaliacaoAluno" INTEGER NOT NULL,
    "avaliacaoProfessor" INTEGER NOT NULL,
    "projetoAvaliadoId" INTEGER NOT NULL,
    CONSTRAINT "Avaliacao_projetoAvaliadoId_fkey" FOREIGN KEY ("projetoAvaliadoId") REFERENCES "Projeto" ("idProjeto") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Projeto" (
    "idProjeto" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "nomeProjeto" TEXT NOT NULL,
    "descricao" TEXT NOT NULL,
    "idEstande" INTEGER NOT NULL,
    "avaliacaoProfessor" INTEGER NOT NULL,
    "avaliacaoAluno" INTEGER NOT NULL,
    "idEquipe" INTEGER NOT NULL,
    CONSTRAINT "Projeto_idEstande_fkey" FOREIGN KEY ("idEstande") REFERENCES "Estande" ("idEstande") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Projeto_idEquipe_fkey" FOREIGN KEY ("idEquipe") REFERENCES "Equipe" ("idEquipe") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Estande" (
    "idEstande" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT
);
