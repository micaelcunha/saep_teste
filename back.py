import mysql.connector
from mysql.connector import Error
import pandas as pd
import random



def conectarBanco(area):
    try:
        conexao = mysql.connector.connect( host="localhost", user="root", password="", database="saep")
        cursor = conexao.cursor()
        consulta = "SELECT `quantidade` FROM `alocacao` WHERE area = %s;"
        cursor.execute(consulta, (area,))
        resultado = cursor.fetchall()  # recupera todos os resultados da consulta
    except Error as erro:
        print("Erro ao acessar tabela MysQL", erro)
    finally:
        if(conexao.is_connected()):
            conexao.close()
            cursor.close()
            print("\nConexao ao MysQL encerrada\n\n")        
            return resultado

area = random.randint(1,10)
print("area",area)

resultado = conectarBanco(area)


if len(resultado) > 0:
    print("A vaga esta fechada")
else:
    print("A vaga esta aberta")