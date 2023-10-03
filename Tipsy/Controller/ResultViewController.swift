import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    
    var calcolatorBrain: CalculatorBrain?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let calcolatorBrain {
            resultLabel.text = "\(String(format: "%.2f", calcolatorBrain.calculateSplittedBill()))"
            summaryLabel.text = "Splitted between \(calcolatorBrain.splitCount) people,\n with \(Int(calcolatorBrain.tipPercentage * 100))% tip"
        }
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
