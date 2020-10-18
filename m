Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
 by mx.groups.io with SMTP id smtpd.web12.17767.1603017730303585202
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Oct 2020 03:42:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=T+LgUlZs;
 spf=pass (domain: gmail.com, ip: 209.85.217.48, mailfrom: nikhilvp29@gmail.com)
Received: by mail-vs1-f48.google.com with SMTP id b3so4069881vsc.5;
        Sun, 18 Oct 2020 03:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=NKd4HPxFlIqI0yPtQlk2IAcSIrHFGsBIpGvRx50FieY=;
        b=T+LgUlZsXPtCIlwzU+HrHg6WvSkgkHBxQeEVdg6vo2hMTp1w29zuqntrNFrJHMv+jA
         hBiTb5cpxefpmIVxX4orp/M/J7TrZsJK+fllzg1ve2vC7D9cpxmCx2d6a7fBs5xPZ5WF
         CjTtBKtX9oLJeO9Qz/9/+mfxHly3o8axlGeCS8PLHPmR0OR1/eUBBLp8DZcZSbkLC4jD
         15uDuloZOxWo1LwNcU3RnuSklNRvEtK3fUTB88Wdjri386SnkYWHnEXUmntnWXGjyWY3
         HqtInZ++DN2MgMXTrxCUlphpVwdVhd+PQ6r95y93zLRnZhE5m6qjUoBUC43FUcLDoRZG
         EaQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=NKd4HPxFlIqI0yPtQlk2IAcSIrHFGsBIpGvRx50FieY=;
        b=kETXv1OX/Xf0nGXneRPkA8B1WlUo+OShimb74IIsAjwT94BGlvqmY7sa16iCGa84TC
         IwJWqENRW1HJKo/PFNl2Ln56sCnTbJDHW3vXZQ3rzImasgOHES3B7ldPSrHyONG75TBt
         JEVW37BgRbbmnpGUQA9NQ9NUMDf3FYJMostRSgPm6XbzrPmqD6XY3mUaj0+hOjPnJyMU
         fCZcST8ZPs5j7m8HZ5eLBWwuBoymtcFRJ9jQsTk/BH+2i/hfkUagA0zRVAilIB6oAbm9
         baYGoMYE/uttanpoW07gIfpjr56aBy/m2SXB3ZFN36K2++INlf+Y5r5ABwLksahymvmp
         oSxg==
X-Gm-Message-State: AOAM533HDVtJZQ5s41Puc6kHG5y5anwLXWnkzoxICYaigVmNBMnZLvur
	25mfTj2wJxJ/7dsqyTg0qYzmbSz57VKUDUd3kexJgGYkeOnsNA==
X-Google-Smtp-Source: ABdhPJzw9iUvLWDPEVcN4dwcbFXpHWyXNWfAvy5n2HyXvZp2pu3RyQ0+D7DDQEt9jcjetSPYxWWc6Jnbp7nc+RZA910=
X-Received: by 2002:a67:b405:: with SMTP id x5mr6388682vsl.4.1603017728862;
 Sun, 18 Oct 2020 03:42:08 -0700 (PDT)
MIME-Version: 1.0
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Sun, 18 Oct 2020 16:11:57 +0530
Message-ID: <CAJw=dJ8rCUx1SOe4ai-cVs3BPaS8MePVw+Uh967ZOeaDoWXm5g@mail.gmail.com>
Subject: dnf error coming while compiling core-image-sato image.
To: yocto+help@lists.yoctoproject.org, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004c2f5d05b1efa6b3"

--0000000000004c2f5d05b1efa6b3
Content-Type: text/plain; charset="UTF-8"

Hi team ,
      I am getting continuously dnf error, How we can resolve these .

      core-image-sato-1.0-r0 do_rootfs: Could not invoke dnf. Command
