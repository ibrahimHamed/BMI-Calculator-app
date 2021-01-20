import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue : String?
    var color : UIColor?
    var advice : String?

    @IBOutlet weak var bmiLable: UILabel!
    
    @IBOutlet weak var adviceLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLable.text = bmiValue
        adviceLable.text = advice
        view.backgroundColor = color
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
