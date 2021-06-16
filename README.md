
# Mariana guimas database
# 1- Descrição do Trabalho:

# 2- Modelo E-R:
bla bla bla bla
![Alt text](imagens/bd.PNG "Title")

## 2.1- Descrição da BD
bla bla bla

## 2.2- Entidades-tipo:
As entidades-tipo, deste consultório médico, são:
MEDICO
CONSULTAS
PACIENTES
FUNCIONARIOS

## 2.3- Entidades-fracas:
As entidades- fracas, deste consultório médico, são:
MORADA,
ESPECIALIDADES
HORARIO_ATENDIMENTO

## 2.4- Atributos:
Os atributos, deste meu consultório médico, são:
MÉDICO: CRM,      Nome, {ESPECIALISTAS_EspecialidadeId}
        PK U *  , *.  , *

PACIENTE: N_Bilhete_Id, Nome,RG, CPF, Sexo, Data_de_Nascimento, Nome_Convenio
          PK U *      , *   ,* , *  , o.  , *                 , *

HORACIO_ATENDIMENTO: ESPECIALIDADES_EspecialidadesId, Telefone, Telemovel, Horarios
                     *                              , *       ,*         , *

CONSULTA: TimeStamp, MEDICO_CRM, PACIENTE_PacienteId, ESPECIALIDADES_EspecialidadeId
          *        , *        , *

MORADA: Rua, Num, Codigo_Postal, Telefone, Telemovel
       *   ,*   , *.           , o U    , * U  

## 2.5- Relações:
As relações deste meu consultório médico, são:
Relacionamento entre as entidades.
a. ATENDIMENTO(MEDICO,PACIENTES),  
Um médico atende a muitos pacientes. Um paciente pode ser atendido por muitos médicos
b. CONSULTAS(MEDICO, PACIENTE)
Cada consulta é realizada por um médico. Um médico realiza muitas consultas.
c. Cada consulta é realizada para um paciente. Um paciente pode realizar muitas consultas.

## 2.6 Modelo Lógico:
bla bla

## 2.7 Modelo Relacional:
bla bla

# 3- Exemplos de uso da syntax dos comandos SQL:

## 3-1 Geral:

## 3-2 SQL Server/Oracle/ MS Access:

## 3-3 MySQL:

# 4- Conclusão:
Bla bla bla

# 5- Bibliografia:
