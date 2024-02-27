import pandas as pd

df = pd.read_csv('really_really_filtered.csv')

count1 = 0 
for each in df['food_category_id']:
    if each == 1: 
        print(each[df['SR Mean per 100g']])
        
