Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C984E009E7; Fri, 28 Sep 2018 08:19:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2726AE009CF
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2018 08:19:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w8SFJAIj010088
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 28 Sep 2018 08:19:10 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.227) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Fri, 28 Sep 2018 08:19:09 -0700
To: Kyle Russell <bkylerussell@gmail.com>
References: <20180928145556.6710-1-bkylerussell@gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Openpgp: preference=signencrypt
Autocrypt: addr=mark.hatle@windriver.com; prefer-encrypt=mutual; keydata=
	xsBNBFYKxFgBCACt/pzutBp6p/xVKTFJjHbM3KpQKCblyot/YP+bpTr51Hrc5xDXBQhoG7TC
	aIRvRIvbhEevEQK9y04gW3JK/5lobq5ORebolcsHlYBUvpNeIPjupLQwGvz/TPtrLRNGLqDC
	rvsM6OA2XbQ2bwzxWaSQS3ImE2O2iXOZn9HhThMGeDB4Nff3fgUvXOTDIrgWOn9K2DgLL7Yc
	zkUIlFdj+Nraksd/7BSk8oH6tjeBVhFqSFvKta9QxWgdr58oPaTYaW/xNqUjlLrbJuMw/MSe
	xzuYfdfDfm6J8kRjMOnwQ0n8svJElzqAk+d83ow38gpGQ+LkjGgnf8ZFJ4rUJFADroX3ABEB
	AAHNJU1hcmsgSGF0bGUgPG1hcmsuaGF0bGVAd2luZHJpdmVyLmNvbT7CwHcEEwEIACEFAlYK
	xFgCGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4AACgkQfv796/r0vvlvZAf9Gs+eN320yhRW
	V/fZCsngKhmOK4v3HrTwFrkSmoD9QHQiE/5IPdNacHwIPwZx07tNBohB8xOeNqCPRYRBwGhA
	AnxKOPyd0nnm6ZhPzbA57v4x3IGRQr4QzvcBTASJq91l3Ew4lpAslyx5w1DPPqRD7G8ycDKg
	peKyDwmdkvCunVisSAQI3XIMq2y230biTO98tDPEezg+lg+yTsz9ZT33F5KNuWrpf8VL5fG/
	mt+kAv7wtsx/KTRbqhH3iFXF6eBSwMjAfTXFlkLfbM9riJGXrWEl9n2S2R3cDHNHug0lb8f4
	whK370KEO4OwRKIYW/VUBmzk5XZUE9DTlDSV8ycsrs7ATQRWCsRYAQgAwK3FuHCE+HW3YWdH
	PUjeSn5p//xJ57u8g2rng8zm9zNjmYgpPv5UxozaD9i2jf4mlQLHGGOezhHae8K4Nj70oVcv
	8AmwcrJa9i9WL1oy/9R3fHMWf/Ctt9VXTO0qlCuq6PDzaUfvsXR61aJIjTKNQTOjCLjY1vXm
	VSewUgARysmA8WrjTfwGBihMBxAX0+kIjx8nOlam0WvekMBXZ0AbS56oTLRxYao6DI3GeB/N
	oWPy/5DfuTKaSdM0Pf8al20x9RuNN5/HLMlyDH/k8bIa1xd9aAqW+Feiw5gC107V2E6ULyIy
	q6em2UrsmIRxrvpHqbNgQKqvTehJ+V/i4g/uOwARAQABwsBfBBgBCAAJBQJWCsRYAhsMAAoJ
	EH7+/ev69L755XAH/3ZcNhooqd9OBhFkvXm1iWZ8EoC7motWqVn2oEyxoonsg8AD9kFXiN+T
	dYp7dH99EZu9q4ptj56AXm4uHzOgywL/5/V2TY6twCGAjUGzDjAB5gzoi+JLIBlDiyOip0eL
	QswIhRk473xy3j8DA4oVamnSPWgyNJ+qsdt37YWDzoDFFvtDoRU7Eb+znfIMDKzlny0XU/8L
	cW1bNHJlpv/78GPdfP4tjysEd8MuA5jf5o5w4XqcwTqalffEJtQ/s3pbkstEi7qm5uPui5Kt
	gq6YYLSqcSNe0GWAF9/T+qwyo7burSTxUWCWtMmlXdAQLW9SynLhB3Jbch0nFAh0fCKi6yY=
