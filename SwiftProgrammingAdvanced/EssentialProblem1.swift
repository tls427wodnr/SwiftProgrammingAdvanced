//
//  필수1.swift
//  SwiftProgrammingAdvanced
//
//  Created by tlswo on 3/17/25.
//

func solveEssentialProblem1() {
    // 두 개의 Int 값을 파라미터로 받고, 하나의 String 값을 반환하는 클로저를 설계해주세요.
    // 클로저 내부에서는 두 정수를 더한 후, "두 수의 합은 {합계} 입니다"라는 문자열을 반환합니다.
    let sumToStringClosure: (Int,Int) -> String = { (num1, num2) in
        return "두 수의 합은 \(num1+num2) 입니다"
    }
    print(sumToStringClosure(1,3))

    // 이 클로저를 상수 sum에 저장하고, 정확한 타입을 명시해주세요.
    // sum을 호출하는 코드를 작성해주세요. (파라미터로 전달하는 값은 임의로 선택)
    let sum: (Int, Int) -> String = sumToStringClosure
    print(sum(1,3))
    
    // 위에서 정의한 sum과 동일한 타입의 클로저를 파라미터로 받고, 반환 값이 없는(void) 함수 calculate를 작성해주세요.
    // (조건) calculate 함수 구현 내에서는 파라미터로 전달받은 클로저를 호출하는 코드를 포함해야합니다.
    func calculate(num1: Int, num2: Int, closure: (Int, Int) -> String) -> String {
        return closure(num1, num2)
    }
    print(calculate(num1: 1, num2: 3, closure: sum))
}
