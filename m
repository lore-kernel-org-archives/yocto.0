Return-Path: <bongini.simone@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 302D2CCD185
	for <webhook@archiver.kernel.org>; Wed, 15 Oct 2025 15:24:04 +0000 (UTC)
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
 by mx.groups.io with SMTP id smtpd.web10.20172.1760541843265065860
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Oct 2025 08:24:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nTPZEM29;
 spf=pass (domain: gmail.com, ip: 209.85.160.50, mailfrom: bongini.simone@gmail.com)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-3c9660aaa13so296918fac.1
        for <yocto@lists.yoctoproject.org>; Wed, 15 Oct 2025 08:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760541842; x=1761146642; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QVSY8vwx+oQw84SARC1ghNp3oDgiRWoZtaXqWBEVhFQ=;
        b=nTPZEM29wGZSTxImZ9q1ZEW94LtbYZLaN2l++D0EyitLW1SgbPJShIauAVJS+wooLg
         g4jHqUqPPylApJbTbgTFsqoeoE4HzIKXO74AMLqaSX9i27zrV6R1rBewcV95DDD/N3Rk
         QBmcVEvID/5rnnGMRT9ROTLw8dOb3UYdGeFRfLQVKEKq0RlGpgJTpw+b2mnKd8PP8Slw
         XIJtwcBfEvXf4onniypnrJYaGgsWBnoULuEnyMr1fGDtPtjSF5OsfT+EYwSoR6tl54Xh
         0g5yEy/Tel3lsYcVktO9ScvG/SXhakAtk/TSkegYfZ2CN0uxpXR5OvMFvtE4Z9/3OOfR
         5+kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760541842; x=1761146642;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QVSY8vwx+oQw84SARC1ghNp3oDgiRWoZtaXqWBEVhFQ=;
        b=Gm8OGuR5dZYKZpItHGWMq9PJrQBq+9EBUsdBc9hjjvFIP0h5OEmDV/vBU4ln8RGf4f
         6h/bcVYPMZ76/sK5kOJc1OwOr4d/+QutZHhg1xc9SRKplP/f0YekuxDqVvAIzC1Iw5Rp
         /r7Umto7OH3C6RBiNr3v4eRWol2TjSee59S2/eeiMJPTfxwOf7rDB42LfOazBh+ONiGP
         05mKHr+73uZEOyjRsAD86DZKIXpzgy/3HOaZGIMEdvOZ2QWdXlZ+mXeXli0ryXwdRwHj
         uklagNeUOns8H8InZRc5QTugfYNEpQoOoOKkULeXGlsFC2v/Hv53bsuWq0kjuRbR07nt
         LrjA==
X-Gm-Message-State: AOJu0YyEw0D2vmqMKl0lzyaSbNrZ79nzXMFA36ZgCGn219S+D5CSv0iH
	H1hr3xh1nafryUioklWeGEqr39U059GYgdagDB0sxWXQ9BZwPDjWJ7ya25tyEOCXpQo+bqDcOnQ
	k0adev88jVcRz3Yt5mP0jhMruwN+k+wk=
X-Gm-Gg: ASbGnctVYbfXnWTEl/8SryE7VHyuBh/H/7DyL3sbaCuY3qwNybkYEW7///I/zcTO36L
	Vre0AYaSo/h+8LZY1b/p8eQUeXcvZh1QDlidX634sfFmnqA4I/MieIU0h9lxlyoFfg6uea7dlKb
	RvGH+8lQSTKV+OLQZIXTQBeD8i1Ijuh11wZeW1nIVSZAbLn3AbttZeoG5/e7RWI+EgGgmlxkTG2
	wv0kZQaQ7dyP0UWw/PJzrbWwYng
