Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B726AC77B61
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 15:16:39 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web10.22723.1682694990492653083
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 08:16:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Q4BVBogu;
 spf=pass (domain: gmail.com, ip: 209.85.128.51, mailfrom: martin.jansa@gmail.com)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-3f1e2555b5aso49186485e9.0
        for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 08:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682694989; x=1685286989;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xTDtww044JEbRdEJkDcngHQz/juV5bi0XrDdHIwJBMQ=;
        b=Q4BVBogugx6zeH2cSyXfmpDKzFYjZzw7M0qxAXS0ELFlxfbWA4gqhq8NzaWyviBaZC
         1wq85/yMWYkQzlr9R01IEkvf13ePo5tf1ht23MLAi4JtyKfeEN0NX5dRmvyEWsMo/aD9
         3PRouDulyr0Arl/dRpADXUz0oDOtxemMMUm6wHyH95rX6aWVY+VJWRgRsZAXlDI2nB4j
         GFdvYCYKslV2jf+eyxPn6Nddek9dlubOgkVD8Yqv07EShDrQj2qHlyTM8t/PdCg+yR4n
         sNZ9g/T7YYYEdUns1KEAidth6CNdaXpgQzK+4Y0kmDQeNk17/EaXX6/5FpjBwsKlMHrR
         ursQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682694989; x=1685286989;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xTDtww044JEbRdEJkDcngHQz/juV5bi0XrDdHIwJBMQ=;
        b=UZmBMjy7Ok3z7hmBwaMkx6bTJ8YFDatBUCcWMJcXaYyQ1y/rJsFT3rKLexErpoW54M
         1GTlGtSnj1gthIU09G3oVSml6fABb1J92RP1ZspmwQpTU3PgRBSTL+G139i7wIxoA52O
         NdCwEUxzSwS75SGE/pzHo6X+b4k70qUeSaYwClYrxl2y10Pm4HXJjsbhV/ynA/AqzOry
         4TiP+wc1RwROEE69LUCC0/byKw2Q2Rj05CbsJDGWJmJ+nycuIIyLFQBA0C44yNtuFAfw
         drfMdt5DhCgrLogKVq88GMRgamx/lCP+Le0EJpQSt1T8aARTLBamvHmpGbAeXrXV9qWG
         jmMA==
X-Gm-Message-State: AC+VfDyzNSTgA8m8p+29oBXzhWPi3S6y4Dok6gjPYm8TF5ofy5RKgo02
	iiGx8j/hGfa844AGO+AkRn4qCQCxQddbLVAqKoY=
X-Google-Smtp-Source: ACHHUZ5bFsJDFUYwcgiQcfL+ZyUSlnBwNUCYpxouYpj8os1606mAOYkoubQdoKuqgz0faC12atWtKDWdb068YqeCqg8=
X-Received: by 2002:adf:efc6:0:b0:2f6:a8dd:f088 with SMTP id
 i6-20020adfefc6000000b002f6a8ddf088mr3807673wrp.62.1682694988603; Fri, 28 Apr
 2023 08:16:28 -0700 (PDT)
MIME-Version: 1.0
References: <U9j3.1682694470277605351.STUE@lists.yoctoproject.org>
In-Reply-To: <U9j3.1682694470277605351.STUE@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 28 Apr 2023 17:16:17 +0200
Message-ID: <CA+chaQdY=HC1snGALnB67OZu1p2O9JBn=y74jYd3esYuS1YVXw@mail.gmail.com>
Subject: Re: [yocto] Autotools build failure #kirkstone #autotools
To: Electronic Consult <electronicconsult1@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000fa4eb05fa66f589"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 15:16:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59818

--0000000000000fa4eb05fa66f589
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> I added the directory common/m4

Did you clone common git repo or just created empty directory?

Most gstreamer recipes were fetching common submodule during do_configure
which doesn't work with new kirkstone which prevents network access from
tasks which shouldn't access it, so you need to add common repo to SRC_URI
and SRCREV_common + SRCREV_FORMAT.

Regards,

