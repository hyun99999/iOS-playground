//
//  RegisterViewController.swift
//  navigationViewControllerTutorial-iOS-practice
//
//  Created by kimhyungyu on 2021/01/11.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var btnForLoginViewController: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationController?.isNavigationBarHidden = true
    }

    @IBAction func onLoginViewControllerBtnClicked(_ sender: UIButton) {
        //네비게이션 뷰 컨트롤러를 pop
        self.navigationController?.popViewController(animated: true)
    }
    
}
