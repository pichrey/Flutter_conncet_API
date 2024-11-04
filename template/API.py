from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import text


app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:@localhost:3309/api_moblie'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

@app.get('/get_products' )
def get_products():
    try:
        with db.engine.connect() as conn:
            result = conn.execute(text("SELECT * FROM products"))
            column_names = result.keys()
            get_products = []
            for row in result.fetchall():
                product = dict(zip(column_names, row))
                product['image'] = f"{request.host_url}static/assets/PHOTOS/{product['image']}"
                get_products.append(product)
        return jsonify(get_products), 200
    except Exception as e:
        return jsonify({"error": str(e)}), 500

@app.get('/get_productsID/<int:id>')
def get_productsID(id):
    try:
        with db.engine.connect() as conn:
            result = conn.execute(text("SELECT * FROM products WHERE id = :id"), {'id': id})
            column_names = result.keys()
            row = result.fetchone()
            if not row:
                return jsonify({"message": "No products found."}), 404
            product = dict(zip(column_names, row))
            product['image'] = f"{request.host_url}static/assets/PHOTOS/{product['image']}"
        return jsonify(product), 200
    except Exception as e:
        return jsonify({"error": str(e)}), 500

@app.delete('/delete_products/<int:id>')
def delete_products(id):
    try:
        query = text("DELETE FROM products WHERE id = :id")
        with db.engine.connect() as conn:
            result = conn.execute(query, {'id': id})
            conn.commit()
        if result.rowcount > 0:
            return jsonify({"message": "products deleted successfully."}), 200
        else:
            return jsonify({"message": "products not found."}), 404
    except Exception as e:
        return jsonify({"error": str(e)}), 500


@app.post('/add_products')
def add_products():
    try:

        data = request.get_json() if request.is_json else request.form.to_dict()
        if 'image' in data and data['image'].strip():
            data['image'] = f"{request.host_url}static/assets/PHOTOS/{data['image']}"
        else:
            data['image'] = f"{request.host_url}static/assets/PHOTOS/Cammera5.png"
        query = text("""
            INSERT INTO products (title, description, price, image)
            VALUES (:title, :description, :price, :image)
        """)
        with db.engine.connect() as conn:
            result = conn.execute(query, {
                "title": data['title'],
                "description": data['description'],
                "price": data['price'],
                "image": data['image']
            })
            product_id = result.lastrowid
            conn.commit()
        return jsonify({"message": "Product added successfully.", "product_id": product_id}), 201

    except Exception as e:
        return jsonify({"error": str(e)}), 500


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5050 ,debug=True)
