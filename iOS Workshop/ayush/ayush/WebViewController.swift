//
//  webViewController.swift
//  firstProject
//
//  Created by prateek sharma on 29/06/17.
//  Copyright © 2017 prateek sharma. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    @IBOutlet var webView : UIWebView!
    var urlstring : String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.loadRequest(URLRequest(url: URL(string: urlstring)!))
        
        // Do any additional setup after loading the view.
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
