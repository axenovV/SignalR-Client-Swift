//
//  TransportDelegate.swift
//  SignalRClient
//
//  Created by Pawel Kadluczka on 2/25/17.
//  Copyright © 2017 Pawel Kadluczka. All rights reserved.
//

import Foundation

public protocol TransportDelegate: AnyObject {
    func transportDidOpen()
    func transportDidReceiveData(_ data: Data)
    func transportDidClose(_ error: Error?)
}
