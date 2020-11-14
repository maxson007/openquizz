//
//  QuestionViiew.swift
//  OpenQizz
//
//  Created by Aymane DANIEL on 11/11/2020.
//

import UIKit

class QuestionView: UIView {

   @IBOutlet private var label: UILabel!
   @IBOutlet private var icon: UIImageView!
 
    var title = ""{
        didSet {
            label.text=title
        }
    }
    
    var style : Style  = .standard {
        didSet {
            setStyle(style)
        }
    }

    enum Style {
        case correct, incorrect, standard
    }
 
    
    private func setStyle(_ style: Style) {
        switch style {
        case .correct:
            backgroundColor = UIColor(red: 200.0/255.0, green: 236.0/255.0, blue: 160.0/255.0, alpha: 1) // Vert
            icon.image = UIImage(named: "Icon Correct")
            icon.isHidden = false
        case .incorrect:
            backgroundColor = UIColor(red: 243.0/255.0, green: 135.0/255.0, blue: 148.0/255.0, alpha: 1) // Rouge
            icon.image = #imageLiteral(resourceName: "Icon Error")
            icon.isHidden = false
        case .standard:
            backgroundColor = UIColor(red: 191.0/255.0, green: 196.0/255.0, blue: 201.0/255.0, alpha: 1) // Gris
            icon.isHidden=true
        }
    }
}
