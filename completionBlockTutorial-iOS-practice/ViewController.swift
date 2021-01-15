//
//  ViewController.swift
//  completionBlockTutorial-iOS-practice
//
//  Created by kimhyungyu on 2021/01/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("ViewController - viewDidLoad() called")
        sayHi(completion: {result in
            print("\(result)")
        })
    }

    fileprivate func sayHi(completion: @escaping(String) -> ()){
        print("hi")
        //딜레이 주기.
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
//            print("hi-delay")
            //sayhi가 끝나는 시점을 전달
            completion("hi")
        }
    }
}

