#include	<lib9.h>

extern	long	p9lrand(void);
#define	lrand	p9lrand

int
p9rand(void)
{
	return lrand() & 0x7fff;
}
