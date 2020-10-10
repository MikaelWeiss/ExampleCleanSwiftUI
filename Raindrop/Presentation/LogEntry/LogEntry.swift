//
//  LogEntry.swift
//  Raindrop
//
//  Created by Mikael Weiss on 9/30/20.
//

import SwiftUI

struct LogEntry: View {
    let items: [Item]
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 0) {
                ForEach(items) { item in
                    Text(item.title)
                        .padding(.leading, 30)
                        .padding(.bottom, 4)
                        .padding(.top, 16)
                    ZStack(alignment: .leading) {
                        Rectangle()
                            .cornerRadius(25)
                            .frame(height: 64)
                    }
                    .padding(.horizontal, 16)
                }
                .foregroundColor(Color(#colorLiteral(red: 0.2039001584, green: 0.2039352059, blue: 0.20389238, alpha: 1)))
            }
        }
        .font(.system(size: 18, weight: .heavy, design: .rounded))
    }
}

struct LogEntry_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Rectangle()
                .edgesIgnoringSafeArea(.all)
                .foregroundColor(.primary)
            LogEntry(items: [Item(title: "Log #", type: .computed(0)),
                             Item(title: "Date", type: .date(Date.today)),
                             Item(title: "Description", type: .text(nil)),
                             Item(title: "Amount", type: .number(0)),
                             Item(title: "Balance", type: .computed(0)),
                             Item(title: "Category", type: .selection(Selection(items: ["Sup"], selectedItemIndex: 0)))])
                .colorScheme(.dark)
        }
    }
}