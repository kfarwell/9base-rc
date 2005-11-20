#include <lib9.h>

extern	long	p9lrand(void);
#define	USED(x)	if(x){}else{}
#define	lrand	p9lrand

void
setmalloctag(void *v, ulong t)
{
	USED(v);
	USED(t);
}

void
setrealloctag(void *v, ulong t)
{
	USED(v);
	USED(t);
}
