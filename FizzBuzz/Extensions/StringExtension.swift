
import Foundation

extension String {
    func indent() -> String {
        var result = ""
        // get total number of code lines
        let listOfLines = self.split(separator: "\n")
        listOfLines.forEach{line in
            result += "\t\(line)\n"
        }
        
        return String(result.dropLast())
    }
}
