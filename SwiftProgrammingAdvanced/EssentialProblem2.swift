//
//  필수2.swift
//  SwiftProgrammingAdvanced
//
//  Created by tlswo on 3/17/25.
//

// 아래 forEach 문을 map 을 사용하는 코드로 변환해주세요.
func solveEssentialProblem2_1() {
    let numbers = [1, 2, 3, 4, 5]
    
    var result = [Int]()
    
    numbers.map {
        result.append($0)
    }
    
    print(result)
}

// 주어진 입력값을 고차함수를 체이닝하여 주어진 출력값이 나오도록 구현해주세요.
func solveEssentialProblem2_2() {
    let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    let result = numbers.filter {
        $0 % 2 == 0
    }.map {
        String($0)
    }
    
    print(numbers)
    print(result)
}

// 이제 고차함수를 직접 만들어 봅니다.
func solveEssentialProblem2_3() {
    func myMap(_ array: [Int], _ closure: (Int) -> String) -> [String] {
        var result: [String] = []
        for element in array {
            result.append(closure(element))
        }
        return result
    }
    
    let result = myMap([1, 2, 3, 4, 5]) {
        String($0)
    }
    
    print(result)
}

func solveEssentialProblem2() {
    solveEssentialProblem2_1()
    solveEssentialProblem2_2()
    solveEssentialProblem2_3()
}
