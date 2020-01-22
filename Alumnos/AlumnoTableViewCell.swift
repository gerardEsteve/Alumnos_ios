//
//  AlumnoTableViewCell.swift
//  Alumnos
//
//  Created by curs on 29/1/19.
//  Copyright © 2019 curs. All rights reserved.
//

import UIKit

class AlumnoTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var labelNombre: UILabel!
    @IBOutlet private weak var labelApellido1: UILabel!
    @IBOutlet private weak var alumnoImageView: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setData(alumno: Alumno) {
        labelNombre.text = alumno.name
        labelApellido1.text = alumno.lastName
        alumnoImageView.image = UIImage.init(named: "profilepic.png")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
