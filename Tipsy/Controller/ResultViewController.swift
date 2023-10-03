import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    
    var calcolatorBrain: CalculatorBrain?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
    }
}
