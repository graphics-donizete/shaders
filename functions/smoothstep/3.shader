// uniform vec2 iResolution;
// uniform vec2 iMouse;

void main() {
    vec2 st = gl_FragCoord.xy / iResolution.xy;
    vec2 mouse = iMouse.xy / iResolution.xy;

    float half_horizontal_percentage = mouse.x / 2.;
    float inverse = 1.0 - half_horizontal_percentage;

    vec4 original = vec4(st, 0, 1);
    vec4 new = smoothstep(
        half_horizontal_percentage, 
        inverse, 
        original
    );

    gl_FragColor = new;
}