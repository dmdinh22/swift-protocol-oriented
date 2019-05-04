// Copyright (c) 2019 Razeware LLC
// See Copyright Notice page for details about the license.

import Foundation

class Distribution {
    func sample() -> Double {
        fatalError("Must override")
    }
    
    func sample(count: Int) -> [Double] {
        return (1...count).map { _ in sample() }
    }
}

class UniformDistribution: Distribution {
    var range: ClosedRange<Int>
    
    init(range: ClosedRange<Int>) {
        self.range = range
    }
    
    override func sample() -> Double {
        return Double(Int.random(in: range))
    }
}
