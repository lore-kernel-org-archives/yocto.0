Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
 by mx.groups.io with SMTP id smtpd.web11.11935.1584464819975656841
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Mar 2020 10:07:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=txrGN80f;
 spf=pass (domain: gmail.com, ip: 209.85.166.171, mailfrom: easmith5555@gmail.com)
Received: by mail-il1-f171.google.com with SMTP id v6so9661465ilq.2
        for <yocto@lists.yoctoproject.org>; Tue, 17 Mar 2020 10:06:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sVpPuDM2dQS7QaovMyQBjkSetfbg7vGwkFJxyxT5+WQ=;
        b=txrGN80fcL3zuk2yKX+6xcLttT2COqFeldYCEA3k2nkzNu68Cwc71C/NUViJsAh+s/
         YovpNZNyfrPpm2k1eTCU+wgwhcTPshOJ3z+xV7Dmn+y4tQrEudwI5GL16f1vgaTgSgGu
         feyIZBcOEcqvT8Ctk95KTZbkrXnEYXAGKuFzI73cGHf7cuZTQuDS/lkPU/A2oGyyKPpJ
         FyvgAAmmhtMvop0l/iH7PjkWXcq4jw6jQf8APczwAy4vpqhsO/vM2x+84Zv/BqQZSxaP
         kvlUCFFcUjGEFq/+jt2wFNdYxX5lvlV3UWOglFCLO3Lld3FCSv7vkqaRsLo4aCaBgYwp
         Y79A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sVpPuDM2dQS7QaovMyQBjkSetfbg7vGwkFJxyxT5+WQ=;
        b=OUUw0fjHsft9IJ9okQR2XdHdo1PYt+pcorH2UqDppJV43IYXm6NOOA9Pi8/Oy6Uzhr
         ee+D2G6mHhlhnu3X8NFDERyHtVsDb4iujjihGCiIrtv5BiMUM1oujJizbiDb2oV/LA72
         n7fyn85LIm8TCrBoNLAzkZ5/or2fKmgCNCgaIRCc+qa3gF4jJQmRtN7n8J8qN8T/lM5V
         9ssmciiMOrODrommlXnsiHldIwvQGxLv8mbWIS9VFkMEjIra/EFyqAB0WUwSxT41pHRY
         O1kXemE38VOg2Ab9vVjLaJaFmHdwe/u+pJnD9d1vixalWIydCrJDDeYebtCvaIkAeTTg
         EymA==
X-Gm-Message-State: ANhLgQ0CnnbSyvXb8G91oFzNdsEJzS0wMAolhnae6MzQ/IZ0fEMSx8R0
	IdI7QgIVPoETM9IbNGxhZos1O7aEduVehXXxCnbt49mb+qA=
X-Google-Smtp-Source: ADFU+vsLuc/j2GxRoMvda9jICbp3HCH1sn4FClJmCAmeUJgFMmIi4sujAUoWJ6IS3DJkZcQLt49W9J4//qK6lZxBzSg=
X-Received: by 2002:a92:5cd4:: with SMTP id d81mr6039986ilg.57.1584464819238;
 Tue, 17 Mar 2020 10:06:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAAV2bM0B6pWK3ypKip+NJ4XzJbgqFNNXRrfHtiKMuAORUt+PCg@mail.gmail.com>
 <20200317160443.6pyp7zuonargxrux@qschulz>
In-Reply-To: <20200317160443.6pyp7zuonargxrux@qschulz>
From: "Emily" <easmith5555@gmail.com>
Date: Tue, 17 Mar 2020 12:06:48 -0500
Message-ID: <CAAV2bM2PT0YTq8+Q9vf5aLMeoRnw72NauTuiF8myGroAu1DC=A@mail.gmail.com>
Subject: Re: [yocto] How to PROVIDE boost-python
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b5bea605a10ff6d0"

--000000000000b5bea605a10ff6d0
Content-Type: text/plain; charset="UTF-8"

Hi Quentin -

That's what I tried originally! DEPENDS on boost and not boost-python gives
me the following error when trying to build my original recipe:

/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64
-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309
-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../
libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/7.3.0/ld:
cannot find -lboost_python-mt

