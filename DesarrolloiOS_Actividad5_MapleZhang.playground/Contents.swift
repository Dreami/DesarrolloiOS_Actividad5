class Persona {
    var saludo = ""
    var pasos = 0
    
    func saludar(nombre:String) -> String {
        self.saludo = nombre
        return "\(self.saludo), mucho gusto."
    }
    
    func caminar(pasos:Int) -> String {
        self.pasos = pasos
        return "\(self.pasos) pasos caminados."
    }
}

var entidad = Persona()

print("\(entidad.saludar("Maple"))")
print("\(entidad.caminar(20))")

struct Pantalla{
    var alto:Int
    var ancho:Int
    
    init(alto:Int, ancho:Int) {
        self.alto = alto
        self.ancho = ancho
    }
    
    func getResolucion() -> (Int, Int) {
        return (self.ancho, self.alto)
    }
}

var iphone5 = Pantalla(alto:960, ancho:640)
print("Tamaño de resolucón de un iphone5: \(iphone5.getResolucion())")

extension Int {
    var horaASegundos:Int {
        return self*3600
    }
}
print("5 horas contiene \(5.horaASegundos) segundos")

extension String {
    func diaDeSemana() -> Int {
        switch self {
        case "Domingo":
            return 1
        case "Lunes":
            return 2
        case "Martes":
            return 3
        case "Miercoles":
            return 4
        case "Jueves":
            return 5
        case "Viernes":
            return 6
        case "Sabado":
            return 7
        default:
            return 0
        }
    }
}

print("\("Miercoles".diaDeSemana()) es Miercoles")

let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200]
var existe:Int?

existe = dias["DF"]
if existe == nil {
    print("no existe")
} else {
    print("si existe")
}