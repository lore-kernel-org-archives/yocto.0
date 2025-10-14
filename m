Return-Path: <bongini.simone@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73353CCD187
	for <webhook@archiver.kernel.org>; Tue, 14 Oct 2025 10:44:09 +0000 (UTC)
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
 by mx.groups.io with SMTP id smtpd.web11.12325.1760438640574676912
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Oct 2025 03:44:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fucxDnHW;
 spf=pass (domain: gmail.com, ip: 209.85.161.43, mailfrom: bongini.simone@gmail.com)
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-65033a46e9dso828373eaf.2
        for <yocto@lists.yoctoproject.org>; Tue, 14 Oct 2025 03:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760438639; x=1761043439; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UlRrLQltejElLkX9DHO4R/lfhUBodokln4PEYVoCk/I=;
        b=fucxDnHW628ddwh5Csu0Ey03v25bl4falvMobKeAgdvbAbbaGY8nsbu7kmXTWzGgoH
         AvqqnecPixGOVkSzk6BS0xkwUU9OY7IHJiDjsbjPUNykTie30pfOtvV7sM1jlWflq9xd
         W5m0n53lvtoEBeL+sZNuqIfnTGrwlhLcQDpyqltSD6QH63u/JuB/JJerMjSvKwY/yTMm
         Oo8KXvDHhy5mnXjcLn4QBDDXPZFWeMsplPghQVLuLCZ9h1RerHago4lbakVQWXt1oglM
         G6lcK5Derko57P2qhN8Y+HuxsBEKzJK8gM/Fpmed1CFfIW8JkxTwuYXmOBpAMpD0IM8o
         A/nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760438639; x=1761043439;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UlRrLQltejElLkX9DHO4R/lfhUBodokln4PEYVoCk/I=;
        b=ESj7PActLdBfj1Z19nYN0kZ6DShraKMiS9FUFGzgzONJDuAq50A+uSoV70MgtBDJ8/
         i2UkHZSnD8I+gJS5dzym/LBDQWyX8FTdtUm8jfgl6EQQ682OnLAO1QKI5+P/bjNUwtr1
         eaxXnkErNliljrtUEdOoTJmPe+/QAIQGKi0NEtm7WGrm1MwJlNQjbsbo31gWQMKxRtEP
         sWH4dRdUc5F6o1gYAiV6hJR4rb9hXIP0y2JbJeX8EDwVCSQ7uK1jc6jXOE0scQ5E9gbW
         N+ugBU1BGGPz3ZkD9VY4UgppHksKXqCSnWYPAxhjP8ylJu40TDgpQMiKaOi5d7zFud2v
         RrTw==
X-Gm-Message-State: AOJu0YyCfm5vDsT/ryUVfiVmZG+GVGvvgDD4V3+jBaonE8G9PB6GqBOT
	Bxo89Ia6Qs2geCvUMah6upGdCg/nyt18ORAg2aMz9RuIEmYSlO5ph6qcMg6SOpc4Tpew9RaFemF
	hFQ+eS++GM83j2XcERzo9AB+3Yv4EVphf7xx9
X-Gm-Gg: ASbGnctLX6vP67C0xQB5HHdeP3UC2ZiNkbzcs3vedYG4+d2Y0SfgxQ3nutRnvOpqGHj
	DjrPyn0gVRKHWfvKPBfKfDCmSn+2pTjS1ANe7Jy5Gt4KLf5QzLXRXwRnha+4y8VB5jc1bg1chC6
	KfpTPcq5d0GoyFVehWa0M4ZJsFmjUK6jHV813qrv69BkQXGfPu46Vjs4rewhrSNpn+ICNP1Kjun
	Q7rhsaUQCNjYiuRbbrQ65H+2Tk=
X-Google-Smtp-Source: AGHT+IGH9uYdM/Pc/03ReaZzoEXP9sA2pGgoPRwtkg+8g83rxxE4ucpWHzH0+WIBx7cT6eqFBqxwDDBD06TbwvDIkBw=
X-Received: by 2002:a05:6870:1698:b0:342:2140:32bc with SMTP id
 586e51a60fabf-3c0f81eaf40mr10417243fac.26.1760438639517; Tue, 14 Oct 2025
 03:43:59 -0700 (PDT)
MIME-Version: 1.0
From: simone bongini <bongini.simone@gmail.com>
Date: Tue, 14 Oct 2025 12:43:48 +0200
X-Gm-Features: AS18NWDPm4zMlve9HIp6kZbdWch5OCws_9vOC6ex078XjeCamqQsgKPobnNOU_g
Message-ID: <CAHdr16oXZoe5fVbvqRvv5Q3SOTodRfMKKdRrR0uY6dZTN7xTQA@mail.gmail.com>
Subject: [Scarthgap] "ModuleNotFoundError: No module named 'imp'"
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c1e48106411c0f97"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Oct 2025 10:44:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65930

--000000000000c1e48106411c0f97
Content-Type: text/plain; charset="UTF-8"

Hello All
i'm trying to build an image based on scarthgap.
I'm facing

ERROR: our-image-initramfs-1.0-r0 do_rootfs: Could not invoke dnf. Command
'/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/bin/dnf
-v --rpmverbosity=info -y -c
/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/rootfs/etc/dnf/dnf.conf
--setopt=reposdir=/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/rootfs/etc/yum.repos.d
--installroot=/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/rootfs
--setopt=logdir=/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/temp
--repofrompath=oe-repo,/home/devlinux/board.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/oe-rootfs-repo
makecache --refresh' returned 1:
Traceback (most recent call last):
  File
"/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/bin/dnf.real",
line 61, in <module>
    from dnf.cli import main
  File
