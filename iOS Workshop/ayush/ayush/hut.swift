//
//  hut.swift
//  ayush
//
//  Created by Apple/48 on 29/06/17.
//  Copyright © 2017 chitkara. All rights reserved.
//

import UIKit

class hut: UIViewController {
    @IBOutlet var hut : UIWebView!
    var urlArr : NSArray!

    override func viewDidLoad() {
        super.viewDidLoad()
        urlArr = ["https://www.facebook.com/ayush.singla.12327" , " https://www.facebook.com/gargguneet" , "https://www.facebook.com/gurprateek.singhtiwana" , "https://www.facebook.com/ChitkaraU/" , "https://www.facebook.com/mukul.puri1" , "https://www.facebook.com/diwanshu.jetwani.5"]
        
        hut.loadRequest(URLRequest(url: URL(string: "https://www.google.co.in")!))

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
