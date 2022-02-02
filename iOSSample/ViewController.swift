//
//  ViewController.swift
//  iOSSample
//
//  Created by DAO QUAN on 2022/01/18.
//

import UIKit

class ViewController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var myControllers = [UIViewController]()
    
    @IBAction func pushButton(sender:UIButton) {
        presentPageVC()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let colors:[UIColor] = [.cyan, .orange, .systemBlue]
        for color in colors {
            
            let vc = UIViewController()
            vc.view.backgroundColor = color
            myControllers.append(vc)
        }
    }
    
    func presentPageVC() {
        
        guard let first = myControllers.first else {
            return
        }
        let pvc = UIPageViewController(transitionStyle: .pageCurl,
                                       navigationOrientation: .horizontal,
                                       options: nil)
        pvc.delegate = self
        pvc.dataSource = self
        
        pvc.setViewControllers([first],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        
        present(pvc, animated: true)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let index = myControllers.firstIndex(of: viewController), index > 0 else {
            return nil
        }
        
        let before = index - 1
        return myControllers[before]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = myControllers.firstIndex(of: viewController), index < (myControllers.count - 1)  else {
            return nil
        }
        
        let after = index + 1
        return myControllers[after]
    }
}

