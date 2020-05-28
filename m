Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
 by mx.groups.io with SMTP id smtpd.web11.14933.1590680732600712786
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 May 2020 08:45:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=F6Ek7a48;
 spf=pass (domain: gmail.com, ip: 209.85.166.178, mailfrom: siddhuvgowda.18695@gmail.com)
Received: by mail-il1-f178.google.com with SMTP id h3so550072ilh.13
        for <yocto@lists.yoctoproject.org>; Thu, 28 May 2020 08:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KBYoL8iDkRMHMH+6i67mj5L3GWpE4I/7odfZvAf0kZQ=;
        b=F6Ek7a487g1GG25tfENvChUSqTz7Gr8ySE5rl7aa9tp6q0H/RjuO4Vi3YQ6xIqCyhL
         CkL7VT32ELgvwW+yieE4cBJQOxpk+8L02j83hdbhnG3/8I3urL3s0dOVJtUFVCSWo5vu
         8eqPcqDMnUKuQuC++ed5l5o3EgflU3+24fgUCUo9TVAGa8IPl43FJFdhDDS5M7vGm3HL
         Pg/JkyHcRbhPmugch/QdYTD8fGGopizlRO4AckpUAEihf8HBjwwQh4X/GzWMAGMNGrHQ
         dtCWI5x7V1WlCxCuKCmI7l1HRPzCvFrj2QXccALuFI7Vyd23HQj9Z/jR1JhUBxmC71Lk
         W3Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KBYoL8iDkRMHMH+6i67mj5L3GWpE4I/7odfZvAf0kZQ=;
        b=eYyWTIYOUk/EHW0GuFjDRu5+Lw/dsdIsJEUgV8SsDR/3HSLczQS8VQta16GhgRIOrk
         RX/eCFVWwJYze59ek9cmILSI9G+jddmTIZ4xwVGfQ8eKuACGKv+ivcJjmSo6J+CL0o+n
         6eXs3qNWNaWuOIaFCMBsDYZNnr89q3I4d8NGibGrmfltvFtB7Gu5o6w3bFk7l2Ry1IDT
         BXNhMnzk4nIzgzyDrYrXY8JAN70V65DTNmXm3j8LpEuE1nG3gRja9bJFNbQCkY8X4aQp
         8USOkhcxaF1QI39kivcVk85hv8+EEUICDuehsKuGe7uaGzGeU8qjtVJTPsJjDm2+nIfY
         CfBw==
X-Gm-Message-State: AOAM533oSMJkF7EeLIkJN7hvKqPNHGA1i+cvHJywKN/nYN7tEMTQkPd0
	PgMNtZ/SHy/m3M0su8OaChJTNn/d4+BmoJY76gw=
X-Google-Smtp-Source: ABdhPJyrNGfEulAuME7v2Z0dKrCpeU2ijvRMLz0/sM0QZp5LNLjS2KD68sRgC9AyPAHH8Hnf6yA32asA3K6vxuoQphU=
X-Received: by 2002:a92:8744:: with SMTP id d4mr3368059ilm.54.1590680731827;
 Thu, 28 May 2020 08:45:31 -0700 (PDT)
MIME-Version: 1.0
References: <wXlF.1590575855997499174.iVhC@lists.yoctoproject.org> <7b4a8070-91f6-828b-431d-0e25a68b8975@gmail.com>
In-Reply-To: <7b4a8070-91f6-828b-431d-0e25a68b8975@gmail.com>
From: "Siddhartha V" <Siddhuvgowda.18695@gmail.com>
Date: Thu, 28 May 2020 21:15:19 +0530
Message-ID: <CAEkELtBzFFvUD_-SAjbAW+C9eH7EwYVTzvk7rgSC8+o1oyAk5g@mail.gmail.com>
Subject: Re: [yocto] #yocto #raspberrypi #linux . Failure to build xen-image-minimal. Yocto bitbake failed @99% while building xen-minimal-image.
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f8c1e305a6b7374e"

--000000000000f8c1e305a6b7374e
Content-Type: text/plain; charset="UTF-8"

hello sir,

   Thanks for the reply. I searched for what you have suggested, but it
looks like I am missing something here. I didn't see kernel.conf file I
have shared my bblayers.conf details also , please let me know what I am
missing here. I am using the yocto for the first time for kernel build.

