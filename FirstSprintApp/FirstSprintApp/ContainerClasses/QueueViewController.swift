//
//  QueueViewController.swift
//  FirstSprintApp
//
//  Created by Svetlana Timofeeva on 28/10/2019.
//  Copyright © 2019 Artem Esolnyak. All rights reserved.
//

import UIKit

class QueueViewController: UIViewController {
    
    
    let queue = Queue<String>()
    
    @IBOutlet weak var listLabel: UILabel!
    @IBOutlet weak var textField : UITextField!
    
    @IBAction func enqueuePerson(_ sender: Any) {
        guard let text = textField.text else { return }
        queue.append(text)
        textField.text = ""
        listLabel.text = "Люди в очереди:\n \(queue)"
    }
    
    
    @IBAction func dequeuePerson(_ sender: Any) {
        guard let text = textField.text else { return }
        queue.pop()
        textField.text = ""
        listLabel.text = "Люди в очереди:\n \(queue)"
    }
    
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
