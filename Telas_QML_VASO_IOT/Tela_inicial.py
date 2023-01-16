from PySide6.QtQml import QQmlApplicationEngine
from PySide6.QtGui import QGuiApplication   
from PySide6.QtCore import QObject, Slot

class Ponte(QObject):
    @Slot(str, result=list)
    def fetch_image(self,pokemon_id):
        image_path = "Feliz"
        print(image_path)
        return str(image_path),'green',"image/emo-cute-emo.gif"

app = QGuiApplication()
engine = QQmlApplicationEngine()
engine.load('Tela_conf.qml')    

ponte = Ponte()
context = engine.rootContext()
context.setContextProperty('ponte', ponte)

app.exec()