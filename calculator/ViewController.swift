//
//  ViewController.swift
//  calculator
//
//  Created by Eric Tolbert on 9/5/20.
//  Copyright © 2020 Eric Tolbert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var numberOnScreen = 0;
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton)
       {
            label.text = label.text! + String(sender.tag-1)
       }
    
    @IBAction func buttons(_ sender: UIButton)
    {
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            if sender.tag == 12
            { // Addition
                label.text = "+";
            }
            if sender.tag == 13
            { // Subtraction
                label.text = "-";
            }
            if sender.tag == 14
            { // Subtraction
                label.text = "*";
            }
            if sender.tag == 15
            { // Subtraction
                label.text = "/";
            }
        }
    }
    
    @IBAction func clear(_ sender: UIButton)
    {
        label.text = ""
    }
    
}

