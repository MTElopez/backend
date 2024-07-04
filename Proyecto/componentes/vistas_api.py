from flask import jsonify
from main import app
from flask import request
from componentes.modelos import Juegos
from componentes.modelos import ImagenJuego
from componentes.modelos import Usuario


@app.route('/api-pc/juegos', methods=['GET'])
def mostrar_juegos():
    juegos = Juegos.obtener()
    dicc_juegos = [j.__dict__ for j in juegos]
    return jsonify(dicc_juegos)

@app.route('/api-pc/imagen', methods=['GET'])
def mostrar_imagen():
    imagen = ImagenJuego.obtener()
    dicc_imagen = [i.__dict__ for i in imagen]
    return jsonify(dicc_imagen)


@app.route('/api-pc/usuario', methods=['GET'])
def mostrar_usuario():
    usuario = Usuario.obtener()
    dicc_usuario = [u.__dict__ for u in usuario]
    return jsonify(dicc_usuario)

@app.route('/api-pc/usuario/<int:id>', methods=['GET'])
def eliminar_usuario(id):
    if request.method == 'GET':
        eli_usuario = Usuario.eliminar(id)
        return eli_usuario
        


@app.route("/api-pc/usuario", methods=['POST'])
def crear_usuario():
    if request.method == 'POST':
        datos = request.json["datos"]
        print(datos)
        cta_nueva = Usuario(
            datos['nombre'],
            datos['apellido'],
            datos['edad'],
            datos['email'],
            datos['contraseña']
        )
        
        respuesta = {}
        
        try:
            cta_nueva.guardar_db()
            respuesta['mensaje'] = 'Cuenta creada con éxito!'
            respuesta['status'] = 200
        except Exception as e:
            respuesta['mensaje'] = 'No se puedo crear la cuenta!'
            respuesta['status'] = 409
            
    else:
        respuesta['mensaje'] = 'No se recibieron datos.'
        respuesta['status'] = 204    

    return jsonify(respuesta)