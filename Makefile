all:test_pb2json libpb2json.so
test_pb2json:test_pb2json.cpp user_info.pb.cc user_info.pb.h
	g++ -o test_pb2json test_pb2json.cpp user_info.pb.cc pb2json.cpp  -lhiredis -lprotobuf -ljansson
libpb2json.so:pb2json.cpp pb2json.h
	 gcc -shared -Wall -fPIC -o libpb2json.so pb2json.cpp -lprotobuf -ljansson
