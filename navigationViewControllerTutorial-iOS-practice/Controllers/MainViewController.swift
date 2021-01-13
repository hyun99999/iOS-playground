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
    
    //뷰가 생성되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        view.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
}
