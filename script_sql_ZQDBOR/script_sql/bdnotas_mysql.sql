# Eliminando objetos si ya existen
DROP DATABASE IF EXISTS bdnotas;
CREATE DATABASE bdnotas;
USE bdnotas;
CREATE TABLE  alumno (
  IdAlumno varchar(5) not null primary key,
  ApeAlumno varchar(30) ,
  NomAlumno varchar(30) ,
  Idesp varchar(3) ,
  PROCE varchar(1) 
);
INSERT INTO alumno VALUES("A0001", "Donayre Mena", "Christian", "E01", "N");
INSERT INTO alumno VALUES("A0002", "Ortiz Rodriguez", "Freddy", "E05", "P");
INSERT INTO alumno VALUES("A0003", "Silva Mejia", "Ruth Ketty", "E04", "N");
INSERT INTO alumno VALUES("A0004", "Melendez Noriega", "Liliana", "E05", "P");
INSERT INTO alumno VALUES("A0005", "Huerta Leon", "Silvia", "E01", "N");
INSERT INTO alumno VALUES("A0006", "Carranza Fuentes", "Maria Elena", "E02", "P");
INSERT INTO alumno VALUES("A0007", "Prado Castro", "Gabriela", "E01", "N");
INSERT INTO alumno VALUES("A0008", "Atuncar Mesias", "Juan", "E02", "P");
INSERT INTO alumno VALUES("A0009", "Aguilar Zavala", "Patricia Elena", "E05", "P");
INSERT INTO alumno VALUES("A0010", "Rodruigez Trujillo", "Rubén Eduardo", "E05", "N");
INSERT INTO alumno VALUES("A0011", "Canales Ruiz", "Gino Leonel", "E04", "P");
INSERT INTO alumno VALUES("A0012", "Ruiz Quispe", "Edgar", "E05", "N");
INSERT INTO alumno VALUES("A0013", "PanduroTerrazas", "Omar", "E03", "P");
INSERT INTO alumno VALUES("A0014", "Zita Padilla", "Peter Wilmer", "E03", "N");
INSERT INTO alumno VALUES("A0015", "Ternero Ubillús", "Luis", "E02", "P");
INSERT INTO alumno VALUES("A0016", "Rivera García", "Raúl Joel", "E01", "P");
INSERT INTO alumno VALUES("A0017", "Pomar García", "Ana", "E01", "P");
INSERT INTO alumno VALUES("A0018", "Palomares Venegas", "Mercedes", "E01", "N");
INSERT INTO alumno VALUES("A0019", "Ruiz Venegaz", "Luis Alberto", "E01", "P");
INSERT INTO alumno VALUES("A0020", "Tejada Bernal", "Janet", "E01", "P");
INSERT INTO alumno VALUES("A0021", "Sotelo Canales", "Juan Carlos", "E05", "P");
INSERT INTO alumno VALUES("A0022", "LLosa Montalvan", "Karla", "E05", "P");
INSERT INTO alumno VALUES("A0023", "Galarza Torres", "Hugo", "E03", "P");
INSERT INTO alumno VALUES("A0024", "Valverde Jaramillo", "Saul", "E05", "N");
INSERT INTO alumno VALUES("A0025", "Cipriano Avila", "Roxana", "E01", "N");
INSERT INTO alumno VALUES("A0026", "Rodriguez Quispe", "Luis Alberto", "E05", "P");
INSERT INTO alumno VALUES("A0027", "Huerta Leon", "Marco Antonio", "E05", "N");
INSERT INTO alumno VALUES("A0028", "Ortiz Fuentes", "Ana María", "E04", "P");
INSERT INTO alumno VALUES("A0029", "Rivera Jaramillo", "Martha", "E05", "P");
INSERT INTO alumno VALUES("A0030", "Bustamante Campos", "Guino", "E02", "N");


#
# Table structure for table 'curso'
#

CREATE TABLE IF NOT EXISTS curso (
  IdCurso varchar(4) not null primary key,
  NomCurso varchar(35) ,
  credito int(11) 
);



