// Auto-generated. Do not edit!

// (in-package navig_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetGoalPointRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pos_x_robot = null;
      this.pos_y_robot = null;
      this.pos_a_robot = null;
      this.points = null;
      this.last_objective = null;
      this.method = null;
    }
    else {
      if (initObj.hasOwnProperty('pos_x_robot')) {
        this.pos_x_robot = initObj.pos_x_robot
      }
      else {
        this.pos_x_robot = 0.0;
      }
      if (initObj.hasOwnProperty('pos_y_robot')) {
        this.pos_y_robot = initObj.pos_y_robot
      }
      else {
        this.pos_y_robot = 0.0;
      }
      if (initObj.hasOwnProperty('pos_a_robot')) {
        this.pos_a_robot = initObj.pos_a_robot
      }
      else {
        this.pos_a_robot = 0.0;
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('last_objective')) {
        this.last_objective = initObj.last_objective
      }
      else {
        this.last_objective = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('method')) {
        this.method = initObj.method
      }
      else {
        this.method = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetGoalPointRequest
    // Serialize message field [pos_x_robot]
    bufferOffset = _serializer.float32(obj.pos_x_robot, buffer, bufferOffset);
    // Serialize message field [pos_y_robot]
    bufferOffset = _serializer.float32(obj.pos_y_robot, buffer, bufferOffset);
    // Serialize message field [pos_a_robot]
    bufferOffset = _serializer.float32(obj.pos_a_robot, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [last_objective]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.last_objective, buffer, bufferOffset);
    // Serialize message field [method]
    bufferOffset = _serializer.string(obj.method, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetGoalPointRequest
    let len;
    let data = new GetGoalPointRequest(null);
    // Deserialize message field [pos_x_robot]
    data.pos_x_robot = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pos_y_robot]
    data.pos_y_robot = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pos_a_robot]
    data.pos_a_robot = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [last_objective]
    data.last_objective = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [method]
    data.method = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.points.length;
    length += _getByteLength(object.method);
    return length + 44;
  }

  static datatype() {
    // Returns string type for a service object
    return 'navig_msgs/GetGoalPointRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be26d578b2f257bf2649cb51b41fcac4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 pos_x_robot
    float32 pos_y_robot
    float32 pos_a_robot
    geometry_msgs/Point[] points
    geometry_msgs/Point last_objective
    string method
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetGoalPointRequest(null);
    if (msg.pos_x_robot !== undefined) {
      resolved.pos_x_robot = msg.pos_x_robot;
    }
    else {
      resolved.pos_x_robot = 0.0
    }

    if (msg.pos_y_robot !== undefined) {
      resolved.pos_y_robot = msg.pos_y_robot;
    }
    else {
      resolved.pos_y_robot = 0.0
    }

    if (msg.pos_a_robot !== undefined) {
      resolved.pos_a_robot = msg.pos_a_robot;
    }
    else {
      resolved.pos_a_robot = 0.0
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = geometry_msgs.msg.Point.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.last_objective !== undefined) {
      resolved.last_objective = geometry_msgs.msg.Point.Resolve(msg.last_objective)
    }
    else {
      resolved.last_objective = new geometry_msgs.msg.Point()
    }

    if (msg.method !== undefined) {
      resolved.method = msg.method;
    }
    else {
      resolved.method = ''
    }

    return resolved;
    }
};

class GetGoalPointResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal = null;
    }
    else {
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetGoalPointResponse
    // Serialize message field [goal]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.goal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetGoalPointResponse
    let len;
    let data = new GetGoalPointResponse(null);
    // Deserialize message field [goal]
    data.goal = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'navig_msgs/GetGoalPointResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ad3bd0e46ff6777ce7cd2fdd945cb9e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    geometry_msgs/Point goal
    
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetGoalPointResponse(null);
    if (msg.goal !== undefined) {
      resolved.goal = geometry_msgs.msg.Point.Resolve(msg.goal)
    }
    else {
      resolved.goal = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetGoalPointRequest,
  Response: GetGoalPointResponse,
  md5sum() { return '3113fe99463fffd3cbc7bac1e2ddceeb'; },
  datatype() { return 'navig_msgs/GetGoalPoint'; }
};
