Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3545C4167B
	for <webhook@archiver.kernel.org>; Fri,  1 Dec 2023 03:00:43 +0000 (UTC)
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
 by mx.groups.io with SMTP id smtpd.web11.14339.1701399641326287422
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Nov 2023 19:00:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FPb9Hkrd;
 spf=pass (domain: gmail.com, ip: 209.85.160.46, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-1faf152a1dbso9011fac.0
        for <yocto@lists.yoctoproject.org>; Thu, 30 Nov 2023 19:00:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701399640; x=1702004440; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EuQ+Yu8zBy+0YFVbDzV8MFSTlMBTBznE+iJNXgxVH+Q=;
        b=FPb9HkrdOPEgjq7fHBLDifJykUE1J3BKD+jDc6L/UzT0NtSrWVqG7esWQcg3g32Ryr
         fvZmZ7gHRBTt57TGEFVfvukjEpGOlqLEXzo8bcfTsdDANiSzzNRz2MKzCOuTJiEcvgUn
         fwar5yHPNFyncogilAvl7CusfALJo1VJQzgRmmZ1uet/3Ni3QjR8IKVQaS9WkOQklS7T
         33TF0egXayA9qctQPIG9bjtJyISecROtMRSSGdPtZ2AZdwqwDjAOB9Xzr1CXegrGzsUS
         ZtUyf7WdDqw+apThcqjHFmHHFJbvgkMBVYCq2RsMcG4e9ziV+tOyLoEUF+UB0fzgvyH5
         C6SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701399640; x=1702004440;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EuQ+Yu8zBy+0YFVbDzV8MFSTlMBTBznE+iJNXgxVH+Q=;
        b=Gp+vNZLAFGcALuLm/N6V6P4PMu9mWJGSYSe+CU0LYr5prCtBqOyHrLsNKSvF6X+MeT
         GeWgKgVl63fErE3zJyG9oUvMS+9x1ajjP0Top6ddo0nXuWZZj+lJE/A6RrKp7fyVnFOE
         cLBdtmmhdavk1pWPsH6s48UMHcLwtDD8p8bhHsq3fVTEk4jCgGPvusyZiw20vo+1GTDI
         VqjCQhPsJEZOLAJNXXosgfAa1BG6FRYz9ZVZ7f3uyCYFxgvLDTA5YUGxTVJKzok5fkHN
         FLcZcr7nDJMBxo+Q00x2hM8RpgcIWCZjauJsnS7TLtjtvhNEoocIAirobChuPZPa23kA
         WxYA==
X-Gm-Message-State: AOJu0Yzi2Jy4gWji6af/XpIa5CxCjZ+Jda5w4qzkOKxQG1RHfCafcHnU
	bXHGQd3hsWmUzHFGe1m7enuD3KlM72slXKaRzSg=
X-Google-Smtp-Source: AGHT+IHShUMx8M8QCMXJaRMYp9Po5e5HIciCBlqjPp32kHzkbJU+cnVzqWeyF++S6Oj+7fPeNYi1fehW8ImFL2hki2M=
X-Received: by 2002:a05:6870:240a:b0:1fa:c88e:19fc with SMTP id
 n10-20020a056870240a00b001fac88e19fcmr3620247oap.20.1701399640350; Thu, 30
 Nov 2023 19:00:40 -0800 (PST)
MIME-Version: 1.0
References: <20231130083122.2970448-1-wenlin.kang@windriver.com>
 <CAMKF1soucss1KKERpwrfr38By7tWuceuFEQJ_HoeSJu5iSMVvA@mail.gmail.com> <70375b3f-0255-42e8-a89d-db3c1586821c@windriver.com>
In-Reply-To: <70375b3f-0255-42e8-a89d-db3c1586821c@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 30 Nov 2023 19:00:29 -0800
Message-ID: <CAMKF1sqhwoc9Rw2g0pXd9M68CZ4WUn5f_BRo_v51U3K4GQQSww@mail.gmail.com>
Subject: Re: [yocto] [meta-mingw][kirkstone][PATCH] libxcrypt: fixed some
 build error for nativesdk with mingw
To: Kang Wenlin <wenlin.kang@windriver.com>
Cc: jpewhacker@gmail.com, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002f268e060b69f914"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 01 Dec 2023 03:00:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61785

--0000000000002f268e060b69f914
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 30, 2023 at 6:38=E2=80=AFPM Kang Wenlin <wenlin.kang@windriver.=
com>
wrote:

>
> On 12/1/2023 00:54, Khem Raj wrote:
> > CAUTION: This email comes from a non Wind River email account!
> > Do not click links or open attachments unless you recognize the sender
> and know the content is safe.
> >
> > On Thu, Nov 30, 2023 at 12:31=E2=80=AFAM wenlin.kang@windriver.com via
> > lists.yoctoproject.org
> > <wenlin.kang=3Dwindriver.com@lists.yoctoproject.org> wrote:
> >> From: Wenlin Kang <wenlin.kang@windriver.com>
> >>
> >> Steps to reproduce
> >>    1) add layer meta-mingw
> >>    2) add line in local.conf
> >>       SDKMACHINE =3D "x86_64-mingw32"
> >>    3) bitbake nativesdk-libxcrypt
> >>
> >> Fixed:
> >> 1. .symver error
> >>    | {standard input}: Assembler messages:
> >>    | {standard input}:4: Error: unknown pseudo-op: `.symver'
> >>
> >> 2. pedantic error
> >>    | ../git/lib/crypt.c:316:24: error: ISO C does not allow extra ';'
> outside of a function [-Werror=3Dpedantic]
> >>    |   316 | SYMVER_crypt_gensalt_rn;
> >>    |       |
> >>
> >> 3. conversion error
> >>    | ../git/lib/util-get-random-bytes.c: In function
> '_crypt_get_random_bytes':
> >>    | ../git/lib/util-get-random-bytes.c:140:42: error: conversion from
> 'size_t' {aka 'long long unsigned int'} to 'unsigned int' may change valu=
e
> [-Werror=3Dconversion]
> >>    |   140 |           ssize_t nread =3D read (fd, buf, buflen);
> >>
> >> Signed-off-by: Wenlin Kang <wenlin.kang@windriver.com>
> >> ---
> >>   .../0001-Fix-for-compilation-on-Windows.patch | 37 +++++++++++++++
> >>   ...dom-bytes.c-fixed-conversion-error-w.patch | 47 +++++++++++++++++=
++
> >>   recipes-core/libxcrypt/libxcrypt_%.bbappend   |  7 +++
> >>   3 files changed, 91 insertions(+)
> >>   create mode 100644
> recipes-core/libxcrypt/libxcrypt/0001-Fix-for-compilation-on-Windows.patc=
h
> >>   create mode 100644
> recipes-core/libxcrypt/libxcrypt/0001-lib-util-get-random-bytes.c-fixed-c=
onversion-error-w.patch
> >>   create mode 100644 recipes-core/libxcrypt/libxcrypt_%.bbappend
> >>
> >> diff --git
> a/recipes-core/libxcrypt/libxcrypt/0001-Fix-for-compilation-on-Windows.pa=
tch
> b/recipes-core/libxcrypt/libxcrypt/0001-Fix-for-compilation-on-Windows.pa=
tch
> >> new file mode 100644
> >> index 0000000..5760ee0
> >> --- /dev/null
> >> +++
> b/recipes-core/libxcrypt/libxcrypt/0001-Fix-for-compilation-on-Windows.pa=
tch
> >> @@ -0,0 +1,37 @@
> >> +From a507b628a5a5d4e4f1cf0f0a9a72967470ee7624 Mon Sep 17 00:00:00 200=
1
> >> +From: Brecht Sanders <brecht@sanders.org>
> >> +Date: Fri, 3 Feb 2023 08:44:49 +0100
> >> +Subject: [PATCH] Fix for compilation on Windows
> >> +
> >> +This fix allows the library to build on Windows (at least with
> MinGW-w64).
> >> +
> >> +`.symver` is only supported for ELF format but Windows uses COFF/PE.
> >> +
> >> +Workaround dummy define of `symver_set()`
> >> +
> >> +Upstream-Status: Backport [
> https://github.com/besser82/libxcrypt/commit/a507b628a5a5d4e4f1cf0f0a9a72=
967470ee7624
> ]
> >> +
> >> +Signed-off-by: Wenlin Kang <wenlin.kang@windriver.com>
> >> +---
> >> + lib/crypt-port.h | 5 +++++
> >> + 1 file changed, 5 insertions(+)
> >> +
> >> +diff --git a/lib/crypt-port.h b/lib/crypt-port.h
> >> +index f06ca24..a707939 100644
> >> +--- a/lib/crypt-port.h
> >> ++++ b/lib/crypt-port.h
> >> +@@ -201,6 +201,11 @@ extern size_t strcpy_or_abort (void *dst, size_t
> d_size, const void *src);
> >> +   __asm__(".globl _" extstr);                           \
> >> +   __asm__(".set _" extstr ", _" #intname)
> >> +
> >> ++#elif defined _WIN32
> >> ++
> >> ++/* .symver is only supported for ELF format, Windows uses COFF/PE */
> >> ++# define symver_set(extstr, intname, version, mode)
> >> ++
> >> + #elif defined __GNUC__ && __GNUC__ >=3D 3
> >> +
> >> + # define _strong_alias(name, aliasname) \
> >> +--
> >> +2.34.1
> >> +
> >> diff --git
> a/recipes-core/libxcrypt/libxcrypt/0001-lib-util-get-random-bytes.c-fixed=
-conversion-error-w.patch
> b/recipes-core/libxcrypt/libxcrypt/0001-lib-util-get-random-bytes.c-fixed=
-conversion-error-w.patch
> >> new file mode 100644
> >> index 0000000..3846f76
> >> --- /dev/null
> >> +++
> b/recipes-core/libxcrypt/libxcrypt/0001-lib-util-get-random-bytes.c-fixed=
-conversion-error-w.patch
> >> @@ -0,0 +1,47 @@
> >> +From ff99091eb8a6b9e6edc567f6d2552183fbaacec3 Mon Sep 17 00:00:00 200=
1
> >> +From: Wenlin Kang <wenlin.kang@windriver.com>
> >> +Date: Mon, 6 Nov 2023 14:43:28 +0800
> >> +Subject: [PATCH] lib/util-get-random-bytes.c: fixed conversion error
> with
> >> + mingw
> >> +
> >> +With x86_64-w64-mingw32-gcc. get below error:
> >> +| ../git/lib/util-get-random-bytes.c: In function
> '_crypt_get_random_bytes':
> >> +| ../git/lib/util-get-random-bytes.c:140:42: error: conversion from
> 'size_t' {aka 'long long unsigned int'} to 'unsigned int' may change valu=
e
> [-Werror=3Dconversion]
> >> +|   140 |           ssize_t nread =3D read (fd, buf, buflen);
> >> +|       |                                          ^~~~~~
> >> +
> >> +In util-get-random-bytes.c, has get_random_bytes(void *buf, size_t
> buflen),
> >> +but in mingw-w64-mingw-w64/mingw-w64-headers/crt/io.h, read() has
> "unsigned int"
> >> +read(int _FileHandle,void *_DstBuf,unsigned int _MaxCharCount), and
> has:
> >> + #ifdef _WIN64
> >> +   __MINGW_EXTENSION typedef unsigned __int64 size_t;
> >> + #else
> >> +   typedef unsigned int size_t;
> >> + #endif /* _WIN64 */
> >> +
> >> +Upstream-Status: Pending
> >> +
> >> +Signed-off-by: Wenlin Kang <wenlin.kang@windriver.com>
> >> +---
> >> + lib/util-get-random-bytes.c | 4 ++++
> >> + 1 file changed, 4 insertions(+)
> >> +
> >> +diff --git a/lib/util-get-random-bytes.c b/lib/util-get-random-bytes.=
c
> >> +index 79816db..68cd378 100644
> >> +--- a/lib/util-get-random-bytes.c
> >> ++++ b/lib/util-get-random-bytes.c
> >> +@@ -137,7 +137,11 @@ get_random_bytes(void *buf, size_t buflen)
> >> +         dev_urandom_doesnt_work =3D true;
> >> +       else
> >> +         {
> >> ++#ifdef _WIN64
> >> ++          ssize_t nread =3D read (fd, buf, (unsigned int)buflen);
> >> ++#else
> >> +           ssize_t nread =3D read (fd, buf, buflen);
> >> ++#endif
> > read is system API and I wonder why we are not getting right API
> > signature here as I think
> > size_t should already be defined based on _WIN64 in system headers.
>
>
> 1. read() is declared in
>
> https://sourceforge.net/p/mingw-w64/code/HEAD/tree/trunk/mingw-w64-header=
s/crt/io.h,
>
> but it has only a declaration for 32-bit,  with 64-bit, it can't be found


Ok it will be good to bring this to upstream=E2=80=99s notice

>
>
> 2. for size_t, it has:
>
> #ifdef _WIN64
>    __MINGW_EXTENSION typedef __int64 ssize_t;
> #else
>    typedef int ssize_t;
> #endif /* _WIN64 */
>
>
> >
> >> +           if (nread < 0 || (size_t)nread < buflen)
> >> +             dev_urandom_doesnt_work =3D true;
> >> +
> >> +--
> >> +2.25.1
> >> +
> >> diff --git a/recipes-core/libxcrypt/libxcrypt_%.bbappend
> b/recipes-core/libxcrypt/libxcrypt_%.bbappend
> >> new file mode 100644
> >> index 0000000..cb9c45e
> >> --- /dev/null
> >> +++ b/recipes-core/libxcrypt/libxcrypt_%.bbappend
> >> @@ -0,0 +1,7 @@
> >> +FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:"
> >> +
> >> +SRC_URI:append:mingw32 =3D
> "file://0001-Fix-for-compilation-on-Windows.patch \
> >> +
> file://0001-lib-util-get-random-bytes.c-fixed-conversion-error-w.patch \
> >> +"
> >> +
> >> +CFLAGS:append:class-nativesdk:mingw32 =3D " -Wno-pedantic"
> >> --
> >> 2.39.0
> >>
> >>
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >> Links: You receive all messages sent to this group.
> >> You automatically follow any topics you start or reply to.
> >> View/Reply Online (#61775):
> https://lists.yoctoproject.org/g/yocto/message/61775
> >> Mute This Topic: https://lists.yoctoproject.org/mt/102890384/1997914
> >> Group Owner: yocto+owner@lists.yoctoproject.org
> >> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >>
> --
> --
> Thanks
> Wenlin Kang
>
>

--0000000000002f268e060b69f914
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><br></div><div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Thu, Nov 30, 2023 at 6:38=E2=80=AFPM Kang Wen=
lin &lt;<a href=3D"mailto:wenlin.kang@windriver.com">wenlin.kang@windriver.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-=
left:1ex;border-left-color:rgb(204,204,204)"><br>
On 12/1/2023 00:54, Khem Raj wrote:<br>
&gt; CAUTION: This email comes from a non Wind River email account!<br>
&gt; Do not click links or open attachments unless you recognize the sender=
 and know the content is safe.<br>
&gt;<br>
&gt; On Thu, Nov 30, 2023 at 12:31=E2=80=AFAM <a href=3D"mailto:wenlin.kang=
@windriver.com" target=3D"_blank">wenlin.kang@windriver.com</a> via<br>
&gt; <a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D=
"_blank">lists.yoctoproject.org</a><br>
&gt; &lt;wenlin.kang=3D<a href=3D"mailto:windriver.com@lists.yoctoproject.o=
rg" target=3D"_blank">windriver.com@lists.yoctoproject.org</a>&gt; wrote:<b=
r>
&gt;&gt; From: Wenlin Kang &lt;<a href=3D"mailto:wenlin.kang@windriver.com"=
 target=3D"_blank">wenlin.kang@windriver.com</a>&gt;<br>
&gt;&gt;<br>
&gt;&gt; Steps to reproduce<br>
&gt;&gt;=C2=A0 =C2=A0 1) add layer meta-mingw<br>
&gt;&gt;=C2=A0 =C2=A0 2) add line in local.conf<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0SDKMACHINE =3D &quot;x86_64-mingw32&quot=
;<br>
&gt;&gt;=C2=A0 =C2=A0 3) bitbake nativesdk-libxcrypt<br>
&gt;&gt;<br>
&gt;&gt; Fixed:<br>
&gt;&gt; 1. .symver error<br>
&gt;&gt;=C2=A0 =C2=A0 | {standard input}: Assembler messages:<br>
&gt;&gt;=C2=A0 =C2=A0 | {standard input}:4: Error: unknown pseudo-op: `.sym=
ver&#39;<br>
&gt;&gt;<br>
&gt;&gt; 2. pedantic error<br>
&gt;&gt;=C2=A0 =C2=A0 | ../git/lib/crypt.c:316:24: error: ISO C does not al=
low extra &#39;;&#39; outside of a function [-Werror=3Dpedantic]<br>
&gt;&gt;=C2=A0 =C2=A0 |=C2=A0 =C2=A0316 | SYMVER_crypt_gensalt_rn;<br>
&gt;&gt;=C2=A0 =C2=A0 |=C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>
&gt;&gt;<br>
&gt;&gt; 3. conversion error<br>
&gt;&gt;=C2=A0 =C2=A0 | ../git/lib/util-get-random-bytes.c: In function &#3=
9;_crypt_get_random_bytes&#39;:<br>
&gt;&gt;=C2=A0 =C2=A0 | ../git/lib/util-get-random-bytes.c:140:42: error: c=
onversion from &#39;size_t&#39; {aka &#39;long long unsigned int&#39;} to &=
#39;unsigned int&#39; may change value [-Werror=3Dconversion]<br>
&gt;&gt;=C2=A0 =C2=A0 |=C2=A0 =C2=A0140 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0ssize_t nread =3D read (fd, buf, buflen);<br>
&gt;&gt;<br>
&gt;&gt; Signed-off-by: Wenlin Kang &lt;<a href=3D"mailto:wenlin.kang@windr=
iver.com" target=3D"_blank">wenlin.kang@windriver.com</a>&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 =C2=A0.../0001-Fix-for-compilation-on-Windows.patch | 37 +++=
++++++++++++<br>
&gt;&gt;=C2=A0 =C2=A0...dom-bytes.c-fixed-conversion-error-w.patch | 47 +++=
++++++++++++++++<br>
&gt;&gt;=C2=A0 =C2=A0recipes-core/libxcrypt/libxcrypt_%.bbappend=C2=A0 =C2=
=A0|=C2=A0 7 +++<br>
&gt;&gt;=C2=A0 =C2=A03 files changed, 91 insertions(+)<br>
&gt;&gt;=C2=A0 =C2=A0create mode 100644 recipes-core/libxcrypt/libxcrypt/00=
01-Fix-for-compilation-on-Windows.patch<br>
&gt;&gt;=C2=A0 =C2=A0create mode 100644 recipes-core/libxcrypt/libxcrypt/00=
01-lib-util-get-random-bytes.c-fixed-conversion-error-w.patch<br>
&gt;&gt;=C2=A0 =C2=A0create mode 100644 recipes-core/libxcrypt/libxcrypt_%.=
bbappend<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/recipes-core/libxcrypt/libxcrypt/0001-Fix-for-compila=
tion-on-Windows.patch b/recipes-core/libxcrypt/libxcrypt/0001-Fix-for-compi=
lation-on-Windows.patch<br>
&gt;&gt; new file mode 100644<br>
&gt;&gt; index 0000000..5760ee0<br>
&gt;&gt; --- /dev/null<br>
&gt;&gt; +++ b/recipes-core/libxcrypt/libxcrypt/0001-Fix-for-compilation-on=
-Windows.patch<br>
&gt;&gt; @@ -0,0 +1,37 @@<br>
&gt;&gt; +From a507b628a5a5d4e4f1cf0f0a9a72967470ee7624 Mon Sep 17 00:00:00=
 2001<br>
