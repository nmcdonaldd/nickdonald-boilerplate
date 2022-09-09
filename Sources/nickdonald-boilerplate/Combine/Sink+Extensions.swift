//
//  File.swift
//  
//
//  Created by Nicholas McDonald on 9/8/22.
//

import Combine

extension Subscribers.Sink {
    convenience init(receiveValue: @escaping (Input) -> Void) {
        self.init { _ in
            // Do nothing...
        } receiveValue: { receiveValue($0) }
    }
}
