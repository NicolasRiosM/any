import pandas as pd

alist=[]
data=pd.read_csv("data.csv", sep=';')
df=pd.DataFrame(data)

print(df[0])


    
    