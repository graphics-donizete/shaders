// uniform vec2 iResolution;

void main() {
    vec2 st = gl_FragCoord.xy / iResolution.xy;
    vec2 mouse = iMouse.xy / iResolution.xy;

    float radius = .1;

    float distance = distance(st, mouse);

    if (distance > radius) {
        gl_FragColor = vec4(1);
    } else {
        gl_FragColor = vec4(1, 0, 0, 1);
    }
}