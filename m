Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
 by mx.groups.io with SMTP id smtpd.web12.1777.1584469163467517096
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Mar 2020 11:19:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ontRobaq;
 spf=pass (domain: gmail.com, ip: 209.85.166.43, mailfrom: easmith5555@gmail.com)
Received: by mail-io1-f43.google.com with SMTP id o127so9640439iof.0
        for <yocto@lists.yoctoproject.org>; Tue, 17 Mar 2020 11:19:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DqqwIDs4jZo3eyn1j4riBxidwvhdtq6X4Nb/5BIPKo8=;
        b=ontRobaq00Fd3m1WTz/t+7dxquCygeHSBFaTN+CAyeRoKW5RwiOjgc92LFAGfQ1G2V
         M8bRQakXDFe5qXVwlvYg/ZhoCvePMgjFXIkV+A9NhLnSzv5mOfl689tUwSgpJNqMSGmw
         +clXiMNNxpnNDyxJu6oTx+F/HK2c6lK6cb9duHoGIidpzldSz1oQmacfaSj8W3S7zQyP
         wF5DcDAcCBbjRyYqg8ratjKES4gBXsveqlFT4aaV5yAYCSyiXH23C5YJcHeQCOIqKEuy
         XKqOTSFaOdSI61daw5xXCQvwj9HEECSUxKBlUKAZGJOoicl89pvG2N5MdIuDURauQK6a
         MmfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DqqwIDs4jZo3eyn1j4riBxidwvhdtq6X4Nb/5BIPKo8=;
        b=ArRtY6ZIZALpRF6tHXkV3ul5F25tYkAk6FJnbvNc3Q5qQReJe9woSDOkRgZz4dTUfD
         PU8KHd/DOVEiEOBt5CqsJaarZsCRle+A62S/bfVFPpO9Us6Orlq+nMJs6fu1HguTvtu2
         bEB6r2LdWFHuLVtvsSve+HmPZaYAlyZtWTiBhGpKv5scGn8Sk+ssW2beAYExnU/wiDO4
         9P9yUEHN0kDcZZq5++TAptOkEiH09tFdFRu6h5LYbOoXNGqQEHkyg3pulXCp9SBETuSl
         B2R7+JrQT1pHtDUwQJU7F7T6Nfx3c9Di2aM1NFEzd0Rhg3hElspJpxraZSokU5jVJmMk
         vStA==
X-Gm-Message-State: ANhLgQ0lIK6u57sYaXz68Xs8YLgQPDCw716e4WwVBQVBIFJViXubqTZA
	729V9VAC+9a3oThb79JPB3lSyOIdkurJUYeO/4rUcwRTSoQ=
X-Google-Smtp-Source: ADFU+vtRpxoNf27mQqKz0Flp0lk+YpTbDhgLEFFlWsD+xVrAVDGL4/JOAqgd2W4b2H0cTm0eMOjT+jSFlLbYLW3ARFs=
X-Received: by 2002:a6b:ef0f:: with SMTP id k15mr58489ioh.43.1584469162712;
 Tue, 17 Mar 2020 11:19:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAAV2bM0B6pWK3ypKip+NJ4XzJbgqFNNXRrfHtiKMuAORUt+PCg@mail.gmail.com>
 <20200317160443.6pyp7zuonargxrux@qschulz> <CAAV2bM2PT0YTq8+Q9vf5aLMeoRnw72NauTuiF8myGroAu1DC=A@mail.gmail.com>
 <CAGbd71QqDTLU0nAz1aV0FuXQtArCeV2Z65RaTQ3Q7wE2daNE9w@mail.gmail.com>
In-Reply-To: <CAGbd71QqDTLU0nAz1aV0FuXQtArCeV2Z65RaTQ3Q7wE2daNE9w@mail.gmail.com>
From: "Emily" <easmith5555@gmail.com>
Date: Tue, 17 Mar 2020 13:19:12 -0500
Message-ID: <CAAV2bM0ExWhQx8hmnxbCc9jvpM5UHUY0pdqCbsyZQTt3w2KEAA@mail.gmail.com>
Subject: Re: [yocto] How to PROVIDE boost-python
To: Laurent Gauthier <laurent.gauthier@soccasys.com>
Cc: Quentin Schulz <quentin.schulz@streamunlimited.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000099e17405a110f9b9"

--00000000000099e17405a110f9b9
Content-Type: text/plain; charset="UTF-8"

Hi Laurent -

Thanks for the suggestion. It looks like there are a few packages that
provide libboost_python3:

