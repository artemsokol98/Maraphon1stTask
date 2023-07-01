//
//  UIView+.swift
//  Maraphon1stTask
//
//  Created by Артем Соколовский on 01.07.2023.
//

import UIKit

extension UIView {
	
	func addGradientLayer() {
		
		let gradientLayer = CAGradientLayer()
		gradientLayer.frame = self.frame
		gradientLayer.cornerRadius = 20
		
		let color1 = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
		let color2 = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
		
		gradientLayer.colors = [color1.cgColor, color2.cgColor]
		gradientLayer.startPoint = CGPoint(x: 0, y: 0)
		gradientLayer.endPoint = CGPoint(x: 1, y: 1)
		
		layer.insertSublayer(gradientLayer, at: 0)
	}
	
	func setRadiusAndShadow() {
		
		layer.cornerRadius = 20
		layer.shadowRadius = 10
		layer.shadowOpacity = 1.0
		layer.shadowOffset = CGSize(width: 10, height: 10)
		layer.shadowColor = UIColor.gray.cgColor
	}
}
