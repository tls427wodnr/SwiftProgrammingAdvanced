//
//  필수3.swift
//  SwiftProgrammingAdvanced
//
//  Created by tlswo on 3/17/25.
//

func solveEssentialProblem3() {
    // Int 배열의 짝수번째 요소를 제거해서 반환하는 함수 a 를 작성해주세요.
    func a(_ array: [Int]) -> [Int] {
        var result: [Int] = []
        for index in 1...array.count {
            if index % 2 != 0 {
                result.append(array[index-1])
            }
        }
        return result
    }
    
    print(a([1, 2, 3, 4, 5]))
    
    // String 배열의 짝수번째 요소를 제거해서 반환하는 함수 b 를 작성해주세요.
    func b(_ array: [String]) -> [String] {
        var result: [String] = []
        for index in 1...array.count {
            if index % 2 != 0 {
                result.append(array[index-1])
            }
        }
        return result
    }
    
    print(b(["가","나","다","라","마"]))
    
    // 위 두 함수를 하나의 함수로 대체할 수 있는 방법을 고민해보고, 함수 c 로 작성해주세요.
    func c<T>(_ array: [T]) -> [T] {
        var result: [T] = []
        for index in 1...array.count {
            if index % 2 != 0 {
                result.append(array[index-1])
            }
        }
        return result
    }
    
    // 테스트 입력들을 넣고 호출하여 출력이 제대로 나오는지 작성해주세요.
    print(c([1, 2, 3, 4, 5]))
    print(c(["가","나","다","라","마"]))
    
    // 함수 c 에  Numbers 프로토콜 요소를 가진 배열만 사용할 수 있는 함수 d 를 작성해주세요.
    func d<T: Numeric>(_ array: [T]) -> [T] {
        var result: [T] = []
        for index in 1...array.count {
            if index % 2 != 0 {
                result.append(array[index-1])
            }
        }
        return result
    }
    
    print(d([1, 2, 3, 4, 5]))
    //print(d(["가","나","다","라","마"])) // 오류 발생
}