So I tried a bunch of other this which also didn't seem to work.

Thanks for the response!
Emily


On Tue, Mar 17, 2020 at 11:04 AM Quentin Schulz <
quentin.schulz@streamunlimited.com> wrote:

> Hi Emily,
>
> On Tue, Mar 17, 2020 at 10:44:10AM -0500, Emily wrote:
> > Hi all -
> >
> > I'm trying to build an opca recipe (
> >
> https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-core/opc-ua/opc-ua-server-gfex_git.bb
> )
> > and it's giving me a build error like:
> >
> > |
> >
> /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/7.3.0/ld:
> > cannot find -lboost_python-mt
> >
> > Which seems to indicated I need to add boost-python to my list of
> DEPENDS.
> > When I do that I get the error:
> >
> > ERROR: Nothing PROVIDES 'boost-python' (but
> > /local/d6/easmith5/rocko_bitbake/meta-l1calo/recipes-core/opc-ua/
> > opc-ua-server-gfex_git.bb DEPENDS on or otherwise requires it). Close
> > matches:
> >   boost RPROVIDES boost-python
> >
> > I've tried adding PACKAGECONFIG_pn-boost="python" to both my local.conf
> and
> > to the image definition as I saw this online, but neither seems to work.
> It
> > seems like boost-python is being built (I can see it in the list when I
> run
> > oe-pkgdata-utils list-pkgs -p boost) but it doesn't seem to be available
> at
> > build for this recipe.
> >
> > If I remove boost from my list of DEPENDS I get an error about that, so
> > obviously boost itself is available at build for the original recipe.
> I've
> > also tried adding boost-native to DEPENDS, also did not work.
> >
> > Is there something obvious I'm missing, or some trick to making
> > boost-python available at build for this other recipe?
> >
>
> Ok so two things.
>
> Yes, I'd say you need python in PACKAGECONFIG for boost. However, it
> seems it's already part of the default value of PACKAGECONFIG, c.f.
>
> http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-support/boost/boost.inc?h=master#n45
> so if no bbappend is overriding it, I'd say you're safe. Better check
> with the version in your layer that it's there.
> If you don't want to check manually, try `bitbake -e boost | grep -e
> "^PACKAGECONFIG="`
>
> DEPENDS contains only recipes (well, PROVIDES but PROVIDES has the name
> of the recipe in it at all times) while RDEPENDS_* (usually ${PN}*)
> contains
> only packages.
>
> So you need to DEPENDS on boost, not boost-python. That should be enough
> hopefully!
>
> Quentin
>

--000000000000b5bea605a10ff6d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Quentin -=C2=A0<div><br></div><div>That&#39;s what I tr=
ied originally! DEPENDS on boost and not boost-python gives me the followin=
g error when trying to build my original recipe:=C2=A0</div><div><span styl=
e=3D"color:rgb(80,0,80)"><br></span></div><div><span style=3D"color:rgb(80,=
0,80)">/local/d6/easmith5/rocko_bitba</span><span style=3D"color:rgb(80,0,8=
0)">ke/poky/build/tmp/work/aarch64</span><span style=3D"color:rgb(80,0,80)"=
>-poky-linux/opc-ua-server-</span><span style=3D"color:rgb(80,0,80)">gfex/1=
.0+gitAUTOINC+921c563309</span><span style=3D"color:rgb(80,0,80)">-r0/recip=
e-sysroot-native/usr/</span><span style=3D"color:rgb(80,0,80)">bin/aarch64-=
poky-linux/../../</span><span style=3D"color:rgb(80,0,80)">libexec/aarch64-=
poky-linux/</span><span style=3D"color:rgb(80,0,80)">gcc/aarch64-poky-linux=
/7.3.0/</span><span style=3D"color:rgb(80,0,80)">ld:</span><br style=3D"col=
or:rgb(80,0,80)"><span style=3D"color:rgb(80,0,80)">cannot find -lboost_pyt=
hon-mt</span>=C2=A0=C2=A0<br></div><div><br></div><div>So I tried a bunch o=
f other this which also didn&#39;t seem to work.=C2=A0</div><div><br></div>=
<div>Thanks for the response!</div><div>Emily</div><div><br></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, M=
ar 17, 2020 at 11:04 AM Quentin Schulz &lt;<a href=3D"mailto:quentin.schulz=
@streamunlimited.com">quentin.schulz@streamunlimited.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Emily,<br>
<br>
On Tue, Mar 17, 2020 at 10:44:10AM -0500, Emily wrote:<br>
&gt; Hi all -<br>
&gt; <br>
&gt; I&#39;m trying to build an opca recipe (<br>
&gt; <a href=3D"https://github.com/kratsg/meta-l1calo/blob/add/opcServer/re=
cipes-core/opc-ua/opc-ua-server-gfex_git.bb" rel=3D"noreferrer" target=3D"_=
blank">https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-cor=
e/opc-ua/opc-ua-server-gfex_git.bb</a>)<br>
&gt; and it&#39;s giving me a build error like:<br>
&gt; <br>
&gt; |<br>
&gt; /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linu=
x/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot-native/usr=
/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-l=
inux/7.3.0/ld:<br>
&gt; cannot find -lboost_python-mt<br>
&gt; <br>
&gt; Which seems to indicated I need to add boost-python to my list of DEPE=
NDS.<br>
&gt; When I do that I get the error:<br>
&gt; <br>
&gt; ERROR: Nothing PROVIDES &#39;boost-python&#39; (but<br>
&gt; /local/d6/easmith5/rocko_bitbake/meta-l1calo/recipes-core/opc-ua/<br>
&gt; <a href=3D"http://opc-ua-server-gfex_git.bb" rel=3D"noreferrer" target=
=3D"_blank">opc-ua-server-gfex_git.bb</a> DEPENDS on or otherwise requires =
it). Close<br>
&gt; matches:<br>
&gt;=C2=A0 =C2=A0boost RPROVIDES boost-python<br>
&gt; <br>
&gt; I&#39;ve tried adding PACKAGECONFIG_pn-boost=3D&quot;python&quot; to b=
oth my local.conf and<br>
&gt; to the image definition as I saw this online, but neither seems to wor=
k. It<br>
&gt; seems like boost-python is being built (I can see it in the list when =
I run<br>
&gt; oe-pkgdata-utils list-pkgs -p boost) but it doesn&#39;t seem to be ava=
ilable at<br>
&gt; build for this recipe.<br>
&gt; <br>
&gt; If I remove boost from my list of DEPENDS I get an error about that, s=
o<br>
&gt; obviously boost itself is available at build for the original recipe. =
I&#39;ve<br>
&gt; also tried adding boost-native to DEPENDS, also did not work.<br>
&gt; <br>
&gt; Is there something obvious I&#39;m missing, or some trick to making<br=
>
&gt; boost-python available at build for this other recipe?<br>
&gt; <br>
<br>
Ok so two things.<br>
<br>
Yes, I&#39;d say you need python in PACKAGECONFIG for boost. However, it<br=
>
seems it&#39;s already part of the default value of PACKAGECONFIG, c.f.<br>
<a href=3D"http://cgit.openembedded.org/openembedded-core/tree/meta/recipes=
-support/boost/boost.inc?h=3Dmaster#n45" rel=3D"noreferrer" target=3D"_blan=
k">http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-support=
/boost/boost.inc?h=3Dmaster#n45</a><br>
so if no bbappend is overriding it, I&#39;d say you&#39;re safe. Better che=
ck<br>
with the version in your layer that it&#39;s there.<br>
If you don&#39;t want to check manually, try `bitbake -e boost | grep -e<br=
>
&quot;^PACKAGECONFIG=3D&quot;`<br>
<br>
DEPENDS contains only recipes (well, PROVIDES but PROVIDES has the name<br>
of the recipe in it at all times) while RDEPENDS_* (usually ${PN}*) contain=
s<br>
only packages.<br>
<br>
So you need to DEPENDS on boost, not boost-python. That should be enough<br=
>
hopefully!<br>
<br>
Quentin<br>
</blockquote></div>

--000000000000b5bea605a10ff6d0--
