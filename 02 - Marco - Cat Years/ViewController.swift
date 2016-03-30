//
//  ViewController.swift
//  02 - Marco - Cat Years
//
//  Created by Marco Linhares on 6/4/15.
//  Copyright (c) 2015 Marco Linhares. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textAnswer: UITextField!
    
    @IBOutlet weak var labelAnswer: UILabel!
    
    @IBAction func buttonAge(sender: AnyObject) {
        var age = textAnswer.text?.toInt()
        
        if age != nil {
            age = age! * 7
            
            labelAnswer.text = "Cat age is \(age!) years"
        } else {
            labelAnswer.text = "Please enter a number in the box"
        }
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        
        return false
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

