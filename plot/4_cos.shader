// uniform vec2 iResolution;

// y = cos(x)

void main() {
    //pos -> 0..1 -> -1..1
    vec2 st = ((gl_FragCoord.xy / iResolution.xy) * 2.) - vec2(1.);

    float y = cos(st.x);
    float color = step(y, st.y);

    gl_FragColor = vec4(vec3(color), 1);
}