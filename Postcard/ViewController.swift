//
//  ViewController.swift
//  Postcard
//
//  Created by mihnea on 2015-03-18.
//  Copyright (c) 2015 mihnea. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        enterMessageTextField.delegate = self
        enterNameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        //testing git shit
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterNameTextField.text + enterMessageTextField.text
        messageLabel.textColor = UIColor.blueColor()
        
        
        enterMessageTextField.resignFirstResponder()
        sendMailButton.setTitle("mail sent", forState: UIControlState.Normal)
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if (textField == enterNameTextField) {
            enterMessageTextField.becomeFirstResponder()
            return false
        }
        
        if (textField == enterMessageTextField) {
            sendMailButtonPressed(sendMailButton)
        }
        return true
    }
}

