
/*
Copyright (c) 2019 The Khronos Group Inc.
Use of this source code is governed by an MIT-style license that can be
found in the LICENSE.txt file.
*/


attribute vec4 gtf_Color;
attribute vec4 gtf_Vertex;
uniform mat4 gtf_ModelViewProjectionMatrix;
varying vec4 color;

void main (void)
{
	vec3 c = floor(1.5 * gtf_Color.rgb);   // 1/3 true, 2/3 false
	vec3 result = vec3(equal(bvec3(c), bvec3(true)));
	color = vec4(result, 1.0);
	gl_Position = gtf_ModelViewProjectionMatrix * gtf_Vertex;
}
