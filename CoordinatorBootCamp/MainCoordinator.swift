//
//  MainCoordinator.swift
//  CoordinatorBootCamp
//
//  Created by Rijo Samuel on 26/12/21.
//

import UIKit

final class MainCoordinator: Coordinator {
	
	var stack: UINavigationController?
	
	func start() {
		
		let vc: UIViewController & Coordinating = ViewController()
		vc.coordinator = self
		stack?.setViewControllers([vc], animated: true)
	}
	
	func eventOccurred(with type: Event) {
		
		switch type {
				
			case .buttonTapped:
				let vc: UIViewController & Coordinating = SecondViewController()
				vc.coordinator = self
				stack?.pushViewController(vc, animated: true)
		}
	}
}
