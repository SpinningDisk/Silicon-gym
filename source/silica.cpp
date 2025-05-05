#include <stdfloat.h>


// placeholder
typedef float ffloat;

typedef struct{
    void* data;
    unsigned int* dims;
    unsigned int dimsLen;
}tensor;
class Layer{
    private:
        tensor shape;
        tensor kernel;
        tensor bias;
    public:
        virtual pass(ffloat inputs)
}