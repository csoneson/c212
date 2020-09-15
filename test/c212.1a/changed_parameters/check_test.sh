#!/bin/bash

diff ./test/RAISED_AES ./baseline/RAISED_AES
if [ $?  -ne 0 ]
then
	exit 1
fi

diff ./test/conv.dat ./baseline//
if [ $?  -ne 0 ]
then
	exit 1
fi

diff ./test/ptheta95.dat ./baseline//
if [ $?  -ne 0 ]
then
	exit 1
fi

diff ./test/ptheta.dat ./baseline//
if [ $?  -ne 0 ]
then
	exit 1
fi

diff ./test/summary.dat ./baseline//
if [ $?  -ne 0 ]
then
	exit 1
fi