'/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/recipe-sysroot-native/usr/bin/dnf
-y -c
/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs/etc/dnf/dnf.conf
--setopt=reposdir=/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs/etc/yum.repos.d
--repofrompath=oe-repo,/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/oe-rootfs-repo
--installroot=/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs
--setopt=logdir=/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/temp
-x packagegroup-core-apl-extra --nogpgcheck install autoconf-archive dnf
gstreamer1.0-vaapi iqvlinux jhi kernel-modules libtcti-device0
libtcti-device-dev libtcti-device-staticdev libtcti-socket0
libtcti-socket-dev libtcti-socket-staticdev libsapi0 libsapi-dev
libsapi-staticdev libva mesa-glxinfo libmraa1 nodejs
packagegroup-base-extended packagegroup-core-audio-essential
packagegroup-core-boot packagegroup-core-buildessential-extended
packagegroup-core-graphics-essential packagegroup-core-ssh-dropbear
packagegroup-core-tools-testapps packagegroup-core-x11-base
packagegroup-core-x11-sato psplash rpm run-postinsts swig tpm2-abrmd
usb-modeswitch usb-modeswitch-data va-intel wayland weston weston-examples
xinit-env xserver-xorg locale-base-en-us locale-base-en-gb' returned 1:
Added oe-repo repo from
/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/oe-rootfs-repo

--0000000000004c2f5d05b1efa6b3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi team ,<div>=C2=A0 =C2=A0 =C2=A0 I am getting continuous=
ly=C2=A0dnf error, How we can resolve=C2=A0these .</div><div><br></div><div=
><table cellpadding=3D"0" class=3D"gmail-ajC" style=3D"border-spacing:0px;l=
ine-height:20px;font-family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;f=
ont-size:14px"><tbody><tr class=3D"gmail-ajv"><td colspan=3D"2" tabindex=3D=
"0" class=3D"gmail-gL" style=3D"vertical-align:top;width:auto;padding:2px 0=
px"><span class=3D"gmail-gI" style=3D"vertical-align:top">=C2=A0 =C2=A0 =C2=
=A0=C2=A0</span>core-image-sato-1.0-r0 do_rootfs: Could not invoke dnf. Com=
mand &#39;/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_6=
4-poky-linux/core-image-sato/1.0-r0/recipe-sysroot-native/usr/bin/dnf -y -c=
 /data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-li=
nux/core-image-sato/1.0-r0/rootfs/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/d=
ata/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux=
/core-image-sato/1.0-r0/rootfs/etc/yum.repos.d --repofrompath=3Doe-repo,/da=
ta/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/=
core-image-sato/1.0-r0/oe-rootfs-repo --installroot=3D/data/pradeep/inti_dm=
sv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.=
0-r0/rootfs --setopt=3Dlogdir=3D/data/pradeep/inti_dmsv/yocto_build/build/t=
mp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/temp -x packagegr=
oup-core-apl-extra --nogpgcheck install autoconf-archive dnf gstreamer1.0-v=
aapi iqvlinux jhi kernel-modules libtcti-device0 libtcti-device-dev libtcti=
-device-staticdev libtcti-socket0 libtcti-socket-dev libtcti-socket-staticd=
ev libsapi0 libsapi-dev libsapi-staticdev libva mesa-glxinfo libmraa1 nodej=
s packagegroup-base-extended packagegroup-core-audio-essential packagegroup=
-core-boot packagegroup-core-buildessential-extended packagegroup-core-grap=
hics-essential packagegroup-core-ssh-dropbear packagegroup-core-tools-testa=
pps packagegroup-core-x11-base packagegroup-core-x11-sato psplash rpm run-p=
ostinsts swig tpm2-abrmd usb-modeswitch usb-modeswitch-data va-intel waylan=
d weston weston-examples xinit-env xserver-xorg locale-base-en-us locale-ba=
se-en-gb&#39; returned 1:<br>Added oe-repo repo from /data/pradeep/inti_dms=
v/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0=
-r0/oe-rootfs-repo<br></td></tr></tbody></table></div></div>

--0000000000004c2f5d05b1efa6b3--
