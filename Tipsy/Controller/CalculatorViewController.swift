import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var splitCountLabel: UILabel!
    
    var calculatorBrain = CalculatorBrain()
    
    @IBAction func tipChanged(_ sender: UIButton) {
        selectTheButtonDeselectOthers(sender)
        let buttonTitle = sender.currentTitle
        calculatorBrain.setTipPercentage(buttonTitle)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        let splitCount = Int(sender.value)
        splitCountLabel.text = String(splitCount)
        calculatorBrain.splitCount = splitCount
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
    }
    
    func selectTheButtonDeselectOthers(_ button: UIButton){
        twentyPctButton.isSelected = false
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        button.isSelected = true
    }
}

