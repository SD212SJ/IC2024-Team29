import pandas as pd

df = pd.read_csv('really_really_filtered.csv')

onefood = df[df['food_category_id'] == 1]
#summing the SR Mean by foodcategory id and the nutrient 
SReachcat = df.groupby(['food_category_id','SR Food description'])['SR Mean per 100g'].sum()
FFeachcat = df.groupby(['food_category_id','SR Food description'])['FF Mean per 100g'].sum()

print(SReachcat)
#this divides all the sums of nutrients by the total number of rows that include foodcategory = 1 so this is wrong
#need to do something like if the category is 1, divide the 

# print(FFeachcat / (len(onefood)))
        
