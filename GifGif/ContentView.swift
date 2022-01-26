//
//  ContentView.swift
//  GifGif
//
//  Created by Selali Adobor on 1/24/22.
//

import SwiftUI
import GRDB
struct ContentView: View {
    var body: some View {
        try dataStack.addStorageAndWait(SQLiteStore())
        EditPage()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
