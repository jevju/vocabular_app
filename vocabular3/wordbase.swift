//
//  wordbase.swift
//  vocabular3
//
//  Created by Joakim Evju on 12/01/2018.
//  Copyright © 2018 Joakim Evju. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Word{
    
    func addWord(id: Int, word: String) -> Bool{
        //Storing core data
       
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let newWord = NSEntityDescription.insertNewObject(forEntityName: "Wordbase", into: context)
        
        newWord.setValue(id, forKey: "id")
        newWord.setValue(word, forKey: "words")
        
        do{
            try context.save()
            print("Saved")
            return true
        }
        catch{
            print("Not saved")
            return false
        }
    }
    
    func fetchWord(){
        
    }
}

