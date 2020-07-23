Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web12.11337.1595508444033134331
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jul 2020 05:47:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uW4F6QoI;
 spf=pass (domain: gmail.com, ip: 209.85.218.45, mailfrom: martin.jansa@gmail.com)
Received: by mail-ej1-f45.google.com with SMTP id br7so6248262ejb.5
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jul 2020 05:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9vhoMNFUMNFcizr03pn7sQYUM8fOgFNILR0rKvDEWNs=;
        b=uW4F6QoIPbKOKhrWCfZuEg3hEP96+g7GfaJwiIOGrRMTV0eUfGCVM8YOodd1UK5bRI
         7C+UUtF+gCTwdP1bbF2GijUq4CWeHBsR6WgaCItjXFzPEwBRmQm0lmXksI0zgremJCXC
         gfmq/PLanw82iN4sdgS6ae0tVhKR89G/4lvobedRFsrLB/vMvg+EYJkSNPjJ8VQlgDEW
         8MjF/2/rFGKuRUO+TGo9OL2zH+Wta6WHt3Tw/RoL0AKZn0Q/IohVsNixg4h6dbqdVwF6
         uqf8pgZ2wVtY5YFx0quLIBk9dWjaaQDhBpoZvC7MOeLF0uPD9w3e9Ti9VJvwzwtxq5UD
         GI8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9vhoMNFUMNFcizr03pn7sQYUM8fOgFNILR0rKvDEWNs=;
        b=kKbcOJ72BTQO5gTzdjwtXBReZwrQrnHnoq34TG9xPykfd2gGTwpoq2BRR/nr0TDpQm
         RxlRqEMardHpl0mUB2AN2mIM+JuUwJSVP/bn4OG2pQwpQAG2qBE3aMdtHXS6HqwlPsTH
         SH5XScZuuGB8fSsRLqTYMx0pLeu27bZ56yym8DhvkTHpOLGqtE2QMaBS9oEpjaMh2oLs
         CWUn/xJBGjXDqkgUcI31+aol1vUBL06Ex+OXpUmnTSlXU5dfg9BzdSbai2qmR4fci9PZ
         li71kQWXYZE/F34f8oxJ1s7XfacRbsu318LA26EaTKImAdXytQXK2waxMPzlYfnz+bJD
         CxKQ==
X-Gm-Message-State: AOAM530BJlMYkow1euzYBtfWUGeKMqqz76+XPstbgQIJxe+Wyc8l5MGz
	cEF8z7k+LcLBSUVSQmBi8sjblY4dQNfM+ir3qX4=
X-Google-Smtp-Source: ABdhPJx6Z+DH6V7d9cib23Q1PtwI1/mFLSxXIgFvO8Udai/myaUJKvghL9Eb7kpdGDzga4bpqYWlvGis5ojYjuuhm1g=
X-Received: by 2002:a17:906:8489:: with SMTP id m9mr1979625ejx.94.1595508442530;
 Thu, 23 Jul 2020 05:47:22 -0700 (PDT)
MIME-Version: 1.0
References: <4KAl.1595508007759216809.soAk@lists.yoctoproject.org>
In-Reply-To: <4KAl.1595508007759216809.soAk@lists.yoctoproject.org>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Thu, 23 Jul 2020 14:47:11 +0200
Message-ID: <CA+chaQdedfpH70Yj7CO5A4hZuCmffN+yh0Hr0yiQsywaS3D5AA@mail.gmail.com>
Subject: Re: [yocto] NO INTERNET ENVIRONMENT - USING PREMIRROR fails -> gstreamer1.0_1.12.2.bb:do_unpack failed due to a fetch issue
To: baranarman@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f40a7d05ab1b4153"

--000000000000f40a7d05ab1b4153
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Add "common" git repo to SRC_URI and set SRCREV + SRCREV_FORMAT for it,
instead of using git submodules to fetch it.

On Thu, Jul 23, 2020 at 2:40 PM <baranarman@gmail.com> wrote:

