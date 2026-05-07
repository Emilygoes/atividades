import mysql.connector
from conexao import conectar

def exibir_dados(conexao):
    cursor = conexao.cursor()

    cursor.execute("SELECT * FROM funcionarios")
    resultados = cursor.fetchall()

    print("\n Dados da tabela:")
    for linha in resultados:
        print(linha)
