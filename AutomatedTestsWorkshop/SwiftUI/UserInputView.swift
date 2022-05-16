//  Created by Dominik Hauser on 16.05.22.
//  
//

import SwiftUI

struct UserInputView: View {

  @ObservedObject var data: UserInputData

  var body: some View {
    Form {
      Section {
        TextField("First name", text: $data.firstName)
      }
    }
  }
}

struct UserInputView_Previews: PreviewProvider {
  static var previews: some View {
    UserInputView(data: UserInputData())
  }
}
