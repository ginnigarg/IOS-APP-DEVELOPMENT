//
//  secondViewController.swift
//  firstProject
//
//  Created by Ayush on 28/06/17.
//  Copyright © 2017 Ayush Singla. All rights reserved.
//

import UIKit

class secondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

     @IBOutlet var usernameLabel : UILabel!
     @IBOutlet var passwordLabel : UILabel!
    
    @IBOutlet var TableView : UITableView!
    
    var userString : String!
    var passString : String!
    var imageArr : NSArray!
    var nameArr : NSArray!
    var urlarr : [String] = [ "https://www.bing.com"  , "https://www.wikipedia.org" , "https://www.icloud.com" , "https://www.apple.com" , "https://www.google.com"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        imageArr = ["Ayush.jpg","Diwanshu.jpg","Guneet.jpg","Gurprateek.jpg","Mukul.jpg"]
        nameArr = ["Ayush","Diwanshu","Guneet","Gurprateek","Mukul"]
        
        usernameLabel.text = userString
        passwordLabel.text = passString
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // table view delegate
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return imageArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        let cell = tableView.dequeueReusableCell(withIdentifier: "myTableViewCell", for: indexPath as IndexPath) as! myTableViewCell
        
        
     //   cell.imageVC.image = UIImage(named:[imageArr .object(at: indexPath.row)])
        
        cell.nameLabel.text = nameArr.object(at: indexPath.row) as? String
        
        let Imgstring = imageArr.object(at: indexPath.row)as? String
        
        cell.imageVC.image = UIImage(named:Imgstring!)
        
        return cell
  
    }
    

        
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
            let Story = self.storyboard?.instantiateViewController(withIdentifier: "webViewController") as! webViewController
            
            Story.urlstring = urlarr[indexPath.row]
            
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
