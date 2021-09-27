# Importing essential libraries
from flask import Flask, render_template, request, redirect, url_for, flash
import pickle
import pandas as pd
import numpy as np
import joblib
from tensorflow.keras.models import load_model
from PIL import Image
import tensorflow as tf


app = Flask(__name__)
app.secret_key = 'O.\\x89\\xcc\\xa0>\\x96\\xf7\\x871\\xa2\\xe6\\x9a\\xe4\\x14\\x91\\x0e\\xe5)\\xd9'

# Load the Random Forest CLassifier model
filename_diabetes = 'Models/Diabetes.pkl'
classifier_diabetes = pickle.load(open(filename_diabetes, 'rb'))
# classifier_diabetes = pickle.load(open('Diabetes.pkl','rb'))

#CHẨN ĐOÁN TIỂU ĐƯỜNG
@app.route('/diabetes')
def diabetes():
    return render_template('diabetes.html')

@app.route('/predict_diabetes', methods=['POST'])
def predict_diabetes():
    if request.method == 'POST':
        try:
            preg = int(request.form['pregnancies'])
            glucose = int(request.form['glucose'])
            bp = int(request.form['bloodpressure'])
            st = int(request.form['skinthickness'])
            insulin = int(request.form['insulin'])
            bmi = float(request.form['bmi'])
            dpf = float(request.form['dpf'])
            age = int(request.form['age'])

            # data = np.array([[preg, glucose, bp, st, insulin, bmi, dpf, age]])
            # my_prediction = classifier_diabetes.predict(data)

            # return render_template('d_result.html', prediction=my_prediction)

            row_df = pd.DataFrame([pd.Series([preg,glucose,bp,st,insulin,bmi,dpf,age])])
            print(row_df)
            prediction=classifier_diabetes.predict_proba(row_df)

            output='{0:.{1}f}'.format(prediction[0][1], 2)
            output = float(output)*100
            kq = str(output)+'%'
            if output>50:
                return render_template('d_result.html',content=f'Bạn có nguy cơ cao nhiễm tiểu đường. Tỉ lệ tiểu đường lên đến ',pred=kq,img='diabetes.jpg',out=output)
            else:
                return render_template('d_result.html',content=f'Bạn an toàn. Tỉ lệ tiểu đường chỉ có ',pred=kq,img='Naruto_stroke.png',out=output)
        except ValueError:
            flash(
                'Xin vui lòng điền đầy đủ thông tin cần thiết', 'danger')
            return redirect(url_for('diabetes'))

# CHẨN ĐOÁN BỆNH TIM
@app.route('/heart')
def heart():
    return render_template('heart.html')

def ValuePredictor(to_predict_list, size):
    loaded_model = joblib.load('models/heart_model')
    to_predict = np.array(to_predict_list).reshape(1, size)
    result = loaded_model.predict(to_predict)
    return result[0]

@app.route('/predict_heart', methods=['POST'])
def predict_heart():
    if request.method == 'POST':
        try:
            to_predict_list = request.form.to_dict()
            to_predict_list = list(to_predict_list.values())
            to_predict_list = list(map(float, to_predict_list))
            result = ValuePredictor(to_predict_list, 11)

            if(int(result) == 1):
                prediction = 1
            else:
                prediction = 0

            return render_template('h_result.html', prediction=prediction)
        except ValueError:
            flash(
                'Xin vui lòng điền đầy đủ thông tin cần thiết', 'danger')
            return redirect(url_for('heart'))

# CHẨN ĐOÁN UNG THƯ
filename_cancer = 'Models/cancer-model.pkl'
classifier_cancer = pickle.load(open(filename_cancer, 'rb'))
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

        data = np.array([[rad, tex, par, area, smooth, 
        compact, con, concave, sym, frac, 
        rad_se, tex_se, par_se, area_se, smooth_se, 
        compact_se, con_se, concave_se,sym_se, frac_se,
        rad_worst, tex_worst, par_worst, area_worst, smooth_worst, 
        compact_worst, con_worst, concave_worst, sym_worst, frac_worst]])
        my_prediction = classifier_cancer.predict(data)

        return render_template('c_result.html', prediction=my_prediction)

