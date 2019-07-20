//
//  PageViewController.swift
//  Tax -N- Tip
//
//  Created by Daren Davis on 7/6/19.
//  Copyright © 2019 DarenDavis.com. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {

    lazy var listOfViewControllers: [UIViewController] = { //page in reverse order
        return [self.newVc(viewController: "sbTax"),
                self.newVc(viewController: "sbTip")]
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource = self
        if let firstViewController = listOfViewControllers.first {
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        }
    }
    
    func newVc(viewController: String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: viewController)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = listOfViewControllers.firstIndex(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            return listOfViewControllers.last
        }
        
        guard listOfViewControllers.count > previousIndex else {
            return nil
        }
        
        return listOfViewControllers[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = listOfViewControllers.firstIndex(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        
        guard listOfViewControllers.count != nextIndex else {
            return listOfViewControllers.first
        }
        
        guard listOfViewControllers.count < nextIndex else {
            return nil
        }
        
        return listOfViewControllers[nextIndex]
    }
    
}
