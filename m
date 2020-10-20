Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
 by mx.groups.io with SMTP id smtpd.web10.5805.1603199184581186685
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Oct 2020 06:06:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=llP2t/5d;
 spf=pass (domain: gmail.com, ip: 209.85.222.44, mailfrom: nikhilvp29@gmail.com)
Received: by mail-ua1-f44.google.com with SMTP id y1so632198uac.13;
        Tue, 20 Oct 2020 06:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VoBA+T9vqwRVKu+jzErcHM4QmIlVEfxDt2lNF/mb5ck=;
        b=llP2t/5d4/hA1fYbESf961U/jEvIefsZj+gILWYOoZZpzotqA30jIdTxTJ62xIbMo0
         uo8YnSa/r41utEwYNvWKFyVFq0PZXlpoauvcT3GbVcIlLLhYcI6S/ZuiSU6TSu56j+Ua
         4ARJ4yvCa3MsA2C6NXboDL0xjMayuPfDDdmvHk+WGs9E9aoxOTFbneISarky9LhHd1y0
         jFDQeTpJ7LP+YyH2wtbSvrJ6xr9+kUQ8L9CY1D7SPvkE8QgWKwQCXMlaKlGLJL9XKabS
         mx8WIT32prJVouL7p1tCxrGtw5pxIayTmBFQ+wtHtgdak0vH7o6K1B9Pdo4mD2Wyk6dd
         jhdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VoBA+T9vqwRVKu+jzErcHM4QmIlVEfxDt2lNF/mb5ck=;
        b=W6Khu0UM/qIrI35N/hcZhjWDsmEtu0T5YaEmKmwDxHjMPP65eIPurbbccwpLSvKpw/
         EiFsIxXKRHm1I6VXpApKSNrHUPfu4nJf7gHfAd1oe16ygEsv+0H9W4XsWIUGMSfPoO56
         RxcRTBq4gcspHlzGbNkUleDajFpVXbVS+v+PcsMIBgAy+2g0PadJJ/VyxakUyW5cOuO4
         yCQ4bRKq4ZAkE/lPCNOrwCdnF/UJgj1dmPa/mdqvc7QZfF4votuI94C7Hyd72ipAvzUi
         PEja6hx1DavX1yyX+uGGEcMEVIrW6u/DgtEhz7yLSOxZ5K8FeXX8+yHZKdiTdKzjw2Sy
         rhIg==
X-Gm-Message-State: AOAM5323pZ5iMw07y4FzPzEPyszFBzKjxz2mfrMd5DdZxZUBzJVfsyGW
	zgd2CVOB0gxtpBPVpHvn0xem1cyT5oM+CWljO+Q=
X-Google-Smtp-Source: ABdhPJxpnmTfzv+YZRbKk8oOeiysD85lsw5rIZQUDRyx3sYOO+Bd8cfB7WXVlnv7PnCd8/ZzQEq6ByeJ3g6/VPFA8TA=
X-Received: by 2002:ab0:69c5:: with SMTP id u5mr1102598uaq.45.1603199183649;
 Tue, 20 Oct 2020 06:06:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAJw=dJ8rCUx1SOe4ai-cVs3BPaS8MePVw+Uh967ZOeaDoWXm5g@mail.gmail.com>
 <b1644126-1fe8-764b-6ff9-51e25bde59ec@windriver.com>
In-Reply-To: <b1644126-1fe8-764b-6ff9-51e25bde59ec@windriver.com>
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Tue, 20 Oct 2020 18:36:11 +0530
Message-ID: <CAJw=dJ_QWnF3bnKCWEuW8PrX32c2nXOdbnA1rBD=Ah55QvpjEg@mail.gmail.com>
Subject: Re: [yocto] dnf error coming while compiling core-image-sato image.
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: yocto+help@lists.yoctoproject.org, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d880b005b219e505"

--000000000000d880b005b219e505
Content-Type: text/plain; charset="UTF-8"

I changed in local.conf (ostree related stuffs ), and put it for
compilation , that time i got these error

On Tue, Oct 20, 2020 at 6:49 AM Randy MacLeod <randy.macleod@windriver.com>
wrote:

