attribute vec3 rate;

varying vec2 vUv;
varying vec3 vColor;

void main(){
  vUv = uv;
  vColor = vec3(0.0, rate.y * 2.0, rate.x + rate.y);

  vec3 p = vec3(position.xy, rate.x * 50.0);
  gl_Position = projectionMatrix * modelViewMatrix * vec4(p, 1.0);
}
