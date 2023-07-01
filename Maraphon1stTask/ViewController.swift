//
//  ViewController.swift
//  Maraphon1stTask
//
//  Created by Артем Соколовский on 01.07.2023.
//

import UIKit

class ViewController: UIViewController {
	
	lazy var squareView: UIView = {
		
		var view = UIView(frame: CGRect(x: 0, y: 0, width: 125, height: 125))
		view.addGradientLayer()
		view.setRadiusAndShadow()

		return view
	}()

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .white
		view.addSubview(squareView)
	}
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		
		squareView.translatesAutoresizingMaskIntoConstraints = false
		
		let width = squareView.widthAnchor.constraint(equalToConstant: squareView.bounds.width)
		let height = squareView.heightAnchor.constraint(equalToConstant: squareView.bounds.height)
		let yCenter = squareView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
		let xLeft = squareView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100)
		
		let constraints = [width, height, yCenter, xLeft]
		NSLayoutConstraint.activate(constraints)
	}

}
