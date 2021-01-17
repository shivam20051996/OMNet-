/*
 * Hello_world.cc
 *
 *  Created on: 17-Jan-2021
 *      Author: patid
 */

#include<omnetpp.h>
using namespace omnetpp;

//My_Node, name should be same as in description file
class My_Node: public cSimpleModule //cSimpleModule is base class and My_Node is inherited class
{
protected:
    void initialize() override;  //Initialize is called in the begining of simulation, to start the process.
    void handleMessage(cMessage *msg) override; //handleMessage() method is called whenever a message arrives ar a node.

};

Define_Module(My_Node);  //register the class with OMNet++

void My_Node :: initialize()
{
 if(strcmp("PC_2",getName())==0)
 {
     cMessage *msg = new cMessage("Hii Shivam");
     send(msg,"op");
 }
}

void My_Node :: handleMessage(cMessage *msg)
 {
     send(msg, "op"); //send any msg to other node, through gate op
 }


