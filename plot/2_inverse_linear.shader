// uniform vec2 iResolution;

// y = 1 - x

void main() {
    vec2 st = gl_FragCoord.xy / iResolution.xy;

    float y = 1. - st.x;
    float color = step(y, st.y);

    gl_FragColor = vec4(vec3(color), 1);
}