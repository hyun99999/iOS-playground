//
//  ViewController.swift
//  completionBlockTutorial-iOS-practice
//
//  Created by kimhyungyu on 2021/01/15.
//

import UIKit
import KRProgressHUD

class ViewController: UIViewController {

    @IBOutlet weak var mainTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("ViewController - viewDidLoad() called")
        //progressbar
        KRProgressHUD.show()
        sayHi(completion: {result in
            print("\(result)")
            KRProgressHUD.showSuccess()
            //progress bar 가 성공하면 라벨의 내용을 바꾼다.
            self.mainTitle.text = result
            
        })
    }

    fileprivate func sayHi(completion: @escaping(String) -> ()){
        print("hi")
        //딜레이 주기.
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
//            print("hi-delay")
            //sayhi가 끝나는 시점을 전달
            completion("hi!")
        }
    }
}

