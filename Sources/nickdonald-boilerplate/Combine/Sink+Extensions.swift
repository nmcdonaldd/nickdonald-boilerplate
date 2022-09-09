//
//  Sink+Extensions.swift
//  
//
//  Created by Nicholas McDonald on 9/8/22.
//

import Combine

extension Subscribers.Sink {
    /// Convenience initializer for when you don't care about the completion of a publisher
    /// - Parameter receiveValue: The closure to execute on receipt of a value.
    public convenience init(receiveValue: @escaping (Input) -> Void) {
        self.init { _ in
            // Do nothing...
        } receiveValue: { receiveValue($0) }
    }
}
