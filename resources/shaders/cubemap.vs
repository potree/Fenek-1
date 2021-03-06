#version 450

layout(location = 0) in vec3 aPosition;
layout(location = 1) in vec2 aUV;

layout(std140, binding = 4) uniform shader_data{
	mat4 transform;
	mat4 world;
	mat4 view;
	mat4 proj;

	float time;
	vec2 screenSize;

} ssArgs;

out vec3 vTexcoord;

void main() {
	vec4 pos = ssArgs.transform * vec4(aPosition, 1.0);

	gl_Position = pos;

	vTexcoord = aPosition;
}