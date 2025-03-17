//
//  도전1.swift
//  SwiftProgrammingAdvanced
//
//  Created by tlswo on 3/17/25.
//

enum EngineType {
    case diesel
    case electric
    case hydrogen
}

struct Engine {
    let type: EngineType
}

// 프로토콜은 로직을 작성하지 못하고 선언만 할수있다.
protocol CarProtocol {
    var brand: String { get }
    var model: String { get }
    var modelYear: Int { get }
    var engine: Engine { get set }
    
    init(brand: String, model: String, modelYear: Int,engine: Engine)

    func drive()
    func stop()
}

// 프로토콜을 이용하면 공통 로직을 작성할수 없기에 같은 로직을 모든 클래스에서 다시 작성해야 한다.
// 프로토콜은 struct에서도 채택할 수 있다.
// struct는 값 타입이라 Heap 메모리가 아니라 Stack 메모리를 사용하여 참조 카운트(ARC) 관리가 필요 없다.
// 그래서 메모리 관리가 더 효율적이고 빠르다.
struct ElectricCar: CarProtocol {
    var brand: String
    
    var model: String
    
    var modelYear: Int
    
    var engine: Engine
    
    func drive() {
        print("\(brand) \(model) is driving...")
    }
    
    func stop() {
        print("\(brand) \(model) has stopped.")
    }
    
    func charge() {
        print("\(brand) \(model) is charging...")
    }
}

struct HybridCar: CarProtocol {
    var brand: String
    
    var model: String
    
    var modelYear: Int
    
    var engine: Engine
    
    func drive() {
        print("\(brand) \(model) is driving...")
    }
    
    func stop() {
        print("\(brand) \(model) has stopped.")
    }
    
    // struct의 메서드 안에서 프로퍼티 값을 변경하려면 mutating 키워드가 필요하다.
    mutating func switchEngine(to newEngine: Engine) {
        guard newEngine.type == .hydrogen || newEngine.type == .electric else {
            return
        }
        self.engine = newEngine
    }
    
    func charge() {
        print("\(brand) \(model) is charging...")
    }
}

// 프로토콜과 달리 로직을 작성할수있다.
//class Car {
//    let brand: String
//    let model: String
//    let modelYear: Int
//    var engine: Engine
//
//    init(brand: String, model: String, modelYear: Int, engine: Engine) {
//        self.brand = brand
//        self.model = model
//        self.modelYear = modelYear
//        self.engine = engine
//    }
//
//    func drive() {
//        print("\(brand) \(model) is driving...")
//    }
//
//    func stop() {
//        print("\(brand) \(model) has stopped.")
//    }
//}

// 상속을 이용하면 공통 로직을 부모 코드에 작성할수 있어서 코드 중복을 줄일수 있다.
//class ElectricCar: Car {
//    init(brand: String, model: String, modelYear: Int) {
//        super.init(brand: brand, model: model, modelYear: modelYear, engine: Engine(type: EngineType.electric))
//    }
//    
//    func charge() {
//        print("\(brand) \(model) is charging...")
//    }
//}

//class HybridCard: Car {
//    init(brand: String, model: String, modelYear: Int) {
//        super.init(brand: brand, model: model, modelYear: modelYear, engine: Engine(type: EngineType.hydrogen))
//    }
//    
//    func switchEngine(to newEngine: Engine) {
//        guard newEngine.type == .hydrogen || newEngine.type == .electric else {
//            return
//        }
//        self.engine = newEngine
//    }
//    
//    func charge() {
//        print("\(brand) \(model) is charging...")
//    }
//}

func solveChallengeProblem1() {
    // struct는 디폴트 이니셜라이저를 제공하여서 이니셜라이저를 직접 구현할 필요 없다.
    var hybridCar = HybridCar(brand: "Kia", model: "str-2020", modelYear: 2020, engine: Engine(type: EngineType.hydrogen))
 //   let hybridCar = HybridCard(brand: "Kia", model: "str-2020", modelYear: 2020)
    print(hybridCar.engine.type)
    hybridCar.switchEngine(to: Engine(type: .electric))
    print(hybridCar.engine.type)
}
