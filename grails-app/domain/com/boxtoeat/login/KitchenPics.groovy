package com.boxtoeat.login

/**
 * Created by Amit on 1/8/2016.
 */
class KitchenPics {
    String name
    String extension
    byte[] binaryData
    Date uploadDate = new Date()
    static constraints = {

        binaryData(blank: true, nullable:true, maxSize:1073741824)
    }
}
