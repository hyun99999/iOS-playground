//
//  ViewController.swift
//  customPopUpTutorial-iOS-practice
//
//  Created by kimhyungyu on 2021/01/14.
//

import UIKit
import WebKit

class ViewController: UIViewController, PopUpDelegate {
    
    

    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var creatPopUpBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onCreatePopUpBtnClicked(_ sender: UIButton) {
        print("ViewController - onCreatePopUpBtnClicked()")
        //스토리 보드 가져오기
        let storyboard = UIStoryboard.init(name: "PopUp", bundle: nil)
        //스토리보들르 통해 뷰컨트롤러 가져오기
        let customPopUpVC = storyboard.instantiateViewController(identifier: "AlertPopUpVC") as CustomPopUpViewController

        //뷰 컨트롤러가 보여지는 스타일
        //custompopupvc 가 뒤덮는다
        customPopUpVC.modalPresentationStyle = .overCurrentContext
        //뷰 컨트롤러가 사라지는 스타일
        customPopUpVC.modalTransitionStyle = .crossDissolve
        //다른 뷰 컨트롤러를 보여준다.(네비게이션 컨트롤러가 아니기 때문에 이런 식으로 추가)
        
        //custompopupvc 가 클로저를 가지고있다.
        customPopUpVC.gotoBtnCompletionClosure = {
            print("컴플레션 블럭이 호출되었다.")
            let myGithubUrl = URL(string: "https://github.com/hyun99999")
            self.myWebView.load(URLRequest(url: myGithubUrl!))
        }
        //여기서 self 는 뷰컨트롤러가 아닌 프로토콜인 PopUpDelegate 이다.
        //CustomPopUpViewController 의 안의 프로토콜 PopUpDelegate 변수에 여기서 구현한 메서드를 넣는다.
        //버튼을 눌를 때 CustomPopUpViewController 의 함수 onGotoNaverBtnClicked가 호출되어서 여기서 정의한 메서드가 들어간 프로토콜도 실행.
        customPopUpVC.myPopUpDelegate = self
        
        self.present(customPopUpVC, animated: true, completion: nil)
         
    }
    
    //MARK: - PopUpDelegate methods
    func onGotoNaverBtnClicked() {
        print("ViewController - onGotoNaverBtnClicked()")
    }

}

