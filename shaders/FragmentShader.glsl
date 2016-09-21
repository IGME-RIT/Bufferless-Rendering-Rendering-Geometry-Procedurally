/*
Title: Buffer Free 2
File Name: FragmentShader.glsl
Copyright © 2015
Original authors: Joshua Alway
Written under the supervision of David I. Schwartz, Ph.D., and
supported by a professional development seed grant from the B. Thomas
Golisano College of Computing & Information Sciences
(https://www.rit.edu/gccis) at the Rochester Institute of Technology.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or (at
your option) any later version.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

Description:
This program serves to demonstrate rendering without a buffer, using modulus math on just the gl_VertexID variable.
This data can be used to render without actually sending any data to the shader. This helps would-be graphics 
programmers understand how the graphics pipeline actually works. Each vertex is given a VertexID to identify it uniquely.
In this demo, the VertexID data is played with using modulus math to create a wavy green terrain. We're drawing about 
2 million triangles in this example, for reference, and none of those triangles have any actual data stored in memory for vertex positions.
There is also a uniform Model-View-Projection matrix being used to rotate the camera.
*/

#version 440 core // Identifies the version of the shader, this line must be on a separate line from the rest of the shader code


in vec4 color;	// Take in a vec4 for color
 
void main(void)
{
	gl_FragColor = color; // Set our out_color equal to our in color, basically making this a pass-through shader.
}