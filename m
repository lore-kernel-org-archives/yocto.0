Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F541E00F28; Wed, 10 Aug 2016 08:26:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59F30E00F1C
	for <yocto@yoctoproject.org>; Wed, 10 Aug 2016 08:25:58 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id i138so10212345wmf.3
	for <yocto@yoctoproject.org>; Wed, 10 Aug 2016 08:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6F80sa9l46olzkGuusT+Qd0ozR9JV5NhG2URXZhbVlY=;
	b=sQLWgMJ2BMLkf0UVashTWKd5mQI03o7I8DPJ3RBAOO06npdflbv2pQx9EHSlRv2gYs
	zdVyZQxHb3RTYQLCVvRYFpeWuIjTmxFeue8+rGuPwl1LOFvd+R8depYNc/c3qkZz+QNq
	+PbhDHAV6nwVbXHhQH9Fl7vl6W6wcPn8oYVEzFiXwHpBRL40hOhzqQvCCzC0yYyZC19z
	heO2jKf38HBStGBfc1Ffw+xqXT19O3H0v1dCbXBn/vtN0uBT7diqrWlQ8/zfu9eo4bUx
	ngvAn7QRJLY+n1IXhfzHa/uAuMVfHoTzEjPqofdBrFvgLMrg09EhhaWLM9sx1oHC2Hzu
	1QWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6F80sa9l46olzkGuusT+Qd0ozR9JV5NhG2URXZhbVlY=;
	b=H92Sp+zRsHYcF40ehbO9SDH4wxc8gYllohT3Pf4cqM7QW0tNdIAxlCsPXl9+Mk/6pb
	nYwhBMlszVNzLxIYKfVCP9TdWaA8TyNczarYpqpLtFdV4RyesxC+/bjIazfMCvV3J30v
	EamPNy2DVMVHgyl8KUxD41KwCUWLvKLSSwZ7A8Ayy+PfCI4crCTl7T1KtUsXi5QzDRl0
	96IkZ0nCboVgEUiHlMZOAtr5qWMOGPKH0pNFrGBXF7BWdLyZMAhe38jIrNSHcOYIAndz
	jHD0RY6zQ+pQ010diL/3PblmBcf6kucJZXclGe1/01hAvRV3cu8qoqFgC+2aVixxvYjc
	BGQQ==
X-Gm-Message-State: AEkoout9Mwnj8VgD7FkmT5LeokGzCL9/rnZ+xBIjTYbWkzvs7Guvh7iDOw9ZskR3Rq+6fsX5Z5VyFtb70fOGQg==
X-Received: by 10.25.215.82 with SMTP id o79mr714563lfg.132.1470842757775;
	Wed, 10 Aug 2016 08:25:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.87.12 with HTTP; Wed, 10 Aug 2016 08:25:56 -0700 (PDT)
In-Reply-To: <1470756255.8166.51.camel@linuxfoundation.org>
References: <CC61EFE1-5F39-4848-AD71-8E9C8DEC43C8@gmail.com>
	<1470637705.8166.29.camel@linuxfoundation.org>
	<8C207C42-3D61-4C3F-A1DE-F305AA6617BA@gmail.com>
	<1470644094.8166.37.camel@linuxfoundation.org>
	<1470646210.8166.38.camel@rpsys.net>
	<1470647765.4581.23.camel@andred.net>
	<ACB9AEF7-A7DF-4A88-9762-7569D91AD12D@gmail.com>
	<1470671991.8166.44.camel@linuxfoundation.org>
	<CAJTo0LY-MVSANSLRBzBGTL2ZJ=Ga=Xijps6jwAGosLK3aE4QLg@mail.gmail.com>
	<DC67B803-475F-4992-8DFD-B8F5FA7B1D15@gmail.com>
	<1470756255.8166.51.camel@linuxfoundation.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 10 Aug 2016 17:25:56 +0200
Message-ID: <CA+chaQcUkSHn6kkNHeo=5cDLhY3mc=Ob6zKs8EGrA2+b59FHtQ@mail.gmail.com>
To: openembedded-devel <openembedded-devel@lists.openembedded.org>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [oe] [OE-core] [RFT] binutils 2.27
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
X-List-Received-Date: Wed, 10 Aug 2016 15:26:01 -0000
Content-Type: multipart/alternative; boundary=001a11412c36190d9c0539b944d0

--001a11412c36190d9c0539b944d0
Content-Type: text/plain; charset=UTF-8

I'm not sure if it's caused by this binutils upgrade (because openssl in
oe-core is also using version script, imported from debian) or some change
in cmake/openssl, but today all recipes using cmake are failing with:

