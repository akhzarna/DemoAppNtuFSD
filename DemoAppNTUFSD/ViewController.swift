//
//  ViewController.swift
//  DemoAppNTUFSD
//
//  Created by Akhzar Nazir on 27/02/2020.
//  Copyright © 2020 letlechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var txtLogin: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func BtnSubmit(_ sender: Any) {
        
        print("In The Name Of Allah")
        
        lblTitle.text = "In The Name Of Allah"
        
        
        
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "RegisterViewControllerID") as? RegisterViewController
        
        vc?.flagvariable = "My value Lay Jao"
        self.navigationController?.pushViewController(vc!, animated: true)
        
        
        
    }
    

}

