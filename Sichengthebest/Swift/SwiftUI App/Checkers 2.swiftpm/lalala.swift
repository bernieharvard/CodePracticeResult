import Foundation
import SwiftUI

struct GridItem: Identifiable,Hashable{
    let id = UUID()
    var background : GridBackGround
    var checker : CheckerItem
}

enum GridBackGround{
    case white
    case black
}

enum CheckerItem:String{
    case white = "circle"
    case black = "circle.fill"
    case whiteKing = "person"
    case blackKing = "person.fill"
    case nothing = ""
}

extension CheckerItem{
    var isHidden:Bool{
        if self == .nothing{
            return true
        }
        return false
    }
    
    var nextchecker: CheckerItem{
        switch self {
        case .white:
            return  .black
        case .black:
            return .white
        default:
            return  .white
        }
    }
}

extension GridBackGround{
    var color: Color{
        switch self {
        case .white:
            return .white
        case .black:
            return .brown
        }
    }
}

struct ContentView: View {
    @State var vm = ViewModel()
    
    var body: some View {
        VStack {
            Text("hello world")
        }
    }
}
