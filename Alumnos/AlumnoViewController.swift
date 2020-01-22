
import UIKit

class AlumnoViewController: UIViewController {
    
    fileprivate var alumnos: [Alumno]!
    
    @IBOutlet weak var alumnosTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alumnosTableView.delegate = self
        alumnosTableView.dataSource = self
        alumnos = [Alumno]()
    }
    
    // Gestiona la navegacio de la vista cap a altres
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addAlumno" {
            let addAlumno = segue.destination as! ViewController
            addAlumno.delegate = self
        }
    }
}

extension AlumnoViewController: AddAlumnoDelegate {
    func addedAlumno(alumno: Alumno) {
        alumnos.append(alumno)
        alumnosTableView.reloadData()
    }
}

extension AlumnoViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellAlumno", for: indexPath) as! AlumnoTableViewCell
        cell.setData(alumno: alumnos[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
}

