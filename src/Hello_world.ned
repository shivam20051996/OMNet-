//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package hello_world;

//
// TODO auto-generated type
//
network Hello_world
{
    @display("bgb=353,133");
    types:
        simple My_Node
        {
            gates:
                input ip;
                output op;
        }

    submodules:
        PC_1: My_Node {
            @display("p=61,61");
        }
        PC_2: My_Node {
            @display("p=225,61");
        }
    connections:
        PC_1.op --> PC_2.ip;
        PC_2.op --> PC_1.ip;
}