"/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/lib/python3.12/site-packages/dnf/__init__.py",
line 30, in <module>
    import dnf.base
  File
"/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/lib/python3.12/site-packages/dnf/base.py",
line 29, in <module>
    import libdnf.transaction
  File
"/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/lib/python3.12/site-packages/libdnf/__init__.py",
line 8, in <module>
    from . import error
  File
"/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/lib/python3.12/site-packages/libdnf/error.py",
line 28, in <module>
    _error = swig_import_helper()
             ^^^^^^^^^^^^^^^^^^^^
  File
"/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/lib/python3.12/site-packages/libdnf/error.py",
line 15, in swig_import_helper
    import imp
ModuleNotFoundError: No module named 'imp'

ERROR: Logfile of failure stored in:
/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/temp/log.do_rootfs.3572531
ERROR: Task
(/home/devlinux/BOARD.1/scarthgap/board-bsp/meta-sd96/meta-sd96/recipes-core/initramfs/our-image-initramfs.bb:do_rootfs)
failed with exit code '1'

issue caused by Python 3.12 that is not compatible with "imp" library.
But, why swig in scarthgap generate error.py that includes "imp" library?

our-image-initramfs.bb is an our recipes that inherit core-image in order
to create a DM-Verity fitImage.
Note that it works with kirkstone poky.

Thank you all,
SB

--000000000000c1e48106411c0f97
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr">Hello All<br><div><div><div><div>i&#39;m trying =
to build an image based on scarthgap.</div><div>I&#39;m facing=C2=A0</div><=
/div><div><br></div><div>ERROR: our-image-initramfs-1.0-r0 do_rootfs: Could=
 not invoke dnf. Command &#39;/home/devlinux/BOARD.1/scarthgap/board-bsp/bu=
ild-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recip=
e-sysroot-native/usr/bin/dnf -v --rpmverbosity=3Dinfo -y -c /home/devlinux/=
BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi=
/our-image-initramfs/1.0/rootfs/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/hom=
e/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-li=
nux-gnueabi/our-image-initramfs/1.0/rootfs/etc/yum.repos.d --installroot=3D=
/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-pok=
y-linux-gnueabi/our-image-initramfs/1.0/rootfs --setopt=3Dlogdir=3D/home/de=
vlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-=
gnueabi/our-image-initramfs/1.0/temp --repofrompath=3Doe-repo,/home/devlinu=
x/board.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnuea=
bi/our-image-initramfs/1.0/oe-rootfs-repo makecache --refresh&#39; returned=
 1:</div><div>Traceback (most recent call last):</div><div>=C2=A0 File &quo=
t;/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-p=
oky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/bin/dnf=
.real&quot;, line 61, in &lt;module&gt;</div><div>=C2=A0 =C2=A0 from dnf.cl=
i import main</div><div>=C2=A0 File &quot;/home/devlinux/BOARD.1/scarthgap/=
board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initram=
fs/1.0/recipe-sysroot-native/usr/lib/python3.12/site-packages/dnf/__init__.=
py&quot;, line 30, in &lt;module&gt;</div><div>=C2=A0 =C2=A0 import dnf.bas=
e</div><div>=C2=A0 File &quot;/home/devlinux/BOARD.1/scarthgap/board-bsp/bu=
ild-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recip=
e-sysroot-native/usr/lib/python3.12/site-packages/dnf/base.py&quot;, line 2=
9, in &lt;module&gt;</div><div>=C2=A0 =C2=A0 import libdnf.transaction</div=
><div>=C2=A0 File &quot;/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd=
96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysr=
oot-native/usr/lib/python3.12/site-packages/libdnf/__init__.py&quot;, line =
8, in &lt;module&gt;</div><div>=C2=A0 =C2=A0 from . import error</div><div>=
=C2=A0 File &quot;/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp=
/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-na=
tive/usr/lib/python3.12/site-packages/libdnf/error.py&quot;, line 28, in &l=
t;module&gt;</div><div>=C2=A0 =C2=A0 _error =3D swig_import_helper()</div><=
div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^^^^^^^^^^^^^^^^^^^^</d=
iv><div>=C2=A0 File &quot;/home/devlinux/BOARD.1/scarthgap/board-bsp/build-=
sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sy=
sroot-native/usr/lib/python3.12/site-packages/libdnf/error.py&quot;, line 1=
5, in swig_import_helper</div><div>=C2=A0 =C2=A0 import imp</div><div>Modul=
eNotFoundError: No module named &#39;imp&#39;</div><div><br></div><div>ERRO=
R: Logfile of failure stored in: /home/devlinux/BOARD.1/scarthgap/board-bsp=
/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/te=
mp/log.do_rootfs.3572531</div><div>ERROR: Task (/home/devlinux/BOARD.1/scar=
thgap/board-bsp/meta-sd96/meta-sd96/recipes-core/initramfs/our-image-initra=
mfs.bb:do_rootfs) failed with exit code &#39;1&#39;</div></div></div><div><=
br></div><div><div>issue caused by Python 3.12 that is not compatible with =
&quot;imp&quot; library.</div><div>But, why swig in scarthgap generate erro=
r.py that includes &quot;imp&quot; library?</div><div><br></div><div><a hre=
f=3D"http://our-image-initramfs.bb">our-image-initramfs.bb</a> is an our re=
cipes that inherit core-image in order to create a DM-Verity fitImage.</div=
><div>Note that it works with kirkstone poky.=C2=A0</div><div><br></div><di=
v>Thank you all,</div><div>SB</div></div></div></div></div></div></div></di=
v>

--000000000000c1e48106411c0f97--

