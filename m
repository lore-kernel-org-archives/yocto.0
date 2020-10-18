Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
 by mx.groups.io with SMTP id smtpd.web11.14911.1603001929125065836
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 23:18:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=I9LnbiPk;
 spf=pass (domain: gmail.com, ip: 209.85.217.49, mailfrom: nikhilvp29@gmail.com)
Received: by mail-vs1-f49.google.com with SMTP id d19so3870547vso.10;
        Sat, 17 Oct 2020 23:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fgB1RtHrZqVJ61OY/jhIqgttWuAU7tW2L70JjsFcDQY=;
        b=I9LnbiPkO7d28iwPTWen98ZOLJgrfWGa2Fg2lmhyln1JVawFRD5sHVGDDaq009rU88
         ippgrqAMNse5dumFJfB6/8p1tePz20esVX00Or3QrzGlagqXSM0bIsvaD0j+KQid+9aW
         5cA2G8Iem4WnLfbLxh3oWNZIzqvOsVt0nnsO6rU/yLakPV0GMGcf3i0EskiKDMO7TyQO
         mA4rIYldV5dRagppc7GP2STffpTr9FHC0tAEw9umcEBaTQHw7per0uZ4Jo70ZOpVQ/9y
         JnvvztWnkrfju8yQ/3ZxHRWcx4BWAP1cQeIgUGajKwQAv2cOEHGtljm92PLQmH0SWd1A
         g3nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fgB1RtHrZqVJ61OY/jhIqgttWuAU7tW2L70JjsFcDQY=;
        b=ANEevJVSNy5Yf5DqEdaikHMr4+/VAViXEXMwJHayrOlYYu8kS4ECXmNAysUSRYQz0Z
         fXyH/iXa1ZpBwvz/OPAcD34OjZADlxahdzf1nTx0fveOmaCbaCaEZge21SzFwtx/7iA2
         0wVuCbU2f/ho0AQNJTFjyAwUQZRuSwyDXGtWMsLxvjEEhcZP7Onl8uh8V9wEi8AFZa7F
         MmM9Z6J74otwZbyX7VIu+ETkdpd4uyAi2sHCMUlxY1w6GQ1dOejpK0nrE+bQk+4sayL9
         u9E6j2/hcVuu/bn9BpAEoX/5KLZTOTDtLCkBFtlzuZBNs5ZdWOgJKSo9iKGWZEfPQp8n
         lPAQ==
X-Gm-Message-State: AOAM5303gdF659dcTRB83hjRIC39IOpM94tpenGZccEPsnl+lLCKMIf3
	8mClCr0rboVkBmsnb6jPteQn0sPhL0Ea24007bw=
X-Google-Smtp-Source: ABdhPJzENVuBQ5E5FRSYmbf9j6pHkRgV97qoqJRgr/XQoJAMX9YBaazjogg++9In84cqnSPwNkmCE9029EAbv+IGejs=
X-Received: by 2002:a67:c11d:: with SMTP id d29mr5364582vsj.23.1603001928150;
 Sat, 17 Oct 2020 23:18:48 -0700 (PDT)
MIME-Version: 1.0
References: <163EBFF88F24F1D5.13652@lists.yoctoproject.org>
In-Reply-To: <163EBFF88F24F1D5.13652@lists.yoctoproject.org>
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Sun, 18 Oct 2020 11:48:36 +0530
Message-ID: <CAJw=dJ8=oxhUA0rRWkH+04Qu0mm8ewExUG+xd0hLki5ij1xfNQ@mail.gmail.com>
Subject: Re: [yocto] do_fetch error while compiling code
To: Nikhil Patil <nikhilvp29@gmail.com>
Cc: yocto+help@lists.yoctoproject.org, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008072f005b1ebf8c1"

--0000000000008072f005b1ebf8c1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hi ,
    We totally stuck here , if anyone knows please let us know.

On Sat, Oct 17, 2020 at 3:43 PM NIKHIL PATIL via lists.yoctoproject.org
<nikhilvp29=3Dgmail.com@lists.yoctoproject.org> wrote:

