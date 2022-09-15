import pandas as pd
import json as json
import requests as rq
nombre='datgraf_artefactosparaelcabello'
with open(nombre+".json",encoding="utf8") as file:
    var_data= json.load(file)

var_data_pd= pd.DataFrame(var_data['data']['currentGraphics']['GraphicSi'])
newdf = var_data_pd.assign(Name=nombre)
newdf.to_csv(nombre+'21-22.csv')

var_data_pd2= pd.DataFrame(var_data['data']['perviousGraphics']['GraphicSi'])
newdf2 = var_data_pd2.assign(Name=nombre)
newdf2.to_csv(nombre+'20-21.csv')