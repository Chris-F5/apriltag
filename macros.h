#include "py/obj.h"
#include "py/runtime.h"
#include "py/misc.h"
#define free m_free
#define malloc m_malloc
#define realloc m_realloc
#define calloc(nmemb, size) memset(m_malloc((nmemb)*(size)), 0, (nmemb)*(size))
