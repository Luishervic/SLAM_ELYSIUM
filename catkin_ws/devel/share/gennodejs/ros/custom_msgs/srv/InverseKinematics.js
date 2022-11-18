// Auto-generated. Do not edit!

// (in-package custom_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class InverseKinematicsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.roll = null;
      this.pitch = null;
      this.yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InverseKinematicsRequest
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InverseKinematicsRequest
    let len;
    let data = new InverseKinematicsRequest(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/InverseKinematicsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1a83f0bdabe750ce0cfb45a14ec63457';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x
    float64 y
    float64 z
    float64 roll
    float64 pitch
    float64 yaw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InverseKinematicsRequest(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    return resolved;
    }
};

class InverseKinematicsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.q1 = null;
      this.q2 = null;
      this.q3 = null;
      this.q4 = null;
      this.q5 = null;
      this.q6 = null;
      this.q7 = null;
    }
    else {
      if (initObj.hasOwnProperty('q1')) {
        this.q1 = initObj.q1
      }
      else {
        this.q1 = 0.0;
      }
      if (initObj.hasOwnProperty('q2')) {
        this.q2 = initObj.q2
      }
      else {
        this.q2 = 0.0;
      }
      if (initObj.hasOwnProperty('q3')) {
        this.q3 = initObj.q3
      }
      else {
        this.q3 = 0.0;
      }
      if (initObj.hasOwnProperty('q4')) {
        this.q4 = initObj.q4
      }
      else {
        this.q4 = 0.0;
      }
      if (initObj.hasOwnProperty('q5')) {
        this.q5 = initObj.q5
      }
      else {
        this.q5 = 0.0;
      }
      if (initObj.hasOwnProperty('q6')) {
        this.q6 = initObj.q6
      }
      else {
        this.q6 = 0.0;
      }
      if (initObj.hasOwnProperty('q7')) {
        this.q7 = initObj.q7
      }
      else {
        this.q7 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InverseKinematicsResponse
    // Serialize message field [q1]
    bufferOffset = _serializer.float64(obj.q1, buffer, bufferOffset);
    // Serialize message field [q2]
    bufferOffset = _serializer.float64(obj.q2, buffer, bufferOffset);
    // Serialize message field [q3]
    bufferOffset = _serializer.float64(obj.q3, buffer, bufferOffset);
    // Serialize message field [q4]
    bufferOffset = _serializer.float64(obj.q4, buffer, bufferOffset);
    // Serialize message field [q5]
    bufferOffset = _serializer.float64(obj.q5, buffer, bufferOffset);
    // Serialize message field [q6]
    bufferOffset = _serializer.float64(obj.q6, buffer, bufferOffset);
    // Serialize message field [q7]
    bufferOffset = _serializer.float64(obj.q7, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InverseKinematicsResponse
    let len;
    let data = new InverseKinematicsResponse(null);
    // Deserialize message field [q1]
    data.q1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [q2]
    data.q2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [q3]
    data.q3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [q4]
    data.q4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [q5]
    data.q5 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [q6]
    data.q6 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [q7]
    data.q7 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msgs/InverseKinematicsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '28a68355a51a751a1d02f2fdca527182';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 q1
    float64 q2
    float64 q3
    float64 q4
    float64 q5
    float64 q6
    float64 q7
    
    #Cartesian pose represents a position in a 6DOF space,
    #neverthless, arm is 7DOF. The IK algorithm is supossed to calculate the best elbow position
    #for the given cartesian pose.
    
    #Result is ArmConfiguration (seven floats) representing the angular position for each motor in the arm.
    
    #If goal pose is out of the workspace, a false should be returned when service is called.
    #Reachability of a given position can be determined by trying to calculate its inverse kinematics
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InverseKinematicsResponse(null);
    if (msg.q1 !== undefined) {
      resolved.q1 = msg.q1;
    }
    else {
      resolved.q1 = 0.0
    }

    if (msg.q2 !== undefined) {
      resolved.q2 = msg.q2;
    }
    else {
      resolved.q2 = 0.0
    }

    if (msg.q3 !== undefined) {
      resolved.q3 = msg.q3;
    }
    else {
      resolved.q3 = 0.0
    }

    if (msg.q4 !== undefined) {
      resolved.q4 = msg.q4;
    }
    else {
      resolved.q4 = 0.0
    }

    if (msg.q5 !== undefined) {
      resolved.q5 = msg.q5;
    }
    else {
      resolved.q5 = 0.0
    }

    if (msg.q6 !== undefined) {
      resolved.q6 = msg.q6;
    }
    else {
      resolved.q6 = 0.0
    }

    if (msg.q7 !== undefined) {
      resolved.q7 = msg.q7;
    }
    else {
      resolved.q7 = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: InverseKinematicsRequest,
  Response: InverseKinematicsResponse,
  md5sum() { return '64e345b87f38099c3cc1cc7c03cb146a'; },
  datatype() { return 'custom_msgs/InverseKinematics'; }
};