&gt;&gt; +From: Brecht Sanders &lt;<a href=3D"mailto:brecht@sanders.org" ta=
rget=3D"_blank">brecht@sanders.org</a>&gt;<br>
&gt;&gt; +Date: Fri, 3 Feb 2023 08:44:49 +0100<br>
&gt;&gt; +Subject: [PATCH] Fix for compilation on Windows<br>
&gt;&gt; +<br>
&gt;&gt; +This fix allows the library to build on Windows (at least with Mi=
nGW-w64).<br>
&gt;&gt; +<br>
&gt;&gt; +`.symver` is only supported for ELF format but Windows uses COFF/=
PE.<br>
&gt;&gt; +<br>
&gt;&gt; +Workaround dummy define of `symver_set()`<br>
&gt;&gt; +<br>
&gt;&gt; +Upstream-Status: Backport [<a href=3D"https://github.com/besser82=
/libxcrypt/commit/a507b628a5a5d4e4f1cf0f0a9a72967470ee7624" rel=3D"noreferr=
er" target=3D"_blank">https://github.com/besser82/libxcrypt/commit/a507b628=
a5a5d4e4f1cf0f0a9a72967470ee7624</a>]<br>
&gt;&gt; +<br>
&gt;&gt; +Signed-off-by: Wenlin Kang &lt;<a href=3D"mailto:wenlin.kang@wind=
river.com" target=3D"_blank">wenlin.kang@windriver.com</a>&gt;<br>
&gt;&gt; +---<br>
&gt;&gt; + lib/crypt-port.h | 5 +++++<br>
&gt;&gt; + 1 file changed, 5 insertions(+)<br>
&gt;&gt; +<br>
&gt;&gt; +diff --git a/lib/crypt-port.h b/lib/crypt-port.h<br>
&gt;&gt; +index f06ca24..a707939 100644<br>
&gt;&gt; +--- a/lib/crypt-port.h<br>
&gt;&gt; ++++ b/lib/crypt-port.h<br>
&gt;&gt; +@@ -201,6 +201,11 @@ extern size_t strcpy_or_abort (void *dst, si=
ze_t d_size, const void *src);<br>
&gt;&gt; +=C2=A0 =C2=A0__asm__(&quot;.globl _&quot; extstr);=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0\<br>
&gt;&gt; +=C2=A0 =C2=A0__asm__(&quot;.set _&quot; extstr &quot;, _&quot; #i=
ntname)<br>
&gt;&gt; +<br>
&gt;&gt; ++#elif defined _WIN32<br>
&gt;&gt; ++<br>
&gt;&gt; ++/* .symver is only supported for ELF format, Windows uses COFF/P=
E */<br>
&gt;&gt; ++# define symver_set(extstr, intname, version, mode)<br>
&gt;&gt; ++<br>
&gt;&gt; + #elif defined __GNUC__ &amp;&amp; __GNUC__ &gt;=3D 3<br>
&gt;&gt; +<br>
&gt;&gt; + # define _strong_alias(name, aliasname) \<br>
&gt;&gt; +--<br>
&gt;&gt; +2.34.1<br>
&gt;&gt; +<br>
&gt;&gt; diff --git a/recipes-core/libxcrypt/libxcrypt/0001-lib-util-get-ra=
ndom-bytes.c-fixed-conversion-error-w.patch b/recipes-core/libxcrypt/libxcr=
ypt/0001-lib-util-get-random-bytes.c-fixed-conversion-error-w.patch<br>
&gt;&gt; new file mode 100644<br>
&gt;&gt; index 0000000..3846f76<br>
&gt;&gt; --- /dev/null<br>
&gt;&gt; +++ b/recipes-core/libxcrypt/libxcrypt/0001-lib-util-get-random-by=
tes.c-fixed-conversion-error-w.patch<br>
&gt;&gt; @@ -0,0 +1,47 @@<br>
&gt;&gt; +From ff99091eb8a6b9e6edc567f6d2552183fbaacec3 Mon Sep 17 00:00:00=
 2001<br>
