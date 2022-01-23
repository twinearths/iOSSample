//
//  ViewController.swift
//  iOSSample
//
//  Created by DAO QUAN on 2022/01/18.
//

import UIKit


class ViewController: UIViewController {

    @objc func buttonTappe(sender:UIButton) {
        let ctr = UIViewController(nibName: nil, bundle: nil)
        ctr.title = "第２画面"
        ctr.view.backgroundColor = .cyan
        navigationController?.pushViewController(ctr, animated: true)
    }
    
    override func viewDidLoad() {
        title = "第1画面"
        view.backgroundColor = .white
        
        let button = UIButton(frame: CGRect(origin: .zero, size: CGSize(width: 150, height: 44)))
        button.setTitle("第２画面へ", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(buttonTappe), for: .touchUpInside)
        view.addSubview(button)
        button.center = view.center
        super.viewDidLoad()
    }
}