#
# Dumping data for table 'curso'
#
INSERT INTO curso VALUES("C001", "Matematica Basica", "3");
INSERT INTO curso VALUES("C002", "Filosofia I", "6");
INSERT INTO curso VALUES("C003", "Psicologia Industrial", "5");
INSERT INTO curso VALUES("C004", "Algoritmica", "4");
INSERT INTO curso VALUES("C005", "Software de Aplicacion", "5");
INSERT INTO curso VALUES("C006", "Lenguaje de Programacion I", "5");
INSERT INTO curso VALUES("C007", "Lenguaje Java ", "4");
INSERT INTO curso VALUES("C008", "Matematica II", "3");
INSERT INTO curso VALUES("C009", "Ingles Tecnico", "5");
INSERT INTO curso VALUES("C010", "Lenguaje de Programcion III", "3");
INSERT INTO curso VALUES("C011", "Aplicaciones Cliente/Servidor", "4");


#
# Table structure for table 'cursoprofe'
#

CREATE TABLE IF NOT EXISTS cursoprofe (
  Codcur varchar(4) ,
  CodPro varchar(5) ,
  Nhoras int(11) 
);



#
# Dumping data for table 'cursoprofe'
#
INSERT INTO cursoprofe VALUES("C001", "P001", "23");
INSERT INTO cursoprofe VALUES("C002", "P002", "15");
INSERT INTO cursoprofe VALUES("C003", "P001", "16");
INSERT INTO cursoprofe VALUES("C004", "P003", "20");
INSERT INTO cursoprofe VALUES("C005", "P003", "18");


#
# Table structure for table 'especialidad'
#

CREATE TABLE IF NOT EXISTS especialidad (
  Idesp varchar(3) ,
  Nomesp varchar(30) ,
  costo decimal(10,0) 
);



#
# Dumping data for table 'especialidad'
#
INSERT INTO especialidad VALUES("E01", "Educacion Informatica", "2500");
INSERT INTO especialidad VALUES("E02", "Administracion", "1800");
INSERT INTO especialidad VALUES("E03", "Contabilidad", "2000");
INSERT INTO especialidad VALUES("E04", "Idiomas", "1800");
INSERT INTO especialidad VALUES("E05", "Ing. de Sistemas", "2800");


#
# Table structure for table 'notas'
#

CREATE TABLE IF NOT EXISTS notas (
  IdAlumno varchar(5) ,
  IdCurso varchar(4) ,
  ExaParcial float ,
  ExaFinal float 
);



