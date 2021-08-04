//
//  ImageLoader.swift
//  TTD-1.0
//
//  Created by Daniel Enning on 26.05.21.
//

import Foundation
import SwiftUI
extension String {
    func load() -> UIImage {
        
        do {
            guard let url = URL(string: self) else {
                return UIImage()
            }
            
            let data: Data = try Data(contentsOf: url)
            
            return UIImage(data: data) ?? UIImage()
            
        } catch {
            
        }
        
       
        
        
        return UIImage()
    }
}
