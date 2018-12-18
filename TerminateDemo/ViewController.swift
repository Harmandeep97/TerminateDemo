//
//  ViewController.swift
//  TerminateDemo
//
//  Created by SIERRA on 8/28/18.
//  Copyright © 2018 SIERRA. All rights reserved.
//

import UIKit

protocol SendRequest {
    
    func refresh()
    
}

class ViewController: UIViewController,SendRequest {

    @IBOutlet var llbOut: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func refresh() {
        
        alert(title: "Alert", message: "Its Working !!!")
    }
    
    //MARK:=======================ALert View============================
    func alert(title:String , message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
        self.present(alert, animated: false, completion: nil)
    }
}

