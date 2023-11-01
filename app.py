# Importing essential libraries
from flask import Flask, render_template, request, redirect, url_for, flash
import pickle
import numpy as np
import joblib
from tensorflow.keras.models import load_model
from PIL import Image
import tensorflow as tf


app = Flask(__name__)
app.secret_key = 'O.\x89\xcc\xa0>\x96\xf7\x871\xa2\xe6\x9a\xe4\x14\x91\x0e\xe5)\xd9'

# Load the Random Forest CLassifier model
filename1 = 'Models/cancer-model.pkl'
rf = pickle.load(open(filename1, 'rb'))


@app.route('/')
def home():
    return render_template('index.html')


@app.route('/about')
def about():
    return render_template('about.html')

@app.route('/cancer')
def cancer():
    return render_template('cancer.html')


@app.route('/predict_cancer', methods=['POST'])
def predict_cancer():
    if request.method == 'POST':
        rad = float(request.form['Radius_mean'])
        tex = float(request.form['Texture_mean'])
        par = float(request.form['Perimeter_mean'])
        area = float(request.form['Area_mean'])
        smooth = float(request.form['Smoothness_mean'])
        compact = float(request.form['Compactness_mean'])
        con = float(request.form['Concavity_mean'])
        concave = float(request.form['concave points_mean'])
        sym = float(request.form['symmetry_mean'])
        frac = float(request.form['fractal_dimension_mean'])
        rad_se = float(request.form['radius_se'])
        tex_se = float(request.form['texture_se'])
        par_se = float(request.form['perimeter_se'])
        area_se = float(request.form['area_se'])
        smooth_se = float(request.form['smoothness_se'])
        compact_se = float(request.form['compactness_se'])
        con_se = float(request.form['concavity_se'])
        concave_se = float(request.form['concave points_se'])
        sym_se = float(request.form['symmetry_se'])
        frac_se = float(request.form['fractal_dimension_se'])
        rad_worst = float(request.form['radius_worst'])
        tex_worst = float(request.form['texture_worst'])
        par_worst = float(request.form['perimeter_worst'])
        area_worst = float(request.form['area_worst'])
        smooth_worst = float(request.form['smoothness_worst'])
        compact_worst = float(request.form['compactness_worst'])
        con_worst = float(request.form['concavity_worst'])
        concave_worst = float(request.form['concave points_worst'])
        sym_worst = float(request.form['symmetry_worst'])
        frac_worst = float(request.form['fractal_dimension_worst'])

        data = np.array([[rad, tex, par, area, smooth, compact, con, concave, sym, frac, rad_se, tex_se, par_se, area_se, smooth_se, compact_se, con_se, concave_se,
                          sym_se, frac_se, rad_worst, tex_worst, par_worst, area_worst, smooth_worst, compact_worst, con_worst, concave_worst, sym_worst, frac_worst]])
        my_prediction = rf.predict(data)

        return render_template('c_result.html', prediction=my_prediction)

@app.errorhandler(404)
def page_not_found(e):
    return render_template('404.html')


if __name__ == '__main__':
    app.run(debug=True)        