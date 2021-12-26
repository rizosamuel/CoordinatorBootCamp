//
//  ViewController.swift
//  CoordinatorBootCamp
//
//  Created by Rijo Samuel on 26/12/21.
//

import UIKit

final class ViewController: UIViewController, Coordinating {
	
	private let button: UIButton = {
		
		let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
		button.backgroundColor = .systemBlue
		button.setTitleColor(.white, for: .normal)
		button.setTitle("Click Me!", for: .normal)
		button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
		return button
	}()
	
	var coordinator: Coordinator?
	
	override func viewDidLoad() {
		
		super.viewDidLoad()
		
		title = "First"
		view.backgroundColor = .systemOrange
	}
	
	override func viewDidLayoutSubviews() {
		
		super.viewDidLayoutSubviews()
		
		button.center = view.center
		view.addSubview(button)
	}
	
	@objc private func didTapButton(_ sender: UIButton) {
		coordinator?.eventOccurred(with: .buttonTapped)
	}
}
