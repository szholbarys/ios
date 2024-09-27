import Foundation

func isPalindrome(_ text: String) -> Bool {
    // Remove spaces and punctuation, and make the string lowercase
    let cleanedText = text.lowercased().filter { $0.isLetter }
    return cleanedText == String(cleanedText.reversed())
}

print("Enter a string to check if it's a palindrome:")
if let input = readLine() {
    if isPalindrome(input) {
        print("\(input) is a palindrome.")
    } else {
        print("\(input) is not a palindrome.")
    }
}
