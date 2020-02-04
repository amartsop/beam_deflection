#version 120

varying vec2 texCoord0;
varying vec3 normal0;

uniform sampler2D diffuse;

// Hardcoded can change GLOBAL Z AXIS(now) --> make it uniform
vec3 lightDirection = vec3(0, 0, 1); 
													

void main()
{
	gl_FragColor = texture2D(diffuse, texCoord0) //vec4(1.0, 0.0, 0.0, 1.0)
		* clamp(dot(-lightDirection, normal0), 0.0, 1.0);
}