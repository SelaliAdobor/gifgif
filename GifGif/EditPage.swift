//
//  EditPage.swift
//  GifGif
//
//  Created by Selali Adobor on 1/25/22.
//

import SwiftUI
import PixelKit

struct EditPage: View {
    
    @StateObject var viewModel = EditPageViewModel()
    
    var body: some View {
        PixelView(pix: viewModel.finalPix).fileImporter(isPresented: .constant(true), allowedContentTypes: [.image]) { (res) in
            do{
                let fileUrl = try res.get()
                print(fileUrl)
                
                
            } catch{
                
                print ("error reading")
                print (error.localizedDescription)
            }
        }
    }
}
