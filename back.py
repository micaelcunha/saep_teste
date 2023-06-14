import mysql.connector
from mysql.connector import Error
import pandas as pd
import random



def criaConexao():
    try:
        conexao = mysql.connector.connect( host="localhost", user="root", password="", database="saep", port="3307")
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
        # print("\nConexao ao MysQL encerrada\n\n")

def executarConsulta(consulta, area):
    conexao = criaConexao()
    cursor = criaCursor(conexao)
    cursor.execute(consulta, (area,))
    resultado = cursor.fetchall()  # recupera todos os resultados da consulta

    fecharConexaoBanco(conexao, cursor)
    return resultado

def passarMouseNaArea(area):
    areaConteudo = executarConsulta("SELECT `quantidade` FROM `alocacao` WHERE area = %s;", area)
    if len(areaConteudo) == 0:
        vazio = True
    else:
        vazio = False
    return vazio

def clicarArea(area):
    resultado = executarConsulta('''
        SELECT auto.MODELO, auto.PRECO 
        from automoveis as auto
        inner join alocacao aloc
        on aloc.automovel = auto.id
        where aloc.area = %s;
        ''', area)
    
    return resultado

areaSelecionada = random.randint(1,10)
print("area",areaSelecionada)

if passarMouseNaArea(areaSelecionada):
    print("branco")
else:
    print("azul")

for linha in (clicarArea(areaSelecionada)):
    print(linha)