// uniform vec2 iResolution;

void main() {
    vec2 st = gl_FragCoord.xy / iResolution.xy;
    vec2 mouse = iMouse.xy / iResolution.xy;

    float y = st.x;
    vec3 a = vec3(step(mouse.x, y));

    gl_FragColor = vec4(a, 1);
}