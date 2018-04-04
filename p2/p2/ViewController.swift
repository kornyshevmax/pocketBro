//
//  ViewController.swift
//  p2
//
//  Created by ольга васильковская on 18.03.2018.
//  Copyright © 2018 владимир васильковский. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIScrollViewDelegate{
    var scrollView = UIScrollView()
    var pageControl=UIPageControl()
    var isPageControlUSed = false
    @IBAction func showThirdSubViewController(sender: AnyObject)
    {let secondViewController:ThirdSubViewController = ThirdSubViewController()
        self.present(secondViewController, animated: true, completion: nil)
        
    }
  //не нужный код,использую код максима за основу
    
    override func viewDidLoad() {
        
        
        var screenFrame = UIScreen.main.bounds
        let screenWidth = screenFrame.size.width
        let screenHeight = screenFrame.size.height
        
        scrollView.frame = screenFrame
        scrollView.isPagingEnabled = true
        scrollView.contentSize = CGSize(width: screenWidth * 2, height: screenHeight)
        scrollView.backgroundColor = UIColor.black
        scrollView.delegate = self
        
        let pcHeight:CGFloat = 50.0
        let pcRect = CGRect(x: 0,y: screenHeight - pcHeight,width: screenWidth,height: pcHeight)
        
        pageControl.frame = pcRect
        pageControl.numberOfPages = 2
        pageControl.currentPage=0
        pageControl.backgroundColor = UIColor.lightGray
        pageControl.addTarget(self, action: #selector(ViewController.pageControlDidChanged(_: )), for: UIControlEvents.valueChanged)
        
        let firstController = FirstSubViewController()
        screenFrame.origin.x = 0
        firstController.view.frame = screenFrame
        
        let secondController = SecondSubViewController()
        screenFrame.origin.x = screenFrame.size.width
        secondController.view.frame = screenFrame
        
        scrollView.addSubview(firstController.view)
        scrollView.addSubview(secondController.view)
        self.view.addSubview(scrollView)
        self.view.addSubview(pageControl)
        
    }
    @objc func pageControlDidChanged(_ sender:AnyObject)
    {
        let crtPage = (CGFloat)(pageControl.currentPage)
        var frame = scrollView.frame
        frame.origin.x = frame.size.width * crtPage
        frame.origin.y = 0
        scrollView.scrollRectToVisible(frame, animated : true)
        isPageControlUSed = true
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if(!isPageControlUSed)
        {
            let pageWidth = scrollView.frame.size.width
            let page = floor((scrollView.contentOffset.x - pageWidth/2)/pageWidth) + 1
            pageControl.currentPage = Int(page)
        }
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        isPageControlUSed = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