> Hi Team ,
>       We are compiling a source code in yocto . but while comiping we ar=
e
> getting following error . we are not able to find solution for these .
>
> ERROR: Task
> (/data/pradeep/inti_dmsv/yocto_build/meta/recipes-multimedia/libsndfile/=
libsndfile1_1.0.28.bb:do_fetch)
> failed with exit code '1'
> ERROR: libxcursor-1_1.1.15-r0 do_fetch: Fetcher failure: Fetch command
> export PSEUDO_DISABLED=3D1; export
> PATH=3D"/data/pradeep/inti_dmsv/yocto_build/build/tmp/sysroots-uninative=
/x86_64-linux/usr/bin:/data/pradeep/inti_dmsv/yocto_build/scripts:/data/pra=
deep/inti_dmsv/yocto_build/build/tmp/work/corei7-64-poky-linux/libxcursor/1=
_1.1.15-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux:/data/pradeep/in=
ti_dmsv/yocto_build/build/tmp/work/corei7-64-poky-linux/libxcursor/1_1.1.15=
-r0/recipe-sysroot/usr/bin/crossscripts:/data/pradeep/inti_dmsv/yocto_build=
/build/tmp/work/corei7-64-poky-linux/libxcursor/1_1.1.15-r0/recipe-sysroot-=
native/usr/sbin:/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/corei7-6=
4-poky-linux/libxcursor/1_1.1.15-r0/recipe-sysroot-native/usr/bin:/data/pra=
deep/inti_dmsv/yocto_build/build/tmp/work/corei7-64-poky-linux/libxcursor/1=
_1.1.15-r0/recipe-sysroot-native/sbin:/data/pradeep/inti_dmsv/yocto_build/b=
uild/tmp/work/corei7-64-poky-linux/libxcursor/1_1.1.15-r0/recipe-sysroot-na=
tive/bin:/data/pradeep/inti_dmsv/yocto_build/bitbake/bin:/data/pradeep/inti=
_dmsv/yocto_build/build/tmp/hosttools";
> export HOME=3D"/home/pradeep"; /usr/bin/env wget -t 2 -T 30 --passive-ft=
p
> --no-check-certificate -P
> /data/pradeep/inti_dmsv/yocto_build/build/downloads '
> http://xorg.freedesktop.org/releases/individual/lib/libXcursor-1.1.15.ta=
r.bz2'
> --progress=3Ddot -v failed with exit code 4, output:
> --2020-10-17 09:20:20--
> http://xorg.freedesktop.org/releases/individual/lib/libXcursor-1.1.15.ta=
r.bz2
> Resolving xorg.freedesktop.org (xorg.freedesktop.org)... 131.252.210.176=
,
> 2610:10:20:722:a800:ff:feda:470f
> Connecting to xorg.freedesktop.org (xorg.freedesktop.org)|131.252.210.17=
6|:80...
> connected.
> HTTP request sent, awaiting response... Read error (Connection timed out=
)
> in headers.
> Retrying.
>
> --2020-10-17 09:20:52--  (try: 2)
> http://xorg.freedesktop.org/releases/individual/lib/libXcursor-1.1.15.ta=
r.bz2
> Connecting to xorg.freedesktop.org (xorg.freedesktop.org)|131.252.210.17=
6|:80...
> connected.
> HTTP request sent, awaiting response... Read error (Connection timed out=
)
> in headers.
> Giving up.
>
> ERROR: libxcursor-1_1.1.15-r0 do_fetch: Fetcher failure for URL: '
> http://xorg.freedesktop.org/releases/individual/lib/libXcursor-1.1.15.ta=
r.bz2'.
> Unable to fetch URL from any source.
> ERROR: libxcursor-1_1.1.15-r0 do_fetch: Function failed: base_do_fetch
> ERROR: Logfile of failure stored in:
> /data/pradeep/inti_dmsv/yocto_build/build/tmp/work/corei7-64-poky-linux/=
libxcursor/1_1.1.15-r0/temp/log.do_fetch.19859
> ERROR: Task
> (/data/pradeep/inti_dmsv/yocto_build/meta/recipes-graphics/xorg-lib/libx=
cursor_1.1.15.bb:do_fetch)
> failed with exit code '1'
>
>
> *what will be the solution for these ?*
>
>=20
>
>

--0000000000008072f005b1ebf8c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">hi ,<div>=C2=A0 =C2=A0 We totally stuck here , if anyone k=
nows please let us know.</div></div><br><div class=3D"gmail_quote"><div dir=
=
=3D"ltr" class=3D"gmail_attr">On Sat, Oct 17, 2020 at 3:43 PM NIKHIL PATIL=
 via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &=
lt;nikhilvp29=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.c=
om@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr">Hi Team ,<div>=C2=A0 =C2=A0 =C2=
=A0 We are compiling a source code in yocto . but while comiping=C2=A0we a=
re getting following error . we are not able to find solution for these .=
=C2=A0</div><div><br></div><div>ERROR: Task (/data/pradeep/inti_dmsv/yocto=
_build/meta/recipes-multimedia/libsndfile/libsndfile1_1.0.28.bb:do_fetch) f=
ailed with exit code &#39;1&#39;<br>ERROR: libxcursor-1_1.1.15-r0 do_fetch:=
 Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export PATH=3D&=
