// uniform vec2 iResolution;

vec3 color1 = vec3(1, 0, 0);
vec3 color2 = vec3(0, 0, 1);

void main() {
    vec2 st = gl_FragCoord.xy / iResolution.xy;

    vec3 color = mix(color1, color2, st.x);

    gl_FragColor = vec4(color, 1);
}