find tmp/work/*/*/*/packages-split -name libboost_python\*
tmp/work/aarch64-poky-linux/boost/1.64.0-r0/packages-split/boost-dev/usr/lib/libboost_python3.so
tmp/work/aarch64-poky-linux/boost/1.64.0-r0/packages-split/boost-python/usr/lib/libboost_python3.so.1.64.0
tmp/work/aarch64-poky-linux/boost/1.64.0-r0/packages-split/boost-staticdev/usr/lib/libboost_python3.a
tmp/work/aarch64-poky-linux/boost/1.64.0-r0/packages-split/boost-dbg/usr/lib/.debug/libboost_python3.so.1.64.0

Adding boost-python to RDEPENDS doesn't help, I have tried it before also.
This sort of made sense to me as I thought RDEPENDS was for run time
dependencies, but perhaps I have misunderstood.

I am working with the rocko branch and python2, so perhaps that's the
problem?

Thanks,
Emily


On Tue, Mar 17, 2020 at 1:02 PM Laurent Gauthier <
laurent.gauthier@soccasys.com> wrote:

> Hi Emily,
>
> To find the solution to your issue in a rational and deterministic way
> we need to start from the error message.
>
> What I understand is that while build recipe "opc-ua-server-gfex" you
> get an error message that says in short "ld: cannot find
> -lboost_python-mt".
>
> Therefore you need to determine which recipe (and which package in
> that recipe) provides the "boost_python-mt" library.
>
> One way to determine this is to run something like this:
>
>     find
> /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/*/*/*/packages-split
> -name libboost_python\*
>
> This should show you which recipe, and which package produced by that
> recipe has the library you are looking for.
>
> The names of the first-level directories inside "packages-split" are
> packages names.
>
> Based on things you have mentioned in your previous e-mail my guess
> would be that adding an RDEPENDS = "boost-python" should help, but I
> might be wrong.
>
> I hope this will help you move in the right direction.
>
> Kind regards, Laurent.
>
>
> On Tue, Mar 17, 2020 at 6:07 PM Emily <easmith5555@gmail.com> wrote:
> >
> > Hi Quentin -
> >
> > That's what I tried originally! DEPENDS on boost and not boost-python
> gives me the following error when trying to build my original recipe:
> >
> >
> /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/7.3.0/ld:
> > cannot find -lboost_python-mt
> >
> > So I tried a bunch of other this which also didn't seem to work.
> >
> > Thanks for the response!
> > Emily
> >
> >
> > On Tue, Mar 17, 2020 at 11:04 AM Quentin Schulz <
> quentin.schulz@streamunlimited.com> wrote:
> >>
> >> Hi Emily,
> >>
> >> On Tue, Mar 17, 2020 at 10:44:10AM -0500, Emily wrote:
> >> > Hi all -
> >> >
> >> > I'm trying to build an opca recipe (
> >> >
> https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-core/opc-ua/opc-ua-server-gfex_git.bb
> )
> >> > and it's giving me a build error like:
> >> >
> >> > |
> >> >
> /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/7.3.0/ld:
> >> > cannot find -lboost_python-mt
> >> >
> >> > Which seems to indicated I need to add boost-python to my list of
> DEPENDS.
> >> > When I do that I get the error:
> >> >
> >> > ERROR: Nothing PROVIDES 'boost-python' (but
> >> > /local/d6/easmith5/rocko_bitbake/meta-l1calo/recipes-core/opc-ua/
> >> > opc-ua-server-gfex_git.bb DEPENDS on or otherwise requires it). Close
> >> > matches:
> >> >   boost RPROVIDES boost-python
> >> >
> >> > I've tried adding PACKAGECONFIG_pn-boost="python" to both my
> local.conf and
> >> > to the image definition as I saw this online, but neither seems to
> work. It
> >> > seems like boost-python is being built (I can see it in the list when
> I run
> >> > oe-pkgdata-utils list-pkgs -p boost) but it doesn't seem to be
> available at
> >> > build for this recipe.
> >> >
> >> > If I remove boost from my list of DEPENDS I get an error about that,
> so
> >> > obviously boost itself is available at build for the original recipe.
> I've
> >> > also tried adding boost-native to DEPENDS, also did not work.
> >> >
> >> > Is there something obvious I'm missing, or some trick to making
> >> > boost-python available at build for this other recipe?
> >> >
> >>
> >> Ok so two things.
> >>
> >> Yes, I'd say you need python in PACKAGECONFIG for boost. However, it
> >> seems it's already part of the default value of PACKAGECONFIG, c.f.
> >>
> http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-support/boost/boost.inc?h=master#n45
> >> so if no bbappend is overriding it, I'd say you're safe. Better check
> >> with the version in your layer that it's there.
> >> If you don't want to check manually, try `bitbake -e boost | grep -e
> >> "^PACKAGECONFIG="`
> >>
> >> DEPENDS contains only recipes (well, PROVIDES but PROVIDES has the name
> >> of the recipe in it at all times) while RDEPENDS_* (usually ${PN}*)
> contains
> >> only packages.
> >>
> >> So you need to DEPENDS on boost, not boost-python. That should be enough
> >> hopefully!
> >>
> >> Quentin
> >
> > 
>
>
>
> --
> Laurent Gauthier
> Phone: +33 630 483 429
> http://soccasys.com
>

--00000000000099e17405a110f9b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi Laurent -=C2=A0<div><=
br></div><div>Thanks for the suggestion. It looks like there are a few pack=
ages that provide libboost_python3:</div><div><br></div><div>find tmp/work/=
*/*/*/packages-split -name libboost_python\*<br>tmp/work/aarch64-poky-linux=
/boost/1.64.0-r0/packages-split/boost-dev/usr/lib/libboost_python3.so<br>tm=
p/work/aarch64-poky-linux/boost/1.64.0-r0/packages-split/boost-python/usr/l=
ib/libboost_python3.so.1.64.0<br>tmp/work/aarch64-poky-linux/boost/1.64.0-r=
0/packages-split/boost-staticdev/usr/lib/libboost_python3.a<br>tmp/work/aar=
ch64-poky-linux/boost/1.64.0-r0/packages-split/boost-dbg/usr/lib/.debug/lib=
boost_python3.so.1.64.0<br></div><div><br></div><div>Adding boost-python to=
 RDEPENDS doesn&#39;t help, I have tried it before also. This sort of made =
sense to me as I thought RDEPENDS was for run time dependencies, but perhap=
s I have misunderstood.=C2=A0</div><div><br></div><div>I am working with th=
e rocko branch and python2, so perhaps that&#39;s the problem?</div><div><b=
r></div><div>Thanks,</div><div>Emily</div><div><br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 17, 20=
20 at 1:02 PM Laurent Gauthier &lt;<a href=3D"mailto:laurent.gauthier@socca=
sys.com">laurent.gauthier@soccasys.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">Hi Emily,<br>
<br>
To find the solution to your issue in a rational and deterministic way<br>
we need to start from the error message.<br>
<br>
What I understand is that while build recipe &quot;opc-ua-server-gfex&quot=
; you<br>
get an error message that says in short &quot;ld: cannot find<br>
-lboost_python-mt&quot;.<br>
<br>
Therefore you need to determine which recipe (and which package in<br>
that recipe) provides the &quot;boost_python-mt&quot; library.<br>
<br>
One way to determine this is to run something like this:<br>
<br>
=C2=A0 =C2=A0 find /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/*/=
*/*/packages-split<br>
-name libboost_python\*<br>
<br>
This should show you which recipe, and which package produced by that<br>
recipe has the library you are looking for.<br>
<br>
The names of the first-level directories inside &quot;packages-split&quot;=
 are<br>
packages names.<br>
<br>
Based on things you have mentioned in your previous e-mail my guess<br>
would be that adding an RDEPENDS =3D &quot;boost-python&quot; should help,=
 but I<br>
might be wrong.<br>
<br>
I hope this will help you move in the right direction.<br>
<br>
Kind regards, Laurent.<br>
<br>
<br>
On Tue, Mar 17, 2020 at 6:07 PM Emily &lt;<a href=3D"mailto:easmith5555@gm=
ail.com" target=3D"_blank">easmith5555@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Quentin -<br>
&gt;<br>
&gt; That&#39;s what I tried originally! DEPENDS on boost and not boost-py=
thon gives me the following error when trying to build my original recipe:<=
br>
&gt;<br>
&gt; /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-lin=
ux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot-native/us=
r/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-=
linux/7.3.0/ld:<br>
&gt; cannot find -lboost_python-mt<br>
&gt;<br>
&gt; So I tried a bunch of other this which also didn&#39;t seem to work.<=
br>
&gt;<br>
&gt; Thanks for the response!<br>
&gt; Emily<br>
&gt;<br>
&gt;<br>
&gt; On Tue, Mar 17, 2020 at 11:04 AM Quentin Schulz &lt;<a href=3D"mailto=
:quentin.schulz@streamunlimited.com" target=3D"_blank">quentin.schulz@strea=
munlimited.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi Emily,<br>
&gt;&gt;<br>
&gt;&gt; On Tue, Mar 17, 2020 at 10:44:10AM -0500, Emily wrote:<br>
&gt;&gt; &gt; Hi all -<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I&#39;m trying to build an opca recipe (<br>
&gt;&gt; &gt; <a href=3D"https://github.com/kratsg/meta-l1calo/blob/add/op=
cServer/recipes-core/opc-ua/opc-ua-server-gfex_git.bb" rel=3D"noreferrer" t=
arget=3D"_blank">https://github.com/kratsg/meta-l1calo/blob/add/opcServer/r=
ecipes-core/opc-ua/opc-ua-server-gfex_git.bb</a>)<br>
&gt;&gt; &gt; and it&#39;s giving me a build error like:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; |<br>
&gt;&gt; &gt; /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64=
-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot-=
native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarc=
h64-poky-linux/7.3.0/ld:<br>
&gt;&gt; &gt; cannot find -lboost_python-mt<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Which seems to indicated I need to add boost-python to my li=
st of DEPENDS.<br>
&gt;&gt; &gt; When I do that I get the error:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; ERROR: Nothing PROVIDES &#39;boost-python&#39; (but<br>
&gt;&gt; &gt; /local/d6/easmith5/rocko_bitbake/meta-l1calo/recipes-core/op=
c-ua/<br>
&gt;&gt; &gt; <a href=3D"http://opc-ua-server-gfex_git.bb" rel=3D"noreferr=
er" target=3D"_blank">opc-ua-server-gfex_git.bb</a> DEPENDS on or otherwise=
 requires it). Close<br>
&gt;&gt; &gt; matches:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0boost RPROVIDES boost-python<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I&#39;ve tried adding PACKAGECONFIG_pn-boost=3D&quot;python&=
quot; to both my local.conf and<br>
&gt;&gt; &gt; to the image definition as I saw this online, but neither se=
ems to work. It<br>
&gt;&gt; &gt; seems like boost-python is being built (I can see it in the =
list when I run<br>
&gt;&gt; &gt; oe-pkgdata-utils list-pkgs -p boost) but it doesn&#39;t seem=
 to be available at<br>
&gt;&gt; &gt; build for this recipe.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; If I remove boost from my list of DEPENDS I get an error abo=
ut that, so<br>
&gt;&gt; &gt; obviously boost itself is available at build for the origina=
l recipe. I&#39;ve<br>
&gt;&gt; &gt; also tried adding boost-native to DEPENDS, also did not work=
.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Is there something obvious I&#39;m missing, or some trick to=
 making<br>
&gt;&gt; &gt; boost-python available at build for this other recipe?<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; Ok so two things.<br>
&gt;&gt;<br>
&gt;&gt; Yes, I&#39;d say you need python in PACKAGECONFIG for boost. Howe=
ver, it<br>
&gt;&gt; seems it&#39;s already part of the default value of PACKAGECONFIG=
, c.f.<br>
&gt;&gt; <a href=3D"http://cgit.openembedded.org/openembedded-core/tree/me=
ta/recipes-support/boost/boost.inc?h=3Dmaster#n45" rel=3D"noreferrer" targe=
t=3D"_blank">http://cgit.openembedded.org/openembedded-core/tree/meta/recip=
es-support/boost/boost.inc?h=3Dmaster#n45</a><br>
&gt;&gt; so if no bbappend is overriding it, I&#39;d say you&#39;re safe. =
Better check<br>
&gt;&gt; with the version in your layer that it&#39;s there.<br>
&gt;&gt; If you don&#39;t want to check manually, try `bitbake -e boost | =
grep -e<br>
&gt;&gt; &quot;^PACKAGECONFIG=3D&quot;`<br>
&gt;&gt;<br>
&gt;&gt; DEPENDS contains only recipes (well, PROVIDES but PROVIDES has th=
e name<br>
&gt;&gt; of the recipe in it at all times) while RDEPENDS_* (usually ${PN}=
*) contains<br>
&gt;&gt; only packages.<br>
&gt;&gt;<br>
&gt;&gt; So you need to DEPENDS on boost, not boost-python. That should be=
 enough<br>
&gt;&gt; hopefully!<br>
&gt;&gt;<br>
&gt;&gt; Quentin<br>
&gt;<br>
&gt; <br>
<br>
<br>
<br>
-- <br>
Laurent Gauthier<br>
Phone: +33 630 483 429<br>
<a href=3D"http://soccasys.com" rel=3D"noreferrer" target=3D"_blank">http:=
//soccasys.com</a><br>
</blockquote></div></div></div>

--00000000000099e17405a110f9b9--
