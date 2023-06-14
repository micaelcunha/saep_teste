import mysql.connector
from mysql.connector import Error
import pandas as pd
import random



def conectarBanco(area):
    try:
        con = mysql.connector.connect (host='localhost:3307', database='saep', user='root', password= '')
        consulta_sql = rf"SELECT `quantidade` FROM `alocacao` WHERE area = 1;"
        cursor = con.cursor()
        cursor.execute(consulta_sql) 
        con.commit()
        print(consulta_sql)
    except Error as erro:
        print("Erro ao acessar tabela MysQL", erro)
    finally:
        if(con.is_connected()):
            con.close()
            cursor.close()
            print("  Conexäo ao MysQL encerrada\n\n")

area = random.randint(1,10)
print("area",area)

conectarBanco(area)


vaga = True
if vaga :
    div = "brano"
else:
    div = "azul"