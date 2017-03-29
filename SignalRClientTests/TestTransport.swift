//
//  TestTransport.swift
//  SignalRClient
//
//  Created by Pawel Kadluczka on 3/27/17.
//  Copyright © 2017 Pawel Kadluczka. All rights reserved.
//

import Foundation
@testable import SignalRClient

class TestTransport: Transport {

    weak var delegate: TransportDelegate!

    func start(url:URL, query: String) -> Void {
        delegate?.transportDidOpen()
    }

    func send(data: Data) throws -> Void {
    }

    func close() -> Void {
        delegate.transportDidClose(nil)
    }
}