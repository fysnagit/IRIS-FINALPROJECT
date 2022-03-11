// Auto-generated. Do not edit!

// (in-package finalpro.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class posmesin {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.posx = null;
      this.posy = null;
      this.sudut = null;
    }
    else {
      if (initObj.hasOwnProperty('posx')) {
        this.posx = initObj.posx
      }
      else {
        this.posx = 0;
      }
      if (initObj.hasOwnProperty('posy')) {
        this.posy = initObj.posy
      }
      else {
        this.posy = 0;
      }
      if (initObj.hasOwnProperty('sudut')) {
        this.sudut = initObj.sudut
      }
      else {
        this.sudut = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type posmesin
    // Serialize message field [posx]
    bufferOffset = _serializer.int16(obj.posx, buffer, bufferOffset);
    // Serialize message field [posy]
    bufferOffset = _serializer.int16(obj.posy, buffer, bufferOffset);
    // Serialize message field [sudut]
    bufferOffset = _serializer.int16(obj.sudut, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type posmesin
    let len;
    let data = new posmesin(null);
    // Deserialize message field [posx]
    data.posx = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [posy]
    data.posy = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [sudut]
    data.sudut = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'finalpro/posmesin';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a909f0056339fefb2929ec987b0893ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 posx
    int16 posy
    int16 sudut
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new posmesin(null);
    if (msg.posx !== undefined) {
      resolved.posx = msg.posx;
    }
    else {
      resolved.posx = 0
    }

    if (msg.posy !== undefined) {
      resolved.posy = msg.posy;
    }
    else {
      resolved.posy = 0
    }

    if (msg.sudut !== undefined) {
      resolved.sudut = msg.sudut;
    }
    else {
      resolved.sudut = 0
    }

    return resolved;
    }
};

module.exports = posmesin;
