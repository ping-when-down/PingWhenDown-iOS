//
//  WebsiteListItem.swift
//  PingWhenDown
//
//  Created by João de Vasconcelos on 18/08/2020.
//  Copyright © 2020 João de Vasconcelos. All rights reserved.
//

import SwiftUI

struct ListRow: View {
  
  let website: Website
  
  var body: some View {
    
    HStack {
      
      ListStatusIcon(statusCode: website.statusCode, statusMessage: website.statusMessage)
      
      VStack(alignment: .leading, spacing: 5) {
        Text(website.statusMessage ?? "-")
          .font(.footnote).bold()
          .foregroundColor(Color(.systemGray))
        Text(website.title)
          .bold()
          .foregroundColor(Color(.darkText))
        Text(website.url)
          .font(.footnote)
          .foregroundColor(Color(.systemGray))
      }
      
      Spacer()
      
    }
  
  }
}