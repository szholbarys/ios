import Foundation

func add(_ a: Double, _ b: Double) -> Double {
    return a + b
}

func subtract(_ a: Double, _ b: Double) -> Double {
    return a - b
}

func multiply(_ a: Double, _ b: Double) -> Double {
    return a * b
}

func divide(_ a: Double, _ b: Double) -> Double? {
    if b == 0 {
        print("Error: Division by zero is not allowed.")
        return nil
    }
    return a / b
}

while true {
    print("""
    Simple Calculator
    Enter two numbers:
    """)
    
    guard let firstInput = readLine(), let firstNumber = Double(firstInput),
          let secondInput = readLine(), let secondNumber = Double(secondInput) else {
        print("Invalid input. Please enter valid numbers.")
        continue
    }
    
    print("""
    Choose an operation:
    + : Addition
    - : Subtraction
    * : Multiplication
    / : Division
    """)
    
    if let operation = readLine() {
        let result: Double?
        switch operation {
        case "+":
            result = add(firstNumber, secondNumber)
        case "-":
            result = subtract(firstNumber, secondNumber)
        case "*":
            result = multiply(firstNumber, secondNumber)
        case "/":
            result = divide(firstNumber, secondNumber)
        default:
            print("Invalid operation. Please choose +, -, *, or /.")
            continue
        }
        
        if let result = result {
            print("Result: \(result)")
        }
    }
    
    print("Do you want to perform another calculation? (yes/no)")
    if let continueInput = readLine(), continueInput.lowercased() != "yes" {
        break
    }
}
