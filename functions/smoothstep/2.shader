// uniform vec2 iResolution;

void main() {
    vec2 st = gl_FragCoord.xy / iResolution.xy;

    vec4 original = vec4(st.x, st.y, 0, 1);
    vec4 new = smoothstep(.48, .52, original);

    gl_FragColor = new;
}