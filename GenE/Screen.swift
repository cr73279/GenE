//
//  Screen.swift
//  GenE
//
//  Created by chris richardson on 10/29/20.
//

import SwiftUI


struct Screen: View {
    
    
    @ObservedObject public var dataManager = DataManager.shared
    @State public var seqId: String = ""
    
    var body: some View {
        VStack {
           TextField("Enter Accession Number", text: $seqId)
            .padding()
            
            Button("Search")
            {
            dataManager.downloadSeqData(seqId: seqId)
                
                
               }
            
            
            ScrollView {
 
            VStack(alignment: .leading) {
               
                        
                    Text(dataManager.dataSet?.INSDSeq.locus ?? "")
                        .padding()
                    Text(dataManager.dataSet?.INSDSeq.organism ?? "").padding()
                    Text(dataManager.dataSet?.INSDSeq.source ?? "").padding()
                    Text(dataManager.dataSet?.INSDSeq.taxonomy ?? "").padding()
                    Text(dataManager.dataSet?.INSDSeq.topology ?? "").padding()
                    Text(dataManager.dataSet?.INSDSeq.length == nil ? "" : "\(dataManager.dataSet!.INSDSeq.length)") .padding()
                    Text(dataManager.dataSet?.INSDSeq.strandedness ?? "").padding()
                    Text(dataManager.dataSet?.INSDSeq.moltype ?? "").padding()
                    Text(dataManager.dataSet?.INSDSeq.sequence ?? "").padding()
                
                }
                
                .cornerRadius(10)
                
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(dataManager.featureList) { feature in
                        
                        VStack (alignment: .leading){
                            VStack (alignment: .leading) {
                                Text(feature.INSDFeature_key).bold()
                                Text(feature.INSDFeature_location)
                            }.padding()
                        
                            IntervalSection(feature: feature)

                            QualsSection(feature: feature)

                        }
                        .cornerRadius(10)
                    }
                }
                
                .cornerRadius(20)
            }
            .padding(.horizontal)
                        
        }
        
        }
        
        }
    
    

struct IntervalSection: View {
    var feature: INSDFeature
    var body: some View {
        VStack (alignment: .leading){
            ForEach(0..<feature.INSDFeature_intervals.count, id: \.self) { i in
                ForEach(0..<feature.INSDFeature_intervals[i].INSDInterval.count, id: \.self) { j in
                    if let from = feature.INSDFeature_intervals[i].INSDInterval[j].INSDInterval_from {
                        VStack (alignment: .leading){
                            Text("\(from)").bold()
                            Text("\(feature.INSDFeature_intervals[i].INSDInterval[j].INSDInterval_to ?? -1)")
                        }
                        .padding()
                        .cornerRadius(10)
                    }
                }
            }
        }
    }
}

    struct QualsSection: View{
    var feature: INSDFeature
    var body: some View {
        VStack (alignment: .leading){
            ForEach(0..<feature.INSDFeature_quals.count , id: \.self) { i in
                ForEach(0..<feature.INSDFeature_quals[i].INSDQualifier.count , id: \.self) { j in
                    VStack (alignment: .leading){
                        Text(feature.INSDFeature_quals[i].INSDQualifier[j].INSDQualifier_name).bold()
                        Text(feature.INSDFeature_quals[i].INSDQualifier[j].INSDQualifier_value)
                    }
                    .padding()
                    .cornerRadius(10)
                }
            }
        }
    }
}


//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        Screen()
//    }
//}
