# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from navig_msgs/GetGoalPointRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class GetGoalPointRequest(genpy.Message):
  _md5sum = "be26d578b2f257bf2649cb51b41fcac4"
  _type = "navig_msgs/GetGoalPointRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 pos_x_robot
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
"""
  __slots__ = ['pos_x_robot','pos_y_robot','pos_a_robot','points','last_objective','method']
  _slot_types = ['float32','float32','float32','geometry_msgs/Point[]','geometry_msgs/Point','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pos_x_robot,pos_y_robot,pos_a_robot,points,last_objective,method

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetGoalPointRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.pos_x_robot is None:
        self.pos_x_robot = 0.
      if self.pos_y_robot is None:
        self.pos_y_robot = 0.
      if self.pos_a_robot is None:
        self.pos_a_robot = 0.
      if self.points is None:
        self.points = []
      if self.last_objective is None:
        self.last_objective = geometry_msgs.msg.Point()
      if self.method is None:
        self.method = ''
    else:
      self.pos_x_robot = 0.
      self.pos_y_robot = 0.
      self.pos_a_robot = 0.
      self.points = []
      self.last_objective = geometry_msgs.msg.Point()
      self.method = ''

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3f().pack(_x.pos_x_robot, _x.pos_y_robot, _x.pos_a_robot))
      length = len(self.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.points:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_3d().pack(_x.last_objective.x, _x.last_objective.y, _x.last_objective.z))
      _x = self.method
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.points is None:
        self.points = None
      if self.last_objective is None:
        self.last_objective = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.pos_x_robot, _x.pos_y_robot, _x.pos_a_robot,) = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.points.append(val1)
      _x = self
      start = end
      end += 24
      (_x.last_objective.x, _x.last_objective.y, _x.last_objective.z,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.method = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.method = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3f().pack(_x.pos_x_robot, _x.pos_y_robot, _x.pos_a_robot))
      length = len(self.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.points:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_3d().pack(_x.last_objective.x, _x.last_objective.y, _x.last_objective.z))
      _x = self.method
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.points is None:
        self.points = None
      if self.last_objective is None:
        self.last_objective = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.pos_x_robot, _x.pos_y_robot, _x.pos_a_robot,) = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.points.append(val1)
      _x = self
      start = end
      end += 24
      (_x.last_objective.x, _x.last_objective.y, _x.last_objective.z,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.method = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.method = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from navig_msgs/GetGoalPointResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class GetGoalPointResponse(genpy.Message):
  _md5sum = "8ad3bd0e46ff6777ce7cd2fdd945cb9e"
  _type = "navig_msgs/GetGoalPointResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """
geometry_msgs/Point goal


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['goal']
  _slot_types = ['geometry_msgs/Point']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       goal

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetGoalPointResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.goal is None:
        self.goal = geometry_msgs.msg.Point()
    else:
      self.goal = geometry_msgs.msg.Point()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3d().pack(_x.goal.x, _x.goal.y, _x.goal.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.goal is None:
        self.goal = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 24
      (_x.goal.x, _x.goal.y, _x.goal.z,) = _get_struct_3d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3d().pack(_x.goal.x, _x.goal.y, _x.goal.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.goal is None:
        self.goal = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 24
      (_x.goal.x, _x.goal.y, _x.goal.z,) = _get_struct_3d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
class GetGoalPoint(object):
  _type          = 'navig_msgs/GetGoalPoint'
  _md5sum = '3113fe99463fffd3cbc7bac1e2ddceeb'
  _request_class  = GetGoalPointRequest
  _response_class = GetGoalPointResponse
