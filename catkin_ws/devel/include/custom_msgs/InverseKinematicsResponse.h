// Generated by gencpp from file custom_msgs/InverseKinematicsResponse.msg
// DO NOT EDIT!


#ifndef CUSTOM_MSGS_MESSAGE_INVERSEKINEMATICSRESPONSE_H
#define CUSTOM_MSGS_MESSAGE_INVERSEKINEMATICSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace custom_msgs
{
template <class ContainerAllocator>
struct InverseKinematicsResponse_
{
  typedef InverseKinematicsResponse_<ContainerAllocator> Type;

  InverseKinematicsResponse_()
    : q1(0.0)
    , q2(0.0)
    , q3(0.0)
    , q4(0.0)
    , q5(0.0)
    , q6(0.0)
    , q7(0.0)  {
    }
  InverseKinematicsResponse_(const ContainerAllocator& _alloc)
    : q1(0.0)
    , q2(0.0)
    , q3(0.0)
    , q4(0.0)
    , q5(0.0)
    , q6(0.0)
    , q7(0.0)  {
  (void)_alloc;
    }



   typedef double _q1_type;
  _q1_type q1;

   typedef double _q2_type;
  _q2_type q2;

   typedef double _q3_type;
  _q3_type q3;

   typedef double _q4_type;
  _q4_type q4;

   typedef double _q5_type;
  _q5_type q5;

   typedef double _q6_type;
  _q6_type q6;

   typedef double _q7_type;
  _q7_type q7;





  typedef boost::shared_ptr< ::custom_msgs::InverseKinematicsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::custom_msgs::InverseKinematicsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct InverseKinematicsResponse_

typedef ::custom_msgs::InverseKinematicsResponse_<std::allocator<void> > InverseKinematicsResponse;

typedef boost::shared_ptr< ::custom_msgs::InverseKinematicsResponse > InverseKinematicsResponsePtr;
typedef boost::shared_ptr< ::custom_msgs::InverseKinematicsResponse const> InverseKinematicsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::custom_msgs::InverseKinematicsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::custom_msgs::InverseKinematicsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::custom_msgs::InverseKinematicsResponse_<ContainerAllocator1> & lhs, const ::custom_msgs::InverseKinematicsResponse_<ContainerAllocator2> & rhs)
{
  return lhs.q1 == rhs.q1 &&
    lhs.q2 == rhs.q2 &&
    lhs.q3 == rhs.q3 &&
    lhs.q4 == rhs.q4 &&
    lhs.q5 == rhs.q5 &&
    lhs.q6 == rhs.q6 &&
    lhs.q7 == rhs.q7;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::custom_msgs::InverseKinematicsResponse_<ContainerAllocator1> & lhs, const ::custom_msgs::InverseKinematicsResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace custom_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::custom_msgs::InverseKinematicsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_msgs::InverseKinematicsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_msgs::InverseKinematicsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_msgs::InverseKinematicsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_msgs::InverseKinematicsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_msgs::InverseKinematicsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::custom_msgs::InverseKinematicsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "28a68355a51a751a1d02f2fdca527182";
  }

  static const char* value(const ::custom_msgs::InverseKinematicsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x28a68355a51a751aULL;
  static const uint64_t static_value2 = 0x1d02f2fdca527182ULL;
};

template<class ContainerAllocator>
struct DataType< ::custom_msgs::InverseKinematicsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "custom_msgs/InverseKinematicsResponse";
  }

  static const char* value(const ::custom_msgs::InverseKinematicsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::custom_msgs::InverseKinematicsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 q1\n"
"float64 q2\n"
"float64 q3\n"
"float64 q4\n"
"float64 q5\n"
"float64 q6\n"
"float64 q7\n"
"\n"
"#Cartesian pose represents a position in a 6DOF space,\n"
"#neverthless, arm is 7DOF. The IK algorithm is supossed to calculate the best elbow position\n"
"#for the given cartesian pose.\n"
"\n"
"#Result is ArmConfiguration (seven floats) representing the angular position for each motor in the arm.\n"
"\n"
"#If goal pose is out of the workspace, a false should be returned when service is called.\n"
"#Reachability of a given position can be determined by trying to calculate its inverse kinematics\n"
;
  }

  static const char* value(const ::custom_msgs::InverseKinematicsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::custom_msgs::InverseKinematicsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.q1);
      stream.next(m.q2);
      stream.next(m.q3);
      stream.next(m.q4);
      stream.next(m.q5);
      stream.next(m.q6);
      stream.next(m.q7);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct InverseKinematicsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::custom_msgs::InverseKinematicsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::custom_msgs::InverseKinematicsResponse_<ContainerAllocator>& v)
  {
    s << indent << "q1: ";
    Printer<double>::stream(s, indent + "  ", v.q1);
    s << indent << "q2: ";
    Printer<double>::stream(s, indent + "  ", v.q2);
    s << indent << "q3: ";
    Printer<double>::stream(s, indent + "  ", v.q3);
    s << indent << "q4: ";
    Printer<double>::stream(s, indent + "  ", v.q4);
    s << indent << "q5: ";
    Printer<double>::stream(s, indent + "  ", v.q5);
    s << indent << "q6: ";
    Printer<double>::stream(s, indent + "  ", v.q6);
    s << indent << "q7: ";
    Printer<double>::stream(s, indent + "  ", v.q7);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CUSTOM_MSGS_MESSAGE_INVERSEKINEMATICSRESPONSE_H
