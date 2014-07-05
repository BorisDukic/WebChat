

namespace php ThriftConnection
namespace csharp Thrift.Connection
namespace java thrift.Connection
	/**
	* Basic exception which can be thrown by any transmit method
	*/
	exception InvalidOperation {
	1: i32 what,
	2: string why
	}
	
service ThriftConnection
{
	
	/**
	* Prints "ping" on client and server side.
	*/
	bool ping () ,
	
	
	//Transmit methods for every basic datatype.
	//Transmit methods combine sending and receiving in one method.
	
	/**
	* Transmits a boolean value
	*/
	bool transmitBool(1: bool value) throws (1:InvalidOperation e),
	
	/**
	* Transmits a byte value
	*/
	byte transmitByte(1: byte value) throws (1:InvalidOperation e),
	
	/**
	* Transmits a Int16 value
	*/
	i16 transmitInt16(1: i16 value) throws (1:InvalidOperation e),
	
	/**
	* Transmits a Int32 value
	*/
	i32 transmitInt32(1: i32 value) throws (1:InvalidOperation e),
	
	/**
	* Transmits a Int64 value
	*/
	i64 transmitInt64(1:i64 value) throws (1:InvalidOperation e),
	
	/**
	* Transmits a double value
	*/
	double transmitDouble(1: double value) throws (1:InvalidOperation e),
	
	/**
	* Transmits a string message
	*/
	string transmitString(1: string message) throws (1:InvalidOperation e),
	
	/**
	* Transmits a string to string map
	*/
	map<string, string> transmitStringToStringMap(1:map<string,string> mapContainer) throws(1:InvalidOperation e),
	
	/**
	* Transmits a int32 to string map
	*/
	map<i32,string>  transmitInt32ToStringMap (1: map<i32,string> mapContainer) throws(1:InvalidOperation e),
	
	//Oneway methods for every basic datatype (fire and forget)
	
	//Transmit methods for every basic datatype.
	//Transmit methods combine sending and receiving in one method.
	
	/**
	* Sends a boolean value
	*/
	oneway void sendBool(1: bool value),
	
	/**
	* Sends a byte value
	*/
	oneway void sendByte(1: byte value),
	
	/**
	* Sends a Int16 value
	*/
	oneway void sendInt16(1: i16 value),
	
	/**
	* Sends a Int32 value
	*/
	oneway void sendInt32(1: i32 value),
	
	/**
	* Sends a Int64 value
	*/
	oneway void sendInt64(1: i64 value),
	
	/**
	* Sends a double value
	*/
	oneway void sendDouble(1: double value),
	
	/**
	* Sends a string message
	*/
	oneway void sendString(1: string message),
	
	/**
	* Sends a string to string map
	*/
	oneway void  sendStringToStringMap (1: map<string,string> mapContainer),
	
	/**
	* Sends a int32 to string map
	*/
	oneway void sendInt32ToStringMap (1: map<i32,string> mapContainer) 
	




}