
class Alumno : FullNameable {
    
    var name: String?
    var lastName: String?
    var lastName2: String?
    var age: Int?
    var course: String?
    
    var fullName: String {
        return "\(name!) \(lastName!) \(lastName2!)"
    }
    
    // Si posem = 0, donem el valor per defecte de la edad si no se li pasa al inicialitzar.
    init(name: String, lastName:String, lastName2: String, age: Int = 0, course: String = "") {
        self.name = name
        self.lastName = lastName
        self.lastName2 = lastName2
        self.age = age
        self.course = course
    }
}
