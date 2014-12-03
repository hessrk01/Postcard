//
//  ViewController.swift
//  Postcard
//
//  Created by Rodney Hess on 11/26/14.
//  Copyright (c) 2014 hess. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        nameLabel.text = enterNameTextField.text
        nameLabel.hidden = false
        enterNameTextField.text = ""
        //remove keyboard after pressing send mail
        enterNameTextField.resignFirstResponder()
        
        //change message to red
        nameLabel.textColor = UIColor.redColor()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        messageLabel.text = enterMessageTextField.text
        messageLabel.hidden = false
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        messageLabel.textColor = UIColor.blueColor()
        enterNameTextField.hidden = true
        
    }

}

