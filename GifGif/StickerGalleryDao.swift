//
//  StickerGalleryDao.swift
//  GifGif
//
//  Created by Selali Adobor on 1/25/22.
//

import Foundation
import GRDB
struct StickerGalleryDao{
    let dbQueue : DatabaseQueue

    init() throws{
#if DEBUG
        migrator.eraseDatabaseOnSchemaChange = true
#endif
        var migrator = DatabaseMigrator()
        migrator.registerMigration("v1") { db in
            try db.create(table: "sticker_gallery") { t in
                t.autoIncrementedPrimaryKey("id")
                t.column("name", .text).notNull()
            }
            try db.create(table: "sticker") { t in
                t.autoIncrementedPrimaryKey("id")
                t.column("name", .text).notNull()
            }
            try db.create(table: "sticker_data") { t in
                t.autoIncrementedPrimaryKey("id")
                t.foreignKey(<#T##columns: [String]##[String]#>, references: <#T##String#>)
                t.column("data", .blob).notNull()
            }
        }
        try migrator.migrate(dbQueue)
        
     
    }
}
