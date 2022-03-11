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

class messagetomotor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.centx = null;
      this.centy = null;
      this.sudut = null;
      this.kec_x = null;
      this.kec_y = null;
      this.kec_sudut = null;
    }
    else {
      if (initObj.hasOwnProperty('centx')) {
        this.centx = initObj.centx
      }
      else {
        this.centx = 0;
      }
      if (initObj.hasOwnProperty('centy')) {
        this.centy = initObj.centy
      }
      else {
        this.centy = 0;
      }
      if (initObj.hasOwnProperty('sudut')) {
        this.sudut = initObj.sudut
      }
      else {
        this.sudut = 0;
      }
      if (initObj.hasOwnProperty('kec_x')) {
        this.kec_x = initObj.kec_x
      }
      else {
        this.kec_x = 0;
      }
      if (initObj.hasOwnProperty('kec_y')) {
        this.kec_y = initObj.kec_y
      }
      else {
        this.kec_y = 0;
      }
      if (initObj.hasOwnProperty('kec_sudut')) {
        this.kec_sudut = initObj.kec_sudut
      }
      else {
        this.kec_sudut = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type messagetomotor
    // Serialize message field [centx]
    bufferOffset = _serializer.int16(obj.centx, buffer, bufferOffset);
    // Serialize message field [centy]
    bufferOffset = _serializer.int16(obj.centy, buffer, bufferOffset);
    // Serialize message field [sudut]
    bufferOffset = _serializer.int16(obj.sudut, buffer, bufferOffset);
    // Serialize message field [kec_x]
    bufferOffset = _serializer.int16(obj.kec_x, buffer, bufferOffset);
    // Serialize message field [kec_y]
    bufferOffset = _serializer.int16(obj.kec_y, buffer, bufferOffset);
    // Serialize message field [kec_sudut]
    bufferOffset = _serializer.int16(obj.kec_sudut, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type messagetomotor
    let len;
    let data = new messagetomotor(null);
    // Deserialize message field [centx]
    data.centx = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [centy]
    data.centy = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [sudut]
    data.sudut = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [kec_x]
    data.kec_x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [kec_y]
    data.kec_y = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [kec_sudut]
    data.kec_sudut = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'finalpro/messagetomotor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ed4140bdc09bbb6c72fbfc9d889eae02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 centx
    int16 centy
    int16 sudut
    int16 kec_x
    int16 kec_y
    int16 kec_sudut
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new messagetomotor(null);
    if (msg.centx !== undefined) {
      resolved.centx = msg.centx;
    }
    else {
      resolved.centx = 0
    }

    if (msg.centy !== undefined) {
      resolved.centy = msg.centy;
    }
    else {
      resolved.centy = 0
    }

    if (msg.sudut !== undefined) {
      resolved.sudut = msg.sudut;
    }
    else {
      resolved.sudut = 0
    }

    if (msg.kec_x !== undefined) {
      resolved.kec_x = msg.kec_x;
    }
    else {
      resolved.kec_x = 0
    }

    if (msg.kec_y !== undefined) {
      resolved.kec_y = msg.kec_y;
    }
    else {
      resolved.kec_y = 0
    }

    if (msg.kec_sudut !== undefined) {
      resolved.kec_sudut = msg.kec_sudut;
    }
    else {
      resolved.kec_sudut = 0
    }

    return resolved;
    }
};

module.exports = messagetomotor;
