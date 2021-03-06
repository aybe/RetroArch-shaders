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
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
};
vec4 _oPosition1;
vec4 _r0006;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _oTex;
    _r0006 = VertexCoord.x*MVPMatrix[0];
    _r0006 = _r0006 + VertexCoord.y*MVPMatrix[1];
    _r0006 = _r0006 + VertexCoord.z*MVPMatrix[2];
    _r0006 = _r0006 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0006;
    _oTex = TexCoord.xy;
    gl_Position = _r0006;
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
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
};
vec4 _ret_0;
float _TMP3;
float _TMP2;
float _TMP1;
float _TMP0;
uniform sampler2D Texture;
uniform sampler2D CMYK_LUT;
float _a0011;
float _c0011;
float _a0013;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec4 _c;
    int _offset;
    float _v;
    vec2 _hv;
    _c = COMPAT_TEXTURE(Texture, TEX0.xy);
    _offset = int((_c.x*2.55000000E+002*6.55360000E+004)) + int((_c.y*2.55000000E+002*2.56000000E+002)) + int((_c.z*2.55000000E+002));
    _a0011 = float(_offset);
    _a0013 = _a0011/4.09600000E+003;
    _TMP0 = abs(_a0013);
    _TMP1 = fract(_TMP0);
    _TMP2 = abs(4.09600000E+003);
    _c0011 = _TMP1*_TMP2;
    if (_a0011 < 0.00000000E+000) { 
        _TMP3 = -_c0011;
    } else {
        _TMP3 = _c0011;
    } 
    _v = float((float(_offset)/4.09600000E+003));
    _hv = vec2(_TMP3*2.44140625E-004, _v*2.44140625E-004);
    _ret_0 = COMPAT_TEXTURE(CMYK_LUT, _hv);
    FragColor = _ret_0;
    return;
} 
#endif
