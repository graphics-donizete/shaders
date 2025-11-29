void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec2 st = fragCoord / iResolution.xy;
    fragColor = vec4(st, 0, 1);
}