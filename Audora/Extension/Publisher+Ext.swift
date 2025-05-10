//
//  AnyPublishers+Ext.swift
//  Audora
//
//  Created by Rivaldo Fernandes on 10/05/25.
//

import Combine
import Foundation

extension Publisher where Failure == Never {
    public func sinkOnMain(
        receiveValue: @escaping ((Self.Output) -> Void)) -> AnyCancellable {
            receive(on: RunLoop.main)
                .sink(receiveValue: receiveValue)
        }
}
