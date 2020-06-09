//
//  ViewController.swift
//  UserDefaults
//
//  Created by Josue Durand on 6/4/20.
//  Copyright © 2020 Josue Durand. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var texto: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    override func didReceiveMemoryWarning() {
        // Do any additional setup after loading the view.
    }

    @IBAction func guardar(_ sender: UIButton) {
        UserDefaults.standard.set(texto.text, forKey: "valor")
        texto.text = ""
        texto.resignFirstResponder()
    }
    
    @IBAction func mostrar(_ sender: UIButton) {
        let resultado = UserDefaults.standard.object(forKey: "valor")
        texto.text = resultado as? String
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
}

