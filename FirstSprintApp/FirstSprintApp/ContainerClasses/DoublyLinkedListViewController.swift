//
//  DoublyLinkedListViewController.swift
//  FirstSprintApp
//
//  Created by Svetlana Timofeeva on 28/10/2019.
//  Copyright © 2019 Artem Esolnyak. All rights reserved.
//

import UIKit

class DoublyLinkedListViewController: UIViewController {

    
    let list = List<String>()
    
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let primaryColor = UIColor(red: 210/255, green: 109/255, blue: 128/255, alpha: 1)
        let secondaryColor = UIColor(red: 107/255, green: 148/255, blue: 230/255, alpha: 1)
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        print("hello, i'm list!")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addPersonToList(_ sender: Any) {
        guard let text = textField.text else { return }
        list.append(text)
        textField.text = ""
        var str = "["
        for i in (0..<list.count-1) {
            str += "\(list[i]!), "
        }
        str += "\(list[list.count - 1]!)]"
        textLabel.text = "Текущий список : \(str)"
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
