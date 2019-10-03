//
//  SecondViewController.swift
//  Delegate and Protocol
//
//  Created by Ashish on 10/3/19.
//  Copyright © 2019 Greenhouse. All rights reserved.
//

import UIKit
protocol DataPass {
    func dataPassing(name: String, address: String, city:String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
      @IBOutlet weak var txtAddress: UITextField!
      @IBOutlet weak var txtCity: UITextField!
    
    var delegate:DataPass!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func btnSave(_ sender: UIButton) {
        delegate.dataPassing(name: txtName.text!, address: txtAddress.text!, city: txtCity.text!)
    }
    
}
