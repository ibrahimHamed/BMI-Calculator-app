import UIKit

class CalculateViewController: UIViewController {
        
    var calculatorBrain = CalculatorBrain()
    @IBOutlet weak var heightLable: UILabel!
    @IBOutlet weak var weightLable: UILabel!
    
    @IBOutlet weak var heightSliderOutlet: UISlider!
    @IBOutlet weak var weightSliderOutlet: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        let height = (String(format: "%.2f", sender.value))
        heightLable.text = "\(height) m"
        
    }
    
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = (Int(sender.value))
        weightLable.text = "\(weight) kg"
        }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let height = heightSliderOutlet.value
        let weight = weightSliderOutlet.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        performSegue(withIdentifier: "goToResult", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as? ResultViewController
            destinationVC?.bmiValue = calculatorBrain.getBMIValue()
            destinationVC?.color = calculatorBrain.getColor()
            destinationVC?.advice = calculatorBrain.getAdvice()
            destinationVC?.modalPresentationStyle = .fullScreen
            
        }
        
    }

            
            
        }
        
        

    
   
    



