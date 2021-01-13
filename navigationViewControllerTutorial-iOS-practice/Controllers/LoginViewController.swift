//
//  ViewController.swift
//  navigationViewControllerTutorial-iOS-practice
//
//  Created by kimhyungyu on 2021/01/11.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //상단 네입게이션 바 부분 히든 처리.
        self.navigationController?.isNavigationBarHidden = true
        loginBtn.addTarget(self, action: #selector(moveToMainViewController), for: .touchUpInside)
        
    }
//스토리보드로 작성
    
    @IBAction func moveToMainViewController(_ sender: Any) {
        print("moveToMainViewController")
        let mainViewController = MainViewController()
        self.navigationController?.pushViewController(mainViewController, animated: true)
    }
     
//    @objc fileprivate func moveToMainViewController(){
//        print("move")
//    }
    
}

