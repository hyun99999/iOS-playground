//
//  MainViewController.swift
//  navigationViewControllerTutorial-iOS-practice
//
//  Created by kimhyungyu on 2021/01/13.
//

import UIKit

class MainViewController: UIViewController {
    
    //제목
    var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "main screen"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textColor = UIColor.white
        return label
    }()
    
    let changeBtn:UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("change background color", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        btn.backgroundColor = UIColor.white
        btn.layer.cornerRadius = 5
        //글자기준으로 여백 주기
        btn.contentEdgeInsets = UIEdgeInsets(top: 5, left: 20, bottom: 5, right: 20)
        btn.addTarget(self, action: #selector(changeBg), for: .touchUpInside)
        return btn
    }()
    
    var bgOrange: Bool?
    
    //뷰가 생성되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        bgOrange = true
        
        view.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(changeBtn)
        changeBtn.translatesAutoresizingMaskIntoConstraints = false
        changeBtn.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        changeBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    @objc fileprivate func changeBg(){
        print("MainViewController - changeBg() called")
        if bgOrange == true {
            view.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
            bgOrange = false
        } else {
            view.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
            bgOrange = true
        }
    }
}
