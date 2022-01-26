//
//  EditPageViewController.swift
//  GifGif
//
//  Created by Selali Adobor on 1/25/22.
//

import Foundation
import PixelKit

class EditPageViewModel: ObservableObject {
    
    let circlePix: CirclePIX
    let blurPix: BlurPIX
    
    let finalPix: PIX
    
    init() {
        
        circlePix = CirclePIX()

        blurPix = BlurPIX()
        blurPix.input = circlePix
        blurPix.radius = 0.25

        finalPix = blurPix
    }
}
