//
//  ViewController.swift
//  filtrarLetras
//
//  Created by Giannina on 14/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var palabrasLabel: UILabel!
    @IBOutlet weak var textLabel: UITextField!
    
    var textBrain = TextBrain()
    
    @IBAction func textPressed(_ sender: UITextField) {
        textBrain.filtro = sender.text ?? ""
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        let nombresFiltrados: [String] = textBrain.filtrarLetras()
        palabrasLabel.numberOfLines = nombresFiltrados.count
        palabrasLabel.text = nombresFiltrados.joined(separator: "\n") // "traducción"
    }
}

