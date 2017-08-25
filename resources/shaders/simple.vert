#version 450 core
#extension GL_ARB_separate_shader_objects : enable
#extension GL_ARB_shading_language_420pack : enable

//-------------------------------------------------------------------------------------------------
// input
//-------------------------------------------------------------------------------------------------

layout(location = 0) in vec4 inVert_pos;
layout(location = 1) in vec2 inVert_uv;

//-------------------------------------------------------------------------------------------------
// output
//-------------------------------------------------------------------------------------------------

layout(location = 0) out vec2 outUV;

out gl_PerVertex 
{
   vec4 gl_Position;
};

//-------------------------------------------------------------------------------------------------
// entry
//-------------------------------------------------------------------------------------------------

void main()
{
    gl_Position = inVert_pos;
	outUV = inVert_uv;
}
