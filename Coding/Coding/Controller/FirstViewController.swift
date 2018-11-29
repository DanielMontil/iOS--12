//
//  FirstViewController.swift
//  Coding
//
//  Created by Daniel on 28/11/2018.
//  Copyright © 2018 DMontil. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var labelAge: UILabel!
    @IBOutlet weak var sliderAge: UISlider!
    
    var userName = ""
    var userAge = -1
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateAgeLabel()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Cerramos el teclado
        textField.resignFirstResponder()
        print("Hemos pulsado la tecla enter en un TextField")
        
        
        //Recuperamos el contenido del textField
        if let theText =  textField.text{
            print(theText)
            userName = theText
            
        }
        //Indicamos la finalizacion de la función.
        return true
    }

    @IBAction func sliderAgeMove(_ sender: UISlider) {
       self.updateAgeLabel()
        
    }
    
    func updateAgeLabel(){
        userAge = Int(self.sliderAge.value)
        self.labelAge.text = "\(userAge)"
    }
    @IBAction func validateData(_ sender: UIButton) {
        let shouldEnterTheParty = (userName == "Daniel Montil") || (userAge >= 18)
        
        
        if shouldEnterTheParty{
            print("Welcome to the party")
             self.view.backgroundColor = UIColor(red: 20.0/255.0, green: 50.0/255.0, blue: 50.0/255.0, alpha: 0.8)
        }else{
            print("Estas fuera")
             self.view.backgroundColor = UIColor(red: 250.0/255.0, green: 50.0/255.0, blue: 50.0/255.0, alpha: 0.8)   
        }
        
    }
}

