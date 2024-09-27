import Foundation

func wordFrequency(sentence: String) -> [String: Int] {
    let words = sentence.lowercased()
                     .components(separatedBy: CharacterSet.alphanumerics.inverted)
                     .filter { !$0.isEmpty }

    var frequencyDict = [String: Int]()

    for word in words {
        frequencyDict[word, default: 0] += 1
    }

    return frequencyDict
}

print("Enter a sentence:")
if let sentence = readLine() {
    let frequencies = wordFrequency(sentence: sentence)
    print("Word Frequencies:")
    for (word, count) in frequencies {
        print("\(word): \(count)")
    }
}
