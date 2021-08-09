import SwiftUI

struct ContentView: View {
    @ObservedObject var connect = Connection()
    
    var body: some View {
            VStack{
                HStack{
                    Image("canada").resizable()
                        .frame(width: 100, height: 50,alignment: .leading)
                    Text("Canada Covid-19").font(.title).bold()
                }.padding(.top, 60)
                ZStack{
                    InformationBar()
                    HStack{
                        Text("New Cases : ").bold().padding()
                        Text(connect.apiData[1] ?? "no data")
                    }.font(.title)
                }
                ZStack{
                    InformationBar()
                    HStack{
                        Text("Total Cases : ").bold().padding()
                        Text(connect.apiData[2] ?? "no data")
                    }.font(.title)
                }
                ZStack{
                    InformationBar()
                    HStack{
                        Text("New Deaths : ").bold().padding()
                        Text(connect.apiData[3] ?? "no data")
                    }.font(.title)
                }
                ZStack{
                    InformationBar()
                    HStack{
                        Text("Total Deaths : ").bold().padding()
                        Text(connect.apiData[4] ?? "no data")
                    }.font(.title)
                }
                ZStack{
                    InformationBar()
                    HStack{
                        Text("Recoveries : ").bold().padding()
                        Text(connect.apiData[5] ?? "no data")
                    }.font(.title)
                }
                ZStack{
                    HStack{
                        Text("Last Update : ")
                        Text(connect.apiData[6] ?? "no data")
                    }
                }
                Spacer()
            }.onAppear{connect.get()}
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .padding()
            .edgesIgnoringSafeArea(.all)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let connect = Connection()
        ContentView(connect: connect)
    }
}