# SỨC KHOẺ THAI NHI
@app.route('/fetal_health', methods=['GET', 'POST'])
def fetal_health_prediction():
    if request.method == 'POST':
        # lấy dữ liệu form bằng phương thức POST
        data = request.form.to_dict()
        # chuyển dữ liệu form sang phương pháp dự đoán tùy chỉnh để nhận được kết quả
        result, status = fetal_health_value_predictor(data)
        if status:
            # nếu dự đoán xảy ra thành công thì trạng thái = True 
            # và sau đó chuyển đầu ra cho trang html
            return render_template('fetal_health.html', result=result)
        else:
            # nếu có bất kỳ lỗi nào xảy ra trong quá trình dự đoán thì thông báo lỗi sẽ được hiển thị
            return f'<h2>Error : {result}</h2>'

    #nếu người dùng gửi yêu cầu GET tới '/fetal_health' thì chúng tôi chỉ hiển thị trang html
    # trong đó có một form để dự đoán

    return render_template('fetal_health.html', result=None)

# chức năng này sử dụng để dự đoán đầu ra cho Sức khỏe thai nhi từ dữ liệu đã cho
def fetal_health_value_predictor(data):
    try:
        # sau khi lấy dữ liệu từ biểu mẫu html, chúng tôi thu thập các giá trị và
        # chuyển đổi thành mảng 2D numpy để dự đoán
        data = list(data.values())
        data = list(map(float, data))
        data = np.array(data).reshape(1, -1)
        # tải mô hình được đào tạo trước đã lưu để có dự đoán mới
        model_path = 'Models/fetal-health-model.pkl'
        model = pickle.load(open(model_path, 'rb'))
        result = model.predict(data)
        result = int(result[0])
        status = True
        # trả về giá trị đầu ra dự đoán
        return (result, status)
    except Exception as e:
        result = str(e)
        status = False
        return (result, status)

# CHẨN ĐOÁN ĐỘT QUỴ
@app.route('/stroke')
def stroke():
    return render_template('stroke.html')

def strokeValuePredictor(s_predict_list):
    model = joblib.load('Models/stroke_model.pkl')
    data = np.array(s_predict_list).reshape(1, -1)
    result = model.predict(data)
    return result[0]

@app.route('/predict_stroke', methods=['POST'])
# route này để dự đoán nguy cơ đột quỵ
def predict_stroke():
    if request.method == 'POST':
        s_predict_list = request.form.to_dict()
        s_predict_list = list(s_predict_list.values())
        #danh sách để giữ các giá trị của các mục từ điển của trường request.form
        s_predict_list = list(map(float, s_predict_list))
        result = strokeValuePredictor(s_predict_list)
        if(int(result) == 1):
            prediction = 1
        else:
            prediction = 0
        return render_template('st_result.html', prediction=prediction)

@app.route('/liver')
def liver():
    return render_template('liver.html')

def liverprediction(final_features):
    # Loading the pickle file
    model_path = 'Models/liver-disease_model.pkl'
    model = pickle.load(open(model_path, 'rb'))
    result = model.predict(final_features)
    return result[0]

@app.route('/predict_liver', methods=['POST'])
# xử lý
def predict_liver_disease():
    if request.method == 'POST':
        int_features = [float(x) for x in request.form.values()]
        final_features = [np.array(int_features)]
        output = liverprediction(final_features)
        pred = int(output)

        return render_template('liver_result.html', prediction=pred)

# SỐT XUẤT HUYẾT
@app.route("/malaria", methods=['GET', 'POST'])
def malaria():
    return render_template('malaria.html')

@app.route("/malariapredict", methods=['POST', 'GET'])
def malariapredict():
    if request.method == 'POST':
        try:
            if 'image' in request.files:
                img = Image.open(request.files['image'])
                img = img.resize((50, 50))
                img = np.asarray(img)
                img = img.reshape((1, 50, 50, 3))
                img = img.astype(np.float64)

                model_path = "Models/malaria-model.h5"
                model = tf.keras.models.load_model(model_path)
                pred = np.argmax(model.predict(img)[0])
        except:
            message = "Please upload an Image"
            return render_template('malaria.html', message=message)
    return render_template('malaria_predict.html', pred=pred)

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/about')
def about():
    return render_template('about.html')

@app.errorhandler(404)
def page_not_found(e):
    return render_template('404.html')
    
if __name__ == '__main__':
    app.run(debug=True)
