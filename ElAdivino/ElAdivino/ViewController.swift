//
//  ViewController.swift
//  ElAdivino
//
//  Created by Daniel on 21/11/2018.
//  Copyright © 2018 DMontil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelAnsware: UILabel!
    var randomQuestion = 0
    var questions = [
            "¿Te gusta el trap?",
            "¿Prefieres gato o perro?",
            "¿C.tangana o Justin Bieber?",
            "¿Que mas queires pesado?",
            "¿Quieres morir?"
]
    var nQuestion : UInt32
    
    required init?(coder aDecoder: NSCoder) {
        nQuestion = UInt32(questions.count)
        super.init(coder : aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        genereteRandomQuestion()
        
    }

    @IBAction func buttonQuestionPressed(_ sender: Any) {
        genereteRandomQuestion()
        
    }
    func genereteRandomQuestion(){
        randomQuestion = Int(arc4random_uniform(nQuestion))
        
        self.labelAnsware.text = "\(questions[randomQuestion])"
        
    }
}

