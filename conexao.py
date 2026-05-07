import mysql.connector
from conexao import conectar

def conectar():
        conexao = mysql.connector.connect(
            host = "localhost",
            user = "root",
            password = "",
            database = "oficina_teste"
        )
        
        if conexao.is_connected():
            print("Conectado com sucesso!")
            return conexao
        else:
            print("Falha na conexão")
            return None
    
