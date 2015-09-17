//
//  ViewController.swift
//  lab2
//
//  Created by Roman Ivaniv on 20.05.15.
//  Copyright (c) 2015 Roman Ivaniv. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var outputText: UITextView!
    @IBOutlet weak var modeController: UISegmentedControl!
    
    @IBAction func changedMode(sender: AnyObject) {
        if modeController.selectedSegmentIndex == 0 {
            inputText.text = encryption.encrypt(inputText.text)
            outputText.text = encryption.encrypt(inputText.text)
        }
        if modeController.selectedSegmentIndex == 1 {
            outputText.text = encryption.encrypt(encryption.encrypt(inputText.text))
            inputText.text = encryption.encrypt(inputText.text)
            
        }
    }
 
    @IBAction func inputTextChanged(sender: UITextField) {
        outputText.text = encryption.encrypt(inputText.text)

    }
    
    let encryption = Encryption()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}