#
# Dumping data for table 'notas'
#
INSERT INTO notas VALUES("A0001", "C001", "11", "15");
INSERT INTO notas VALUES("A0001", "C003", "9", "12");
INSERT INTO notas VALUES("A0001", "C004", "18", "10");
INSERT INTO notas VALUES("A0002", "C002", "15", "8");
INSERT INTO notas VALUES("A0002", "C005", "11", "13");
INSERT INTO notas VALUES("A0002", "C006", "14", "11");
INSERT INTO notas VALUES("A0002", "C008", "12", "10");
INSERT INTO notas VALUES("A0003", "C002", "16", "08");
INSERT INTO notas VALUES("A0003", "C003", "8", "11");
INSERT INTO notas VALUES("A0003", "C004", "7", "18");
INSERT INTO notas VALUES("A0004", "C002", "11", "17");
INSERT INTO notas VALUES("A0004", "C006", "11", "15");
INSERT INTO notas VALUES("A0004", "C007", "11", "16");
INSERT INTO notas VALUES("A0005", "C001", "17", "10");
INSERT INTO notas VALUES("A0005", "C002", "12", "8");
INSERT INTO notas VALUES("A0005", "C003", "11", "13");
INSERT INTO notas VALUES("A0006", "C001", "11", "15");
INSERT INTO notas VALUES("A0006", "C006", "11", "12");
INSERT INTO notas VALUES("A0006", "C007", "8", "13");
INSERT INTO notas VALUES("A0007", "C001", "11", "9");
INSERT INTO notas VALUES("A0007", "C004", "14", "11");
INSERT INTO notas VALUES("A0007", "C005", "11", "12");
INSERT INTO notas VALUES("A0008", "C001", "11", "3");
INSERT INTO notas VALUES("A0008", "C008", "5", "10");
INSERT INTO notas VALUES("A0008", "C009", "7", "13");
INSERT INTO notas VALUES("A0009", "C002", "15", "13");
INSERT INTO notas VALUES("A0009", "C009", "13", "13");
INSERT INTO notas VALUES("A0009", "C010", "11", "13");
INSERT INTO notas VALUES("A0010", "C009", "10", "16");
INSERT INTO notas VALUES("A0010", "C010", "18", "12");
INSERT INTO notas VALUES("A0010", "C011", "18", "11");
INSERT INTO notas VALUES("A0011", "C001", "12", "18");
INSERT INTO notas VALUES("A0011", "C002", "13", "19");
INSERT INTO notas VALUES("A0011", "C004", "01", "17");
INSERT INTO notas VALUES("A0012", "C001", "05", "12");
INSERT INTO notas VALUES("A0012", "C005", "15", "10");
INSERT INTO notas VALUES("A0012", "C006", "17", "10");
INSERT INTO notas VALUES("A0013", "C001", "11", "3");
INSERT INTO notas VALUES("A0013", "C002", "7", "10");
INSERT INTO notas VALUES("A0013", "C003", "15", "13");
INSERT INTO notas VALUES("A0013", "C004", "12", "13");
INSERT INTO notas VALUES("A0014", "C001", "11", "13");
INSERT INTO notas VALUES("A0014", "C004", "12", "15");
INSERT INTO notas VALUES("A0014", "C005", "15", "16");
INSERT INTO notas VALUES("A0015", "C001", "11", "13");
INSERT INTO notas VALUES("A0015", "C003", "14", "17");
INSERT INTO notas VALUES("A0015", "C004", "15", "15");
INSERT INTO notas VALUES("A0016", "C001", "11", "13");
INSERT INTO notas VALUES("A0016", "C005", "12", "17");
INSERT INTO notas VALUES("A0016", "C006", "17", "12");
INSERT INTO notas VALUES("A0021", "C001", "11", "17");
INSERT INTO notas VALUES("A0021", "C005", "14", "3");
INSERT INTO notas VALUES("A0021", "C006", "17", "13");
INSERT INTO notas VALUES("A0022", "C001", "11", "13");
INSERT INTO notas VALUES("A0022", "C002", "8", "13");
INSERT INTO notas VALUES("A0022", "C003", "7", "13");
INSERT INTO notas VALUES("A0023", "C001", "10", "10");
INSERT INTO notas VALUES("A0023", "C008", "12", "11");
INSERT INTO notas VALUES("A0023", "C009", "18", "11");
INSERT INTO notas VALUES("A0024", "C001", "10", "3");
INSERT INTO notas VALUES("A0024", "C002", "11", "9");
INSERT INTO notas VALUES("A0024", "C003", "16", "8");
INSERT INTO notas VALUES("A0024", "C007", "16", "13");
INSERT INTO notas VALUES("A0025", "C001", "1", "13");
INSERT INTO notas VALUES("A0025", "C002", "10", "18");
INSERT INTO notas VALUES("A0028", "C001", "17", "7");
INSERT INTO notas VALUES("A0028", "C005", "16", "13");
INSERT INTO notas VALUES("A0029", "C001", "11", "13");


#
# Table structure for table 'pagos'
#

CREATE TABLE IF NOT EXISTS pagos (
  IdAlumno varchar(5) ,
  CICLO varchar(6) ,
  NCUOTA int(11) ,
  MONTO decimal(10,0) ,
  FECHA datetime 
);



