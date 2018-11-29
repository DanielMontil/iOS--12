//
//  SecondViewController.swift
//  Coding
//
//  Created by Daniel on 28/11/2018.
//  Copyright © 2018 DMontil. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var textViewResult: UITextView!
    @IBOutlet weak var labelNumber: UILabel!
    var fibonacci :[Int] = [0,1]
    
    var fibId = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func generateFibNumbers(){
        if (fibId<=1 || fibId>100){
            return
        }
        //Generar los numeros de Fibb hasta el fibID
        for i in 2...fibId {
            fibonacci.append(fibonacci[i-1] + fibonacci[i-2])
        }
        
    }

    @IBAction func stepperPressed(_ sender: UIStepper) {
        
        self.fibId = Int(sender.value)
        self.labelNumber.text = "\(fibId)"
    }
}

