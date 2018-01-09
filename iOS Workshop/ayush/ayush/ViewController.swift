//
//  ViewController.swift
//  ayush
//
//  Created by Apple/48 on 28/06/17.
//  Copyright © 2017 chitkara. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var username : UILabel!
    @IBOutlet var nameTxtField : UITextField!
    @IBOutlet var pwdTxtField : UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //all available delegate methods
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if(textField == nameTxtField){
             pwdTxtField.becomeFirstResponder()
        }
        else {
            pwdTxtField.resignFirstResponder()
        }
        return true
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if (textField == pwdTxtField){
            print(nameTxtField.text)
            print(pwdTxtField.text)
        }
        return true
    }
    
    @IBAction func loginpressed(sender : UIButton) {
        let story = self.storyboard?.instantiateViewController(withIdentifier: "successful") as! successful
        story.namestring = nameTxtField.text
        story.pwdstring = pwdTxtField.text
        
        self.navigationController?.pushViewController(story, animated: true)
        
    }
    @IBAction func signup(sender : UIButton) {
        let story1 = self.storyboard?.instantiateViewController(withIdentifier: "SignupViewController")
        
        self.navigationController?.pushViewController(story1!, animated: true)
        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

