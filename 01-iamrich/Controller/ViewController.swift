//
//  ViewController.swift
//  01-iamrich
//
//  Created by Daniel on 14/11/2018.
//  Copyright © 2018 DMontil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Propertys
    
    
    @IBOutlet weak var labelTitle: UILabel!
    
    @IBOutlet weak var imageViewDiamond: UIImageView!
    
    @IBOutlet weak var buttonPush: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Desarollando ando")
    }
        //Methods
    @IBAction func buttonPressed(_ sender: UIButton) {
            //Imprescindible crear un bototn para pdoer cerrarlo o es inutil
            let controller = UIAlertController(title: "I'am Rich", message: """
                                                                                I am Rich,
                                                                                I deserve it.
                                                                                I am good,
                                                                                healty and successfull
                                                                                """, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Aceptar", style: .default) { (action) in
            print("He pulsado el boton aceptar")
        }
        
        controller.addAction(action)
        self.show(controller, sender: nil)
        
        
        
        
        /* self.labelTitle.text = "Soy muy rico ahora"
        self.labelTitle.textColor = UIColor.orange
        self.imageViewDiamond.image = UIImage(named: "monopoly-image")
        self.buttonPush.setTitleColor(UIColor.orange, for: .normal)*/
    }
    
}

