//
//  PopUpViewController.swift
//  customPopUpTutorial-iOS-practice
//
//  Created by kimhyungyu on 2021/01/14.
//

import UIKit

class CustomPopUpViewController: UIViewController {
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var gotoBtn: UIButton!
    @IBOutlet weak var bgBtn: UIButton!
    
    var gotoBtnCompletionClosure: (()-> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("CustomPopUpViewController - viewDidLoad() called")
        contentView.layer.cornerRadius = 30
        gotoBtn.layer.cornerRadius = 10
    }
    
    @IBAction func onBgBtnClicked(_ sender: UIButton) {
        print("customPopUpViewController - onBgBtnClicked() called")
        //현재 창 닫기
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func onGotoBtnClicked(_ sender: UIButton) {
        print("customPopUpViewController - onGotoBtnClicked() called")
        //창 닫기
        self.dismiss(animated: true, completion: nil)
        
        //클릭 시 웹뷰에 깃허브 띄우기.
        //클릭 시 메인뷰는 이 버튼이 눌린지 알아야한다. 비동기 처리.
        //컴플레션 블럭 호출
        if let gotoBtnCompletionClosure = gotoBtnCompletionClosure{
            //viewController 메인에 알린다.
            gotoBtnCompletionClosure()
        }
    }
    
    
}
