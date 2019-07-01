//
//  StatText.swift
//  NBAPlayer
//
//  Created by Alper Oezaydin on 18.06.19.
//  Copyright © 2019 Alper Oezaydin. All rights reserved.
//

import SwiftUI

struct StatText : View {
	
	var statName : String
	var statValue : String
	
    var body: some View {
		HStack {
			Text(statName + ":")
				.font(.system(size: 40))
				.fontWeight(.bold)
				.padding(.leading, 30)
 			Text(statValue)
				.font(.system(size: 40))
				.padding(.trailing, 30)
			Spacer()
		}
		
	}
}

#if DEBUG
struct StatText_Previews : PreviewProvider {
    static var previews: some View {
        StatText(statName: "Age", statValue: "31")
    }
}
#endif