> Hi,
>
> I have a problem. I am trying to set up development environment that run=
s
> offline. For this purpose i set up a repository folder by the following
> local.conf file:
>
> "
> MACHINE ??=3D 'imx6dlsabresd'
> DISTRO ?=3D 'fsl-imx-fb'
> PACKAGE_CLASSES ?=3D "package_rpm"
> EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks dbg-pkgs dev-pkgs package-manage=
ment
> ssh-server-dropbear ssh-server-openssh staticdev-pkgs "
> USER_CLASSES ?=3D "buildstats image-mklibs image-prelink"
> PATCHRESOLVE =3D "noop"
> BB_DISKMON_DIRS ??=3D "\
>     STOPTASKS,${TMPDIR},1G,100K \
>     STOPTASKS,${DL_DIR},1G,100K \
>     STOPTASKS,${SSTATE_DIR},1G,100K \
>     STOPTASKS,/tmp,100M,100K \
>     ABORT,${TMPDIR},100M,1K \
>     ABORT,${DL_DIR},100M,1K \
>     ABORT,${SSTATE_DIR},100M,1K \
>     ABORT,/tmp,10M,1K"
> PACKAGECONFIG_append_pn-qemu-native =3D " sdl"
> PACKAGECONFIG_append_pn-nativesdk-qemu =3D " sdl"
> CONF_VERSION =3D "1"
>
> IMAGE_INSTALL_append =3D " gstreamer imx-test"
>
> DL_DIR ?=3D "${BSPDIR}/downloads/"
> SSTATE_DIR ?=3D "${BSPDIR}/sstate-cache/"
> ACCEPT_FSL_EULA =3D "1"
>
>
> # ADDED
> BB_NO_NETWORK =3D "1"
>
> INHERIT +=3D "own-mirrors"
> BB_GENERATE_MIRROR_TARBALLS =3D "1"
>
> SOURCE_MIRROR_URL =3D "file://${BSPDIR}/repository"
>
> PREMIRRORS_prepend =3D "\
> git://.*/.* file://${BSPDIR}/repository/ \n \
> svn://.*/.* file://${BSPDIR}/repository/ \n \
> cvs://.*/.* file://${BSPDIR}/repository/ \n \
> ftp://.*/.* file://${BSPDIR}/repository/ \n \
> http://.*/.* file://${BSPDIR}/repository/ \n \
> https://.*/.* file://${BSPDIR}/repository/ \n "
> "
>
> initially i run the conf above with "BB_NO_NETWORK =3D "0" to generate t=
he
> tarballs in downloads dir.
> Run the command: bitbake fsl-image-multimedia-full
>
> After initial run I copied the content of the downloads folder into
> repository folder. removed build/tmp folder, downloads folder and
> sstate-cache folder to be on the clear page.
> Then I set [BB_NO_NETWORK =3D "1" ] and execute "tar -czvf ... " to comp=
ress
> all the imx-yocto-bsp folder.
>
> Then I port the imx-tar.gz file to a crops environment on Windows.
>
> The set environment is crops/poky and no internet [unplugged ethernet].
>
> then I run the command bitbake fsl-image-multimedia-full again.
> I expect that the build will be successful as the repository shall be
> enough.
> But I get the following error:
>
> "
> ERROR: gstreamer1.0-1.12.2-r0 do_unpack: Fetcher failure: Fetch command
> export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1000/bus"; expo=
rt
> SSH_AGENT_PID=3D"2184"; export SSH_AUTH_SOCK=3D"/run/user/1000/keyring/s=
sh";
> export all_proxy=3D"http://ikitis:Oe6aoaeaf@10.1.1.51:8080"; export
> ALL_PROXY=3D"http://ikitis:Oe6aoaeaf@10.1.1.51:8080"; export ftp_proxy=
=3D"
> http://ikitis:Oe6aoaeaf@10.1.1.51:8080"; export FTP_PROXY=3D"
> http://10.1.1.51:8080/"; export https_proxy=3D"
> http://ikitis:Oe6aoaeaf@10.1.1.51:8080"; export HTTPS_PROXY=3D"
> http://10.1.1.51:8080/"; export http_proxy=3D"
> http://ikitis:Oe6aoaeaf@10.1.1.51:8080"; export HTTP_PROXY=3D"
> http://10.1.1.51:8080/"; export
> PATH=3D"/home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cortexa=
9hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/recipe-sysroot-native/us=
r/bin/python3-native:/home/aselsan/imx-yocto-bsp/sources/poky/scripts:/home=
/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cortexa9hf-neon-poky-li=
nux-gnueabi/gstreamer1.0/1.12.2-r0/recipe-sysroot-native/usr/bin/arm-poky-l=
inux-gnueabi:/home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/corte=
xa9hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/recipe-sysroot/usr/bin=
/crossscripts:/home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cort=
exa9hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/recipe-sysroot-native=
/usr/sbin:/home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cortexa9=
hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/recipe-sysroot-native/usr=
/bin:/home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cortexa9hf-ne=
on-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/recipe-sysroot-native/sbin:/ho=
me/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cortexa9hf-neon-poky-=
linux-gnueabi/gstreamer1.0/1.12.2-r0/recipe-sysroot-native/bin:/home/aselsa=
n/imx-yocto-bsp/sources/poky/bitbake/bin:/home/aselsan/imx-yocto-bsp/build-=
image-minimal/tmp/hosttools";
> export HOME=3D"/home/aselsan"; git -c core.fsyncobjectfiles=3D0 submodul=
e
> update --init --recursive failed with exit code 1, output:
> Submodule 'common' (
> https://anongit.freedesktop.org/git/gstreamer/common.git) registered for
> path 'common'
> Cloning into
> '/home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cortexa9hf-neo=
n-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/git/common'...
> fatal: unable to access '
> https://anongit.freedesktop.org/git/gstreamer/common.git/': Received HTT=
P
> code 407 from proxy after CONNECT
> fatal: clone of 'https://anongit.freedesktop.org/git/gstreamer/common.gi=
t'
> into submodule path
> '/home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cortexa9hf-neo=
n-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/git/common'
> failed
> Failed to clone 'common'. Retry scheduled
> Cloning into
> '/home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cortexa9hf-neo=
n-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/git/common'...
> fatal: unable to access '
> https://anongit.freedesktop.org/git/gstreamer/common.git/': Received HTT=
P
> code 407 from proxy after CONNECT
> fatal: clone of 'https://anongit.freedesktop.org/git/gstreamer/common.gi=
t'
> into submodule path
> '/home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cortexa9hf-neo=
n-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/git/common'
> failed
> Failed to clone 'common' a second time, aborting
>
> ERROR: gstreamer1.0-1.12.2-r0 do_unpack: Function failed: base_do_unpack
> ERROR: Logfile of failure stored in:
> /home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cortexa9hf-neon=
-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/temp/log.do_unpack.54012
> ERROR: Task
> (/home/aselsan/imx-yocto-bsp/sources/poky/meta/recipes-multimedia/gstrea=
mer/gstreamer1.0_1.12.2.bb:do_unpack)
> failed with exit code '1'
> "
>
> I checked out but could not find a reason
>
> I would highly appreciate if you be kind enough to give support on the
> issue.
>
>
> Best Regards
> B. A.=20
>

--000000000000f40a7d05ab1b4153
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Add &quot;common&quot; git repo to SRC_URI and set SRCREV =
+ SRCREV_FORMAT for it, instead of using git submodules to fetch it.</div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu,=
 Jul 23, 2020 at 2:40 PM &lt;<a href=3D"mailto:baranarman@gmail.com">barana=
rman@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">Hi,<br><br>I have a problem. I am trying to set up developmen=
t environment that runs offline. For this purpose i set up a repository fol=
der by the following local.conf file:<br><br>&quot;<br>MACHINE ??=3D &#39;i=
mx6dlsabresd&#39;<br>DISTRO ?=3D &#39;fsl-imx-fb&#39;<br>PACKAGE_CLASSES ?=
=3D &quot;package_rpm&quot;<br>EXTRA_IMAGE_FEATURES ?=3D &quot;debug-tweak=
s dbg-pkgs dev-pkgs package-management ssh-server-dropbear ssh-server-opens=
sh staticdev-pkgs &quot;<br>USER_CLASSES ?=3D &quot;buildstats image-mklibs=
 image-prelink&quot;<br>PATCHRESOLVE =3D &quot;noop&quot;<br>BB_DISKMON_DIR=
S ??=3D &quot;\<br>=C2=A0=C2=A0=C2=A0 STOPTASKS,${TMPDIR},1G,100K \<br>=C2=
=A0=C2=A0=C2=A0 STOPTASKS,${DL_DIR},1G,100K \<br>=C2=A0=C2=A0=C2=A0 STOPTA=
SKS,${SSTATE_DIR},1G,100K \<br>=C2=A0=C2=A0=C2=A0 STOPTASKS,/tmp,100M,100K =
\<br>=C2=A0=C2=A0=C2=A0 ABORT,${TMPDIR},100M,1K \<br>=C2=A0=C2=A0=C2=A0 ABO=
RT,${DL_DIR},100M,1K \<br>=C2=A0=C2=A0=C2=A0 ABORT,${SSTATE_DIR},100M,1K \<=
br>=C2=A0=C2=A0=C2=A0 ABORT,/tmp,10M,1K&quot;<br>PACKAGECONFIG_append_pn-qe=
mu-native =3D &quot; sdl&quot;<br>PACKAGECONFIG_append_pn-nativesdk-qemu =
=3D &quot; sdl&quot;<br>CONF_VERSION =3D &quot;1&quot;<br><br>IMAGE_INSTAL=
L_append =3D &quot; gstreamer imx-test&quot;<br><br>DL_DIR ?=3D &quot;${BSP=
DIR}/downloads/&quot;<br>SSTATE_DIR ?=3D &quot;${BSPDIR}/sstate-cache/&quot=
;<br>ACCEPT_FSL_EULA =3D &quot;1&quot;<br><br><br># ADDED<br>BB_NO_NETWORK =
=
=3D &quot;1&quot;<br><br>INHERIT +=3D &quot;own-mirrors&quot;<br>BB_GENERA=
TE_MIRROR_TARBALLS =3D &quot;1&quot;<br><br>SOURCE_MIRROR_URL =3D &quot;fil=
e://${BSPDIR}/repository&quot;<br><br>PREMIRRORS_prepend =3D &quot;\<br>git=
://.*/.* file://${BSPDIR}/repository/ \n \<br>svn://.*/.* file://${BSPDIR}/=
repository/ \n \<br>cvs://.*/.* file://${BSPDIR}/repository/ \n \<br>ftp://=
.*/.* file://${BSPDIR}/repository/ \n \<br>http://.*/.* file://${BSPDIR}/re=
pository/ \n \<br>https://.*/.* file://${BSPDIR}/repository/ \n &quot;<br>&=
quot;<br><br>initially i run the conf above with &quot;BB_NO_NETWORK =3D &q=
uot;0&quot; to generate the tarballs in downloads dir.=C2=A0<br>Run the com=
mand: bitbake fsl-image-multimedia-full<br><br>After initial run I copied t=
he content of the downloads folder into repository folder. removed build/tm=
p folder, downloads folder and sstate-cache folder to be on the clear page.=
 <br>Then I set [BB_NO_NETWORK =3D &quot;1&quot; ] and execute &quot;tar -c=
zvf ... &quot; to compress all the imx-yocto-bsp folder.<br><br>Then I port=
 the imx-tar.gz file to a crops environment on Windows. <br><br>The set env=
ironment is crops/poky and no internet [unplugged ethernet].<br><br>then I =
run the command bitbake fsl-image-multimedia-full again. <br>I expect that =
the build will be successful as the repository shall be enough.<br>But I ge=
t the following error:<br><br>&quot;<br>ERROR: gstreamer1.0-1.12.2-r0 do_un=
pack: Fetcher failure: Fetch command export DBUS_SESSION_BUS_ADDRESS=3D&quo=
t;unix:path=3D/run/user/1000/bus&quot;; export SSH_AGENT_PID=3D&quot;2184&q=
uot;; export SSH_AUTH_SOCK=3D&quot;/run/user/1000/keyring/ssh&quot;; export=
 all_proxy=3D&quot;<a href=3D"http://ikitis:Oe6aoaeaf@10.1.1.51:8080" targe=
t=3D"_blank">http://ikitis:Oe6aoaeaf@10.1.1.51:8080</a>&quot;; export ALL_P=
ROXY=3D&quot;<a href=3D"http://ikitis:Oe6aoaeaf@10.1.1.51:8080" target=3D"_=
blank">http://ikitis:Oe6aoaeaf@10.1.1.51:8080</a>&quot;; export ftp_proxy=
=3D&quot;<a href=3D"http://ikitis:Oe6aoaeaf@10.1.1.51:8080" target=3D"_bla=
nk">http://ikitis:Oe6aoaeaf@10.1.1.51:8080</a>&quot;; export FTP_PROXY=3D&q=
uot;<a href=3D"http://10.1.1.51:8080/" target=3D"_blank">http://10.1.1.51:8=
080/</a>&quot;; export https_proxy=3D&quot;<a href=3D"http://ikitis:Oe6aoae=
af@10.1.1.51:8080" target=3D"_blank">http://ikitis:Oe6aoaeaf@10.1.1.51:8080=
</a>&quot;; export HTTPS_PROXY=3D&quot;<a href=3D"http://10.1.1.51:8080/" t=
arget=3D"_blank">http://10.1.1.51:8080/</a>&quot;; export http_proxy=3D&quo=
t;<a href=3D"http://ikitis:Oe6aoaeaf@10.1.1.51:8080" target=3D"_blank">http=
://ikitis:Oe6aoaeaf@10.1.1.51:8080</a>&quot;; export HTTP_PROXY=3D&quot;<a =
href=3D"http://10.1.1.51:8080/" target=3D"_blank">http://10.1.1.51:8080/</a=
>&quot;; export PATH=3D&quot;/home/aselsan/imx-yocto-bsp/build-image-minima=
l/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/recipe=
-sysroot-native/usr/bin/python3-native:/home/aselsan/imx-yocto-bsp/sources/=
poky/scripts:/home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/corte=
xa9hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/recipe-sysroot-native/=
usr/bin/arm-poky-linux-gnueabi:/home/aselsan/imx-yocto-bsp/build-image-mini=
mal/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/reci=
pe-sysroot/usr/bin/crossscripts:/home/aselsan/imx-yocto-bsp/build-image-min=
imal/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/rec=
ipe-sysroot-native/usr/sbin:/home/aselsan/imx-yocto-bsp/build-image-minimal=
/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/recipe-=
sysroot-native/usr/bin:/home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/=
work/cortexa9hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/recipe-sysro=
ot-native/sbin:/home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cor=
texa9hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/recipe-sysroot-nativ=
e/bin:/home/aselsan/imx-yocto-bsp/sources/poky/bitbake/bin:/home/aselsan/im=
x-yocto-bsp/build-image-minimal/tmp/hosttools&quot;; export HOME=3D&quot;/h=
ome/aselsan&quot;; git -c core.fsyncobjectfiles=3D0 submodule update --init=
 --recursive failed with exit code 1, output:<br>Submodule &#39;common&#39;=
 (<a href=3D"https://anongit.freedesktop.org/git/gstreamer/common.git" targ=
et=3D"_blank">https://anongit.freedesktop.org/git/gstreamer/common.git</a>)=
 registered for path &#39;common&#39;<br>Cloning into &#39;/home/aselsan/im=
x-yocto-bsp/build-image-minimal/tmp/work/cortexa9hf-neon-poky-linux-gnueabi=
/gstreamer1.0/1.12.2-r0/git/common&#39;...<br>fatal: unable to access &#39;=
<a href=3D"https://anongit.freedesktop.org/git/gstreamer/common.git/" targe=
t=3D"_blank">https://anongit.freedesktop.org/git/gstreamer/common.git/</a>&=
#39;: Received HTTP code 407 from proxy after CONNECT<br>fatal: clone of &#=
39;<a href=3D"https://anongit.freedesktop.org/git/gstreamer/common.git" tar=
get=3D"_blank">https://anongit.freedesktop.org/git/gstreamer/common.git</a>=
&#39; into submodule path &#39;/home/aselsan/imx-yocto-bsp/build-image-mini=
mal/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/git/=
common&#39; failed<br>Failed to clone &#39;common&#39;. Retry scheduled<br>=
Cloning into &#39;/home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/=
cortexa9hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/git/common&#39;..=
.<br>fatal: unable to access &#39;<a href=3D"https://anongit.freedesktop.or=
g/git/gstreamer/common.git/" target=3D"_blank">https://anongit.freedesktop.=
org/git/gstreamer/common.git/</a>&#39;: Received HTTP code 407 from proxy a=
fter CONNECT<br>fatal: clone of &#39;<a href=3D"https://anongit.freedesktop=
.org/git/gstreamer/common.git" target=3D"_blank">https://anongit.freedeskto=
p.org/git/gstreamer/common.git</a>&#39; into submodule path &#39;/home/asel=
san/imx-yocto-bsp/build-image-minimal/tmp/work/cortexa9hf-neon-poky-linux-g=
nueabi/gstreamer1.0/1.12.2-r0/git/common&#39; failed<br>Failed to clone &#3=
9;common&#39; a second time, aborting<br><br>ERROR: gstreamer1.0-1.12.2-r0 =
do_unpack: Function failed: base_do_unpack<br>ERROR: Logfile of failure sto=
red in: /home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cortexa9hf=
-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/temp/log.do_unpack.54012<br=
>ERROR: Task (/home/aselsan/imx-yocto-bsp/sources/poky/meta/recipes-multime=
dia/gstreamer/gstreamer1.0_1.12.2.bb:do_unpack) failed with exit code &#39;=
1&#39;<br>&quot;<br><br>I checked out but could not find a reason<br><br>I =
would highly appreciate if you be kind enough to give support on the issue.=
<br><br><br>Best Regards<br>B. A.
<br>
</blockquote></div>

--000000000000f40a7d05ab1b4153--
