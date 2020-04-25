Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.917.1587783657585720422
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Apr 2020 20:00:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NibJNF/4;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: ticotimo@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FC8FE01A6A; Fri, 24 Apr 2020 20:00:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (ticotimo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAEDEE01A65
	for <yocto@yoctoproject.org>; Fri, 24 Apr 2020 20:00:55 -0700 (PDT)
Received: by mail-io1-f49.google.com with SMTP id z2so12547706iol.11
        for <yocto@yoctoproject.org>; Fri, 24 Apr 2020 20:00:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=c7Ls1SLpbgAd3XSBhdR8Gyf1xRV3il8wIExGrI7jPGM=;
        b=NibJNF/4mAJwi1EEg5fa6z39vRmJo65sCkcI/54jgomPAV2SfYHz2Zc+RPUzfN9YJX
         DlBKbdapHDI4Gy/vcvRCx7k+93oAyelhxTs/ISG3Lh0EKs1LLmlEKaucy5RI9Qh/buZf
         WPsXTH1MvGuvyBnTthbggCpwwJt8DSa/3eoIudcqZ2TDiKt7N5bVlibI0T3+CZ006bET
         kPrJHskFy1DBqatFjG3CKzko/Qv29EqIwMPX365PdyFjcvYjLUeibB6NDoDa6VfHeb2q
         JKNSEGvxhm2hiyb63OXX4k0yACAr/X1cJr+8wzLmVdZCsfLPZyFfOhiVNOWBqwIXOhNW
         GWcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=c7Ls1SLpbgAd3XSBhdR8Gyf1xRV3il8wIExGrI7jPGM=;
        b=hNM/lDvpx4+URDcMxkkP4UzchHYZ6zib299jKAjS8aL/OEpjMl3H1HN5SoZRe/mmoC
         6RLtdE5lFBf2Px3Av10Xd15scAufPs+FsBnoyP+/WOz81peVGxkwaTUVgSiWQevXWRPM
         FJOrPvREULmvTkE2H2LsQpTAGsAttqTz7qQ2bsyzza04u+Oqpm07NWaHtqUidnIFRAYQ
         WURlWFiLBIwdXo8jccbDeqc7YSQMWOeRh6R9ryNS2vOtqrfkJcpXvUcSpnUlxmyhHhqR
         bWmgjQM9b4yGVasbB1VbxugVP/6rp+DnrYIZ5O5dlBctXyYsv8AQveKPugg+gQDmdIvs
         urrQ==
X-Gm-Message-State: AGi0PuZDEcMaEfSEXj9zt6Lve7HsR3uU502UPSj/4PxOTYpjEfUfTBcq
	ePr9UHzNn+UQ87vXLBAJkKmhhL0J8Fl65OqaNqgY5vbk
X-Google-Smtp-Source: APiQypLr6UPTQuCy7gMhPdBRyeNKXSuehP8A98vkA6rd/DYIhulTcqXAXYCizI58uiGRG+CE7ephXzDdrvsdFH1X8N4=
X-Received: by 2002:a6b:3c0a:: with SMTP id k10mr11611202iob.10.1587783654706;
 Fri, 24 Apr 2020 20:00:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAAV2bM0wH85d97Td2dg=oQwSW3K5nTKF3604w7Y0Fz6tn=01Gw@mail.gmail.com>
 <096aae34-df17-0aa0-8e3b-e9f740e9a54d@gmail.com>
In-Reply-To: <096aae34-df17-0aa0-8e3b-e9f740e9a54d@gmail.com>
From: "Tim Orling" <ticotimo@gmail.com>
Date: Fri, 24 Apr 2020 20:00:43 -0700
Message-ID: <CANx9H-DzXcfup5JwTF1AwqGt86jJU6DewJ7a7NHKDFe6Ve2Hkw@mail.gmail.com>
Subject: Re: [yocto] Can't find pyconfig.h with python3
To: Emily <easmith5555@gmail.com>
Cc: Yocto List <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b810b905a414b036"

--000000000000b810b905a414b036
Content-Type: text/plain; charset="UTF-8"

I see you are building for "rocko" and that your layer supports "sumo" and
"rocko". Do you have a strong compelling reason to stay on these EOL
releases? meta-xilinx has a zeus branch which was released in October 2019
and has newer components and will be easier for you and us to support.
(We've had "thud" and "warrior" releases in-between, so that's at least a
year and a half ahead of your code base).

I started trying to build your layer (on "zeus" release), but unfortunately
you have recipes fetching from internal CERN git repos that are not
accessible to the rest of us.

Here's what I have so far:
https://github.com/moto-timo/meta-l1calo/tree/timo/zeus/add/opcServer

Again, I can't go much further because I can't fetch from your internal
repos.

On Fri, Apr 24, 2020 at 6:38 PM Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On 4/24/20 4:17 PM, Emily wrote:
> > Hi all -
> >
> > I'm trying to build an OS with a custom recipe
> > (
> https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-core/opc-ua/opc-ua-server-gfex_git.bb
> ).
> > I can build it as-is in the link above, but when actually trying to use
> > the output of the recipe (Poverty.so) I get the below error in python3:
> >
> >>>> import Poverty Traceback (most recent call last): File "<stdin>",
> line 1, in <module> ImportError: /usr/bin/Poverty.so: undefined symbol:
> _ZN5boost6python6detail11init_moduleEPKcPFvvE
> >
> >
> > I think that's because I built against python2 in some places. So I
> > replaced essentially all of the python dependencies with their
> > corresponding python3 dependencies, but that gives a build error in
> > bitbake like:
> >
> > |
> /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/include/boost/python/detail/wrap_python.hpp:50:11:
> fatal error: pyconfig.h: No such file or directory
> > |  # include <pyconfig.h>
> > |            ^~~~~~~~~~~~
> > | compilation terminated.
> >
> >
> > However, I checked and the offending file pyconfig.h is actually present
> > at |
> >
> /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/include/python3.5m/.
> > When I build with python2 dependencies the file is in the same location,
> > just /python2.7/.
> >
> > I can't quite tell if this is a yocto problem, or a problem with my
> > recipe and/or build files for that recipe. If anyone has suggestions
> > they would be much appreciated!
>
> this seems to be that it is needing python2, so yes it can perhaps be
> ported to py3 but you might have to check if it needs some code changes
>
> Looking at the recipe it is ineheriting py2 class here [1]
>
> perhaps you should change that to python3native
>
> [1]
>
> https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-core/opc-ua/opc-ua-server-gfex_git.bb#L15
>
>
>
> >
> > Thanks!
> > Emily Smith
> >
> >
> >
> >
>
> 
>

--000000000000b810b905a414b036
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div>I see you are building for &quo=
t;rocko&quot; and that your layer supports &quot;sumo&quot; and &quot;rocko=
&quot;. Do you have a strong compelling reason to stay on these EOL release=
s? meta-xilinx has a zeus branch which was released in October 2019 and has=
 newer components and will be easier for you and us to support. (We&#39;ve =
had &quot;thud&quot; and &quot;warrior&quot; releases in-between, so that&#=
39;s at least a year and a half ahead of your code base).<div><br></div><di=
v>I started trying to build your layer (on &quot;zeus&quot; release), but u=
nfortunately you have recipes fetching from internal CERN git repos that ar=
e not accessible to the rest of us.</div><div><br></div><div>Here&#39;s wha=
t I have so far:</div><div><a href=3D"https://github.com/moto-timo/meta-l1c=
alo/tree/timo/zeus/add/opcServer" target=3D"_blank">https://github.com/moto=
-timo/meta-l1calo/tree/timo/zeus/add/opcServer</a></div><div><br></div><div=
>Again, I can&#39;t go much further because I can&#39;t fetch from your int=
ernal repos.</div><div><br></div><div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Apr 24, 2020 at 6:38 PM Khem Raj &lt=
;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<br>
<br>
On 4/24/20 4:17 PM, Emily wrote:<br>
&gt; Hi all -=C2=A0<br>
&gt; <br>
&gt; I&#39;m trying to build an OS with a custom recipe<br>
&gt; (<a href=3D"https://github.com/kratsg/meta-l1calo/blob/add/opcServer/=
recipes-core/opc-ua/opc-ua-server-gfex_git.bb" rel=3D"noreferrer" target=3D=
"_blank">https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-c=
ore/opc-ua/opc-ua-server-gfex_git.bb</a>).<br>
&gt; I can build it as-is in the link above, but when actually trying to u=
se<br>
&gt; the output of the recipe (Poverty.so) I get the below error in python=
3:=C2=A0<br>
&gt; <br>
&gt;&gt;&gt;&gt; import Poverty Traceback (most recent call last): File &q=
uot;&lt;stdin&gt;&quot;, line 1, in &lt;module&gt; ImportError: /usr/bin/Po=
verty.so: undefined symbol: _ZN5boost6python6detail11init_moduleEPKcPFvvE<b=
r>
&gt; <br>
&gt; <br>
&gt; I think that&#39;s because I built against python2 in some places. So=
 I<br>
&gt; replaced essentially all of the python dependencies=C2=A0with their<b=
r>
&gt; corresponding python3 dependencies, but that gives a build error in<b=
r>
&gt; bitbake like:=C2=A0=C2=A0<br>
&gt; <br>
&gt; | /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-l=
inux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/inc=
lude/boost/python/detail/wrap_python.hpp:50:11: fatal error: pyconfig.h: No=
 such file or directory<br>
&gt; | =C2=A0# include &lt;pyconfig.h&gt;<br>
&gt; | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~<br>
&gt; | compilation terminated.<br>
&gt; <br>
&gt; <br>
&gt; However, I checked and the offending file pyconfig.h is actually pres=
ent<br>
&gt; at |<br>
&gt; /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-lin=
ux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/inclu=
de/python3.5m/.<br>
&gt; When I build with python2 dependencies the file is in the same locati=
on,<br>
&gt; just /python2.7/.<br>
&gt; <br>
&gt; I can&#39;t quite tell if this is a yocto problem, or a problem with =
my<br>
&gt; recipe and/or build files for that recipe. If anyone has suggestions<=
br>
&gt; they would be much appreciated! <br>
<br>
this seems to be that it is needing python2, so yes it can perhaps be<br>
ported to py3 but you might have to check if it needs some code changes<br=
>
<br>
Looking at the recipe it is ineheriting py2 class here [1]<br>
<br>
perhaps you should change that to python3native<br>
<br>
[1]<br>
<a href=3D"https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipe=
s-core/opc-ua/opc-ua-server-gfex_git.bb#L15" rel=3D"noreferrer" target=3D"_=
blank">https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-cor=
e/opc-ua/opc-ua-server-gfex_git.bb#L15</a><br>
<br>
<br>
<br>
&gt; <br>
&gt; Thanks!<br>
&gt; Emily Smith<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
<br>
</blockquote></div></div></div>

--000000000000b810b905a414b036--
