//
//  RegistrationVC.swift
//  SideKick
//
//  Created by admin on 2/11/21.
//  Copyright © 2021 Debjit Jana. All rights reserved.
//

import UIKit

class RegistrationVC: UIViewController {
    
    @IBOutlet weak var userRegVW : UIView!
    @IBOutlet weak var gymTrainerVW : UIView!
    @IBOutlet weak var loadObjcVW : UIView!
    
    //MARK:- IBAction
    @IBAction func userRegBtnAction(_ sender : UIButton){
        gymTrainerVW.removeFromSuperview()

        userRegVW.frame = CGRect(x: 0, y: 0, width: loadObjcVW.frame.size.width, height: loadObjcVW.frame.size.height)
        self.loadObjcVW.addSubview(userRegVW)
    }
    @IBAction func gymTrainerRegBtnAction(_ sender : UIButton){
        userRegVW.removeFromSuperview()

        gymTrainerVW.frame = CGRect(x: 0, y: 0, width: loadObjcVW.frame.size.width, height: loadObjcVW.frame.size.height)
        self.loadObjcVW.addSubview(gymTrainerVW)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }

}
