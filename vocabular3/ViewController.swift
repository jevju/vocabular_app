//
//  ViewController.swift
//  vocabular3
//
//  Created by Joakim Evju on 12/01/2018.
//  Copyright © 2018 Joakim Evju. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController {

    @IBOutlet weak var word_field: UITextField!
    @IBAction func add(_ sender: UIButton) {
        
        let id = 3
        let word = word_field.text
        
        let temp = Word()
        if temp.addWord(id:id, word:word!){
            print("Success return")
            print(word!)
        }
        else{
            print("Not successfull")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
       
 
       
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

