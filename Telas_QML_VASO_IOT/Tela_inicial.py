from PySide6.QtQml import QQmlApplicationEngine
from PySide6.QtGui import QGuiApplication   
from PySide6.QtCore import QObject

app = QGuiApplication()
engine = QQmlApplicationEngine()
engine.load('Tela_conf.qml')

app.exec()