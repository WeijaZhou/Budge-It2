//
//  SecondViewController.swift
//  Budget-It
//
//  Created by Weija Zhou on 2017-11-18.
//  Copyright © 2017 Weija Zhou. All rights reserved.
//
import UIKit
import SafariServices



class linktowebController: UIViewController {
    @IBOutlet weak var linkButton: UIButton!
    @IBAction func openWebPage(_ sender: Any){
        let SVD = SFSafariViewController(url: URL(string: "https://my.wealthsimple.com/app/public/region")!)
        self.present(SVD, animated:true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //    override func viewDidDisappear(_ animated: Bool) {
    //
    //    }
    //
    //
    
    
    
}
