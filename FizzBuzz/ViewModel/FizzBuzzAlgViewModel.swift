
import Foundation

class FizzBuzzAlgViewModel: ObservableObject {
    @Published var fizzBuzzModels: [FizzbuzzAlgoModel] = []
    
    init() {
        fizzBuzzModels = [
            .init(
                name: "Swift",
                maxConst: "let MAX = 100",
                loopWrapper: {code in
                """
                for i in 1...MAX {
                    \(code)
                }
                """
                },
                printString: {str in
                    "print(\(str))"
                },
                printInt: {
                    "print(i)"
                },
                ifStatement: {logic, code in
                """
                if \(logic) {
                    \(code)
                }
                """
                },
                elseIfStatement:  {logic, code in
                """
                else if \(logic) {
                    \(code)
                }
                """
                },
                elseStatement: {code in
                """
                else {
                    \(code)
                }
                """
                }
            ),
            .init(
                name: "C",
                versionNumber: 1.0,
                imports: "#include <stdio.h>",
                boilerPlaterWrapper: {code in
                """
                int main() {
                    \(code)
                }
                """
                },
                maxConst: "#define MAX 100",
                loopWrapper: {code in
                """
                for (int i; i <= <MAX; i++)  {
                    \(code)
                }
                """
                },
                printString: {str in
                    "printf(\(str));"
                },
                printInt: {
                    "printf(%d, i);"
                },
                ifStatement: {logic, code in
                """
                if (\(logic)) {
                    \(code)
                }
                """
                },
                elseIfStatement:  {logic, code in
                """
                else if (\(logic))   {
                    \(code)
                }
                """
                },
                elseStatement: {code in
                """
                else {
                    \(code)
                }
                """
                }
            ),
            .init(
                name: "Python",
                commentCode: {code in
                    return #"#"# + code
                },
                maxConst: "MAX 100",
                loopWrapper: {code in
                """
                for i in range(1,MAX):
                    \(code)
                """
                },
                printString: {str in
                    "print(\(str))"
                },
                printInt: {
                    "print(f{i})"
                },
                ifStatement: {logic, code in
                """
                if \(logic):
                    \(code)
                """
                },
                elseIfStatement:  {logic, code in
                """
                elif \(logic):
                    \(code)
                """
                },
                elseStatement: {code in
                """
                else:
                    \(code)
                """
                }
            )
        ]
    }
}