Organization: Wind River Systems
Message-ID: <09052b65-6820-8549-ebab-986a750b0eb4@windriver.com>
Date: Fri, 28 Sep 2018 10:19:08 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20180928145556.6710-1-bkylerussell@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [prelink-cross][PATCH] rtld: get machine from undef_map for protected symbols
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 28 Sep 2018 15:19:12 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 9/28/18 9:55 AM, Kyle Russell wrote:
> Avoids rtld segfault when _dl_lookup_symbol_x is called with NULL
> for skip_map on a protected symbol relocation.
> 
> Global protected symbols may not actually require a copy relocaton,
> in which case skip_map is undefined, so use the undef_map to determine
> the symbol arch.

Thank you.  Any objections with me adding a 'Signed-off-by: ' line with your name?

I'm going to start enforcing submissions need a signed-off-by line per the terms
of the "Developer's Certificate of Origin",

https://www.kernel.org/doc/html/latest/process/submitting-patches.html#sign-your-work-the-developer-s-certificate-of-origin

(While it is not yet a requirement, I'd like to start doing it now.)

Thanks!
--Mark

> ---
>  src/rtld/dl-lookupX.h   |  6 +++---
>  testsuite/Makefile.am   |  2 +-
>  testsuite/reloc12.c     | 19 +++++++++++++++++++
>  testsuite/reloc12.h     | 11 +++++++++++
>  testsuite/reloc12.sh    | 20 ++++++++++++++++++++
>  testsuite/reloc12lib1.c | 11 +++++++++++
>  testsuite/reloc12lib2.c | 16 ++++++++++++++++
>  7 files changed, 81 insertions(+), 4 deletions(-)
>  create mode 100644 testsuite/reloc12.c
>  create mode 100644 testsuite/reloc12.h
>  create mode 100755 testsuite/reloc12.sh
>  create mode 100644 testsuite/reloc12lib1.c
>  create mode 100644 testsuite/reloc12lib2.c
> 
> diff --git a/src/rtld/dl-lookupX.h b/src/rtld/dl-lookupX.h
> index 425bb4b..250c509 100644
> --- a/src/rtld/dl-lookupX.h
> +++ b/src/rtld/dl-lookupX.h
> @@ -679,10 +679,10 @@ _dl_lookup_symbol_x (const char *undef_name, struct link_map *undef_map,
>  	    if (do_lookup_x (undef_name, new_hash, &old_hash, *ref,
>  			     &protected_value, *scope, i, version, flags,
>  			     skip_map,
> -			     (ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(skip_map->machine)
> +			     (ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(undef_map->machine)
>  			      && ELFW(ST_TYPE) ((*ref)->st_info) == STT_OBJECT
> -			      && type_class == ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(skip_map->machine))
> -			     ? ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(skip_map->machine)
> +			      && type_class == ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(undef_map->machine))
> +			     ? ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(undef_map->machine)
>  			     : ELF_RTYPE_CLASS_PLT, NULL) != 0)
>  	      break;
>  
> diff --git a/testsuite/Makefile.am b/testsuite/Makefile.am
> index 030f65b..21de6a9 100644
> --- a/testsuite/Makefile.am
> +++ b/testsuite/Makefile.am
> @@ -5,7 +5,7 @@ AM_CFLAGS = -Wall
>  
>  TESTS = movelibs.sh \
>  	reloc1.sh reloc2.sh reloc3.sh reloc4.sh reloc5.sh reloc6.sh \
> -	reloc7.sh reloc8.sh reloc9.sh reloc10.sh reloc11.sh \
> +	reloc7.sh reloc8.sh reloc9.sh reloc10.sh reloc11.sh reloc12.sh \
>  	shuffle1.sh shuffle2.sh shuffle3.sh shuffle4.sh shuffle5.sh \
>  	shuffle6.sh shuffle7.sh shuffle8.sh shuffle9.sh undo1.sh \
>  	layout1.sh layout2.sh unprel1.sh \
> diff --git a/testsuite/reloc12.c b/testsuite/reloc12.c
> new file mode 100644
> index 0000000..cfa8888
> --- /dev/null
> +++ b/testsuite/reloc12.c
> @@ -0,0 +1,19 @@
> +#include "reloc12.h"
> +#include <stdlib.h>
> +
> +int main()
> +{
> +  A* ptr = find('b');
> +  if(b(ptr) != 0)
> +    abort();
> +
> +  ptr = find('a');
> +  if(b(ptr) != 1)
> +    abort();
> +
> +  ptr = find('r');
> +  if(b(ptr) != 2)
> +    abort();
> +
> +  exit(0);
> +}
> diff --git a/testsuite/reloc12.h b/testsuite/reloc12.h
> new file mode 100644
> index 0000000..8e09405
> --- /dev/null
> +++ b/testsuite/reloc12.h
> @@ -0,0 +1,11 @@
> +typedef struct
> +  {
> +    char a;
> +    int b;
> +  } A;
> +
> +extern A foo[] __attribute ((visibility ("protected")));
> +
> +A* find(char a);
> +char a(const A*);
> +int b(const A*);
> diff --git a/testsuite/reloc12.sh b/testsuite/reloc12.sh
> new file mode 100755
> index 0000000..a8a43c7
> --- /dev/null
> +++ b/testsuite/reloc12.sh
> @@ -0,0 +1,20 @@
> +#!/bin/bash
> +. `dirname $0`/functions.sh
> +rm -f reloc12 reloc12lib*.so reloc12.log
> +rm -f prelink.cache
> +$RUN_HOST $CC -shared -O2 -fpic -o reloc12lib1.so $srcdir/reloc12lib1.c
> +$RUN_HOST $CC -shared -O2 -fpic -o reloc12lib2.so $srcdir/reloc12lib2.c
> +BINS="reloc12"
> +LIBS="reloc12lib1.so reloc12lib2.so"
> +$RUN_HOST $CCLINK -o reloc12 $srcdir/reloc12.c -Wl,--rpath-link,. ${LIBS}
> +savelibs
> +echo $PRELINK ${PRELINK_OPTS--vm} ./reloc12 > reloc12.log
> +$RUN_HOST $PRELINK ${PRELINK_OPTS--vm} ./reloc12 >> reloc12.log 2>&1 || exit 1
> +grep -q ^`echo $PRELINK | sed 's/ .*$/: /'` reloc12.log && exit 2
> +if [ "x$CROSS" = "x" ]; then
> + $RUN LD_LIBRARY_PATH=. ./reloc12 || exit 3
> +fi
> +$RUN_HOST $READELF -a ./reloc12 >> reloc12.log 2>&1 || exit 4
> +# So that it is not prelinked again
> +chmod -x ./reloc12
> +comparelibs >> reloc12.log 2>&1 || exit 5
> diff --git a/testsuite/reloc12lib1.c b/testsuite/reloc12lib1.c
> new file mode 100644
> index 0000000..db7e64f
> --- /dev/null
> +++ b/testsuite/reloc12lib1.c
> @@ -0,0 +1,11 @@
> +#include "reloc12.h"
> +
> +char a(const A *d)
> +{
> +  return d ? d->a : 0;
> +}
> +
> +int b(const A *d)
> +{
> +  return d ? d->b : -1;
> +}
> diff --git a/testsuite/reloc12lib2.c b/testsuite/reloc12lib2.c
> new file mode 100644
> index 0000000..ffa60a0
> --- /dev/null
> +++ b/testsuite/reloc12lib2.c
> @@ -0,0 +1,16 @@
> +#include "reloc12.h"
> +
> +A foo[] = {
> +  { 'b', 0 },
> +  { 'a', 1 },
> +  { 'r', 2 }
> +};
> +
> +A* find(char a)
> +{
> +  for(A* ptr = foo; ptr < foo + sizeof(foo)/sizeof(foo[0]); ptr++)
> +    if(ptr->a == a)
> +      return ptr;
> +
> +  return 0;
> +}
> 


