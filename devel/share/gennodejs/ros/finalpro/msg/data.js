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

class data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.centerx = null;
      this.centery = null;
    }
    else {
      if (initObj.hasOwnProperty('centerx')) {
        this.centerx = initObj.centerx
      }
      else {
        this.centerx = 0;
      }
      if (initObj.hasOwnProperty('centery')) {
        this.centery = initObj.centery
      }
      else {
        this.centery = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type data
    // Serialize message field [centerx]
    bufferOffset = _serializer.int16(obj.centerx, buffer, bufferOffset);
    // Serialize message field [centery]
    bufferOffset = _serializer.int16(obj.centery, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type data
    let len;
    let data = new data(null);
    // Deserialize message field [centerx]
    data.centerx = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [centery]
    data.centery = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'finalpro/data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '470a37c8695ec4f9019a304d43b6f6d3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 centerx
    int16 centery
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new data(null);
    if (msg.centerx !== undefined) {
      resolved.centerx = msg.centerx;
    }
    else {
      resolved.centerx = 0
    }

    if (msg.centery !== undefined) {
      resolved.centery = msg.centery;
    }
    else {
      resolved.centery = 0
    }

    return resolved;
    }
};

module.exports = data;
