
import UIKit

class AdditionFuncViewController: UIViewController {
    
    @IBOutlet weak var intLabel: UILabel!
    @IBOutlet weak var doubleLabel: UILabel!
    @IBOutlet weak var floatLabel: UILabel!
    @IBOutlet weak var stringLabel: UILabel!
    @IBOutlet weak var boolLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let primaryColor = UIColor(red: 210/255, green: 109/255, blue: 128/255, alpha: 1)
        let secondaryColor = UIColor(red: 107/255, green: 148/255, blue: 230/255, alpha: 1)
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        setLabales()
       
    }
    

    private func setLabales() {
        
        let integerOne = 342
        let integerTwo = 567
        intLabel.text  = String(add(integerOne, integerTwo))
        
        let doubleOne: Double = 3.4567
        let doubleTwo: Double = 7.2345
        doubleLabel.text = String(add(doubleOne, doubleTwo))
        
        let floatOne: Float = 36.3243
        let floatTwo: Float = 232.2356
        floatLabel.text = String(add(floatOne, floatTwo))
        
        let stringOne: String  = "We are"
        let stringTwo: String  = " purple team"
        stringLabel.text = add(stringOne, stringTwo)
        
        let boolOne: Bool = true
        let boolTwo: Bool = false
        boolLabel.text = String(add(boolOne, boolTwo))
        
    }
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
