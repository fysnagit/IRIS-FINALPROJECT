// Generated by gencpp from file finalpro/messagetomotor.msg
// DO NOT EDIT!


#ifndef FINALPRO_MESSAGE_MESSAGETOMOTOR_H
#define FINALPRO_MESSAGE_MESSAGETOMOTOR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace finalpro
{
template <class ContainerAllocator>
struct messagetomotor_
{
  typedef messagetomotor_<ContainerAllocator> Type;

  messagetomotor_()
    : centx(0)
    , centy(0)
    , sudut(0)
    , kec_x(0)
    , kec_y(0)
    , kec_sudut(0)  {
    }
  messagetomotor_(const ContainerAllocator& _alloc)
    : centx(0)
    , centy(0)
    , sudut(0)
    , kec_x(0)
    , kec_y(0)
    , kec_sudut(0)  {
  (void)_alloc;
    }



   typedef int16_t _centx_type;
  _centx_type centx;

   typedef int16_t _centy_type;
  _centy_type centy;

   typedef int16_t _sudut_type;
  _sudut_type sudut;

   typedef int16_t _kec_x_type;
  _kec_x_type kec_x;

   typedef int16_t _kec_y_type;
  _kec_y_type kec_y;

   typedef int16_t _kec_sudut_type;
  _kec_sudut_type kec_sudut;





  typedef boost::shared_ptr< ::finalpro::messagetomotor_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::finalpro::messagetomotor_<ContainerAllocator> const> ConstPtr;

}; // struct messagetomotor_

typedef ::finalpro::messagetomotor_<std::allocator<void> > messagetomotor;

typedef boost::shared_ptr< ::finalpro::messagetomotor > messagetomotorPtr;
typedef boost::shared_ptr< ::finalpro::messagetomotor const> messagetomotorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::finalpro::messagetomotor_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::finalpro::messagetomotor_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::finalpro::messagetomotor_<ContainerAllocator1> & lhs, const ::finalpro::messagetomotor_<ContainerAllocator2> & rhs)
{
  return lhs.centx == rhs.centx &&
    lhs.centy == rhs.centy &&
    lhs.sudut == rhs.sudut &&
    lhs.kec_x == rhs.kec_x &&
    lhs.kec_y == rhs.kec_y &&
    lhs.kec_sudut == rhs.kec_sudut;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::finalpro::messagetomotor_<ContainerAllocator1> & lhs, const ::finalpro::messagetomotor_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace finalpro

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::finalpro::messagetomotor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::finalpro::messagetomotor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::finalpro::messagetomotor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::finalpro::messagetomotor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::finalpro::messagetomotor_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::finalpro::messagetomotor_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::finalpro::messagetomotor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ed4140bdc09bbb6c72fbfc9d889eae02";
  }

  static const char* value(const ::finalpro::messagetomotor_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xed4140bdc09bbb6cULL;
  static const uint64_t static_value2 = 0x72fbfc9d889eae02ULL;
};

template<class ContainerAllocator>
struct DataType< ::finalpro::messagetomotor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "finalpro/messagetomotor";
  }

  static const char* value(const ::finalpro::messagetomotor_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::finalpro::messagetomotor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 centx\n"
"int16 centy\n"
"int16 sudut\n"
"int16 kec_x\n"
"int16 kec_y\n"
"int16 kec_sudut\n"
"\n"
;
  }

  static const char* value(const ::finalpro::messagetomotor_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::finalpro::messagetomotor_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.centx);
      stream.next(m.centy);
      stream.next(m.sudut);
      stream.next(m.kec_x);
      stream.next(m.kec_y);
      stream.next(m.kec_sudut);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct messagetomotor_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::finalpro::messagetomotor_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::finalpro::messagetomotor_<ContainerAllocator>& v)
  {
    s << indent << "centx: ";
    Printer<int16_t>::stream(s, indent + "  ", v.centx);
    s << indent << "centy: ";
    Printer<int16_t>::stream(s, indent + "  ", v.centy);
    s << indent << "sudut: ";
    Printer<int16_t>::stream(s, indent + "  ", v.sudut);
    s << indent << "kec_x: ";
    Printer<int16_t>::stream(s, indent + "  ", v.kec_x);
    s << indent << "kec_y: ";
    Printer<int16_t>::stream(s, indent + "  ", v.kec_y);
    s << indent << "kec_sudut: ";
    Printer<int16_t>::stream(s, indent + "  ", v.kec_sudut);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FINALPRO_MESSAGE_MESSAGETOMOTOR_H