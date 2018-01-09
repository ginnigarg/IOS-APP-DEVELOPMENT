//
//  ViewController.swift
//  firstProject
//
//  Created by gurprateek on 27/06/17.
//  Copyright © 2017 gurprateek. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var nameLabel : UILabel!
    @IBOutlet var image22 : UIImageView!
    
    @IBOutlet var nameTxtField : UITextField!
     @IBOutlet var passwordTxtField : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("hey I'm here")
        
        nameLabel.text = "now I have changed"
        nameLabel.textColor = UIColor.red
       /// image22.image = UIImage (named:"leh.jpg")
    
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // now going to write all available delegate methods for UITEXTFIELD DELEGATE
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        
        if (textField == nameTxtField)
        {
        passwordTxtField.becomeFirstResponder()
        }
            else
            {
            passwordTxtField.resignFirstResponder()
            }
            
        
       // textField.resignFirstResponder()
        return true
    }
   
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        
        print (nameTxtField.text, passwordTxtField.text)
        
        return true
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func LoginPressed(sender: UIButton)  {
    
   let Story = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! secondViewController
        
        Story.userString = nameTxtField.text
        Story.passString = passwordTxtField.text
         
        self.navigationController?.pushViewController(Story, animated: true)
    
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

