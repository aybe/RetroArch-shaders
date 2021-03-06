// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _oPosition1;
vec4 _r0005;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec4 _oColor;
    vec2 _otexCoord;
    _r0005 = VertexCoord.x*MVPMatrix[0];
    _r0005 = _r0005 + VertexCoord.y*MVPMatrix[1];
    _r0005 = _r0005 + VertexCoord.z*MVPMatrix[2];
    _r0005 = _r0005 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0005;
    _oColor = COLOR;
    _otexCoord = TexCoord.xy;
    gl_Position = _r0005;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
float _TMP3;
float _TMP2;
float _TMP1;
float _TMP0;
uniform sampler2D Texture;
input_dummy _IN1;
float _a0009;
float _c0009;
float _a0011;
float _c0017;
float _a0019;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec4 _pixel;
    vec2 _scale;
    float _odd;
    _pixel = COMPAT_TEXTURE(Texture, TEX0.xy);
    _scale = OutputSize/InputSize;
    _a0009 = TEX0.y*TextureSize.y*_scale.y;
    _a0011 = _a0009/2.00000000E+000;
    _TMP0 = abs(_a0011);
    _TMP1 = fract(_TMP0);
    _TMP2 = abs(2.00000000E+000);
    _c0009 = _TMP1*_TMP2;
    if (_a0009 < 0.00000000E+000) { 
        _TMP3 = -_c0009;
    } else {
        _TMP3 = _c0009;
    } 
    _odd = _TMP3;
    _a0019 = float(FrameCount)/4.00000000E+000;
    _TMP0 = abs(_a0019);
    _TMP1 = fract(_TMP0);
    _TMP2 = abs(4.00000000E+000);
    _c0017 = _TMP1*_TMP2;
    if (float(FrameCount) < 0.00000000E+000) { 
        _TMP3 = -_c0017;
    } else {
        _TMP3 = _c0017;
    } 
    if (_odd < 1.00000000E+000) { 
        if (_TMP3 >= 2.00000000E+000) { 
            _pixel.xyz = _pixel.xyz*5.00000000E-001;
        } 
    } else {
        if (_TMP3 < 2.00000000E+000) { 
            _pixel.xyz = _pixel.xyz*5.00000000E-001;
        } 
    } 
    FragColor = _pixel;
    return;
} 
#endif
