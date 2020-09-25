//
//  FirebaseCollectionReference.swift
//  PetWaWa
//
//  Created by Hexiao Zhang on 2020-09-24.
//  Copyright © 2020 Hexiao Zhang. All rights reserved.
//

import Foundation
import FirebaseFirestore

enum FCollectionReference: String{
    case User
    case Category
    case Items
    case Basket
}

func FirebaseReference(_ collectionReference: FCollectionReference) -> CollectionReference{
     
    return Firestore.firestore().collection(collectionReference.rawValue)
    
}