X-Google-Smtp-Source: AGHT+IFRMdJQE91/vCp5KsEvqHv2thn+juQJlMGtIbzqa4IbG19C3gc8IVtIzGtNiVZvGU3sb5NiXECADajRGpIPouU=
X-Received: by 2002:a05:6870:e241:b0:342:6d27:2dc with SMTP id
 586e51a60fabf-3c0faa58b36mr11443159fac.48.1760541841977; Wed, 15 Oct 2025
 08:24:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAHdr16oXZoe5fVbvqRvv5Q3SOTodRfMKKdRrR0uY6dZTN7xTQA@mail.gmail.com>
 <b3332a61-b4a9-44dc-a1dc-84543f45192a@gmail.com> <CAHdr16qK++o8tZpYrUQkTb_hSzpX4HfYOD7ijSoPQrpEppo40Q@mail.gmail.com>
 <35e0d767-7f83-4084-b0d7-d716a8c3e92c@gmail.com>
In-Reply-To: <35e0d767-7f83-4084-b0d7-d716a8c3e92c@gmail.com>
From: simone bongini <bongini.simone@gmail.com>
Date: Wed, 15 Oct 2025 17:23:50 +0200
X-Gm-Features: AS18NWBlAuAE43JAZWVdT3-PMaAy3GnO7HENOpvF39Pui_c4HNvCGOQZIX0tw6E
Message-ID: <CAHdr16o4TvLxkD20O19P0xw3hMz7w_Anj7mR0dioMSJXxO6zxw@mail.gmail.com>
Subject: Re: [yocto] [Scarthgap] "ModuleNotFoundError: No module named 'imp'"
To: Gyorgy Sarvari <skandigraun@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000001a75a906413417e2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Oct 2025 15:24:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65937

--0000000000001a75a906413417e2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello!
It is meta-atmel that force SWIG to 3.0.8.....

meta-atmel/conf/distro/poky-atmel.conf at scarthgap =C2=B7 linux4sam/meta-a=
tmel
<https://github.com/linux4sam/meta-atmel/blob/scarthgap/conf/distro/poky-at=
mel.conf>




Il giorno mer 15 ott 2025 alle ore 11:46 Gyorgy Sarvari <
skandigraun@gmail.com> ha scritto:

