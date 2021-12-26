//
//  Coordinator.swift
//  CoordinatorBootCamp
//
//  Created by Rijo Samuel on 26/12/21.
//

import UIKit

enum Event {
	case buttonTapped
}

protocol Coordinator: AnyObject {
	
	var stack: UINavigationController? { get set }
	
	func start()
	func eventOccurred(with type: Event)
}

protocol Coordinating: AnyObject {
	
	var coordinator: Coordinator? { get set }
}
