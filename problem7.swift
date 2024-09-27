var students: [String: Int] = [:]

func addStudent(name: String, score: Int) {
    students[name] = score
}

func calculateAverage() -> Double {
    let totalScore = students.values.reduce(0, +)
    return Double(totalScore) / Double(students.count)
}

func displayResults() {
    let average = calculateAverage()
    let highestScore = students.values.max() ?? 0
    let lowestScore = students.values.min() ?? 0

    print("Average score: \(average)")
    print("Highest score: \(highestScore)")
    print("Lowest score: \(lowestScore)")

    for (name, score) in students {
        let status = score >= Int(average) ? "above" : "below"
        print("\(name): \(score) (\(status) average)")
    }
}

print("Enter the number of students:")
if let input = readLine(), let studentCount = Int(input) {
    for _ in 1...studentCount {
        print("Enter student name:")
        if let name = readLine() {
            print("Enter score for \(name):")
            if let scoreInput = readLine(), let score = Int(scoreInput) {
                addStudent(name: name, score: score)
            }
        }
    }

    displayResults()
}
