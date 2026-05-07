import mysql.connector
from conexao import conectar

def inserir_dados(conexao):
    cursor = conexao.cursor()

    cpf = input ("digite o cpf: ")
    nome = input("Digite o nome: ")
    endereco = input ("digite seu endereço")
    nascimento = (input("Digite sua data de nascimento: "))

    sql = "INSERT INTO funcionarios (cpf, nome, endereco, data_nascimento) VALUES (%s, %s, %s, %s)"
    values = (cpf, nome, endereco, nascimento)

    cursor.execute(sql, values)
    conexao.commit()

    print("Dados inseridos com sucesso!")
