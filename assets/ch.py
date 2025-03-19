import pandas as pd

# Load your Excel file
df = pd.read_excel('cakes.xlsx')

# Convert the DataFrame to a JSON file
df.to_json('cakes.json', orient='records', force_ascii=False)