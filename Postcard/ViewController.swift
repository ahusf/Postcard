//
//  ViewController.swift
//  Postcard
//
//  Created by ahusf on 9/29/14.
//  Copyright (c) 2014 Grand Thunder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Show message as a label
        messageLabel.text = enterNameTextField.text + ":" + enterMessageTextField.text
        messageLabel.hidden = false
        messageLabel.textColor = UIColor.blueColor()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        sender.setTitle("Mail Sent!", forState: UIControlState.Normal)
        
    }
    
    
}

