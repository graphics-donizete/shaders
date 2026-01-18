// uniform vec2 iResolution;

// y = x

void main() {
    vec2 st = gl_FragCoord.xy / iResolution.xy;

    float y = st.x;
    float color = step(y, st.y);

    gl_FragColor = vec4(vec3(color), 1);
}