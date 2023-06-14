import mysql.connector
from mysql.connector import Error
import pandas as pd
import random



def criaConexao():
    try:
        conexao = mysql.connector.connect( host="localhost", user="root", password="", database="saep")
        return conexao   
    except Error as erro:
        print("Erro ao acessar tabela MysQL", erro)

def criaCursor(conexao): 
    try:
        cursor = conexao.cursor()
        return cursor   
    except Error as erro:
        print("Erro ao criar cursor", erro)

def fecharConexaoBanco(conexao, cursor):
    if(conexao.is_connected()):
        conexao.close()
        cursor.close()
        print("\nConexao ao MysQL encerrada\n\n")

def executarConsulta(consulta, area):
    conexao = criaConexao()
    cursor = criaCursor(conexao)
    cursor.execute(consulta, (area,))
    resultado = cursor.fetchall()  # recupera todos os resultados da consulta

    fecharConexaoBanco(conexao, cursor)
    return resultado




areaSelecionada = random.randint(1,10)
print("area",areaSelecionada)

areaConteudo = executarConsulta("SELECT `quantidade` FROM `alocacao` WHERE area = %s;", areaSelecionada)




if len(areaConteudo) > 0:
    vazio = False
else:
    vazio = True

if vazio:
    print("branco")
else:
    print("azul")