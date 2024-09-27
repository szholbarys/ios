// Function to check if a number is prime
func isPrime(_ number: Int) -> Bool {
    if number < 2 {
        return false
    }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

// Printing all prime numbers between 1 and 100
for number in 1...100 {
    if isPrime(number) {
        print(number)
    }
}