Please suggest me if I am doing anything wrong here.

Below is the bblayers.conf file details:


 # POKY_BBLAYERS_CONF_VERSION is increased each time
build/conf/bblayers.conf
 # changes incompatibly
 POKY_BBLAYERS_CONF_VERSION = "2"
 BBPATH = "${TOPDIR}"

 BBFILES ?= ""
 BBLAYERS ?= " \

   /home/siddhu/Documents/yocto/sources/poky/meta \
   /home/siddhu/Documents/yocto/sources/poky/meta-poky \
   /home/siddhu/Documents/yocto/sources/poky/meta-yocto-bsp \
   /home/siddhu/Documents/yocto/sources/meta-openembedded/meta-oe \
   /home/siddhu/Documents/yocto/sources/meta-openembedded/meta-multimedia \
   /home/siddhu/Documents/yocto/sources/meta-openembedded/meta-python \
   /home/siddhu/Documents/yocto/sources/meta-openembedded/meta-networking \
   /home/siddhu/Documents/yocto/sources/meta-openembedded/meta-filesystems \
   /home/siddhu/Documents/yocto/sources/meta-cloud-services \
   /home/siddhu/Documents/yocto/sources/meta-selinux \
   /home/siddhu/Documents/yocto/sources/meta-virtualization\
   /home/siddhu/Documents/yocto/sources/meta-raspberrypi \
   "

Am I missing any layers here? Please suggest me


Regards,
Siddhartha V

On Thu, 28 May, 2020, 9:12 PM Khem Raj, <raj.khem@gmail.com> wrote:

>
>
> On 5/27/20 3:37 AM, Siddhartha V wrote:
> > Hello,
> >
> > I am building the xen minimal image using yocto warrior* ("bitbake
> > xen-image-minimal") *by giving the target machine as *"raspberrypi4"*.
> > It reached 99% but at last I got below error and the whole process
> > terminated with error.
> >
> > ERROR: xen-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf. Command
> >
> '/home/siddhu/Documents/yocto/build/tmp/work/raspberrypi4-poky-linux-gnueabi/xen-image-minimal/1.0-r0/recipe-sysroot-native/usr/bin/dnf
>
> > -v --rpmverbosity=info -y -c
> >
> /home/siddhu/Documents/yocto/build/tmp/work/raspberrypi4-poky-linux-gnueabi/xen-image-minimal/1.0-r0/rootfs/etc/dnf/dnf.conf
>
> >
> --setopt=reposdir=/home/siddhu/Documents/yocto/build/tmp/work/raspberrypi4-poky-linux-gnueabi/xen-image-minimal/1.0-r0/rootfs/etc/yum.repos.d
>
> >
> --installroot=/home/siddhu/Documents/yocto/build/tmp/work/raspberrypi4-poky-linux-gnueabi/xen-image-minimal/1.0-r0/rootfs
>
> >
> --setopt=logdir=/home/siddhu/Documents/yocto/build/tmp/work/raspberrypi4-poky-linux-gnueabi/xen-image-minimal/1.0-r0/temp
>
> >
> --repofrompath=oe-repo,/home/siddhu/Documents/yocto/build/tmp/work/raspberrypi4-poky-linux-gnueabi/xen-image-minimal/1.0-r0/oe-rootfs-repo
>
> > --nogpgcheck install kernel-module-xen-blkback
> > kernel-module-xen-gntalloc kernel-module-xen-gntdev
> > kernel-module-xen-netback kernel-module-xen-wdt packagegroup-core-boot
> > packagegroup-core-ssh-dropbear packagegroup-core-ssh-openssh qemu
> > run-postinsts xen-base locale-base-en-us locale-base-en-gb' returned 1:
> >
> > DNF version: 4.1.0
> >
> > cachedir:
> >
> /home/siddhu/Documents/yocto/build/tmp/work/raspberrypi4-poky-linux-gnueabi/xen-image-minimal/1.0-r0/rootfs/var/cache/dnf
> >
> > Added oe-repo repo from
> >
> /home/siddhu/Documents/yocto/build/tmp/work/raspberrypi4-poky-linux-gnueabi/xen-image-minimal/1.0-r0/oe-rootfs-repo
> >
> > repo: using cache for: oe-repo
> >
> > not found other for:
> >
> > not found modules for:
> >
> > not found deltainfo for:
> >
> > not found updateinfo for:
> >
> > oe-repo: using metadata from Wed 27 May 2020 06:15:39 AM UTC.
> >
> > Last metadata expiration check: 0:00:01 ago on Wed 27 May 2020 06:15:45
> > AM UTC.
> >
> > No module defaults found
> >
> > No match for argument: kernel-module-xen-blkback
> >
> > No match for argument: kernel-module-xen-gntalloc
> >
> > No match for argument: kernel-module-xen-gntdev
> >
> > No match for argument: kernel-module-xen-netback
> >
> > No match for argument: kernel-module-xen-wdt
> >
>
> it seems XEN related options are missing from kernel config. Perhaps you
> can add a config fragment adding them and stitch it to linux-raspberrypi
> recipe via bbappend.
>
> > Error: Unable to find a match
> >
> > ERROR: xen-image-minimal-1.0-r0 do_rootfs:
> >
> > ERROR: xen-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs
> >
> > ERROR: Logfile of failure stored in:
> >
> /home/siddhu/Documents/yocto/build/tmp/work/raspberrypi4-poky-linux-gnueabi/xen-image-minimal/1.0-r0/temp/log.do_rootfs.14256
> >
> > ERROR: Task
> >
> (/home/siddhu/Documents/yocto/sources/meta-virtualization/recipes-extended/images/xen-image-minimal.bb:do_rootfs)
>
> > failed with exit code '1'
> >
> > NOTE: Tasks Summary: Attempted 2605 tasks of which 2152 didn't need to
> > be rerun and 1 failed.
> >
> > Summary: 1 task failed:
> >
> >
> >
> /home/siddhu/Documents/yocto/sources/meta-virtualization/recipes-extended/images/xen-image-minimal.bb:
> do_rootfs
> >
> > Summary: There were 3 ERROR messages shown, returning a non-zero exit
> code.
> >
> > May I know what mistake I am doing here please. I have attached
> > screenshot also.
> >
> >
> > *My bblayer.conf file is as below:*
> >
> > # POKY_BBLAYERS_CONF_VERSION is increased each time
> build/conf/bblayers.conf
> > # changes incompatibly
> > POKY_BBLAYERS_CONF_VERSION = "2"
> > BBPATH = "${TOPDIR}"
> >
> > BBFILES ?= ""
> > BBLAYERS ?= " \
> >
> >    /home/siddhu/Documents/yocto/sources/poky/meta \
> >    /home/siddhu/Documents/yocto/sources/poky/meta-poky \
> >    /home/siddhu/Documents/yocto/sources/poky/meta-yocto-bsp \
> >    /home/siddhu/Documents/yocto/sources/meta-openembedded/meta-oe \
> >
> /home/siddhu/Documents/yocto/sources/meta-openembedded/meta-multimedia \
> >    /home/siddhu/Documents/yocto/sources/meta-openembedded/meta-python \
> >
> /home/siddhu/Documents/yocto/sources/meta-openembedded/meta-networking \
> >
> /home/siddhu/Documents/yocto/sources/meta-openembedded/meta-filesystems \
> >    /home/siddhu/Documents/yocto/sources/meta-cloud-services \
> >    /home/siddhu/Documents/yocto/sources/meta-selinux \
> >    /home/siddhu/Documents/yocto/sources/meta-virtualization\
> >    /home/siddhu/Documents/yocto/sources/meta-raspberrypi \
> >    "
> >
> > *My local.conf file I have added the below details:*
> >
> > MACHINE ??= "raspberrypi4"
> > DISTRO_FEATURES += "virtualization xen"
> > PACKAGE_CLASSES ?= "package_rpm"
> > CONF_VERSION = "1"
> > IMAGE_FEATURES += "ssh-server-dropbear"
> >
> >
> > I have tried the same for "cubieboard2" also even there I faced the same
> > issue.Eagerly waiting for the response.
> >
> > Regards,
> > Siddhartha V
> >
> >
> >
> >
> 
>

--000000000000f8c1e305a6b7374e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><span style=3D"font-family:sans-serif;font-size:12.8px">h=
ello sir,</span><div style=3D"font-family:sans-serif;font-size:12.8px" dir=
=3D"auto"><br></div><div style=3D"font-family:sans-serif;font-size:12.8px"=
 dir=3D"auto">=C2=A0 =C2=A0Thanks for the reply. I searched for what you ha=
ve suggested, but it looks like I am missing something here. I didn&#39;t s=
ee kernel.conf file I have shared my bblayers.conf details also , please le=
t me know what I am missing here. I am using the yocto for the first time f=
or kernel build.=C2=A0</div><div style=3D"font-family:sans-serif;font-size:=
12.8px" dir=3D"auto"><br></div><div style=3D"font-family:sans-serif;font-si=
ze:12.8px" dir=3D"auto">Please suggest=C2=A0me if I am doing anything wrong=
 here.</div><div style=3D"font-family:sans-serif;font-size:12.8px" dir=3D"a=
uto"><br></div><div style=3D"font-family:sans-serif;font-size:12.8px" dir=
=3D"auto">Below is the bblayers.conf file details:</div><div style=3D"font=
-family:sans-serif;font-size:12.8px" dir=3D"auto"><br></div><div style=3D"f=
ont-family:sans-serif;font-size:12.8px" dir=3D"auto"><br>=C2=A0# POKY_BBLAY=
ERS_CONF_VERSION is increased each time build/conf/bblayers.conf<br>=C2=A0#=
 changes incompatibly<br>=C2=A0POKY_BBLAYERS_CONF_VERSION =3D &quot;2&quot;=
<br>=C2=A0BBPATH =3D &quot;${TOPDIR}&quot;<br><br>=C2=A0BBFILES ?=3D &quot;=
&quot;<br>=C2=A0BBLAYERS ?=3D &quot; \<br><br>=C2=A0 =C2=A0/home/siddhu/Doc=
uments/yocto/sources/poky/meta \<br>=C2=A0 =C2=A0/home/siddhu/Documents/yoc=
to/sources/poky/meta-poky \<br>=C2=A0 =C2=A0/home/siddhu/Documents/yocto/so=
urces/poky/meta-yocto-bsp \<br>=C2=A0 =C2=A0/home/siddhu/Documents/yocto/so=
urces/meta-openembedded/meta-oe \<br>=C2=A0 =C2=A0/home/siddhu/Documents/yo=
cto/sources/meta-openembedded/meta-multimedia \<br>=C2=A0 =C2=A0/home/siddh=
u/Documents/yocto/sources/meta-openembedded/meta-python \<br>=C2=A0 =C2=A0/=
home/siddhu/Documents/yocto/sources/meta-openembedded/meta-networking \<br>=
=
=C2=A0 =C2=A0/home/siddhu/Documents/yocto/sources/meta-openembedded/meta-f=
ilesystems \<br>=C2=A0 =C2=A0/home/siddhu/Documents/yocto/sources/meta-clou=
d-services \<br>=C2=A0 =C2=A0/home/siddhu/Documents/yocto/sources/meta-seli=
nux \<br>=C2=A0 =C2=A0/home/siddhu/Documents/yocto/sources/meta-virtualizat=
ion\<br>=C2=A0 =C2=A0/home/siddhu/Documents/yocto/sources/meta-raspberrypi =
\<br>=C2=A0 =C2=A0&quot;<br></div><div style=3D"font-family:sans-serif;font=
-size:12.8px" dir=3D"auto"><br></div><div style=3D"font-family:sans-serif;f=
ont-size:12.8px" dir=3D"auto">Am I missing any layers here? Please suggest =
me</div><div style=3D"font-family:sans-serif;font-size:12.8px" dir=3D"auto"=
><br></div><div style=3D"font-family:sans-serif;font-size:12.8px" dir=3D"au=
to"><br></div><div style=3D"font-family:sans-serif;font-size:12.8px" dir=3D=
"auto">Regards,=C2=A0</div><div style=3D"font-family:sans-serif;font-size:1=
2.8px" dir=3D"auto">Siddhartha V=C2=A0</div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 28 May, 2020, 9:12 PM K=
hem Raj, &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
On 5/27/20 3:37 AM, Siddhartha V wrote:<br>
&gt; Hello,<br>
&gt; <br>
&gt; I am building the xen minimal image using yocto warrior*=C2=A0(&quot;=
bitbake <br>
&gt; xen-image-minimal&quot;) *by giving the target machine as *&quot;rasp=
berrypi4&quot;*. <br>
&gt; It reached 99% but at last I got below error and the whole process <b=
r>
&gt; terminated with error.<br>
&gt; <br>
&gt; ERROR: xen-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf. Comm=
and <br>
&gt; &#39;/home/siddhu/Documents/yocto/build/tmp/work/raspberrypi4-poky-li=
nux-gnueabi/xen-image-minimal/1.0-r0/recipe-sysroot-native/usr/bin/dnf <br>
&gt; -v --rpmverbosity=3Dinfo -y -c <br>
&gt; /home/siddhu/Documents/yocto/build/tmp/work/raspberrypi4-poky-linux-g=
nueabi/xen-image-minimal/1.0-r0/rootfs/etc/dnf/dnf.conf <br>
&gt; --setopt=3Dreposdir=3D/home/siddhu/Documents/yocto/build/tmp/work/ras=
pberrypi4-poky-linux-gnueabi/xen-image-minimal/1.0-r0/rootfs/etc/yum.repos.=
d <br>
&gt; --installroot=3D/home/siddhu/Documents/yocto/build/tmp/work/raspberry=
pi4-poky-linux-gnueabi/xen-image-minimal/1.0-r0/rootfs <br>
&gt; --setopt=3Dlogdir=3D/home/siddhu/Documents/yocto/build/tmp/work/raspb=
errypi4-poky-linux-gnueabi/xen-image-minimal/1.0-r0/temp <br>
&gt; --repofrompath=3Doe-repo,/home/siddhu/Documents/yocto/build/tmp/work/=
raspberrypi4-poky-linux-gnueabi/xen-image-minimal/1.0-r0/oe-rootfs-repo <br=
>
&gt; --nogpgcheck install kernel-module-xen-blkback <br>
&gt; kernel-module-xen-gntalloc kernel-module-xen-gntdev <br>
&gt; kernel-module-xen-netback kernel-module-xen-wdt packagegroup-core-boo=
t <br>
&gt; packagegroup-core-ssh-dropbear packagegroup-core-ssh-openssh qemu <br=
>
&gt; run-postinsts xen-base locale-base-en-us locale-base-en-gb&#39; retur=
ned 1:<br>
&gt; <br>
&gt; DNF version: 4.1.0<br>
&gt; <br>
&gt; cachedir: <br>
&gt; /home/siddhu/Documents/yocto/build/tmp/work/raspberrypi4-poky-linux-g=
nueabi/xen-image-minimal/1.0-r0/rootfs/var/cache/dnf<br>
&gt; <br>
&gt; Added oe-repo repo from <br>
&gt; /home/siddhu/Documents/yocto/build/tmp/work/raspberrypi4-poky-linux-g=
nueabi/xen-image-minimal/1.0-r0/oe-rootfs-repo<br>
&gt; <br>
&gt; repo: using cache for: oe-repo<br>
&gt; <br>
&gt; not found other for:<br>
&gt; <br>
&gt; not found modules for:<br>
&gt; <br>
&gt; not found deltainfo for:<br>
&gt; <br>
&gt; not found updateinfo for:<br>
&gt; <br>
&gt; oe-repo: using metadata from Wed 27 May 2020 06:15:39 AM UTC.<br>
&gt; <br>
&gt; Last metadata expiration check: 0:00:01 ago on Wed 27 May 2020 06:15:=
45 <br>
&gt; AM UTC.<br>
&gt; <br>
&gt; No module defaults found<br>
&gt; <br>
&gt; No match for argument: kernel-module-xen-blkback<br>
&gt; <br>
&gt; No match for argument: kernel-module-xen-gntalloc<br>
&gt; <br>
&gt; No match for argument: kernel-module-xen-gntdev<br>
&gt; <br>
&gt; No match for argument: kernel-module-xen-netback<br>
&gt; <br>
&gt; No match for argument: kernel-module-xen-wdt<br>
&gt; <br>
<br>
it seems XEN related options are missing from kernel config. Perhaps you <=
br>
can add a config fragment adding them and stitch it to linux-raspberrypi <=
br>
recipe via bbappend.<br>
<br>
&gt; Error: Unable to find a match<br>
&gt; <br>
&gt; ERROR: xen-image-minimal-1.0-r0 do_rootfs:<br>
&gt; <br>
&gt; ERROR: xen-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs=
<br>
&gt; <br>
&gt; ERROR: Logfile of failure stored in: <br>
&gt; /home/siddhu/Documents/yocto/build/tmp/work/raspberrypi4-poky-linux-g=
nueabi/xen-image-minimal/1.0-r0/temp/log.do_rootfs.14256<br>
&gt; <br>
&gt; ERROR: Task <br>
&gt; (/home/siddhu/Documents/yocto/sources/meta-virtualization/recipes-ext=
ended/images/xen-image-minimal.bb:do_rootfs) <br>
&gt; failed with exit code &#39;1&#39;<br>
&gt; <br>
&gt; NOTE: Tasks Summary: Attempted 2605 tasks of which 2152 didn&#39;t ne=
ed to <br>
&gt; be rerun and 1 failed.<br>
&gt; <br>
&gt; Summary: 1 task failed:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 <br>
&gt; /home/siddhu/Documents/yocto/sources/meta-virtualization/recipes-exte=
nded/images/xen-image-minimal.bb:do_rootfs<br>
&gt; <br>
&gt; Summary: There were 3 ERROR messages shown, returning a non-zero exit=
 code.<br>
&gt; <br>
&gt; May I know what mistake I am doing here please. I have attached <br>
&gt; screenshot also.<br>
&gt; <br>
&gt; <br>
&gt; *My bblayer.conf file is as below:*<br>
&gt; <br>
&gt; # POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblaye=
rs.conf<br>
&gt; # changes incompatibly<br>
&gt; POKY_BBLAYERS_CONF_VERSION =3D &quot;2&quot;<br>
&gt; BBPATH =3D &quot;${TOPDIR}&quot;<br>
&gt; <br>
&gt; BBFILES ?=3D &quot;&quot;<br>
&gt; BBLAYERS ?=3D &quot; \<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 /home/siddhu/Documents/yocto/sources/poky/meta \<br>
&gt;=C2=A0 =C2=A0 /home/siddhu/Documents/yocto/sources/poky/meta-poky \<br=
>
&gt;=C2=A0 =C2=A0 /home/siddhu/Documents/yocto/sources/poky/meta-yocto-bsp=
 \<br>
&gt;=C2=A0 =C2=A0 /home/siddhu/Documents/yocto/sources/meta-openembedded/m=
eta-oe \<br>
&gt;=C2=A0 =C2=A0 /home/siddhu/Documents/yocto/sources/meta-openembedded/m=
eta-multimedia \<br>
&gt;=C2=A0 =C2=A0 /home/siddhu/Documents/yocto/sources/meta-openembedded/m=
eta-python \<br>
&gt;=C2=A0 =C2=A0 /home/siddhu/Documents/yocto/sources/meta-openembedded/m=
eta-networking \<br>
&gt;=C2=A0 =C2=A0 /home/siddhu/Documents/yocto/sources/meta-openembedded/m=
eta-filesystems \<br>
&gt;=C2=A0 =C2=A0 /home/siddhu/Documents/yocto/sources/meta-cloud-services=
 \<br>
&gt;=C2=A0 =C2=A0 /home/siddhu/Documents/yocto/sources/meta-selinux \<br>
&gt;=C2=A0 =C2=A0 /home/siddhu/Documents/yocto/sources/meta-virtualization=
\<br>
&gt;=C2=A0 =C2=A0 /home/siddhu/Documents/yocto/sources/meta-raspberrypi \<=
br>
&gt;=C2=A0 =C2=A0 &quot;<br>
&gt; <br>
&gt; *My local.conf file I have added the below details:*<br>
&gt; <br>
&gt; MACHINE ??=3D &quot;raspberrypi4&quot;<br>
&gt; DISTRO_FEATURES +=3D &quot;virtualization xen&quot;<br>
&gt; PACKAGE_CLASSES ?=3D &quot;package_rpm&quot;<br>
&gt; CONF_VERSION =3D &quot;1&quot;<br>
&gt; IMAGE_FEATURES +=3D &quot;ssh-server-dropbear&quot;<br>
&gt; <br>
&gt; <br>
&gt; I have tried the same for &quot;cubieboard2&quot; also even there I f=
aced the same <br>
&gt; issue.Eagerly waiting for the response.<br>
&gt; <br>
&gt; Regards,<br>
&gt; Siddhartha V<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
</blockquote></div>

--000000000000f8c1e305a6b7374e--