> On 2020-10-18 6:41 a.m., NIKHIL PATIL wrote:
> > Hi team ,
> >        I am getting continuously dnf error, How we can resolve these .
>
> Hi Nikhil,
>
> What exact steps did you take before getting this error and
> what build host are you using?
>
> Are you able to build core-image-minimal using oe-core/master
> and the default local.conf for qemux86-64?
>
> ../Randy
>
> >
> > core-image-sato-1.0-r0 do_rootfs: Could not invoke dnf. Command
> >
> '/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/recipe-sysroot-native/usr/bin/dnf
>
> > -y -c
> >
> /data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs/etc/dnf/dnf.conf
>
> >
> --setopt=reposdir=/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs/etc/yum.repos.d
>
> >
> --repofrompath=oe-repo,/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/oe-rootfs-repo
>
> >
> --installroot=/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs
>
> >
> --setopt=logdir=/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/temp
>
> > -x packagegroup-core-apl-extra --nogpgcheck install autoconf-archive dnf
> > gstreamer1.0-vaapi iqvlinux jhi kernel-modules libtcti-device0
> > libtcti-device-dev libtcti-device-staticdev libtcti-socket0
> > libtcti-socket-dev libtcti-socket-staticdev libsapi0 libsapi-dev
> > libsapi-staticdev libva mesa-glxinfo libmraa1 nodejs
> > packagegroup-base-extended packagegroup-core-audio-essential
> > packagegroup-core-boot packagegroup-core-buildessential-extended
> > packagegroup-core-graphics-essential packagegroup-core-ssh-dropbear
> > packagegroup-core-tools-testapps packagegroup-core-x11-base
> > packagegroup-core-x11-sato psplash rpm run-postinsts swig tpm2-abrmd
> > usb-modeswitch usb-modeswitch-data va-intel wayland weston
> > weston-examples xinit-env xserver-xorg locale-base-en-us
> > locale-base-en-gb' returned 1:
> > Added oe-repo repo from
> >
> /data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/oe-rootfs-repo
> >
> >
> >
> > 
> >
>
>
> --
> # Randy MacLeod
> # Wind River Linux
>

--000000000000d880b005b219e505
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I changed in local.conf (ostree related stuffs ), and put =
it for compilation , that time i got these error=C2=A0</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 20, 202=
0 at 6:49 AM Randy MacLeod &lt;<a href=3D"mailto:randy.macleod@windriver.co=
m">randy.macleod@windriver.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">On 2020-10-18 6:41 a.m., NIKHIL PATIL wrote:<=
br>
&gt; Hi team ,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 I am getting continuously=C2=A0dnf error, =
How we can resolve=C2=A0these .<br>
<br>
Hi Nikhil,<br>
<br>
What exact steps did you take before getting this error and<br>
what build host are you using?<br>
<br>
Are you able to build core-image-minimal using oe-core/master<br>
and the default local.conf for qemux86-64?<br>
<br>
../Randy<br>
<br>
&gt; <br>
&gt; core-image-sato-1.0-r0 do_rootfs: Could not invoke dnf. Command <br>
&gt; &#39;/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_=
64-poky-linux/core-image-sato/1.0-r0/recipe-sysroot-native/usr/bin/dnf <br>
&gt; -y -c <br>
&gt; /data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-po=
ky-linux/core-image-sato/1.0-r0/rootfs/etc/dnf/dnf.conf <br>
&gt; --setopt=3Dreposdir=3D/data/pradeep/inti_dmsv/yocto_build/build/tmp/w=
ork/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs/etc/yum.repos.=
d <br>
&gt; --repofrompath=3Doe-repo,/data/pradeep/inti_dmsv/yocto_build/build/tm=
p/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/oe-rootfs-repo <br=
>
&gt; --installroot=3D/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/in=
tel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs <br>
&gt; --setopt=3Dlogdir=3D/data/pradeep/inti_dmsv/yocto_build/build/tmp/wor=
k/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/temp <br>
&gt; -x packagegroup-core-apl-extra --nogpgcheck install autoconf-archive =
dnf <br>
&gt; gstreamer1.0-vaapi iqvlinux jhi kernel-modules libtcti-device0 <br>
&gt; libtcti-device-dev libtcti-device-staticdev libtcti-socket0 <br>
&gt; libtcti-socket-dev libtcti-socket-staticdev libsapi0 libsapi-dev <br>
&gt; libsapi-staticdev libva mesa-glxinfo libmraa1 nodejs <br>
&gt; packagegroup-base-extended packagegroup-core-audio-essential <br>
&gt; packagegroup-core-boot packagegroup-core-buildessential-extended <br>
&gt; packagegroup-core-graphics-essential packagegroup-core-ssh-dropbear <=
br>
&gt; packagegroup-core-tools-testapps packagegroup-core-x11-base <br>
&gt; packagegroup-core-x11-sato psplash rpm run-postinsts swig tpm2-abrmd =
<br>
&gt; usb-modeswitch usb-modeswitch-data va-intel wayland weston <br>
&gt; weston-examples xinit-env xserver-xorg locale-base-en-us <br>
&gt; locale-base-en-gb&#39; returned 1:<br>
&gt; Added oe-repo repo from <br>
&gt; /data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-po=
ky-linux/core-image-sato/1.0-r0/oe-rootfs-repo<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
<br>
-- <br>
# Randy MacLeod<br>
# Wind River Linux<br>
</blockquote></div>

--000000000000d880b005b219e505--
