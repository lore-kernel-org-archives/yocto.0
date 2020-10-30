Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web11.14340.1604067678451383209
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Oct 2020 07:21:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lDQQUHqK;
 spf=pass (domain: gmail.com, ip: 209.85.215.176, mailfrom: katakam.sujan@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id k9so3637373pgt.9
        for <yocto@lists.yoctoproject.org>; Fri, 30 Oct 2020 07:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fIsVFlzsvaUYOPYHj6k48SeiPxd6RN7Oh6iPAtwinwg=;
        b=lDQQUHqK3TOp6Flt+L3BGliFZUi0qBOoBynDSB9txfD73Nfjl6+5YWfX8rWGRXWvug
         oFn9pSWaJzsxCoNKwLYbAuYlaBOiCOaLUTg1NYObqZKRP/JkEk0siy3gbwq7lTOXFSE6
         C3grKdk6sSMxu3a+nnMb+VtoMcM7Lmfw+Xb7+mzqpOLBjkVIR1Qv5Al3J4WGR0sr/o9m
         odMH15Ph8sjrKcIV1AfyuxEn7FsBnJDS/IwzMyRlHiJnOTIbcpqAC9FtrhzkHt166tBW
         DRZTiBPNsKI8V7oFY8Qi9kM6Jdsr6FmlUkdVfG8K3P1ruGui89EgmA1n0CpAU+fYdM7l
         NRzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fIsVFlzsvaUYOPYHj6k48SeiPxd6RN7Oh6iPAtwinwg=;
        b=Ayd8DmhN9zbjxMs2bk6qxdcNUVqwu7xjSjxXSRlyWArt/p7hCubF6WlKxM8sdC7AhV
         b9TAiFkMKuWCkYzhzfZi2X+kty0eVUTIbfqWPQW6yaaYSJzjXwsxymWph6C9VSGQ92NB
         ahbb4CQva6dH0qZjeUe4G35QhgyxkRYWJO5HaUJ9jsBd0KEwX3axffr3rxfgzpGJBxff
         u8VZWIa1/vEmfdvE1b3ZpxXxTFwQWbxlh66dh5R2cOzTbTxOOmtbYRi5dsKTHGsFCaL6
         NpImE6hf2yRNq5vQvMZCYCf3d58lP9HFHjDgK3nDEx40gp7u7SYL0miOTgFsuvI09+HM
         3YTg==
X-Gm-Message-State: AOAM531y3XcyjYBz0YRHzyP7kvqvxIqkSIiKLPrVXVpCY0PgPWAOXwHT
	7B/XpsJDktW+JmZcjNd3rXY3J/wHBau1RFBjusk=
X-Google-Smtp-Source: ABdhPJw+jBhOsmRZnTBOfDig9EYcBX0I4isSrC50YZg89DS9So1CR6XU7b0MQoLZWPVXLB9Pp6iEDQszDb7ktoZTeU0=
X-Received: by 2002:a65:5784:: with SMTP id b4mr2316169pgr.217.1604067677676;
 Fri, 30 Oct 2020 07:21:17 -0700 (PDT)
MIME-Version: 1.0
References: <i2fG.1604043790197452631.RWTF@lists.yoctoproject.org>
 <CAEt6NwoxfxmB=Qhq+UuVRhfCL1nho61-+n72VrdwQK9Q4qc+xg@mail.gmail.com>
 <CAHWyh-WmhaJ93XXvbPtfkOGgtmrxT5sr6x09N3+M_pS+hfC8xA@mail.gmail.com> <CAEt6Nwo+AAXhm8kVudjSC3MKxxtymCtZT1YgPj4VRmQoafyxuw@mail.gmail.com>
In-Reply-To: <CAEt6Nwo+AAXhm8kVudjSC3MKxxtymCtZT1YgPj4VRmQoafyxuw@mail.gmail.com>
From: katakam.sujan@gmail.com
Date: Fri, 30 Oct 2020 19:51:06 +0530
Message-ID: <CAHWyh-Wy9e6=igVfhFveMY3Rga4u7fkKqgQVqSGSJiJ2hUJaaQ@mail.gmail.com>
Subject: Re: [yocto] Yocto OS Creation on Linux Ubuntu 16.04 LTS #yocto #yocto
To: Josef Holzmayr <jester@theyoctojester.info>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000001fa91005b2e41c09"

--0000000000001fa91005b2e41c09
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

Thank you for your response.sorry missed to include yocto group list.
I tried in two different networks , one is office n/w and other is persona=
l
n/w.
Both ways I got the same issue.

We could do it successively for the first time and later, we wanted to do
it for the second time, because we need to include Valgrind in
the config files so that we can run the Valgrind tool for our code.

Please let us know if there is any other alternative to install the Yocto
OS or the Valgrind tool on Yocto OS.

Regards
Sujan

On Fri, Oct 30, 2020 at 1:50 PM Josef Holzmayr <jester@theyoctojester.info=
>
wrote:

> For one thing, please keep the list on CC.
>
> Am Fr., 30. Okt. 2020 um 09:11 Uhr schrieb Sujan KS <
> katakam.sujan@gmail.com>:
> >
> > Hi
> >
> > We tried all that. There are no n/w issues.
> > We found some of the files needed are not available in github.
> > Actually we use git commands to get the source code, which failed duri=
ng
> the build process and resulted in time out issue.
>
> Second, I have just verified that the URL
> git://git.kernel.org/pub/scm/network/iproute2/iproute2.git perfectly
> clones here. So it might be a problem with your provider or some
> national firewall - another hint is:
>
> git.kernel.org[0: 147.75.46.191]: errno=3DConnection timed out
> git.kernel.org[1: 2604:1380:4080:c00::1]: errno=3DNetwork is unreachable
>
> But there's really nothing that we can do about it, sorry. It *IS* a
> network issue somewhere between you and the source repository.
>
> Greetz.
> >
> > Please let us know how to proceed.
> >
> > Regards
> > Sujan
> >
> >
> > On Fri, Oct 30, 2020 at 1:28 PM Josef Holzmayr <
> jester@theyoctojester.info> wrote:
> >>
> >> Just given the links a quick try here, it seems like your build is
> >> having connectivity issues. Please check you uplink, or if it is
> >> somehow filtered/proxied.
> >>
> >> Greetz
> >>
> >> Am Fr., 30. Okt. 2020 um 08:43 Uhr schrieb <katakam.sujan@gmail.com>:
> >> >
> >> > We are facing issue in yocto OS creation due to time out issue and
> unable to create the image.
> >> >
> >> > The log for this is as below,
> >> > WARNING: xf86-video-intel-2_2.99.917-r0 do_fetch: Failed to fetch U=
RL
> git://anongit.freedesktop.org/xorg/driver/xf86-video-intel;branch=3Dmast=
er,
> attempting MIRRORS if available
> >> > WARNING: xf86-video-ast-2_1.1.5-r0 do_fetch: Failed to fetch URL
> http://xorg.freedesktop.org/releases/individual/driver/xf86-video-ast-1.=
1.5.tar.bz2,
> attempting MIRRORS if available
> >> > WARNING: xinit-1_1.4.1-r0 do_fetch: Failed to fetch URL
> http://xorg.freedesktop.org/releases/individual/app/xinit-1.4.1.tar.bz2,
> attempting MIRRORS if available
> >> > WARNING: cwautomacros-native-20110201-r0 do_fetch: Failed to fetch
> URL
> https://downloads.sourceforge.net/cwautomacros.berlios/cwautomacros-2011=
0201.tar.bz2,
> attempting MIRRORS if available
> >> > WARNING: intel-microcode-20190618-r0 do_fetch: Failed to fetch URL
> git://
> github.com/intel/Intel-Linux-Processor-Microcode-Data-Files.git;protocol=
=
=3Dhttps,
> attempting MIRRORS if available
> >> > WARNING: lvm2-2.03.02-r0 do_fetch: Failed to fetch URL
> ftp://sources.redhat.com/pub/lvm2/releases/LVM2.2.03.02.tgz, attempting
> MIRRORS if available
> >> > WARNING: xdpyinfo-1_1.3.2-r0 do_fetch: Failed to fetch URL
> http://xorg.freedesktop.org/releases/individual/app/xdpyinfo-1.3.2.tar.b=
z2,
> attempting MIRRORS if available
> >> > WARNING: xhost-1_1.0.8-r0 do_fetch: Failed to fetch URL
> http://xorg.freedesktop.org/releases/individual/app/xhost-1.0.8.tar.bz2,
> attempting MIRRORS if available
> >> > WARNING: linux-firmware-1_0.0+gitAUTOINC+711d3297ba-r0 do_fetch:
> Failed to fetch URL git://
> git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git,
> attempting MIRRORS if available
> >> > WARNING: dpkg-1.19.4-r0 do_fetch: Failed to fetch URL
> http://ftp.debian.org/debian/pool/main/d/dpkg/dpkg_1.19.4.tar.xz,
> attempting MIRRORS if available
> >> > WARNING: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Failed to
> fetch URL git://git.kernel.org/pub/scm/network/iproute2/iproute2.git,
> attempting MIRRORS if available
> >> > ERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Fetcher
> failure: Fetch command export PSEUDO_DISABLED=3D1; unset
> _PYTHON_SYSCONFIGDATA_NAME; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-owimWyNVWV"; expor=
t
> SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"; export
> PATH=3D"/home/user/pdl/yocto_build/scripts:/home/user/pdl/yocto_build/bu=
ild/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0=
/recipe-sysroot-native/usr/bin/x86_64-oe-linux:/home/user/pdl/yocto_build/b=
uild/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r=
0/recipe-sysroot/usr/bin/crossscripts:/home/user/pdl/yocto_build/build/tmp-=
glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0/recipe-=
sysroot-native/usr/sbin:/home/user/pdl/yocto_build/build/tmp-glibc/work/cor=
ei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroot-native=
/usr/bin:/home/user/pdl/yocto_build/build/tmp-glibc/work/corei7-64-oe-linux=
/iproute2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroot-native/sbin:/home/use=
r/pdl/yocto_build/build/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitA=
UTOINC+97864a5af3-r0/recipe-sysroot-native/bin:/home/user/pdl/yocto_build/b=
itbake/bin:/home/user/pdl/yocto_build/build/tmp-glibc/hosttools";
> export HOME=3D"/home/user"; LANG=3DC git -c core.fsyncobjectfiles=3D0 cl=
one
> --bare --mirror git://git.kernel.org/pub/scm/network/iproute2/iproute2.g=
it
> /home/user/pdl/yocto_build/build/downloads/git2/git.kernel.org.pub.scm.n=
etwork.iproute2.iproute2.git
> --progress failed with exit code 128, output:
> >> > Cloning into bare repository
> '/home/user/pdl/yocto_build/build/downloads/git2/git.kernel.org.pub.scm.=
network.iproute2.iproute2.git'...
> >> > fatal: unable to connect to git.kernel.org:
> >> > git.kernel.org[0: 147.75.46.191]: errno=3DConnection timed out
> >> > git.kernel.org[1: 2604:1380:4080:c00::1]: errno=3DNetwork is
> unreachableERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Fetche=
r
> failure for URL: 'git://
> git.kernel.org/pub/scm/network/iproute2/iproute2.git'. Unable to fetch
> URL from any source.
> >> > ERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch:
> >> > ERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Function
> failed: base_do_fetch
> >> > ERROR: Logfile of failure stored in:
> /home/user/pdl/yocto_build/build/tmp-glibc/work/corei7-64-oe-linux/iprou=
te2/1.0-gitAUTOINC+97864a5af3-r0/temp/log.do_fetch.25170
> >> > ERROR: Task
> (/home/user/pdl/yocto_build/meta-intel-tsn/recipes-connectivity/iproute2=
/iproute2_git.bb:do_fetch)
> failed with exit code '1'
> >> > NOTE: Tasks Summary: Attempted 3220 tasks of which 0 didn't need to
> be rerun and 1 failed.Summary: 1 task failed:
> >> >
>  /home/user/pdl/yocto_build/meta-intel-tsn/recipes-connectivity/iproute2=
/iproute2_git.bb:
> do_fetch
> >> > Summary: There were 38 WARNING messages shown.
> >> > Summary: There were 4 ERROR messages shown, returning a non-zero ex=
it
> code.
> >> >
> >> > Anyone faced similar issue, please help us resolving this issue.
> >> >
> >> >=20
> >> >
>

--0000000000001fa91005b2e41c09
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi</div><div><br></div><div>Thank yo=
u for your response.sorry missed to include yocto group list.<br>I tried in=
 two different networks , one is office n/w and other is personal n/w.<br>B=
oth ways I got the same issue.</div><div><br></div><div>We could do it succ=
essively=C2=A0for the first time and later, we wanted to do it for the seco=
nd time, because we need to include Valgrind in</div><div>the config files =
so that we can run the Valgrind tool for our code.</div><div><br></div><div=
>Please let us know if there is any other alternative to install the Yocto =
OS or the Valgrind tool on Yocto OS.</div><div><br></div><div>Regards</div>=
<div>Sujan</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=
=3D"gmail_attr">On Fri, Oct 30, 2020 at 1:50 PM Josef Holzmayr &lt;<a href=
=
=3D"mailto:jester@theyoctojester.info">jester@theyoctojester.info</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">For one t=
hing, please keep the list on CC.<br>
<br>
Am Fr., 30. Okt. 2020 um 09:11 Uhr schrieb Sujan KS &lt;<a href=3D"mailto:=
katakam.sujan@gmail.com" target=3D"_blank">katakam.sujan@gmail.com</a>&gt;:=
<br>
&gt;<br>
&gt; Hi<br>
&gt;<br>
&gt; We tried all that. There are no n/w issues.<br>
&gt; We found some of the files needed are not available in github.<br>
&gt; Actually we use git commands to get the source code, which failed dur=
ing the build process and resulted in time out issue.<br>
<br>
Second, I have just verified that the URL<br>
git://<a href=3D"http://git.kernel.org/pub/scm/network/iproute2/iproute2.g=
it" rel=3D"noreferrer" target=3D"_blank">git.kernel.org/pub/scm/network/ipr=
oute2/iproute2.git</a> perfectly<br>
clones here. So it might be a problem with your provider or some<br>
national firewall - another hint is:<br>
<br>
<a href=3D"http://git.kernel.org" rel=3D"noreferrer" target=3D"_blank">git=
.kernel.org</a>[0: 147.75.46.191]: errno=3DConnection timed out<br>
<a href=3D"http://git.kernel.org" rel=3D"noreferrer" target=3D"_blank">git=
.kernel.org</a>[1: 2604:1380:4080:c00::1]: errno=3DNetwork is unreachable<b=
r>
<br>
But there&#39;s really nothing that we can do about it, sorry. It *IS* a<b=
r>
network issue somewhere between you and the source repository.<br>
<br>
Greetz.<br>
&gt;<br>
&gt; Please let us know how to proceed.<br>
&gt;<br>
&gt; Regards<br>
&gt; Sujan<br>
&gt;<br>
&gt;<br>
&gt; On Fri, Oct 30, 2020 at 1:28 PM Josef Holzmayr &lt;<a href=3D"mailto:=
jester@theyoctojester.info" target=3D"_blank">jester@theyoctojester.info</a=
>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Just given the links a quick try here, it seems like your build i=
s<br>
&gt;&gt; having connectivity issues. Please check you uplink, or if it is<=
br>
&gt;&gt; somehow filtered/proxied.<br>
&gt;&gt;<br>
&gt;&gt; Greetz<br>
&gt;&gt;<br>
&gt;&gt; Am Fr., 30. Okt. 2020 um 08:43 Uhr schrieb &lt;<a href=3D"mailto:=
katakam.sujan@gmail.com" target=3D"_blank">katakam.sujan@gmail.com</a>&gt;:=
<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; We are facing issue in yocto OS creation due to time out iss=
ue and unable to create the image.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; The log for this is as below,<br>
&gt;&gt; &gt; WARNING: xf86-video-intel-2_2.99.917-r0 do_fetch: Failed to =
fetch URL git://<a href=3D"http://anongit.freedesktop.org/xorg/driver/xf86-=
video-intel;branch=3Dmaster" rel=3D"noreferrer" target=3D"_blank">anongit.f=
reedesktop.org/xorg/driver/xf86-video-intel;branch=3Dmaster</a>, attempting=
 MIRRORS if available<br>
&gt;&gt; &gt; WARNING: xf86-video-ast-2_1.1.5-r0 do_fetch: Failed to fetch=
 URL <a href=3D"http://xorg.freedesktop.org/releases/individual/driver/xf86=
-video-ast-1.1.5.tar.bz2" rel=3D"noreferrer" target=3D"_blank">http://xorg.=
freedesktop.org/releases/individual/driver/xf86-video-ast-1.1.5.tar.bz2</a>=
, attempting MIRRORS if available<br>
&gt;&gt; &gt; WARNING: xinit-1_1.4.1-r0 do_fetch: Failed to fetch URL <a h=
ref=3D"http://xorg.freedesktop.org/releases/individual/app/xinit-1.4.1.tar.=
bz2" rel=3D"noreferrer" target=3D"_blank">http://xorg.freedesktop.org/relea=
ses/individual/app/xinit-1.4.1.tar.bz2</a>, attempting MIRRORS if available=
<br>
&gt;&gt; &gt; WARNING: cwautomacros-native-20110201-r0 do_fetch: Failed to=
 fetch URL <a href=3D"https://downloads.sourceforge.net/cwautomacros.berlio=
s/cwautomacros-20110201.tar.bz2" rel=3D"noreferrer" target=3D"_blank">https=
://downloads.sourceforge.net/cwautomacros.berlios/cwautomacros-20110201.tar=
.bz2</a>, attempting MIRRORS if available<br>
&gt;&gt; &gt; WARNING: intel-microcode-20190618-r0 do_fetch: Failed to fet=
ch URL git://<a href=3D"http://github.com/intel/Intel-Linux-Processor-Micro=
code-Data-Files.git;protocol=3Dhttps" rel=3D"noreferrer" target=3D"_blank">=
github.com/intel/Intel-Linux-Processor-Microcode-Data-Files.git;protocol=3D=
https</a>, attempting MIRRORS if available<br>
&gt;&gt; &gt; WARNING: lvm2-2.03.02-r0 do_fetch: Failed to fetch URL <a hr=
ef=3D"ftp://sources.redhat.com/pub/lvm2/releases/LVM2.2.03.02.tgz" rel=3D"n=
oreferrer" target=3D"_blank">ftp://sources.redhat.com/pub/lvm2/releases/LVM=
2.2.03.02.tgz</a>, attempting MIRRORS if available<br>
&gt;&gt; &gt; WARNING: xdpyinfo-1_1.3.2-r0 do_fetch: Failed to fetch URL <=
a href=3D"http://xorg.freedesktop.org/releases/individual/app/xdpyinfo-1.3.=
2.tar.bz2" rel=3D"noreferrer" target=3D"_blank">http://xorg.freedesktop.org=
/releases/individual/app/xdpyinfo-1.3.2.tar.bz2</a>, attempting MIRRORS if =
available<br>
&gt;&gt; &gt; WARNING: xhost-1_1.0.8-r0 do_fetch: Failed to fetch URL <a h=
ref=3D"http://xorg.freedesktop.org/releases/individual/app/xhost-1.0.8.tar.=
bz2" rel=3D"noreferrer" target=3D"_blank">http://xorg.freedesktop.org/relea=
ses/individual/app/xhost-1.0.8.tar.bz2</a>, attempting MIRRORS if available=
<br>
&gt;&gt; &gt; WARNING: linux-firmware-1_0.0+gitAUTOINC+711d3297ba-r0 do_fe=
tch: Failed to fetch URL git://<a href=3D"http://git.kernel.org/pub/scm/lin=
ux/kernel/git/firmware/linux-firmware.git" rel=3D"noreferrer" target=3D"_bl=
ank">git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git</a=
>, attempting MIRRORS if available<br>
&gt;&gt; &gt; WARNING: dpkg-1.19.4-r0 do_fetch: Failed to fetch URL <a hre=
f=3D"http://ftp.debian.org/debian/pool/main/d/dpkg/dpkg_1.19.4.tar.xz" rel=
=3D"noreferrer" target=3D"_blank">http://ftp.debian.org/debian/pool/main/d=
/dpkg/dpkg_1.19.4.tar.xz</a>, attempting MIRRORS if available<br>
&gt;&gt; &gt; WARNING: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Fai=
led to fetch URL git://<a href=3D"http://git.kernel.org/pub/scm/network/ipr=
oute2/iproute2.git" rel=3D"noreferrer" target=3D"_blank">git.kernel.org/pub=
/scm/network/iproute2/iproute2.git</a>, attempting MIRRORS if available<br>
&gt;&gt; &gt; ERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Fetch=
er failure: Fetch command export PSEUDO_DISABLED=3D1; unset _PYTHON_SYSCONF=
IGDATA_NAME; export DBUS_SESSION_BUS_ADDRESS=3D&quot;unix:abstract=3D/tmp/d=
bus-owimWyNVWV&quot;; export SSH_AUTH_SOCK=3D&quot;/run/user/1000/keyring/s=
sh&quot;; export PATH=3D&quot;/home/user/pdl/yocto_build/scripts:/home/user=
/pdl/yocto_build/build/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAU=
TOINC+97864a5af3-r0/recipe-sysroot-native/usr/bin/x86_64-oe-linux:/home/use=
r/pdl/yocto_build/build/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitA=
UTOINC+97864a5af3-r0/recipe-sysroot/usr/bin/crossscripts:/home/user/pdl/yoc=
to_build/build/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97=
864a5af3-r0/recipe-sysroot-native/usr/sbin:/home/user/pdl/yocto_build/build=
/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0/re=
cipe-sysroot-native/usr/bin:/home/user/pdl/yocto_build/build/tmp-glibc/work=
/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroot-na=
tive/sbin:/home/user/pdl/yocto_build/build/tmp-glibc/work/corei7-64-oe-linu=
x/iproute2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroot-native/bin:/home/use=
r/pdl/yocto_build/bitbake/bin:/home/user/pdl/yocto_build/build/tmp-glibc/ho=
sttools&quot;; export HOME=3D&quot;/home/user&quot;; LANG=3DC git -c core.f=
syncobjectfiles=3D0 clone --bare --mirror git://<a href=3D"http://git.kerne=
l.org/pub/scm/network/iproute2/iproute2.git" rel=3D"noreferrer" target=3D"_=
blank">git.kernel.org/pub/scm/network/iproute2/iproute2.git</a> /home/user/=
pdl/yocto_build/build/downloads/git2/git.kernel.org.pub.scm.network.iproute=
2.iproute2.git --progress failed with exit code 128, output:<br>
&gt;&gt; &gt; Cloning into bare repository &#39;/home/user/pdl/yocto_build=
/build/downloads/git2/git.kernel.org.pub.scm.network.iproute2.iproute2.git&=
#39;...<br>
&gt;&gt; &gt; fatal: unable to connect to <a href=3D"http://git.kernel.org=
" rel=3D"noreferrer" target=3D"_blank">git.kernel.org</a>:<br>
&gt;&gt; &gt; <a href=3D"http://git.kernel.org" rel=3D"noreferrer" target=
=3D"_blank">git.kernel.org</a>[0: 147.75.46.191]: errno=3DConnection timed=
 out<br>
&gt;&gt; &gt; <a href=3D"http://git.kernel.org" rel=3D"noreferrer" target=
=3D"_blank">git.kernel.org</a>[1: 2604:1380:4080:c00::1]: errno=3DNetwork =
is unreachableERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Fetche=
r failure for URL: &#39;git://<a href=3D"http://git.kernel.org/pub/scm/netw=
ork/iproute2/iproute2.git" rel=3D"noreferrer" target=3D"_blank">git.kernel.=
org/pub/scm/network/iproute2/iproute2.git</a>&#39;. Unable to fetch URL fro=
m any source.<br>
&gt;&gt; &gt; ERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch:<br>
&gt;&gt; &gt; ERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Funct=
ion failed: base_do_fetch<br>
&gt;&gt; &gt; ERROR: Logfile of failure stored in: /home/user/pdl/yocto_bu=
ild/build/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5=
af3-r0/temp/log.do_fetch.25170<br>
&gt;&gt; &gt; ERROR: Task (/home/user/pdl/yocto_build/meta-intel-tsn/recip=
es-connectivity/iproute2/iproute2_git.bb:do_fetch) failed with exit code &#=
39;1&#39;<br>
&gt;&gt; &gt; NOTE: Tasks Summary: Attempted 3220 tasks of which 0 didn&#3=
9;t need to be rerun and 1 failed.Summary: 1 task failed:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0/home/user/pdl/yocto_build/meta-intel-tsn/recipe=
s-connectivity/iproute2/iproute2_git.bb:do_fetch<br>
&gt;&gt; &gt; Summary: There were 38 WARNING messages shown.<br>
&gt;&gt; &gt; Summary: There were 4 ERROR messages shown, returning a non-=
zero exit code.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Anyone faced similar issue, please help us resolving this is=
sue.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; <br>
&gt;&gt; &gt;<br>
</blockquote></div></div>

--0000000000001fa91005b2e41c09--
