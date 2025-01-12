
precision mediump float;
precision mediump int;

#include <potree/WebGL2_pars_vertex>
#include <common>
#include <logdepthbuf_pars_vertex>

attribute vec3 position;
attribute vec2 uv;

uniform mat4 projectionMatrix;
uniform mat4 modelViewMatrix;

varying vec2 vUv;

void main() {
	vUv = uv;
	gl_Position = projectionMatrix * modelViewMatrix * vec4(position,1.0);
}