SHELL   := /bin/bash
SRCDIR  := .
CVLIB_PATH:=/usr/local/lib
CVINC_PATH:=/usr/local/include
VXLIB:= -lopenvx_thinci -ltcu_thinci -lvxu_thinci -lopenvxtensor_thinci
CVLIB:= -lopencv_core -lopencv_highgui -lopencv_videoio -lopencv_imgproc -lopencv_imgcodecs
LIBLINK:= -L/usr/local/lib
GCC:= g++ -std=c++0x 
FLAGS:= -g -Wno-narrowing -Wno-attributes

OBJ:= readAndWriteImage.o

sample: $(OBJ)
	$(GCC) $(FLAGS) -o sample readAndWriteImage.cpp $(CVLIB) -L$(CVLIB_PATH)

readAndWriteImage.o: readAndWriteImage.cpp
	$(GCC) $(FLAGS) -c readAndWriteImage.cpp $(VXLIB) $(CVLIB) -L$(CVLIB_PATH)

all: sample rm

rm: 
	rm -f *.o
