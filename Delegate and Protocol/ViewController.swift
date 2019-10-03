//
//  ViewController.swift
//  Delegate and Protocol
//
//  Created by Ashish on 10/3/19.
//  Copyright © 2019 Greenhouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataPass {
  
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblCity: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }


    @IBAction func btnGoToNext(_ sender: UIButton) {
        let secondVC = self.storyboard?.instantiateViewController(identifier: "Second") as! SecondViewController
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    func dataPassing(name: String, address: String, city: String) {
        lblName.text = name
        lblAddress.text = address
        lblCity.text = city
    }
}

