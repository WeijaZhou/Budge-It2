//
//  FirstViewController.swift
//  Budget-It
//
//  Created by Weija Zhou on 2017-11-18.
//  Copyright © 2017 Weija Zhou. All rights reserved.
//
import UIKit

class viewController: UIViewController {
    
    @IBOutlet weak var myWebView: UIWebView!
    override func viewDidLoad() {
        print("HELELFL")
        myWebView.loadRequest(URLRequest(url: URL(string: "http://hardwirestudios.com")!))
        super.viewDidLoad()
        //Uncomment the line below if you want the tap n
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