#
# Dumping data for table 'pagos'
#
INSERT INTO pagos VALUES("A0001", "2022-2", "1", "300", "2022-10-10 00:00:00");
INSERT INTO pagos VALUES("A0001", "2022-2", "2", "340", "2022-11-11 00:00:00");
INSERT INTO pagos VALUES("A0001", "2023-1", "3", "340", "2022-12-12 00:00:00");
INSERT INTO pagos VALUES("A0002", "2022-2", "1", "300", "2022-04-10 00:00:00");
INSERT INTO pagos VALUES("A0002", "2022-2", "2", "350", "2022-05-11 00:00:00");
INSERT INTO pagos VALUES("A0002", "2023-1", "1", "360", "2022-04-12 00:00:00");
INSERT INTO pagos VALUES("A0002", "2023-1", "2", "370", "2022-05-11 00:00:00");
INSERT INTO pagos VALUES("A0003", "2022-1", "1", "340", "2022-06-11 00:00:00");
INSERT INTO pagos VALUES("A0003", "2022-1", "2", "340", "2022-07-12 00:00:00");
INSERT INTO pagos VALUES("A0003", "2022-2", "1", "340", "2022-04-11 00:00:00");
INSERT INTO pagos VALUES("A0004", "2022-2", "1", "300", "2022-09-03 00:00:00");
INSERT INTO pagos VALUES("A0004", "2022-2", "2", "380", "2022-10-01 00:00:00");
INSERT INTO pagos VALUES("A0004", "2023-1", "1", "370", "2023-05-11 00:00:00");
INSERT INTO pagos VALUES("A0005", "2022-2", "1", "350", "2022-10-11 00:00:00");
INSERT INTO pagos VALUES("A0005", "2022-2", "2", "360", "2022-08-11 00:00:00");
INSERT INTO pagos VALUES("A0005", "2023-1", "1", "380", "2023-05-09 00:00:00");
INSERT INTO pagos VALUES("A0006", "2022-2", "3", "300", "2022-09-13 00:00:00");
INSERT INTO pagos VALUES("A0006", "2023-1", "1", "340", "2022-03-11 00:00:00");
INSERT INTO pagos VALUES("A0006", "2023-1", "2", "390", "2023-04-11 00:00:00");
INSERT INTO pagos VALUES("A0007", "2022-2", "1", "340", "2022-06-11 00:00:00");
INSERT INTO pagos VALUES("A0007", "2023-1", "1", "380", "2023-04-11 00:00:00");
INSERT INTO pagos VALUES("A0007", "2023-1", "2", "440", "2023-06-11 00:00:00");
INSERT INTO pagos VALUES("A0008", "2022-1", "1", "370", "2023-02-11 00:00:00");
INSERT INTO pagos VALUES("A0008", "2022-2", "1", "340", "2022-08-11 00:00:00");
INSERT INTO pagos VALUES("A0008", "2022-2", "2", "320", "2022-09-11 00:00:00");
INSERT INTO pagos VALUES("A0009", "2022-2", "1", "340", "2022-06-11 00:00:00");
INSERT INTO pagos VALUES("A0009", "2022-2", "2", "330", "2022-07-11 00:00:00");
INSERT INTO pagos VALUES("A0009", "2023-1", "1", "340", "2023-04-11 00:00:00");
INSERT INTO pagos VALUES("A0010", "2022-2", "1", "340", "2022-07-13 00:00:00");
INSERT INTO pagos VALUES("A0010", "2022-2", "2", "330", "2022-09-11 00:00:00");
INSERT INTO pagos VALUES("A0010", "2023-1", "1", "350", "2023-06-11 00:00:00");
INSERT INTO pagos VALUES("A0011", "2022-2", "1", "340", "2022-06-11 00:00:00");
INSERT INTO pagos VALUES("A0011", "2022-2", "2", "330", "2022-08-11 00:00:00");
INSERT INTO pagos VALUES("A0011", "2023-1", "2", "370", "2023-06-11 00:00:00");
INSERT INTO pagos VALUES("A0012", "2022-2", "1", "340", "2022-08-11 00:00:00");
INSERT INTO pagos VALUES("A0012", "2022-2", "2", "370", "2022-09-11 00:00:00");
INSERT INTO pagos VALUES("A0012", "2023-1", "1", "390", "2023-08-15 00:00:00");
INSERT INTO pagos VALUES("A0013", "2022-2", "1", "340", "2022-06-11 00:00:00");
INSERT INTO pagos VALUES("A0013", "2023-1", "1", "340", "2023-04-11 00:00:00");
INSERT INTO pagos VALUES("A0013", "2023-1", "2", "350", "2023-05-11 00:00:00");
INSERT INTO pagos VALUES("A0013", "2023-1", "3", "370", "2023-06-11 00:00:00");
INSERT INTO pagos VALUES("A0014", "2022-2", "1", "340", "2022-10-11 00:00:00");
INSERT INTO pagos VALUES("A0014", "2022-2", "2", "330", "2022-11-11 00:00:00");
INSERT INTO pagos VALUES("A0014", "2023-1", "1", "350", "2023-05-11 00:00:00");
INSERT INTO pagos VALUES("A0016", "2022-2", "1", "340", "2022-09-11 00:00:00");
INSERT INTO pagos VALUES("A0016", "2022-2", "2", "360", "2022-10-11 00:00:00");
INSERT INTO pagos VALUES("A0016", "2023-1", "1", "340", "2023-04-11 00:00:00");
INSERT INTO pagos VALUES("A0021", "2022-2", "1", "340", "2022-07-11 00:00:00");
INSERT INTO pagos VALUES("A0021", "2022-2", "2", "480", "2022-08-10 00:00:00");
INSERT INTO pagos VALUES("A0021", "2023-1", "1", "340", "2023-05-10 00:00:00");
INSERT INTO pagos VALUES("A0022", "2022-2", "1", "340", "2022-08-11 00:00:00");
INSERT INTO pagos VALUES("A0022", "2022-2", "2", "330", "2022-09-11 00:00:00");
INSERT INTO pagos VALUES("A0022", "2023-1", "1", "350", "2023-03-11 00:00:00");
INSERT INTO pagos VALUES("A0023", "2022-2", "1", "340", "2022-09-11 00:00:00");
INSERT INTO pagos VALUES("A0023", "2022-2", "2", "370", "2022-10-11 00:00:00");
INSERT INTO pagos VALUES("A0023", "2023-1", "1", "370", "2023-05-11 00:00:00");
INSERT INTO pagos VALUES("A0024", "2022-2", "1", "340", "2022-06-11 00:00:00");
INSERT INTO pagos VALUES("A0024", "2022-2", "2", "340", "2022-08-11 00:00:00");
INSERT INTO pagos VALUES("A0024", "2023-1", "1", "340", "2023-04-11 00:00:00");
INSERT INTO pagos VALUES("A0024", "2023-1", "2", "340", "2023-05-11 00:00:00");
INSERT INTO pagos VALUES("A0025", "2022-2", "1", "340", "2022-08-11 00:00:00");
INSERT INTO pagos VALUES("A0025", "2022-2", "2", "370", "2022-09-11 00:00:00");
INSERT INTO pagos VALUES("A0028", "2023-1", "1", "340", "2023-05-11 00:00:00");
INSERT INTO pagos VALUES("A0028", "2023-1", "2", "390", "2023-06-11 00:00:00");
INSERT INTO pagos VALUES("A0029", "2022-1", "1", "340", "2022-06-11 00:00:00");


#
# Table structure for table 'profesor'
#

CREATE TABLE IF NOT EXISTS profesor (
  Codpro varchar(4) ,
  Nompro varchar(30) ,
  Espec varchar(15) ,
  Grado varchar(20) 
);



#
# Dumping data for table 'profesor'
#
INSERT INTO profesor VALUES("P001", "Camino Pedro", "Informatica", "Licenciado");
INSERT INTO profesor VALUES("P002", "Huarcaya Laura", "Idiomas", "Licenciado");
INSERT INTO profesor VALUES("P003", "Maita Arturo", "Educacion", "Licenciado");
INSERT INTO profesor VALUES("P004", "Martinez Miguel", "Administracion", "Bachiller");
INSERT INTO profesor VALUES("P005", "Caceres Ana", "Idiomas", "Bachiller");
INSERT INTO profesor VALUES("P006", "Castillo Maria", "Contabilidad", "Licenciado");
INSERT INTO profesor VALUES("P007", "Gonzalez Alfredo", "Administrac.", "Bachiller");

select * from pagos;