import pandas as pd
import boto3
from botocore.exceptions import NoCredentialsError
import os

# S3 Configuration
bucket_name = 'bucket'
folder_name = 'assets/img/cake-img/'

# Initialize boto3 client
s3 = boto3.client('s3')

def upload_to_s3(file_path, bucket_name, s3_key):
    """Upload a file to S3 and return the URL."""
    try:
        s3.upload_file(file_path, bucket_name, s3_key)
        # Return public URL (make sure your bucket is publicly accessible or use presigned URLs)
        s3_url = f'bucket/{s3_key}'
        return s3_url
    except FileNotFoundError:
        print(f"File {file_path} not found.")
        return None
    except NoCredentialsError:
        print("Credentials not available.")
        return None
    except Exception as e:
        print(f"Error uploading file: {str(e)}")
        return None

def process_excel(file_path):
    # Load the Excel file
    df = pd.read_excel("Book1.xlsx", sheet_name="bakeries")

    # Iterate over the rows (assuming the 'local_image_link' column contains the image file paths)
    for index, row in df.iterrows():
        local_image_path = "images/bakery_img/" + row['REP_IMG_URL'] +".jpg"
        
        # Ensure the file exists
        if os.path.exists(local_image_path):
            
            # Upload the file to S3 and get the URL
            s3_url = upload_to_s3(local_image_path, bucket_name, "images/bakery_img/" + row['REP_IMG_URL'] +".jpg")
            
            if s3_url:
                # Update the Excel file with the S3 URL
                df.at[index, 'local_image_link'] = s3_url
        else:
            print(f"File not found: {local_image_path}")
    
    # Save the updated Excel file
    df.to_excel('bakeries.xlsx', index=False)

# Process the Excel file
process_excel('bakery_images.xlsx')