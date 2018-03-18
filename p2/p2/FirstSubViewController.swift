//
//  FirstSubViewController.swift
//  p2
//
//  Created by ольга васильковская on 18.03.2018.
//  Copyright © 2018 владимир васильковский. All rights reserved.
//

import UIKit

class FirstSubViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let img = UIImage(named :"IMG_4360.JPG")
        let imgView = UIImageView(image : img)
        self.view.addSubview(imgView)        // Do any additional setup after loading the view.
        let rect = CGRect(x: 9, y: 605, width: 380, height: 85 )
        let label = UILabel(frame: rect)
        label.text = "Добро пожаловать в pocketbro, для дальнейшего использования перелистните(бегемот в будущем- герб мгту)"
        let font = UIFont(name: "Arial", size: 18)
        label.numberOfLines = 3
        label.font = font
        label.textColor = UIColor.white
        label.backgroundColor = UIColor.black
        self.view.addSubview(label)    
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
