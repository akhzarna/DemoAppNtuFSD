//
//  RegisterViewController.swift
//  DemoAppNTUFSD
//
//  Created by Akhzar Nazir on 27/02/2020.
//  Copyright © 2020 letlechnologies. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var flagvariable = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(flagvariable)
        print (GlobalManager.sharedInstance.count)
        
        
        
        print (UserDefaults.standard.bool(forKey: "Key"))
        print (UserDefaults.standard.integer(forKey: "Key"))
        print (UserDefaults.standard.string(forKey: "Key"))
        
        
        // Remove
        UserDefaults.standard.removeObject(forKey: "Key")
        
        //Remove all Keys
        if let appDomain = Bundle.main.bundleIdentifier {
        UserDefaults.standard.removePersistentDomain(forName: appDomain)
         }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
