from flask import Flask, jsonify
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time

app = Flask(__name__)

def scrape_alibaba():
    driver = webdriver.Chrome()
    driver.get("https://offer.alibaba.com/cps/1tmtl77e?bm=cps&src=saf&pid=e2c8914d-ae82-4f78-aa56-5dc2762d6f04&tp1=667277fab2bf9100015ade24&tp2=RO")
    time.sleep(5)

    try:
        products_elements = driver.find_elements(By.CLASS_NAME, 'hugo4-pc-grid-item')
        print(f"Found {len(products_elements)} products")
    except Exception as e:
        print(f"Could not find product elements: {e}")
        products_elements = []

    product_list = []

    for produs in products_elements:
        try:
            name = produs.find_element(By.CLASS_NAME, "hugo4-product-element").text
        except Exception as e:
            name = "N/A"
            print(f"Product name not found: {e}")

        try:
            sales = produs.find_element(By.CLASS_NAME, "sold-text").text
        except Exception as e:
            sales = "N/A"
            print(f"Product sales not found: {e}")

        try:
            price = produs.find_element(By.CLASS_NAME, "hugo3-fw-heavy").text
        except Exception as e:
            price = "N/A"
            print(f"Product price not found: {e}")
    
        try:
            image_url = produs.find_element(By.CLASS_NAME, "picture-image").get_attribute("src")
        except Exception as e:
            image_url = "N/A"
            print(f"Product image not found: {e}")
            
        print(name, sales, price)
        product_list.append({'name': name, 'sales': sales, 'price': price, 'image_url': image_url})

    driver.quit()
    return product_list

@app.route('/', methods=['GET'])
def index():
    return "Welcome to the AliBaba Scraper API! Access /products to see the products."

@app.route('/products', methods=['GET'])
def get_products():
    products = scrape_alibaba()
    return jsonify(products)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, debug=False)

