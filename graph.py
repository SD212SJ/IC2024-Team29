import pandas as pd
import plotly.express as px
df = pd.read_csv('really_really_filtered.csv')

#summing the SR Mean by foodcategory id and the nutrient and putting them into new columns
SReachcat = df.groupby(['food_category_id','SR Food description'])['SR Mean per 100g'].sum().reset_index()
SReachcat.columns = ['food_category_id', 'SR Food description','SReachcat']
FFeachcat = df.groupby(['food_category_id','SR Food description'])['FF Mean per 100g'].sum().reset_index()
FFeachcat.columns = ['food_category_id', 'SR Food description','SReachcat']

df = pd.merge(df,SReachcat, on=['food_category_id','SR Food description'], how='left')
df = pd.merge(df,FFeachcat, on=['food_category_id','SR Food description'], how='left')

df.to_csv('new_file.csv', index=False)