On Fri, Apr 28, 2023 at 5:07=E2=80=AFPM Electronic Consult <
electronicconsult1@gmail.com> wrote:

> Hello all,
>
> I'm moving my build from Dunfell to Kirkstone & an issue with
> gstreamer1.0-plugins-hantro
> <https://github.com/linux4sam/meta-atmel/tree/kirkstone/recipes-multimedi=
a/gstreamer1.0-plugins>
> has cropped up. This recipe inherits autotools-brokensep.
>
> During the build I initially got:
>
> autoreconf: running: aclocal
> --system-acdir=3D/media/owen/yocto/meritechYocto/poky/build-microchip/tmp=
/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugins-hantr=
o/1.8-r0/recipe-sysroot/usr/share/aclocal/
> --automake-acdir=3D/media/owen/yocto/meritechYocto/poky/build-microchip/t=
mp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugins-han=
tro/1.8-r0/recipe-sysroot-native/usr/share/aclocal-1.16
> -I
> /media/owen/yocto/meritechYocto/poky/build-microchip/tmp/work/cortexa5t2h=
f-neon-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.8-r0/git/m4/
> -I
> /media/owen/yocto/meritechYocto/poky/build-microchip/tmp/work/cortexa5t2h=
f-neon-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.8-r0/recipe-s=
ysroot-native/usr/share/aclocal/
> --force -I m4 -I common/m4
> NOTE: elfutils-0.186-r0 do_package_write_ipk: libc6-dbg rprovides
> glibc-dbg, not replacing the latter
> NOTE: elfutils-0.186-r0 do_package_write_ipk: libgcc-s-dbg rprovides
> libgcc-dbg, not replacing the latter
> NOTE: elfutils-0.186-r0 do_package_write_ipk: libz-dbg rprovides zlib-dbg=
,
> not replacing the latter
> *aclocal: error: couldn't open directory 'common/m4': No such file or
> directory*
> autoreconf: error: aclocal failed with exit status: 1
> ERROR: gstreamer1.0-plugins-hantro-1.8-r0 do_configure: autoreconf
> execution failed.
> WARNING: exit code 1 from a shell command.
>
> I added the directory common/m4 & on the next run I get:
>
> autoreconf: running:
> /media/owen/yocto/meritechYocto/poky/build-microchip/tmp/work/cortexa5t2h=
f-neon-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.8-r0/recipe-s=
ysroot-native/usr/bin/autoconf
> --include=3D/media/owen/yocto/meritechYocto/poky/build-microchip/tmp/work=
/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.8=
-r0/git/m4/
> --include=3D/media/owen/yocto/meritechYocto/poky/build-microchip/tmp/work=
/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.8=
-r0/recipe-sysroot-native/usr/share/aclocal/
> --force
> configure.ac:16: error: possibly undefined macro: AS_VERSION
>       If this token and others are legitimate, please use m4_pattern_allo=
w.
>       See the Autoconf documentation.
> configure.ac:19: error: possibly undefined macro: AS_NANO
> configure.ac:46: error: possibly undefined macro: AS_LIBTOOL
> configure.ac:55: error: possibly undefined macro: AS_AUTOTOOLS_ALTERNATE
> configure.ac:127: error: possibly undefined macro: AS_PATH_PYTHON
> configure.ac:154: error: possibly undefined macro: PKG_CHECK_MODULES
> autoreconf: error:
> /media/owen/yocto/meritechYocto/poky/build-microchip/tmp/work/cortexa5t2h=
f-neon-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.8-r0/recipe-s=
ysroot-native/usr/bin/autoconf
> failed with exit status: 1
> ERROR: gstreamer1.0-plugins-hantro-1.8-r0 do_configure: autoreconf
> execution failed.
> WARNING: exit code 1 from a shell command.
> + die autoreconf execution failed.
> + bbfatal_log autoreconf execution failed.
> + [ -p
> /media/owen/yocto/meritechYocto/poky/build-microchip/tmp/work/cortexa5t2h=
f-neon-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.8-r0/temp/fif=
o.20217
> ]
> + printf %b\0 bbfatal_log autoreconf execution failed.
> + exit 1
> + bb_sh_exit_handler
> + ret=3D1
> + [ 1 !=3D 0 ]
> + echo WARNING: exit code 1 from a shell command.
> + exit 1
> ERROR: gstreamer1.0-plugins-hantro-1.8-r0 do_configure:
> ExecutionError('/media/owen/yocto/meritechYocto/poky/build-microchip/tmp/=
work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugins-hantro=
/1.8-r0/temp/run.do_configure.20217',
> 1, None, None)
> ERROR: Logfile of failure stored in:
> /media/owen/yocto/meritechYocto/poky/build-microchip/tmp/work/cortexa5t2h=
f-neon-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.8-r0/temp/log=
.do_configure.20217
> ERROR: Task
> (/media/owen/yocto/meritechYocto/poky/../meta-atmel/recipes-multimedia/gs=
treamer1.0-plugins/gstreamer1.0-plugins-hantro_1.8.bb:do_configure)
> failed with exit code '1'
>
> I suspect there is something not properly configured in autotools & some
> change has occured from Dunfell -> Kirkstone. Can anyone provide any
> pointers please?
>
> My build configuration is below.
>
> Regards,
>
> Owen
>
>
> Build Configuration:
> BB_VERSION           =3D "2.0.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal"
> TARGET_SYS           =3D "arm-poky-linux-gnueabi"
> MACHINE              =3D "sama5d4-trinity-sd"
> DISTRO               =3D "poky-atmel"
> DISTRO_VERSION       =3D "4.0.9"
> TUNE_FEATURES        =3D "arm vfp cortexa5 neon vfpv4 thumb
> callconvention-hard"
> TARGET_FPU           =3D "hard"
> meta
> meta-poky
> meta-yocto-bsp       =3D "kirkstone:4cc0e9438b450b43749730e128b6b9adb30f9=
663"
> meta-oe
> meta-networking
> meta-webserver
> meta-python
> meta-initramfs       =3D "kirkstone:571e36e20e9d1f27af0eb4545291beeb64f28=
0e2"
> meta-atmel           =3D "kirkstone:cf920cc40b4ff61dfc33410605bc8f94ab9b8=
8dd"
> meta-multimedia      =3D "kirkstone:571e36e20e9d1f27af0eb4545291beeb64f28=
0e2"
> meta-arm
> meta-arm-toolchain   =3D "kirkstone:96aad3b29aa7a5ee4df5cf617a6336e5218fa=
9bd"
> meta-swupdate        =3D "master:4b99b93b4225723cf9ff3a29abb4bd7811ce071c=
"
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59817):
> https://lists.yoctoproject.org/g/yocto/message/59817
> Mute This Topic: https://lists.yoctoproject.org/mt/98560560/3617156
> Mute #kirkstone:
> https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkstone
> Mute #autotools:
> https://lists.yoctoproject.org/g/yocto/mutehashtag/autotools
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000000fa4eb05fa66f589
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt; I added the directory common/m4<div><br></div><div>Di=
d you clone common git repo or just created empty directory?</div><div><br>=
</div><div>Most gstreamer recipes were fetching common submodule during do_=
configure which doesn&#39;t work with new kirkstone which prevents network =
access from tasks which shouldn&#39;t access it, so you need to add common =
repo to SRC_URI and SRCREV_common=C2=A0+ SRCREV_FORMAT.</div><div><br></div=
><div>Regards,</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Fri, Apr 28, 2023 at 5:07=E2=80=AFPM Electronic Cons=
ult &lt;<a href=3D"mailto:electronicconsult1@gmail.com">electronicconsult1@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Hello all,<br><br>I&#39;m moving my build from Dunfell to Kirkst=
one &amp; an issue with <a href=3D"https://github.com/linux4sam/meta-atmel/=
tree/kirkstone/recipes-multimedia/gstreamer1.0-plugins" rel=3D"noopener" ta=
rget=3D"_blank">gstreamer1.0-plugins-hantro</a> has cropped up. This recipe=
 inherits autotools-brokensep.<br><br>During the build I initially got:<br>=
