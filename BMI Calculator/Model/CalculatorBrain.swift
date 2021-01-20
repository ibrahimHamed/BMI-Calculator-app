import UIKit

struct CalculatorBrain {
    var bmi : BMI?
    
    mutating func calculateBMI(height : Float , weight : Float) {
        let bmiValue = (weight/(height * height))
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat fewer pies!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
    }

    
}


    func getBMIValue() -> String {
            let bmiValue = String(format: "%.1f" , bmi?.value ?? 0.0)
            return bmiValue

}

    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
 }
    
    func getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }

}


