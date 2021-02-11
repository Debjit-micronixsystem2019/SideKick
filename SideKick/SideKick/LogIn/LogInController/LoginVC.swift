//
//  LoginVC.swift
//  SideKick
//
//  Created by admin on 2/11/21.
//  Copyright © 2021 Debjit Jana. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    //MARK:- IBAction
    @IBAction func registrationBtnAction(_ sender : UIButton){
        let storyboard = UIStoryboard(name: "Registration", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "RegistrationVC") as? RegistrationVC else {
            return
        }
//        vc.pushViewController.navigationController?(vc, animated: true)
//
//        let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
//        let VC = mainStoryBoard.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
          UIApplication.shared.windows.first?.rootViewController = UINavigationController(rootViewController: vc)
                     UIApplication.shared.windows.first?.makeKeyAndVisible()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
//    private func navigateToDashboard() {
//        guard let dashboardController = UIStoryboard(name: DashboardConstants.storyboardIdentifier, bundle: nil).instantiateInitialViewController() as? DashboardTabBarController else {
//            return
//        }
//
//        self.navigationController?.pushViewController(dashboardController, animated: false)
//
//        UIView.transition(from: self.view, to: dashboardController.view, duration: 1, options: .transitionFlipFromLeft, completion: nil)
//    }
    

}
