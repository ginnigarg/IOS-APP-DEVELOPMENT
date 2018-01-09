//
//  SignupViewController.swift
//  ayush
//
//  Created by Apple/48 on 28/06/17.
//  Copyright © 2017 chitkara. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {
    
    @IBOutlet var name1 : UILabel!
    @IBOutlet var name2 : UILabel!
    @IBOutlet var usrname : UILabel!
    @IBOutlet var pwd : UILabel!
    @IBOutlet var cnfrm : UILabel!
    @IBOutlet var email : UILabel!
    
    @IBOutlet var name1TxtField : UITextField!
    @IBOutlet var name2TxtField : UITextField!
    @IBOutlet var usrnameTxtField : UITextField!
    @IBOutlet var pwd1TxtField : UITextField!
    @IBOutlet var pwd2TxtField : UITextField!
    @IBOutlet var emailTxtField : UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if(textField == name1TxtField){
            name1TxtField.resignFirstResponder()
            name2TxtField.becomeFirstResponder()
        }
        else
            if(textField == name2TxtField){
                 name2TxtField.resignFirstResponder()
                usrnameTxtField.becomeFirstResponder()
        }
        else
                if(textField == usrnameTxtField){
                    pwd1TxtField.becomeFirstResponder()
        }
        else
                    if(textField == pwd1TxtField){
                        pwd2TxtField.becomeFirstResponder()
        }
        else
                        if(textField == pwd2TxtField){
                            emailTxtField.becomeFirstResponder()
        }
        else
                            if(textField == emailTxtField){
                                emailTxtField.resignFirstResponder()
        }
        
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
