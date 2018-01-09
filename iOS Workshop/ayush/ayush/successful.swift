//
//  successful.swift
//  ayush
//
//  Created by Apple/48 on 28/06/17.
//  Copyright © 2017 chitkara. All rights reserved.
//

import UIKit

class successful: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var captcha : UITextField!
    @IBOutlet var namestring : String!
    @IBOutlet var pwdstring : String!
    var imageArr : NSArray!
    var nameArr  : NSArray!
    var urlArr : [String] = ["https://www.facebook.com/ayush.singla.12327" , "https://www.facebook.com/gargguneet" , "https://www.facebook.com/gurprateek.singhtiwana" , "https://www.facebook.com/ChitkaraU/" , "https://www.facebook.com/mukul.puri1" , "https://www.facebook.com/diwanshu.jetwani.5"]
   

    @IBOutlet var myTableViewCell : UITableView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        imageArr = ["Ayush.jpg" , "Guneet.jpg", "Chitkara" , "Diwanshu.jpg" , "Gurprateek.jpg" , "Mukul.jpg" ]
        nameArr = ["Ayush" , "Guneet", "Chitkara" , "Diwanshu" , "Gurprateek" , "Mukul" ]
        
        
        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//table view delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return imageArr.count
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "myTableViewCell", for: indexPath as IndexPath ) as! myTableViewCell
    
    //cell.imagevVC.image = UIImage(named: (imageArr.object(at: indexPath.row))
    
    cell.namelabel.text = nameArr.object(at: indexPath.row) as? String
    let imgstring = imageArr.object(at: indexPath.row) as? String
    cell.imagevVC.image = UIImage(named:imgstring!)
    
    
    return cell
        
   }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let Story = self.storyboard?.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
        Story.urlstring = urlArr[indexPath.row]
        self.navigationController?.pushViewController(Story, animated: true)
        
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
