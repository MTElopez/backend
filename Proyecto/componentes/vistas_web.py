from flask import render_template
from flask import jsonify
from main import app
from componentes.modelos import Juegos
from componentes.modelos import ImagenJuego
from componentes.modelos import Usuario

@app.route('/')
def mos_juegos():
    juegos = Juegos.obtener()
    return render_template('./base.html', juegos=juegos)

@app.route('/imagen')
def mos_imagen():
    imagen = ImagenJuego.obtener()   
    return render_template('./imagen.html', imagen=imagen)

@app.route('/usuario')
def mos_usuario():
    usuario = Usuario.obtener()   
    return render_template('./usuario.html', usuario=usuario)