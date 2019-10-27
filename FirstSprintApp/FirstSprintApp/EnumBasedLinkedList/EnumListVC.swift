//
//  EnumListVC.swift
//  FirstSprintApp
//
//  Created by Алексей ]Чанов on 26/10/2019.
//  Copyright © 2019 Artem Esolnyak. All rights reserved.
//

import UIKit

class EnumListVC: UIViewController {
    
    var stack = LinkedList<String>.Empty
    
    var arrayValue = [String]()
    
    
    
    @IBOutlet weak var listLabel: UILabel!
    
    @IBOutlet weak var textField : UITextField!
    
    @IBAction func addElement(_ sender: Any) {
        
        guard let text = textField.text else{return}
        stack.push(x: text)
        arrayValue.append(text)
        print(text)
        textField.text = ""
        
        
        listLabel.text = "Текущий список : \(arrayValue)"
    }
    
    
    @IBAction func deleteElement(_ sender: Any) {
        stack.pop()
        if !arrayValue.isEmpty{
            arrayValue.remove(at: arrayValue.count - 1)
        }
        print(arrayValue)
        listLabel.text = "Текущий список : \(arrayValue)"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let primaryColor = UIColor(red: 210/255, green: 109/255, blue: 128/255, alpha: 1)
        let secondaryColor = UIColor(red: 107/255, green: 148/255, blue: 230/255, alpha: 1)
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        listLabel.layer.cornerRadius = 30
        
        
    }
    @IBAction func back(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}

enum LinkedList<Element> {
    case Empty
    indirect case Node(previous:LinkedList<Element>, Element , next: LinkedList<Element>)
}

extension LinkedList {
    func cons(x: Element) -> LinkedList {
        return .Node(previous: .Empty, x, next: self)
    }
}

extension LinkedList {
    mutating func push(x: Element) {
        self = self.cons(x: x)
    }
    
    mutating func pop() {
        switch self {
        case .Empty: break
        case let .Node(previous:.Empty ,_, next: xs):
            self = xs
        default: break
        }
    }
    
}

extension LinkedList: Sequence {
    func makeIterator() -> LinkedLinkedListIterator<Element> {
        return LinkedLinkedListIterator(current: LinkedList<Element>.Empty)
    }
}

struct LinkedLinkedListIterator<Element>: IteratorProtocol {
    var current: LinkedList<Element>
    
    mutating func next() -> Element? {
        switch current {
        case let .Node(previous:.Empty,element, next):
            current = next
            return element
        case .Empty:
            return nil
        default:
            return nil
        }
    }
}
