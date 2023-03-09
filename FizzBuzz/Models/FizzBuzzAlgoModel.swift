import Foundation

struct FizzbuzzAlgoModel: Identifiable {
    let id = UUID()
    
    let name: String
    var commentCode: (String) -> String = { code in
        // raw string for comment
        return #"\\ "# + code
    }
    var versionNumber: Double? = nil
    var imports: String = ""
    var boilerPlaterWrapper: (String) -> String = {code in
        return code
    }
    let maxConst: String
    let loopWrapper: (String) -> String
    let printString: (String) -> String
    let printInt: () -> String
    var equality: String = "=="
    var moduloSymbol: String = "%"
    var ifStatement: (String, String) -> String
    var elseIfStatement: (String, String) -> String
    var elseStatement: (String) -> String
    
    var fizzBuzzWorkingAlg: String {
        // if logic
        let modulo3 = "i \(moduloSymbol) 3 \(equality) 0"
        let codeFizz = printString("Fizz")
        
        let modulo5 = "i \(moduloSymbol) 5 \(equality) 0"
        let codeBuzz = printString("Buzz")
        
        let modulo15 = "i \(moduloSymbol) 15 \(equality) 0"
        let codeFizzBuzz = printString("FizzBuzz")
        
        let printInt = printInt()
        
        let codeInForLoop = """
        \(ifStatement(modulo15, codeFizzBuzz)) \(elseIfStatement(modulo5, codeBuzz.indent())) \(elseIfStatement(modulo3, codeFizz.indent())) \(elseStatement(printInt))
        """
        let mainCode = """
        \(maxConst)
        
        \(loopWrapper(codeInForLoop.indent()))
        """
        
        var versionStringIndicator = ""
        if let versionNumber = versionNumber {
            versionStringIndicator = "implementation for version \(versionNumber)"
        }
        
        let result =  """
        \(commentCode("FizzBuzz Algorithm \(versionStringIndicator) implemented in \(name) programming language"))
        \(imports)
        \(boilerPlaterWrapper(mainCode.indent()))
        """
        
        return result
    }
}
