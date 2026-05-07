import mysql.connector

from conexao import conectar
from cadastrofuncionario import inserir_dados

conexao = conectar()
cadastrofuncionario = inserir_dados(conexao)