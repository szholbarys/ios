func fibonacci(_ n: Int) -> [Int] {
    guard n > 0 else { return [] }
    
    var sequence = [0, 1]
    
    while sequence.count < n {
        let nextValue = sequence[sequence.count - 1] + sequence[sequence.count - 2]
        sequence.append(nextValue)
    }
    
    return Array(sequence.prefix(n))
}

print("Enter the number of Fibonacci terms to generate:")
if let input = readLine(), let n = Int(input) {
    let fibSequence = fibonacci(n)
    print("Fibonacci sequence: \(fibSequence)")
}