quot;/data/pradeep/inti_dmsv/yocto_build/build/tmp/sysroots-uninative/x86_6=
4-linux/usr/bin:/data/pradeep/inti_dmsv/yocto_build/scripts:/data/pradeep/i=
nti_dmsv/yocto_build/build/tmp/work/corei7-64-poky-linux/libxcursor/1_1.1.1=
5-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux:/data/pradeep/inti_dms=
v/yocto_build/build/tmp/work/corei7-64-poky-linux/libxcursor/1_1.1.15-r0/re=
cipe-sysroot/usr/bin/crossscripts:/data/pradeep/inti_dmsv/yocto_build/build=
/tmp/work/corei7-64-poky-linux/libxcursor/1_1.1.15-r0/recipe-sysroot-native=
/usr/sbin:/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/corei7-64-poky=
-linux/libxcursor/1_1.1.15-r0/recipe-sysroot-native/usr/bin:/data/pradeep/i=
nti_dmsv/yocto_build/build/tmp/work/corei7-64-poky-linux/libxcursor/1_1.1.1=
5-r0/recipe-sysroot-native/sbin:/data/pradeep/inti_dmsv/yocto_build/build/t=
mp/work/corei7-64-poky-linux/libxcursor/1_1.1.15-r0/recipe-sysroot-native/b=
in:/data/pradeep/inti_dmsv/yocto_build/bitbake/bin:/data/pradeep/inti_dmsv/=
yocto_build/build/tmp/hosttools&quot;; export HOME=3D&quot;/home/pradeep&qu=
ot;; /usr/bin/env wget -t 2 -T 30 --passive-ftp --no-check-certificate -P /=
data/pradeep/inti_dmsv/yocto_build/build/downloads &#39;<a href=3D"http://x=
org.freedesktop.org/releases/individual/lib/libXcursor-1.1.15.tar.bz2" targ=
et=3D"_blank">http://xorg.freedesktop.org/releases/individual/lib/libXcurso=
r-1.1.15.tar.bz2</a>&#39; --progress=3Ddot -v failed with exit code 4, outp=
ut:<br>--2020-10-17 09:20:20-- =C2=A0<a href=3D"http://xorg.freedesktop.org=
/releases/individual/lib/libXcursor-1.1.15.tar.bz2" target=3D"_blank">http:=
//xorg.freedesktop.org/releases/individual/lib/libXcursor-1.1.15.tar.bz2</a=
><br>Resolving <a href=3D"http://xorg.freedesktop.org" target=3D"_blank">xo=
rg.freedesktop.org</a> (<a href=3D"http://xorg.freedesktop.org" target=3D"_=
blank">xorg.freedesktop.org</a>)... 131.252.210.176, 2610:10:20:722:a800:ff=
:feda:470f<br>Connecting to <a href=3D"http://xorg.freedesktop.org" target=
=3D"_blank">xorg.freedesktop.org</a> (<a href=3D"http://xorg.freedesktop.o=
rg" target=3D"_blank">xorg.freedesktop.org</a>)|131.252.210.176|:80... conn=
ected.<br>HTTP request sent, awaiting response... Read error (Connection ti=
med out) in headers.<br>Retrying.<br><br>--2020-10-17 09:20:52-- =C2=A0(try=
: 2) =C2=A0<a href=3D"http://xorg.freedesktop.org/releases/individual/lib/l=
ibXcursor-1.1.15.tar.bz2" target=3D"_blank">http://xorg.freedesktop.org/rel=
eases/individual/lib/libXcursor-1.1.15.tar.bz2</a><br>Connecting to <a href=
=
=3D"http://xorg.freedesktop.org" target=3D"_blank">xorg.freedesktop.org</a=
> (<a href=3D"http://xorg.freedesktop.org" target=3D"_blank">xorg.freedeskt=
op.org</a>)|131.252.210.176|:80... connected.<br>HTTP request sent, awaitin=
g response... Read error (Connection timed out) in headers.<br>Giving up.</=
div><div><br></div><div>ERROR: libxcursor-1_1.1.15-r0 do_fetch: Fetcher fai=
lure for URL: &#39;<a href=3D"http://xorg.freedesktop.org/releases/individu=
al/lib/libXcursor-1.1.15.tar.bz2" target=3D"_blank">http://xorg.freedesktop=
.org/releases/individual/lib/libXcursor-1.1.15.tar.bz2</a>&#39;. Unable to =
fetch URL from any source.<br>ERROR: libxcursor-1_1.1.15-r0 do_fetch: Funct=
ion failed: base_do_fetch<br>ERROR: Logfile of failure stored in: /data/pra=
deep/inti_dmsv/yocto_build/build/tmp/work/corei7-64-poky-linux/libxcursor/1=
_1.1.15-r0/temp/log.do_fetch.19859<br>ERROR: Task (/data/pradeep/inti_dmsv/=
yocto_build/meta/recipes-graphics/xorg-lib/libxcursor_1.1.15.bb:do_fetch) f=
ailed with exit code &#39;1&#39;<br><br>=C2=A0 =C2=A0 =C2=A0<br></div><div>=
<b>what will be the solution for these ?</b></div></div>
<br>
<br>
<br>
</blockquote></div>

--0000000000008072f005b1ebf8c1--