| DEBUG: Executing shell function do_configure
| cmake: sysroots/x86_64-linux/usr/bin/../lib/libcrypto.so.1.0.0: version
`OPENSSL_1.0.0' not found (required by cmake)
| cmake: sysroots/x86_64-linux/usr/bin/../lib/libssl.so.1.0.0: version
`OPENSSL_1.0.1' not found (required by cmake)
| cmake: sysroots/x86_64-linux/usr/bin/../lib/libssl.so.1.0.0: version
`OPENSSL_1.0.0' not found (required by cmake)
| WARNING: exit code 1 from a shell command.

Maybe it's another symptom of missing openssl-native dependency in
cmake-native (just like libidn-native issue reported here
https://bugzilla.yoctoproject.org/show_bug.cgi?id=9639) - and cmake-native
was originally linked against host's openssl which was built with version
script and binutils-2.24 (Ubuntu-14.04), but then it's executed with libssl
and libcrypto from native sysroot, where the version script didn't work:

$ ldd sysroots/x86_64-linux/usr/bin/cmake
sysroots/x86_64-linux/usr/bin/cmake:
sysroots/x86_64-linux/usr/bin/../lib/libcrypto.so.1.0.0: version
`OPENSSL_1.0.0' not found (required by sysroots/x86_64-linux/usr/bin/cmake)
sysroots/x86_64-linux/usr/bin/cmake:
sysroots/x86_64-linux/usr/bin/../lib/libssl.so.1.0.0: version
`OPENSSL_1.0.1' not found (required by sysroots/x86_64-linux/usr/bin/cmake)
sysroots/x86_64-linux/usr/bin/cmake:
sysroots/x86_64-linux/usr/bin/../lib/libssl.so.1.0.0: version
`OPENSSL_1.0.0' not found (required by sysroots/x86_64-linux/usr/bin/cmake)
        linux-vdso.so.1 =>  (0x00007ffed2fce000)
        libdl.so.2 => /lib/x86_64-linux-gnu/libdl.so.2 (0x00007fb631276000)
        libssl.so.1.0.0 =>
sysroots/x86_64-linux/usr/bin/../lib/libssl.so.1.0.0 (0x00007fb63100c000)
        libcrypto.so.1.0.0 =>
sysroots/x86_64-linux/usr/bin/../lib/libcrypto.so.1.0.0 (0x00007fb630bc1000)
        libstdc++.so.6 => /usr/lib/x86_64-linux-gnu/libstdc++.so.6
(0x00007fb6308bd000)
        libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007fb6305b7000)
        libgcc_s.so.1 => /lib/x86_64-linux-gnu/libgcc_s.so.1
(0x00007fb6303a1000)
        libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007fb62ffdc000)
        /lib64/ld-linux-x86-64.so.2 (0x00007fb63147a000)

Which is sort of confirmed by removing libssl.so and libcrypto.so from
native sysroot, I can execute cmake binary again.

