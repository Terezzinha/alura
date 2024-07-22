import pandas as pd
import json as j

alunes = pd.read_json("https://servicodados.ibge.gov.br/api/v1/censos/nomes/ranking?qtd=20&sexo=f")
print(alunes.head())
print("oi")