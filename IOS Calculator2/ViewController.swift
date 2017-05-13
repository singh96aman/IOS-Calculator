//
//  ViewController.swift
//  IOS Calculator2
//
//  Created by Aman Singh Thakur on 13/05/17.
//  Copyright © 2017 developinnovate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen:Double = 0
    var previousNumber:Double = 0
    var performingMath = false
    var operation = 0

    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func numbers(sender: UIButton) {
        
        if performingMath == true
        {
            label.text = String(sender.tag)
            numberOnScreen = Double(label.text!)!
            performingMath = false
            
        }
        else
        {
            label.text = label.text!+String(sender.tag)
            numberOnScreen = Double(label.text!)!
        }
        
    }
    
    @IBAction func buttons(sender: UIButton) {
        if label.text != "" && sender.tag != 10 && sender.tag != 15
        {
            
            previousNumber = Double(label.text!)!
            
            if sender.tag == 11 // Divide
            {
                label.text="/";
            }
            if sender.tag == 12 // Multiply
            {
                label.text="X";
            }
            if sender.tag == 13 // Minus
            {
                label.text="-";
            }
            if sender.tag == 14 // Plus
            {
                label.text="+";
            }
            
            performingMath = true
            
            operation=sender.tag
        }
        if sender.tag == 15
        {
            if operation == 11
            {
                label.text = String(previousNumber / numberOnScreen)

            }
            if operation == 12
            {
                label.text = String(previousNumber * numberOnScreen)

            }
            if operation == 13
            {
                label.text = String(previousNumber - numberOnScreen)

            }
            if operation == 14
            {
                label.text = String(previousNumber + numberOnScreen)
            }
        }
        else if sender.tag == 10
        {
            label.text = ""
            previousNumber=0
            numberOnScreen=0
            operation=0
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

