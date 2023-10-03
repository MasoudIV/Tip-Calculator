import UIKit

extension String {
    func isNotEmpty() -> Bool{
        return !self.isEmpty
    }
}
class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var splitCountLabel: UILabel!
    
    var calculatorBrain = CalculatorBrain()
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        billTextField.endEditing(true)
        
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
        let billTotal = billTextField.text
        if let billTotal {
            if billTotal.isNotEmpty() {
                calculatorBrain.billTotal = Double(billTotal)!
            }
        }
        performSegue(withIdentifier: "goToResultScreen", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResultScreen" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.calcolatorBrain = calculatorBrain
        }
    }
    
    func selectTheButtonDeselectOthers(_ button: UIButton){
        twentyPctButton.isSelected = false
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        button.isSelected = true
    }
}