&gt;&gt; +From: Wenlin Kang &lt;<a href=3D"mailto:wenlin.kang@windriver.com=
" target=3D"_blank">wenlin.kang@windriver.com</a>&gt;<br>
&gt;&gt; +Date: Mon, 6 Nov 2023 14:43:28 +0800<br>
&gt;&gt; +Subject: [PATCH] lib/util-get-random-bytes.c: fixed conversion er=
ror with<br>
&gt;&gt; + mingw<br>
&gt;&gt; +<br>
&gt;&gt; +With x86_64-w64-mingw32-gcc. get below error:<br>
&gt;&gt; +| ../git/lib/util-get-random-bytes.c: In function &#39;_crypt_get=
_random_bytes&#39;:<br>
&gt;&gt; +| ../git/lib/util-get-random-bytes.c:140:42: error: conversion fr=
om &#39;size_t&#39; {aka &#39;long long unsigned int&#39;} to &#39;unsigned=
 int&#39; may change value [-Werror=3Dconversion]<br>
&gt;&gt; +|=C2=A0 =C2=A0140 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ssize=
_t nread =3D read (fd, buf, buflen);<br>
&gt;&gt; +|=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~<br>
&gt;&gt; +<br>
&gt;&gt; +In util-get-random-bytes.c, has get_random_bytes(void *buf, size_=
t buflen),<br>
&gt;&gt; +but in mingw-w64-mingw-w64/mingw-w64-headers/crt/io.h, read() has=
 &quot;unsigned int&quot;<br>
