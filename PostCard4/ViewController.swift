//
//  ViewController.swift
//  PostCard4
//
//  Created by Moamen on 6/9/15.
//  Copyright (c) 2015 RadiantApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNametextfield: UITextField!
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
    
    @IBAction func sendCongratsButtonPressed(sender: UIButton) {
        nameLabel.hidden = false
        nameLabel.text = enterNametextfield.text
        nameLabel.textColor = UIColor.blueColor()
        enterNametextfield.text = ""
        enterNametextfield.resignFirstResponder()
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        
        mailButton.setTitle("Congrats Sent", forState: UIControlState.Normal)
    }
    
}
