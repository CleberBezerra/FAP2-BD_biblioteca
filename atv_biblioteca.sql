CREATE TABLE Livro 
( 
 id_livro INT PRIMARY KEY,  
 titulo INT,  
 autor_livro INT  
); 

CREATE TABLE Autor 
( 
 telefone_autor INT,  
 email_autor INT,  
 nome_autor INT,  
 cpf_autor INT PRIMARY KEY  
); 

CREATE TABLE Usuario 
( 
 endereco_usuario INT,  
 nome_usuario INT,  
 cpf_usuario INT PRIMARY KEY,  
 email_usuario INT,  
 telefone_usuario INT,  
 idEmprestimo INT,  
 idDevolucao INT,  
 idLivro INT  
); 

CREATE TABLE Emprestimo 
( 
 data_emprestimo INT,  
 id_emprestimo INT PRIMARY KEY 
); 

CREATE TABLE Devolucao 
( 
 id_devolucao INT PRIMARY KEY,  
 data_devolucao INT  
); 

CREATE TABLE escreve 
( 
 cpf_autor INT PRIMARY KEY,  
 id_livro INT PRIMARY KEY  
); 

ALTER TABLE Usuario ADD FOREIGN KEY(idEmprestimo) REFERENCES Emprestimo (idEmprestimo);
ALTER TABLE Usuario ADD FOREIGN KEY(idDevolucao) REFERENCES Devolucao (idDevolucao);
ALTER TABLE Usuario ADD FOREIGN KEY(idLivro) REFERENCES Livro (idLivro);
ALTER TABLE escreve ADD FOREIGN KEY(cpf_autor) REFERENCES Autor (cpf_autor);
ALTER TABLE escreve ADD FOREIGN KEY(id_livro) REFERENCES Livro (id_livro);
