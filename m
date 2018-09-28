Return-Path: <krussell7711@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B982E00A0C; Fri, 28 Sep 2018 08:38:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.222.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bkylerussell[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ua1-f65.google.com (mail-ua1-f65.google.com
	[209.85.222.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B03EBE009D9
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2018 08:38:17 -0700 (PDT)
Received: by mail-ua1-f65.google.com with SMTP id m13-v6so2449337uak.10
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2018 08:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=m+tJmltl2fi/Iku5e45bVuiYkszvIPQRcKfXKB82eLE=;
	b=hx3dZ5jiH+n5FYTElNeZv3GY4mgNWdExZ0Hli9VGAtI49uCir9zST9adMgNPrWr1AJ
	74HQ9+TLZVPqy5kVSB6oMc1vwUzbqqKWss9+u/oXaQIN56dSD7AsrCILD5Y99TqCe+lP
	DfNyxw02n3+faTcRn3e+msQHnSt2uS3P5jRkYwlsaH3BezQQpBUJK1iA3r5wbLFbZObH
	tgbKLAfrY1XOdQ5NgiWIQmLXA5hVPC8Vltnyrlf+YLcI9PCKVuDAZOpsYOqaHQtYWZVK
	369n6aRAt8leacudKFWdefZHPKuC9oGM/ztuHpRyZn1OymeXEdiMjjJ75TPHl3i4JBji
	M5vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=m+tJmltl2fi/Iku5e45bVuiYkszvIPQRcKfXKB82eLE=;
	b=XBF2bee/uJTHQyawWPxf72HFbBriw+fJTwJuyyfk1HC25fh0WagdC+ApIobrgEh5kK
	a8o203bTtiJGpk0wacoPO7PBLpnhpfe/M9ur0ISRxdQCmhQw1W/2hcGU8XL3NbHFw5cD
	D8/QCLNv56pAdyvd0WqjlzF1dQ2WCTAfCoRh7wnU+7fEZjgHr9Qk+ouV6jRWef5Kj46p
	ojfJhhXea3Gkro0E4ix/6/Dro04W8L1Wnqgr9PmXLmpy8lZC9y/nDZ6zZR/qv714djR4
	pshE2+kuZco7J16pBuyJhF6waZUiX4HQ1X4TAeA2Pi5m/uRCdvDH1otnTfoRda6TyEwR
	NlkA==
X-Gm-Message-State: ABuFfogMgwSN9lKkFnsBD3/ud1GbuoJbrO7POYeXdDyHAP4Pw8/E2Z5H
	Fiobtptqyy/8QCAvyV4UCWuX9db9ND2OXAk9Xbw=
X-Google-Smtp-Source: ACcGV60O3YJhgmjaF3R0ZvbOG24JRiP0rsPsWMwQ7d9W8xXm5660SALPmbALvF02H3ghxatuNJ98HA+qXTKq/E4klwI=
X-Received: by 2002:a9f:3723:: with SMTP id
	z32-v6mr4302488uad.68.1538149096590; 
	Fri, 28 Sep 2018 08:38:16 -0700 (PDT)
MIME-Version: 1.0
References: <20180928145556.6710-1-bkylerussell@gmail.com>
	<09052b65-6820-8549-ebab-986a750b0eb4@windriver.com>
In-Reply-To: <09052b65-6820-8549-ebab-986a750b0eb4@windriver.com>
From: Kyle Russell <bkylerussell@gmail.com>
Date: Fri, 28 Sep 2018 11:38:05 -0400
Message-ID: <CAFrQVPO3OvuyC=VSctDRPxRJjDLm6Aqs93BObAo4SNeEJKMX0w@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 28 Sep 2018 15:38:19 -0000
Content-Type: multipart/alternative; boundary="0000000000008393480576f03efb"

--0000000000008393480576f03efb
Content-Type: text/plain; charset="UTF-8"

No objections, please go ahead.  Sorry I forgot!  I realize I didn't do
that on the other patch I just sent either.

On Fri, Sep 28, 2018 at 11:19 AM Mark Hatle <mark.hatle@windriver.com>
wrote:

> On 9/28/18 9:55 AM, Kyle Russell wrote:
> > Avoids rtld segfault when _dl_lookup_symbol_x is called with NULL
> > for skip_map on a protected symbol relocation.
> >
> > Global protected symbols may not actually require a copy relocaton,
> > in which case skip_map is undefined, so use the undef_map to determine
> > the symbol arch.
>
> Thank you.  Any objections with me adding a 'Signed-off-by: ' line with
> your name?
>
> I'm going to start enforcing submissions need a signed-off-by line per the
> terms
> of the "Developer's Certificate of Origin",
>
>
> https://www.kernel.org/doc/html/latest/process/submitting-patches.html#sign-your-work-the-developer-s-certificate-of-origin
>
> (While it is not yet a requirement, I'd like to start doing it now.)
>
> Thanks!
> --Mark
>
> > ---
> >  src/rtld/dl-lookupX.h   |  6 +++---
> >  testsuite/Makefile.am   |  2 +-
> >  testsuite/reloc12.c     | 19 +++++++++++++++++++
> >  testsuite/reloc12.h     | 11 +++++++++++
> >  testsuite/reloc12.sh    | 20 ++++++++++++++++++++
> >  testsuite/reloc12lib1.c | 11 +++++++++++
> >  testsuite/reloc12lib2.c | 16 ++++++++++++++++
> >  7 files changed, 81 insertions(+), 4 deletions(-)
> >  create mode 100644 testsuite/reloc12.c
> >  create mode 100644 testsuite/reloc12.h
> >  create mode 100755 testsuite/reloc12.sh
> >  create mode 100644 testsuite/reloc12lib1.c
> >  create mode 100644 testsuite/reloc12lib2.c
> >
> > diff --git a/src/rtld/dl-lookupX.h b/src/rtld/dl-lookupX.h
> > index 425bb4b..250c509 100644
> > --- a/src/rtld/dl-lookupX.h
> > +++ b/src/rtld/dl-lookupX.h
> > @@ -679,10 +679,10 @@ _dl_lookup_symbol_x (const char *undef_name,
> struct link_map *undef_map,
> >           if (do_lookup_x (undef_name, new_hash, &old_hash, *ref,
> >                            &protected_value, *scope, i, version, flags,
> >                            skip_map,
> > -
> (ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(skip_map->machine)
> > +
> (ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(undef_map->machine)
> >                             && ELFW(ST_TYPE) ((*ref)->st_info) ==
> STT_OBJECT
> > -                           && type_class ==
> ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(skip_map->machine))
> > -                          ?
> ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(skip_map->machine)
> > +                           && type_class ==
> ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(undef_map->machine))
> > +                          ?
> ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(undef_map->machine)
> >                            : ELF_RTYPE_CLASS_PLT, NULL) != 0)
> >             break;
> >
> > diff --git a/testsuite/Makefile.am b/testsuite/Makefile.am
> > index 030f65b..21de6a9 100644
> > --- a/testsuite/Makefile.am
> > +++ b/testsuite/Makefile.am
> > @@ -5,7 +5,7 @@ AM_CFLAGS = -Wall
> >
> >  TESTS = movelibs.sh \
> >       reloc1.sh reloc2.sh reloc3.sh reloc4.sh reloc5.sh reloc6.sh \
> > -     reloc7.sh reloc8.sh reloc9.sh reloc10.sh reloc11.sh \
> > +     reloc7.sh reloc8.sh reloc9.sh reloc10.sh reloc11.sh reloc12.sh \
> >       shuffle1.sh shuffle2.sh shuffle3.sh shuffle4.sh shuffle5.sh \
> >       shuffle6.sh shuffle7.sh shuffle8.sh shuffle9.sh undo1.sh \
> >       layout1.sh layout2.sh unprel1.sh \
> > diff --git a/testsuite/reloc12.c b/testsuite/reloc12.c
> > new file mode 100644
> > index 0000000..cfa8888
> > --- /dev/null
> > +++ b/testsuite/reloc12.c
> > @@ -0,0 +1,19 @@
> > +#include "reloc12.h"
> > +#include <stdlib.h>
> > +
> > +int main()
> > +{
> > +  A* ptr = find('b');
> > +  if(b(ptr) != 0)
> > +    abort();
> > +
> > +  ptr = find('a');
> > +  if(b(ptr) != 1)
> > +    abort();
> > +
> > +  ptr = find('r');
> > +  if(b(ptr) != 2)
> > +    abort();
> > +
> > +  exit(0);
> > +}
> > diff --git a/testsuite/reloc12.h b/testsuite/reloc12.h
> > new file mode 100644
> > index 0000000..8e09405
> > --- /dev/null
> > +++ b/testsuite/reloc12.h
> > @@ -0,0 +1,11 @@
> > +typedef struct
> > +  {
> > +    char a;
> > +    int b;
> > +  } A;
> > +
> > +extern A foo[] __attribute ((visibility ("protected")));
> > +
> > +A* find(char a);
> > +char a(const A*);
> > +int b(const A*);
> > diff --git a/testsuite/reloc12.sh b/testsuite/reloc12.sh
> > new file mode 100755
> > index 0000000..a8a43c7
> > --- /dev/null
> > +++ b/testsuite/reloc12.sh
> > @@ -0,0 +1,20 @@
> > +#!/bin/bash
> > +. `dirname $0`/functions.sh
> > +rm -f reloc12 reloc12lib*.so reloc12.log
> > +rm -f prelink.cache
> > +$RUN_HOST $CC -shared -O2 -fpic -o reloc12lib1.so $srcdir/reloc12lib1.c
> > +$RUN_HOST $CC -shared -O2 -fpic -o reloc12lib2.so $srcdir/reloc12lib2.c
> > +BINS="reloc12"
> > +LIBS="reloc12lib1.so reloc12lib2.so"
> > +$RUN_HOST $CCLINK -o reloc12 $srcdir/reloc12.c -Wl,--rpath-link,.
> ${LIBS}
> > +savelibs
> > +echo $PRELINK ${PRELINK_OPTS--vm} ./reloc12 > reloc12.log
> > +$RUN_HOST $PRELINK ${PRELINK_OPTS--vm} ./reloc12 >> reloc12.log 2>&1 ||
> exit 1
> > +grep -q ^`echo $PRELINK | sed 's/ .*$/: /'` reloc12.log && exit 2
> > +if [ "x$CROSS" = "x" ]; then
> > + $RUN LD_LIBRARY_PATH=. ./reloc12 || exit 3
> > +fi
> > +$RUN_HOST $READELF -a ./reloc12 >> reloc12.log 2>&1 || exit 4
> > +# So that it is not prelinked again
> > +chmod -x ./reloc12
> > +comparelibs >> reloc12.log 2>&1 || exit 5
> > diff --git a/testsuite/reloc12lib1.c b/testsuite/reloc12lib1.c
> > new file mode 100644
> > index 0000000..db7e64f
> > --- /dev/null
> > +++ b/testsuite/reloc12lib1.c
> > @@ -0,0 +1,11 @@
> > +#include "reloc12.h"
> > +
> > +char a(const A *d)
> > +{
> > +  return d ? d->a : 0;
> > +}
> > +
> > +int b(const A *d)
> > +{
> > +  return d ? d->b : -1;
> > +}
> > diff --git a/testsuite/reloc12lib2.c b/testsuite/reloc12lib2.c
> > new file mode 100644
> > index 0000000..ffa60a0
> > --- /dev/null
> > +++ b/testsuite/reloc12lib2.c
> > @@ -0,0 +1,16 @@
> > +#include "reloc12.h"
> > +
> > +A foo[] = {
> > +  { 'b', 0 },
> > +  { 'a', 1 },
> > +  { 'r', 2 }
> > +};
> > +
> > +A* find(char a)
> > +{
> > +  for(A* ptr = foo; ptr < foo + sizeof(foo)/sizeof(foo[0]); ptr++)
> > +    if(ptr->a == a)
> > +      return ptr;
> > +
> > +  return 0;
> > +}
> >
>
>

--0000000000008393480576f03efb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">No objections, please go ahead.=C2=A0 Sorry I forgot!=C2=
=A0 I realize I didn&#39;t do that on the other patch I just sent either.</=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri, Sep 28, 2018 at=
 11:19 AM Mark Hatle &lt;<a href=3D"mailto:mark.hatle@windriver.com">mark.h=
atle@windriver.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">O=
n 9/28/18 9:55 AM, Kyle Russell wrote:<br>
&gt; Avoids rtld segfault when _dl_lookup_symbol_x is called with NULL<br>
&gt; for skip_map on a protected symbol relocation.<br>
&gt; <br>
&gt; Global protected symbols may not actually require a copy relocaton,<br=
>
&gt; in which case skip_map is undefined, so use the undef_map to determine=
<br>
&gt; the symbol arch.<br>
<br>
Thank you.=C2=A0 Any objections with me adding a &#39;Signed-off-by: &#39; =
line with your name?<br>
<br>
I&#39;m going to start enforcing submissions need a signed-off-by line per =
the terms<br>
of the &quot;Developer&#39;s Certificate of Origin&quot;,<br>
<br>
<a href=3D"https://www.kernel.org/doc/html/latest/process/submitting-patche=
s.html#sign-your-work-the-developer-s-certificate-of-origin" rel=3D"norefer=
rer" target=3D"_blank">https://www.kernel.org/doc/html/latest/process/submi=
tting-patches.html#sign-your-work-the-developer-s-certificate-of-origin</a>=
<br>
<br>
(While it is not yet a requirement, I&#39;d like to start doing it now.)<br=
>
<br>
Thanks!<br>
--Mark<br>
<br>
&gt; ---<br>
&gt;=C2=A0 src/rtld/dl-lookupX.h=C2=A0 =C2=A0|=C2=A0 6 +++---<br>
&gt;=C2=A0 testsuite/Makefile.am=C2=A0 =C2=A0|=C2=A0 2 +-<br>
&gt;=C2=A0 testsuite/reloc12.c=C2=A0 =C2=A0 =C2=A0| 19 +++++++++++++++++++<=
br>
&gt;=C2=A0 testsuite/reloc12.h=C2=A0 =C2=A0 =C2=A0| 11 +++++++++++<br>
&gt;=C2=A0 testsuite/reloc12.sh=C2=A0 =C2=A0 | 20 ++++++++++++++++++++<br>
&gt;=C2=A0 testsuite/reloc12lib1.c | 11 +++++++++++<br>
&gt;=C2=A0 testsuite/reloc12lib2.c | 16 ++++++++++++++++<br>
&gt;=C2=A0 7 files changed, 81 insertions(+), 4 deletions(-)<br>
&gt;=C2=A0 create mode 100644 testsuite/reloc12.c<br>
&gt;=C2=A0 create mode 100644 testsuite/reloc12.h<br>
&gt;=C2=A0 create mode 100755 testsuite/reloc12.sh<br>
&gt;=C2=A0 create mode 100644 testsuite/reloc12lib1.c<br>
&gt;=C2=A0 create mode 100644 testsuite/reloc12lib2.c<br>
&gt; <br>
&gt; diff --git a/src/rtld/dl-lookupX.h b/src/rtld/dl-lookupX.h<br>
&gt; index 425bb4b..250c509 100644<br>
&gt; --- a/src/rtld/dl-lookupX.h<br>
&gt; +++ b/src/rtld/dl-lookupX.h<br>
&gt; @@ -679,10 +679,10 @@ _dl_lookup_symbol_x (const char *undef_name, str=
uct link_map *undef_map,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (do_lookup_x (undef_name, n=
ew_hash, &amp;old_hash, *ref,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp;protected_value, *scope, i, version, flags=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 skip_map,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 (ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(skip_map-&gt;m=
achine)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 (ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(undef_map-&gt;=
machine)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;&amp; ELFW(ST_TYPE) ((*ref)-&gt;st_i=
nfo) =3D=3D STT_OBJECT<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;&amp; type_class =3D=3D ELF_RTYPE_CLASS_EX=
TERN_PROTECTED_DATA(skip_map-&gt;machine))<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 ? ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(skip_map-&gt;=
machine)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;&amp; type_class =3D=3D ELF_RTYPE_CLASS_EX=
TERN_PROTECTED_DATA(undef_map-&gt;machine))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 ? ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(undef_map-&gt=
;machine)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 : ELF_RTYPE_CLASS_PLT, NULL) !=3D 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt;=C2=A0 <br>
&gt; diff --git a/testsuite/Makefile.am b/testsuite/Makefile.am<br>
&gt; index 030f65b..21de6a9 100644<br>
&gt; --- a/testsuite/Makefile.am<br>
&gt; +++ b/testsuite/Makefile.am<br>
&gt; @@ -5,7 +5,7 @@ AM_CFLAGS =3D -Wall<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 TESTS =3D movelibs.sh \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0reloc1.sh reloc2.sh reloc3.sh reloc4.sh relo=
c5.sh reloc6.sh \<br>
&gt; -=C2=A0 =C2=A0 =C2=A0reloc7.sh reloc8.sh reloc9.sh reloc10.sh reloc11.=
sh \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0reloc7.sh reloc8.sh reloc9.sh reloc10.sh reloc11.=
sh reloc12.sh \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0shuffle1.sh shuffle2.sh shuffle3.sh shuffle4=
.sh shuffle5.sh \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0shuffle6.sh shuffle7.sh shuffle8.sh shuffle9=
.sh undo1.sh \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0layout1.sh layout2.sh unprel1.sh \<br>
&gt; diff --git a/testsuite/reloc12.c b/testsuite/reloc12.c<br>
&gt; new file mode 100644<br>
&gt; index 0000000..cfa8888<br>
&gt; --- /dev/null<br>
&gt; +++ b/testsuite/reloc12.c<br>
&gt; @@ -0,0 +1,19 @@<br>
&gt; +#include &quot;reloc12.h&quot;<br>
&gt; +#include &lt;stdlib.h&gt;<br>
&gt; +<br>
&gt; +int main()<br>
&gt; +{<br>
&gt; +=C2=A0 A* ptr =3D find(&#39;b&#39;);<br>
&gt; +=C2=A0 if(b(ptr) !=3D 0)<br>
&gt; +=C2=A0 =C2=A0 abort();<br>
&gt; +<br>
&gt; +=C2=A0 ptr =3D find(&#39;a&#39;);<br>
&gt; +=C2=A0 if(b(ptr) !=3D 1)<br>
&gt; +=C2=A0 =C2=A0 abort();<br>
&gt; +<br>
&gt; +=C2=A0 ptr =3D find(&#39;r&#39;);<br>
&gt; +=C2=A0 if(b(ptr) !=3D 2)<br>
&gt; +=C2=A0 =C2=A0 abort();<br>
&gt; +<br>
&gt; +=C2=A0 exit(0);<br>
&gt; +}<br>
&gt; diff --git a/testsuite/reloc12.h b/testsuite/reloc12.h<br>
&gt; new file mode 100644<br>
&gt; index 0000000..8e09405<br>
&gt; --- /dev/null<br>
&gt; +++ b/testsuite/reloc12.h<br>
&gt; @@ -0,0 +1,11 @@<br>
&gt; +typedef struct<br>
&gt; +=C2=A0 {<br>
&gt; +=C2=A0 =C2=A0 char a;<br>
&gt; +=C2=A0 =C2=A0 int b;<br>
&gt; +=C2=A0 } A;<br>
&gt; +<br>
&gt; +extern A foo[] __attribute ((visibility (&quot;protected&quot;)));<br=
>
&gt; +<br>
&gt; +A* find(char a);<br>
&gt; +char a(const A*);<br>
&gt; +int b(const A*);<br>
&gt; diff --git a/testsuite/reloc12.sh b/testsuite/reloc12.sh<br>
&gt; new file mode 100755<br>
&gt; index 0000000..a8a43c7<br>
&gt; --- /dev/null<br>
&gt; +++ b/testsuite/reloc12.sh<br>
&gt; @@ -0,0 +1,20 @@<br>
&gt; +#!/bin/bash<br>
&gt; +. `dirname $0`/functions.sh<br>
&gt; +rm -f reloc12 reloc12lib*.so reloc12.log<br>
&gt; +rm -f prelink.cache<br>
&gt; +$RUN_HOST $CC -shared -O2 -fpic -o reloc12lib1.so $srcdir/reloc12lib1=
.c<br>
&gt; +$RUN_HOST $CC -shared -O2 -fpic -o reloc12lib2.so $srcdir/reloc12lib2=
.c<br>
&gt; +BINS=3D&quot;reloc12&quot;<br>
&gt; +LIBS=3D&quot;reloc12lib1.so reloc12lib2.so&quot;<br>
&gt; +$RUN_HOST $CCLINK -o reloc12 $srcdir/reloc12.c -Wl,--rpath-link,. ${L=
IBS}<br>
&gt; +savelibs<br>
&gt; +echo $PRELINK ${PRELINK_OPTS--vm} ./reloc12 &gt; reloc12.log<br>
&gt; +$RUN_HOST $PRELINK ${PRELINK_OPTS--vm} ./reloc12 &gt;&gt; reloc12.log=
 2&gt;&amp;1 || exit 1<br>
&gt; +grep -q ^`echo $PRELINK | sed &#39;s/ .*$/: /&#39;` reloc12.log &amp;=
&amp; exit 2<br>
&gt; +if [ &quot;x$CROSS&quot; =3D &quot;x&quot; ]; then<br>
&gt; + $RUN LD_LIBRARY_PATH=3D. ./reloc12 || exit 3<br>
&gt; +fi<br>
&gt; +$RUN_HOST $READELF -a ./reloc12 &gt;&gt; reloc12.log 2&gt;&amp;1 || e=
xit 4<br>
&gt; +# So that it is not prelinked again<br>
&gt; +chmod -x ./reloc12<br>
&gt; +comparelibs &gt;&gt; reloc12.log 2&gt;&amp;1 || exit 5<br>
&gt; diff --git a/testsuite/reloc12lib1.c b/testsuite/reloc12lib1.c<br>
&gt; new file mode 100644<br>
&gt; index 0000000..db7e64f<br>
&gt; --- /dev/null<br>
&gt; +++ b/testsuite/reloc12lib1.c<br>
&gt; @@ -0,0 +1,11 @@<br>
&gt; +#include &quot;reloc12.h&quot;<br>
&gt; +<br>
&gt; +char a(const A *d)<br>
&gt; +{<br>
&gt; +=C2=A0 return d ? d-&gt;a : 0;<br>
&gt; +}<br>
&gt; +<br>
&gt; +int b(const A *d)<br>
&gt; +{<br>
&gt; +=C2=A0 return d ? d-&gt;b : -1;<br>
&gt; +}<br>
&gt; diff --git a/testsuite/reloc12lib2.c b/testsuite/reloc12lib2.c<br>
&gt; new file mode 100644<br>
&gt; index 0000000..ffa60a0<br>
&gt; --- /dev/null<br>
&gt; +++ b/testsuite/reloc12lib2.c<br>
&gt; @@ -0,0 +1,16 @@<br>
&gt; +#include &quot;reloc12.h&quot;<br>
&gt; +<br>
&gt; +A foo[] =3D {<br>
&gt; +=C2=A0 { &#39;b&#39;, 0 },<br>
&gt; +=C2=A0 { &#39;a&#39;, 1 },<br>
&gt; +=C2=A0 { &#39;r&#39;, 2 }<br>
&gt; +};<br>
&gt; +<br>
&gt; +A* find(char a)<br>
&gt; +{<br>
&gt; +=C2=A0 for(A* ptr =3D foo; ptr &lt; foo + sizeof(foo)/sizeof(foo[0]);=
 ptr++)<br>
&gt; +=C2=A0 =C2=A0 if(ptr-&gt;a =3D=3D a)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 return ptr;<br>
&gt; +<br>
&gt; +=C2=A0 return 0;<br>
&gt; +}<br>
&gt; <br>
<br>
</blockquote></div>

--0000000000008393480576f03efb--
