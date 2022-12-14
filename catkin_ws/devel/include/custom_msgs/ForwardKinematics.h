// Generated by gencpp from file custom_msgs/ForwardKinematics.msg
// DO NOT EDIT!


#ifndef CUSTOM_MSGS_MESSAGE_FORWARDKINEMATICS_H
#define CUSTOM_MSGS_MESSAGE_FORWARDKINEMATICS_H

#include <ros/service_traits.h>


#include <custom_msgs/ForwardKinematicsRequest.h>
#include <custom_msgs/ForwardKinematicsResponse.h>


namespace custom_msgs
{

struct ForwardKinematics
{

typedef ForwardKinematicsRequest Request;
typedef ForwardKinematicsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ForwardKinematics
} // namespace custom_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::custom_msgs::ForwardKinematics > {
  static const char* value()
  {
    return "a401f28a715e8b3da782b8e7a5889085";
  }

  static const char* value(const ::custom_msgs::ForwardKinematics&) { return value(); }
};

template<>
struct DataType< ::custom_msgs::ForwardKinematics > {
  static const char* value()
  {
    return "custom_msgs/ForwardKinematics";
  }

  static const char* value(const ::custom_msgs::ForwardKinematics&) { return value(); }
};


// service_traits::MD5Sum< ::custom_msgs::ForwardKinematicsRequest> should match
// service_traits::MD5Sum< ::custom_msgs::ForwardKinematics >
template<>
struct MD5Sum< ::custom_msgs::ForwardKinematicsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::custom_msgs::ForwardKinematics >::value();
  }
  static const char* value(const ::custom_msgs::ForwardKinematicsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::custom_msgs::ForwardKinematicsRequest> should match
// service_traits::DataType< ::custom_msgs::ForwardKinematics >
template<>
struct DataType< ::custom_msgs::ForwardKinematicsRequest>
{
  static const char* value()
  {
    return DataType< ::custom_msgs::ForwardKinematics >::value();
  }
  static const char* value(const ::custom_msgs::ForwardKinematicsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::custom_msgs::ForwardKinematicsResponse> should match
// service_traits::MD5Sum< ::custom_msgs::ForwardKinematics >
template<>
struct MD5Sum< ::custom_msgs::ForwardKinematicsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::custom_msgs::ForwardKinematics >::value();
  }
  static const char* value(const ::custom_msgs::ForwardKinematicsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::custom_msgs::ForwardKinematicsResponse> should match
// service_traits::DataType< ::custom_msgs::ForwardKinematics >
template<>
struct DataType< ::custom_msgs::ForwardKinematicsResponse>
{
  static const char* value()
  {
    return DataType< ::custom_msgs::ForwardKinematics >::value();
  }
  static const char* value(const ::custom_msgs::ForwardKinematicsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CUSTOM_MSGS_MESSAGE_FORWARDKINEMATICS_H