<br>autoreconf: running: aclocal --system-acdir=3D/media/owen/yocto/meritec=
hYocto/poky/build-microchip/tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnu=
eabi/gstreamer1.0-plugins-hantro/1.8-r0/recipe-sysroot/usr/share/aclocal/ -=
-automake-acdir=3D/media/owen/yocto/meritechYocto/poky/build-microchip/tmp/=
work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugins-hantro=
/1.8-r0/recipe-sysroot-native/usr/share/aclocal-1.16 -I /media/owen/yocto/m=
eritechYocto/poky/build-microchip/tmp/work/cortexa5t2hf-neon-vfpv4-poky-lin=
ux-gnueabi/gstreamer1.0-plugins-hantro/1.8-r0/git/m4/ -I /media/owen/yocto/=
meritechYocto/poky/build-microchip/tmp/work/cortexa5t2hf-neon-vfpv4-poky-li=
nux-gnueabi/gstreamer1.0-plugins-hantro/1.8-r0/recipe-sysroot-native/usr/sh=
are/aclocal/ --force -I m4 -I common/m4<br>NOTE: elfutils-0.186-r0 do_packa=
ge_write_ipk: libc6-dbg rprovides glibc-dbg, not replacing the latter<br>NO=
TE: elfutils-0.186-r0 do_package_write_ipk: libgcc-s-dbg rprovides libgcc-d=
bg, not replacing the latter<br>NOTE: elfutils-0.186-r0 do_package_write_ip=
k: libz-dbg rprovides zlib-dbg, not replacing the latter<br><strong>aclocal=
: error: couldn&#39;t open directory &#39;common/m4&#39;: No such file or d=
irectory</strong><br>autoreconf: error: aclocal failed with exit status: 1<=
br>ERROR: gstreamer1.0-plugins-hantro-1.8-r0 do_configure: autoreconf execu=
tion failed.<br>WARNING: exit code 1 from a shell command.<br><br>I added t=
he directory common/m4 &amp; on the next run I get:<br><br>autoreconf: runn=
ing: /media/owen/yocto/meritechYocto/poky/build-microchip/tmp/work/cortexa5=
t2hf-neon-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.8-r0/recip=
e-sysroot-native/usr/bin/autoconf --include=3D/media/owen/yocto/meritechYoc=
to/poky/build-microchip/tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi=
/gstreamer1.0-plugins-hantro/1.8-r0/git/m4/ --include=3D/media/owen/yocto/m=
eritechYocto/poky/build-microchip/tmp/work/cortexa5t2hf-neon-vfpv4-poky-lin=
ux-gnueabi/gstreamer1.0-plugins-hantro/1.8-r0/recipe-sysroot-native/usr/sha=
re/aclocal/ --force<br><a href=3D"http://configure.ac:16" target=3D"_blank"=
>configure.ac:16</a>: error: possibly undefined macro: AS_VERSION<br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 If this token and others are legitimate, please us=
e m4_pattern_allow.<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 See the Autoconf docu=
mentation.<br><a href=3D"http://configure.ac:19" target=3D"_blank">configur=
e.ac:19</a>: error: possibly undefined macro: AS_NANO<br><a href=3D"http://=
configure.ac:46" target=3D"_blank">configure.ac:46</a>: error: possibly und=
efined macro: AS_LIBTOOL<br><a href=3D"http://configure.ac:55" target=3D"_b=
lank">configure.ac:55</a>: error: possibly undefined macro: AS_AUTOTOOLS_AL=
TERNATE<br><a href=3D"http://configure.ac:127" target=3D"_blank">configure.=
ac:127</a>: error: possibly undefined macro: AS_PATH_PYTHON<br><a href=3D"h=
ttp://configure.ac:154" target=3D"_blank">configure.ac:154</a>: error: poss=
ibly undefined macro: PKG_CHECK_MODULES<br>autoreconf: error: /media/owen/y=
octo/meritechYocto/poky/build-microchip/tmp/work/cortexa5t2hf-neon-vfpv4-po=
ky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.8-r0/recipe-sysroot-native/u=
sr/bin/autoconf failed with exit status: 1<br>ERROR: gstreamer1.0-plugins-h=
antro-1.8-r0 do_configure: autoreconf execution failed.<br>WARNING: exit co=
de 1 from a shell command.<br>+ die autoreconf execution failed.<br>+ bbfat=
al_log autoreconf execution failed.<br>+ [ -p /media/owen/yocto/meritechYoc=
to/poky/build-microchip/tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi=
/gstreamer1.0-plugins-hantro/1.8-r0/temp/fifo.20217 ]<br>+ printf %b\0 bbfa=
tal_log autoreconf execution failed.<br>+ exit 1<br>+ bb_sh_exit_handler<br=
>+ ret=3D1<br>+ [ 1 !=3D 0 ]<br>+ echo WARNING: exit code 1 from a shell co=
mmand.<br>+ exit 1<br>ERROR: gstreamer1.0-plugins-hantro-1.8-r0 do_configur=
e: ExecutionError(&#39;/media/owen/yocto/meritechYocto/poky/build-microchip=
/tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugins-h=
antro/1.8-r0/temp/run.do_configure.20217&#39;, 1, None, None)<br>ERROR: Log=
file of failure stored in: /media/owen/yocto/meritechYocto/poky/build-micro=
chip/tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/gstreamer1.0-plugi=
ns-hantro/1.8-r0/temp/log.do_configure.20217<br>ERROR: Task (/media/owen/yo=
cto/meritechYocto/poky/../meta-atmel/recipes-multimedia/gstreamer1.0-plugin=
s/gstreamer1.0-plugins-hantro_1.8.bb:do_configure) failed with exit code &#=
39;1&#39;<br><br>I suspect there is something not properly configured in au=
totools &amp; some change has occured from Dunfell -&gt; Kirkstone. Can any=
one provide any pointers please?<br><br>My build configuration is below.<br=
><br>Regards,<br><br>Owen<br><br><br>Build Configuration:<br>BB_VERSION=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;2.0.0&q=
uot;<br>BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D &quot;universal&quot;<br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm-poky-linux-gnueabi&qu=
ot;<br>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D &quot;sama5d4-trinity-sd&quot;<br>DISTRO=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D &quot;poky-atmel&quot;<br>DISTRO_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &quot;4.0.9&quot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D &quot;arm vfp cortexa5 neon vfpv4 thumb callconvention-har=
d&quot;<br>TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &quot;hard&quot;<br>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0<br>meta-poky=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0<br>meta-yo=
cto-bsp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;kirkstone:4cc0e9438b4=
50b43749730e128b6b9adb30f9663&quot;<br>meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0<br>meta-networking=C2=
=A0=C2=A0=C2=A0=C2=A0 =C2=A0<br>meta-webserver=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =C2=A0<br>meta-python=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=C2=A0<br>meta-initramfs=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;kirk=
stone:571e36e20e9d1f27af0eb4545291beeb64f280e2&quot;<br>meta-atmel=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;kirkstone:cf9=
20cc40b4ff61dfc33410605bc8f94ab9b88dd&quot;<br>meta-multimedia=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D &quot;kirkstone:571e36e20e9d1f27af0eb4545291beeb64f2=
80e2&quot;<br>meta-arm=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =C2=A0<br>meta-arm-toolchain=C2=A0=C2=A0 =3D &quot;kirkston=
e:96aad3b29aa7a5ee4df5cf617a6336e5218fa9bd&quot;<br>meta-swupdate=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;master:4b99b93b4225723cf9ff3a29=
abb4bd7811ce071c&quot;
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59817): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59817" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59817</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/98560560/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/98560560/3617156</a><br>
Mute #kirkstone:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehasht=
ag/kirkstone" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproje=
ct.org/g/yocto/mutehashtag/kirkstone</a><br>
Mute #autotools:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehasht=
ag/autotools" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproje=
ct.org/g/yocto/mutehashtag/autotools</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000000fa4eb05fa66f589--

