
import UIKit

class ViewController: UIViewController {
    
    // @IBOutlet Conexion con la vista
    // Sempre ha de ser una referencia Weak, per no tenir fallos de memoria. Sempre posar: @IBOutlet weak var
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var lastName2TextField: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var fullNameLabel: UILabel!
    
    var delegate: AddAlumnoDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // @IBAction --> conecta amb la vista
    // sender --> indica a qui el podem "linkar"
    // amb la _ no cal especificar el nom del parametre al cridar a la funció
    @IBAction func createAlumno(_ sender: UIButton) {
        
        let strName = nameTextField.text
        let strLastName = lastNameTextField.text
        let strLastName2 = lastName2TextField.text
        
        let alumno = Alumno(name: strName!, lastName: strLastName!, lastName2: strLastName2!)
        
        delegate.addedAlumno(alumno: alumno)
        
        self.dismiss(animated: true, completion: nil)
        
        fullNameLabel.text = alumno.fullName
    }
}

