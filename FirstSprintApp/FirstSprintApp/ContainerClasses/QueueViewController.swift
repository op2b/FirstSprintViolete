//
//  QueueViewController.swift
//  FirstSprintApp
//
//  Created by Svetlana Timofeeva on 28/10/2019.
//  Copyright © 2019 Artem Esolnyak. All rights reserved.
//

import UIKit

class QueueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let primaryColor = UIColor(red: 210/255, green: 109/255, blue: 128/255, alpha: 1)
        let secondaryColor = UIColor(red: 107/255, green: 148/255, blue: 230/255, alpha: 1)
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        print("hello, i'm queue!")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