> On 10/15/25 11:20, simone bongini wrote:
> > Hello,
> > I'm not able to find log.do_configure from libdnf-native, but....
> >
>
> You can recreate is with "bitbake -c configure libdnf-native"
>
> > From the generated error.py of libdnf file I can read
> >
> > # This file was automatically generated by SWIG (http://www.swig.org).
> > # Version 3.0.8
> > #
> > # Do not make changes to this file unless you know what you are
> > doing--modify
> > # the SWIG interface file instead.
> >
> > Indeed I got that the proper version is the 4.2.1, but seems generated
> > from 3.0.8 version
> >
>
> I guess the question is, where does this version come from.
>
> Do you have swig installed on the build host? If yes, which version? I'm
> just curious is maybe somehow cmake breaks out of the build environment,
> and uses a wrong swig... (I just did a test in docker with swig
> installed, and it used the correct version. But that doesn't mean that
> it's impossible.)
> Also, do you happen to have any bbappend or similar modifications for
> either the swig of libdnf recipes?
>
>
> >
> > Il giorno mer 15 ott 2025 alle ore 09:56 Gyorgy Sarvari
> > <skandigraun@gmail.com> ha scritto:
> >
> >     On 10/14/25 12:43, simone bongini via lists.yoctoproject.org
> >     <http://lists.yoctoproject.org> wrote:
> >     > Hello All
> >     > i'm trying to build an image based on scarthgap.
> >     > I'm facing
> >     >
> >     > ERROR: our-image-initramfs-1.0-r0 do_rootfs: Could not invoke dnf=
.
> >     > Command
> >     >
> >
>  '/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27=
-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/bin/d=
nf
> >     > -v --rpmverbosity=3Dinfo -y -c
> >     >
> >
>  /home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-=
poky-linux-gnueabi/our-image-initramfs/1.0/rootfs/etc/dnf/dnf.conf
> >     >
> >
>  --setopt=3Dreposdir=3D/home/devlinux/BOARD.1/scarthgap/board-bsp/build-s=
d96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/rootfs/etc=
/yum.repos.d
> >     >
> >
>  --installroot=3D/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tm=
p/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/rootfs
> >     >
> >
>  --setopt=3Dlogdir=3D/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd9=
6/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/temp
> >     >
> >
>  --repofrompath=3Doe-repo,/home/devlinux/board.1/scarthgap/board-bsp/buil=
d-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/oe-root=
fs-repo
> >     > makecache --refresh' returned 1:
> >     > Traceback (most recent call last):
> >     >   File
> >     >
> >
>  "/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27=
-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/bin/d=
nf.real",
> >     > line 61, in <module>
> >     >     from dnf.cli import main
> >     >   File
> >     >
> >
>  "/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27=
-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/lib/p=
ython3.12/site-packages/dnf/__init__.py",
> >     > line 30, in <module>
> >     >     import dnf.base
> >     >   File
> >     >
> >
>  "/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27=
-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/lib/p=
ython3.12/site-packages/dnf/base.py",
> >     > line 29, in <module>
> >     >     import libdnf.transaction
> >     >   File
> >     >
> >
>  "/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27=
-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/lib/p=
ython3.12/site-packages/libdnf/__init__.py",
> >     > line 8, in <module>
> >     >     from . import error
> >     >   File
> >     >
> >
>  "/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27=
-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/lib/p=
ython3.12/site-packages/libdnf/error.py",
> >     > line 28, in <module>
> >     >     _error =3D swig_import_helper()
> >     >              ^^^^^^^^^^^^^^^^^^^^
> >     >   File
> >     >
> >
>  "/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27=
-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/lib/p=
ython3.12/site-packages/libdnf/error.py",
> >     > line 15, in swig_import_helper
> >     >     import imp
> >     > ModuleNotFoundError: No module named 'imp'
> >     >
> >     > ERROR: Logfile of failure stored in:
> >     >
> >
>  /home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-=
poky-linux-gnueabi/our-image-initramfs/1.0/temp/log.do_rootfs.3572531
> >     > ERROR: Task
> >     >
> >
>  (/home/devlinux/BOARD.1/scarthgap/board-bsp/meta-sd96/meta-sd96/recipes-=
core/initramfs/our-image-initramfs.bb:
> do_rootfs)
> >     > failed with exit code '1'
> >     >
> >     > issue caused by Python 3.12 that is not compatible with "imp"
> >     library.
> >     > But, why swig in scarthgap generate error.py that includes "imp"
> >     library?
> >
> >     Interesting question - I think also that it shouldn't do that.
> >     Random first thought: if you look into the log.do_configure of
> >     libdnf-native, what does it say, which version of swig did it
> >     find, and
> >     at what path? Is it v4.2.1, somewhere from ${RECIPE_SYSROOT_NATIVE}=
?
> >
> >     >
> >     > our-image-initramfs.bb <http://our-image-initramfs.bb>
> >     <http://our-image-initramfs.bb> is an our
> >     > recipes that inherit core-image in order to create a DM-Verity
> >     fitImage.
> >     > Note that it works with kirkstone poky.
> >     >
> >     > Thank you all,
> >     > SB
> >     >
> >     > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >     > Links: You receive all messages sent to this group.
> >     > View/Reply Online (#65930):
> >     https://lists.yoctoproject.org/g/yocto/message/65930
> >     > Mute This Topic:
> https://lists.yoctoproject.org/mt/115750455/6084445
> >     > Group Owner: yocto+owner@lists.yoctoproject.org
> >     <mailto:yocto%2Bowner@lists.yoctoproject.org>
> >     > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> >     [skandigraun@gmail.com]
> >     > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >     >
> >
>
>

--0000000000001a75a906413417e2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello!<div>It is meta-atmel that force SW=
IG to 3.0.8.....</div><div><br></div><div><a href=3D"https://github.com/lin=
ux4sam/meta-atmel/blob/scarthgap/conf/distro/poky-atmel.conf">meta-atmel/co=
nf/distro/poky-atmel.conf at scarthgap =C2=B7 linux4sam/meta-atmel</a></div=
><div><br></div><div><br></div><div><br></div></div></div><br><div class=3D=
"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">I=
l giorno mer 15 ott 2025 alle ore 11:46 Gyorgy Sarvari &lt;<a href=3D"mailt=
o:skandigraun@gmail.com">skandigraun@gmail.com</a>&gt; ha scritto:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">On 10/15/25 11:20, simon=
e bongini wrote:<br>
&gt; Hello,<br>
&gt; I&#39;m not able to find log.do_configure from libdnf-native, but....<=
br>
&gt;<br>
<br>
You can recreate is with &quot;bitbake -c configure libdnf-native&quot;<br>
<br>
&gt; From the generated error.py of libdnf file I can read<br>
&gt;<br>
&gt; # This file was automatically generated by SWIG (<a href=3D"http://www=
.swig.org" rel=3D"noreferrer" target=3D"_blank">http://www.swig.org</a>).<b=
r>
&gt; # Version 3.0.8<br>
&gt; #<br>
&gt; # Do not make changes to this file unless you know what you are<br>
&gt; doing--modify<br>
&gt; # the SWIG interface file instead.<br>
&gt;<br>
&gt; Indeed I got that the proper version is the 4.2.1, but seems generated=
<br>
&gt; from 3.0.8 version<br>
&gt;<br>
<br>
I guess the question is, where does this version come from.<br>
<br>
Do you have swig installed on the build host? If yes, which version? I&#39;=
m<br>
just curious is maybe somehow cmake breaks out of the build environment,<br=
>
and uses a wrong swig... (I just did a test in docker with swig<br>
installed, and it used the correct version. But that doesn&#39;t mean that<=
br>
it&#39;s impossible.)<br>
Also, do you happen to have any bbappend or similar modifications for<br>
either the swig of libdnf recipes?<br>
<br>
<br>
&gt;<br>
&gt; Il giorno mer 15 ott 2025 alle ore 09:56 Gyorgy Sarvari<br>
&gt; &lt;<a href=3D"mailto:skandigraun@gmail.com" target=3D"_blank">skandig=
raun@gmail.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0On 10/14/25 12:43, simone bongini via <a href=3D"ht=
tp://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoc=
toproject.org</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://lists.yoctoproject.org" rel=
=3D"noreferrer" target=3D"_blank">http://lists.yoctoproject.org</a>&gt; wro=
te:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Hello All<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; i&#39;m trying to build an image based on scar=
thgap.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; I&#39;m facing=C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; ERROR: our-image-initramfs-1.0-r0 do_rootfs: C=
ould not invoke dnf.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Command<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&#39;/home/devlinux/BOARD.1/scarthgap/board-bsp/bui=
ld-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe=
-sysroot-native/usr/bin/dnf<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; -v --rpmverbosity=3Dinfo -y -c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd=
96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/rootfs/etc/=
dnf/dnf.conf<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0--setopt=3Dreposdir=3D/home/devlinux/BOARD.1/scarth=
gap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-ini=
tramfs/1.0/rootfs/etc/yum.repos.d<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0--installroot=3D/home/devlinux/BOARD.1/scarthgap/bo=
ard-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs=
/1.0/rootfs<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0--setopt=3Dlogdir=3D/home/devlinux/BOARD.1/scarthga=
p/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initr=
amfs/1.0/temp<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0--repofrompath=3Doe-repo,/home/devlinux/board.1/sca=
rthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-=
initramfs/1.0/oe-rootfs-repo<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; makecache --refresh&#39; returned 1:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Traceback (most recent call last):<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; =C2=A0 File<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&quot;/home/devlinux/BOARD.1/scarthgap/board-bsp/bu=
ild-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recip=
e-sysroot-native/usr/bin/dnf.real&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; line 61, in &lt;module&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; =C2=A0 =C2=A0 from dnf.cli import main<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; =C2=A0 File<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&quot;/home/devlinux/BOARD.1/scarthgap/board-bsp/bu=
ild-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recip=
e-sysroot-native/usr/lib/python3.12/site-packages/dnf/__init__.py&quot;,<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; line 30, in &lt;module&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; =C2=A0 =C2=A0 import dnf.base<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; =C2=A0 File<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&quot;/home/devlinux/BOARD.1/scarthgap/board-bsp/bu=
ild-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recip=
e-sysroot-native/usr/lib/python3.12/site-packages/dnf/base.py&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; line 29, in &lt;module&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; =C2=A0 =C2=A0 import libdnf.transaction<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; =C2=A0 File<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&quot;/home/devlinux/BOARD.1/scarthgap/board-bsp/bu=
ild-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recip=
e-sysroot-native/usr/lib/python3.12/site-packages/libdnf/__init__.py&quot;,=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; line 8, in &lt;module&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; =C2=A0 =C2=A0 from . import error<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; =C2=A0 File<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&quot;/home/devlinux/BOARD.1/scarthgap/board-bsp/bu=
ild-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recip=
e-sysroot-native/usr/lib/python3.12/site-packages/libdnf/error.py&quot;,<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; line 28, in &lt;module&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; =C2=A0 =C2=A0 _error =3D swig_import_helper()<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0^^^^^^^^^^^^^^^^^^^^<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; =C2=A0 File<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&quot;/home/devlinux/BOARD.1/scarthgap/board-bsp/bu=
ild-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recip=
e-sysroot-native/usr/lib/python3.12/site-packages/libdnf/error.py&quot;,<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; line 15, in swig_import_helper<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; =C2=A0 =C2=A0 import imp<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; ModuleNotFoundError: No module named &#39;imp&=
#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; ERROR: Logfile of failure stored in:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd=
96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/temp/log.do=
_rootfs.3572531<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; ERROR: Task<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0(/home/devlinux/BOARD.1/scarthgap/board-bsp/meta-sd=
96/meta-sd96/recipes-core/initramfs/our-image-initramfs.bb:do_rootfs)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; failed with exit code &#39;1&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; issue caused by Python 3.12 that is not compat=
ible with &quot;imp&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0library.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; But, why swig in scarthgap generate error.py t=
hat includes &quot;imp&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0library?<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Interesting question - I think also that it shouldn=
&#39;t do that.<br>
&gt;=C2=A0 =C2=A0 =C2=A0Random first thought: if you look into the log.do_c=
onfigure of<br>
&gt;=C2=A0 =C2=A0 =C2=A0libdnf-native, what does it say, which version of s=
wig did it<br>
&gt;=C2=A0 =C2=A0 =C2=A0find, and<br>
&gt;=C2=A0 =C2=A0 =C2=A0at what path? Is it v4.2.1, somewhere from ${RECIPE=
_SYSROOT_NATIVE}?<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; <a href=3D"http://our-image-initramfs.bb" rel=
=3D"noreferrer" target=3D"_blank">our-image-initramfs.bb</a> &lt;<a href=3D=
"http://our-image-initramfs.bb" rel=3D"noreferrer" target=3D"_blank">http:/=
/our-image-initramfs.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://our-image-initramfs.bb" rel=
=3D"noreferrer" target=3D"_blank">http://our-image-initramfs.bb</a>&gt; is =
an our<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; recipes that inherit core-image in order to cr=
eate a DM-Verity<br>
&gt;=C2=A0 =C2=A0 =C2=A0fitImage.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Note that it works with kirkstone poky.=C2=A0<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Thank you all,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; SB<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Links: You receive all messages sent to this g=
roup.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; View/Reply Online (#65930):<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://lists.yoctoproject.org/g/yocto/m=
essage/65930" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproje=
ct.org/g/yocto/message/65930</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Mute This Topic: <a href=3D"https://lists.yoct=
oproject.org/mt/115750455/6084445" rel=3D"noreferrer" target=3D"_blank">htt=
ps://lists.yoctoproject.org/mt/115750455/6084445</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@l=
ists.yoctoproject.org" target=3D"_blank">yocto+owner@lists.yoctoproject.org=
</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:yocto%252Bowner@lists.=
yoctoproject.org" target=3D"_blank">yocto%2Bowner@lists.yoctoproject.org</a=
>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Unsubscribe: <a href=3D"https://lists.yoctopro=
ject.org/g/yocto/unsub" rel=3D"noreferrer" target=3D"_blank">https://lists.=
yoctoproject.org/g/yocto/unsub</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0[<a href=3D"mailto:skandigraun@gmail.com" target=3D=
"_blank">skandigraun@gmail.com</a>]<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
<br>
</blockquote></div>

--0000000000001a75a906413417e2--

