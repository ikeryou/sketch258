uniform sampler2D tex;

varying vec3 vColor;
varying vec2 vUv;

void main(void) {
  vec4 dest = texture2D(tex, vUv);
  dest.rgb -= vColor;

  gl_FragColor = dest;
}
