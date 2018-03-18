//
//  SecondSubViewController.swift
//  p2
//
//  Created by ольга васильковская on 18.03.2018.
//  Copyright © 2018 владимир васильковский. All rights reserved.
//

import UIKit
var pageNum = 0
class SecondSubViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor=UIColor.black
        // Do any additional setup after loading the view.
        pageNum = pageNum + 1
        self.title = "Page\(pageNum)"
        let push = UIButton(frame: CGRect(x: 80, y: 120, width: 240, height: 40))
        push.setTitle("Рл", for: UIControlState())
        push.backgroundColor = UIColor.blue
        push.addTarget(self, action: #selector(SecondSubViewController.pushPage), for: UIControlEvents.touchUpInside)
        self.view.addSubview(push)
        
        let pop = UIButton(frame: CGRect(x: 80, y: 180, width: 240, height: 40))
        pop.setTitle("Иу", for: UIControlState())
        pop.backgroundColor = UIColor.blue
        pop.addTarget(self, action: #selector(SecondSubViewController.popPage), for: UIControlEvents.touchUpInside)
        self.view.addSubview(pop)
        let rect = CGRect(x: 9, y: 550, width: 380, height: 120 )
        let label = UILabel(frame: rect)
        label.text = "Здесь будут названия факультетов с дальнейшим переходом на кафедры,потом на курс и предметы ,но я не понимаю как привязать кнопки ,что написаны кодом к сториборду"
        let font = UIFont(name: "Arial", size: 18)
        label.numberOfLines = 5
        label.font = font
        label.textColor = UIColor.white
        label.backgroundColor = UIColor.black
        self.view.addSubview(label)    }
    @objc func pushPage()
    {
        let viewController = ViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    @objc func popPage()
    {
        self.navigationController?.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