On Tue, Aug 9, 2016 at 5:24 PM, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Tue, 2016-08-09 at 07:42 -0700, Khem Raj wrote:
> > I could also see it on ppc. backtrace, shows the segfault is in exit
> > path and happens in libc
> > at this point, I think the problem is how libc is compiled with
> > binutils 2.27, connman itself
> > is ok.
>
> Its the issue here:
>
> https://sourceware.org/ml/glibc-bugs/2015-01/msg00274.html
> https://sourceware.org/bugzilla/show_bug.cgi?id=17908
>
> Basically, if you remove the global _IO_stdin_used symbol, it triggers
> compatibility code which crashes.
>
> I've confirmed that if I add that symbol to the version-script in
> connman, things work again.
>
> Any idea how we raise the priority of this issue. There are no comments
> on the bug despite it having been posted a while ago :(.
>
> Cheers,
>
> Richard
> --
> _______________________________________________
> Openembedded-devel mailing list
> Openembedded-devel@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-devel
>

--001a11412c36190d9c0539b944d0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m not sure if it&#39;s caused by this binutils upgra=
de (because openssl in oe-core is also using version script, imported from =
debian) or some change in cmake/openssl, but today all recipes using cmake =
are failing with:<div><br></div><div><div>| DEBUG: Executing shell function=
 do_configure</div><div>| cmake: sysroots/x86_64-linux/usr/bin/../lib/libcr=
ypto.so.1.0.0: version `OPENSSL_1.0.0&#39; not found (required by cmake)</d=
iv><div>| cmake: sysroots/x86_64-linux/usr/bin/../lib/libssl.so.1.0.0: vers=
ion `OPENSSL_1.0.1&#39; not found (required by cmake)</div><div>| cmake: sy=
sroots/x86_64-linux/usr/bin/../lib/libssl.so.1.0.0: version `OPENSSL_1.0.0&=
#39; not found (required by cmake)</div><div>| WARNING: exit code 1 from a =
shell command.</div></div><div><br></div><div>Maybe it&#39;s another sympto=
m of missing openssl-native dependency in cmake-native (just like libidn-na=
tive issue reported here=C2=A0<a href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D9639">https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D9639</a>) - and cmake-native was originally linked against host&#39;s op=
enssl which was built with version script and binutils-2.24 (Ubuntu-14.04),=
 but then it&#39;s executed with libssl and libcrypto from native sysroot, =
where the version script didn&#39;t work:</div><div><br></div><div><div>$ l=
dd sysroots/x86_64-linux/usr/bin/cmake</div><div>sysroots/x86_64-linux/usr/=
bin/cmake: sysroots/x86_64-linux/usr/bin/../lib/libcrypto.so.1.0.0: version=
 `OPENSSL_1.0.0&#39; not found (required by sysroots/x86_64-linux/usr/bin/c=
make)</div><div>sysroots/x86_64-linux/usr/bin/cmake: sysroots/x86_64-linux/=
usr/bin/../lib/libssl.so.1.0.0: version `OPENSSL_1.0.1&#39; not found (requ=
ired by sysroots/x86_64-linux/usr/bin/cmake)</div><div>sysroots/x86_64-linu=
x/usr/bin/cmake: sysroots/x86_64-linux/usr/bin/../lib/libssl.so.1.0.0: vers=
ion `OPENSSL_1.0.0&#39; not found (required by sysroots/x86_64-linux/usr/bi=
n/cmake)</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 linux-vdso.so.1 =3D&gt; =C2=
=A0(0x00007ffed2fce000)</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 libdl.so.2 =
=3D&gt; /lib/x86_64-linux-gnu/libdl.so.2 (0x00007fb631276000)</div><div>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 libssl.so.1.0.0 =3D&gt; sysroots/x86_64-linux/usr/=
bin/../lib/libssl.so.1.0.0 (0x00007fb63100c000)</div><div>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 libcrypto.so.1.0.0 =3D&gt; sysroots/x86_64-linux/usr/bin/../lib/=
libcrypto.so.1.0.0 (0x00007fb630bc1000)</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 libstdc++.so.6 =3D&gt; /usr/lib/x86_64-linux-gnu/libstdc++.so.6 (0x0000=
7fb6308bd000)</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 libm.so.6 =3D&gt; /lib/=
x86_64-linux-gnu/libm.so.6 (0x00007fb6305b7000)</div><div>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 libgcc_s.so.1 =3D&gt; /lib/x86_64-linux-gnu/libgcc_s.so.1 (0x000=
07fb6303a1000)</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 libc.so.6 =3D&gt; /lib=
/x86_64-linux-gnu/libc.so.6 (0x00007fb62ffdc000)</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 /lib64/ld-linux-x86-64.so.2 (0x00007fb63147a000)</div></div><=
div><br></div><div>Which is sort of confirmed by removing libssl.so and lib=
crypto.so from native sysroot, I can execute cmake binary again.</div><div =
class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Aug 9, 2016 at=
 5:24 PM, Richard Purdie <span dir=3D"ltr">&lt;<a href=3D"mailto:richard.pu=
rdie@linuxfoundation.org" target=3D"_blank">richard.purdie@linuxfoundation.=
org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"=
">On Tue, 2016-08-09 at 07:42 -0700, Khem Raj wrote:<br>
&gt; I could also see it on ppc. backtrace, shows the segfault is in exit<b=
r>
&gt; path and happens in libc<br>
&gt; at this point, I think the problem is how libc is compiled with<br>
&gt; binutils 2.27, connman itself<br>
&gt; is ok.<br>
<br>
</span>Its the issue here:<br>
<br>
<a href=3D"https://sourceware.org/ml/glibc-bugs/2015-01/msg00274.html" rel=
=3D"noreferrer" target=3D"_blank">https://sourceware.org/ml/<wbr>glibc-bugs=
/2015-01/msg00274.<wbr>html</a><br>
<a href=3D"https://sourceware.org/bugzilla/show_bug.cgi?id=3D17908" rel=3D"=
noreferrer" target=3D"_blank">https://sourceware.org/<wbr>bugzilla/show_bug=
.cgi?id=3D17908</a><br>
<br>
Basically, if you remove the global _IO_stdin_used symbol, it triggers<br>
compatibility code which crashes.<br>
<br>
I&#39;ve confirmed that if I add that symbol to the version-script in<br>
connman, things work again.<br>
<br>
Any idea how we raise the priority of this issue. There are no comments<br>
on the bug despite it having been posted a while ago :(.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
Openembedded-devel mailing list<br>
<a href=3D"mailto:Openembedded-devel@lists.openembedded.org">Openembedded-d=
evel@lists.<wbr>openembedded.org</a><br>
<a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-deve=
l" rel=3D"noreferrer" target=3D"_blank">http://lists.openembedded.org/<wbr>=
mailman/listinfo/openembedded-<wbr>devel</a><br>
</font></span></blockquote></div><br></div></div>

--001a11412c36190d9c0539b944d0--
