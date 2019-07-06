//
//  PageViewController.swift
//  Tax -N- Tip
//
//  Created by Daren Davis on 7/6/19.
//  Copyright © 2019 DarenDavis.com. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {

    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        <#code#>
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        <#code#>
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        <#code#>
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        <#code#>
    }
}
