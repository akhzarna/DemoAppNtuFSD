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
    
    var chapterList = [String]()
    
    
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
            
            
        chapterList.append("Apple")
        chapterList.append("Amazon")
        chapterList.append("NTU")
            
            
            chapterList.append("Apple")
            chapterList.append("Amazon")
            chapterList.append("NTU")

//        chapterList += ["Google"]
//        for item in chapterList {
//            print(item)
//        }
            
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

// MARK: - UITableView delegate methods

extension RegisterViewController : UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.chapterList.count
    }
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

extension RegisterViewController : UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let identifier="myCellTableViewCellID"
        
        let cell=tableView.dequeueReusableCell(withIdentifier: identifier) as! myCellTableViewCell
                
        cell.lblTitle.text = self.chapterList[indexPath.row]
        
//        cell.lblNumbering.text =  obj
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "NewViewControllerID") as? NewViewController
        self.navigationController?.pushViewController(vc!, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)

    }
    
}

