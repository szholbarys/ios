// Temperature conversion functions
func celsiusToFahrenheit(_ celsius: Double) -> Double {
    return (celsius * 9/5) + 32
}

func celsiusToKelvin(_ celsius: Double) -> Double {
    return celsius + 273.15
}

func fahrenheitToCelsius(_ fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * 5/9
}

func fahrenheitToKelvin(_ fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * 5/9 + 273.15
}

func kelvinToCelsius(_ kelvin: Double) -> Double {
    return kelvin - 273.15
}

func kelvinToFahrenheit(_ kelvin: Double) -> Double {
    return (kelvin - 273.15) * 9/5 + 32
}

// Main program
print("Enter temperature value:")
if let input = readLine(), let temperature = Double(input) {
    print("Enter unit (C, F, K):")
    if let unit = readLine() {
        switch unit.uppercased() {
        case "C":
            print("Fahrenheit: \(celsiusToFahrenheit(temperature))")
            print("Kelvin: \(celsiusToKelvin(temperature))")
        case "F":
            print("Celsius: \(fahrenheitToCelsius(temperature))")
            print("Kelvin: \(fahrenheitToKelvin(temperature))")
        case "K":
            print("Celsius: \(kelvinToCelsius(temperature))")
            print("Fahrenheit: \(kelvinToFahrenheit(temperature))")
        default:
            print("Invalid unit")
        }
    }
}