&gt;&gt; +read(int _FileHandle,void *_DstBuf,unsigned int _MaxCharCount), a=
nd has:<br>
&gt;&gt; + #ifdef _WIN64<br>
&gt;&gt; +=C2=A0 =C2=A0__MINGW_EXTENSION typedef unsigned __int64 size_t;<b=
r>
&gt;&gt; + #else<br>
&gt;&gt; +=C2=A0 =C2=A0typedef unsigned int size_t;<br>
&gt;&gt; + #endif /* _WIN64 */<br>
&gt;&gt; +<br>
&gt;&gt; +Upstream-Status: Pending<br>
&gt;&gt; +<br>
&gt;&gt; +Signed-off-by: Wenlin Kang &lt;<a href=3D"mailto:wenlin.kang@wind=
river.com" target=3D"_blank">wenlin.kang@windriver.com</a>&gt;<br>
&gt;&gt; +---<br>
&gt;&gt; + lib/util-get-random-bytes.c | 4 ++++<br>
&gt;&gt; + 1 file changed, 4 insertions(+)<br>
&gt;&gt; +<br>
&gt;&gt; +diff --git a/lib/util-get-random-bytes.c b/lib/util-get-random-by=
tes.c<br>
&gt;&gt; +index 79816db..68cd378 100644<br>
&gt;&gt; +--- a/lib/util-get-random-bytes.c<br>
&gt;&gt; ++++ b/lib/util-get-random-bytes.c<br>
&gt;&gt; +@@ -137,7 +137,11 @@ get_random_bytes(void *buf, size_t buflen)<b=
r>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_urandom_doesnt_work =3D tru=
e;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
&gt;&gt; ++#ifdef _WIN64<br>
&gt;&gt; ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ssize_t nread =3D read (fd, b=
uf, (unsigned int)buflen);<br>
&gt;&gt; ++#else<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ssize_t nread =3D read (=
fd, buf, buflen);<br>
&gt;&gt; ++#endif<br>
&gt; read is system API and I wonder why we are not getting right API<br>
&gt; signature here as I think<br>
&gt; size_t should already be defined based on _WIN64 in system headers.<br=
>
<br>
<br>
1. read() is declared in <br>
<a href=3D"https://sourceforge.net/p/mingw-w64/code/HEAD/tree/trunk/mingw-w=
64-headers/crt/io.h" rel=3D"noreferrer" target=3D"_blank">https://sourcefor=
ge.net/p/mingw-w64/code/HEAD/tree/trunk/mingw-w64-headers/crt/io.h</a>, <br=
>
but it has only a declaration for 32-bit,=C2=A0 with 64-bit, it can&#39;t b=
e found</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Ok it wil=
l be good to bring this to upstream=E2=80=99s notice=C2=A0</div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:=
1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,=
204)" dir=3D"auto"><br>
<br>
2. for size_t, it has:<br>
<br>
#ifdef _WIN64<br>
=C2=A0=C2=A0 __MINGW_EXTENSION typedef __int64 ssize_t;<br>
#else<br>
=C2=A0=C2=A0 typedef int ssize_t;<br>
#endif /* _WIN64 */<br>
<br>
<br>
&gt;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (nread &lt; 0 || (siz=
e_t)nread &lt; buflen)<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_urandom_doesn=
t_work =3D true;<br>
&gt;&gt; +<br>
&gt;&gt; +--<br>
&gt;&gt; +2.25.1<br>
&gt;&gt; +<br>
&gt;&gt; diff --git a/recipes-core/libxcrypt/libxcrypt_%.bbappend b/recipes=
-core/libxcrypt/libxcrypt_%.bbappend<br>
&gt;&gt; new file mode 100644<br>
&gt;&gt; index 0000000..cb9c45e<br>
&gt;&gt; --- /dev/null<br>
&gt;&gt; +++ b/recipes-core/libxcrypt/libxcrypt_%.bbappend<br>
&gt;&gt; @@ -0,0 +1,7 @@<br>
&gt;&gt; +FILESEXTRAPATHS:prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
&gt;&gt; +<br>
&gt;&gt; +SRC_URI:append:mingw32 =3D &quot;file://0001-Fix-for-compilation-=
on-Windows.patch \<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-lib-util-get-random-bytes.c-fixed-c=
onversion-error-w.patch \<br>
&gt;&gt; +&quot;<br>
&gt;&gt; +<br>
&gt;&gt; +CFLAGS:append:class-nativesdk:mingw32 =3D &quot; -Wno-pedantic&qu=
ot;<br>
&gt;&gt; --<br>
&gt;&gt; 2.39.0<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt; Links: You receive all messages sent to this group.<br>
&gt;&gt; You automatically follow any topics you start or reply to.<br>
&gt;&gt; View/Reply Online (#61775): <a href=3D"https://lists.yoctoproject.=
org/g/yocto/message/61775" rel=3D"noreferrer" target=3D"_blank">https://lis=
ts.yoctoproject.org/g/yocto/message/61775</a><br>
&gt;&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/1028=
90384/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproj=
ect.org/mt/102890384/1997914</a><br>
&gt;&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.or=
g" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt;&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/uns=
ub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/y=
octo/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj=
.khem@gmail.com</a>]<br>
&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt;<br>
-- <br>
--<br>
Thanks<br>
Wenlin Kang<br>
<br>
</blockquote></div></div>

--0000000000002f268e060b69f914--

