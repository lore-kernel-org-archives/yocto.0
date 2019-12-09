Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51])
 by mx.groups.io with SMTP id smtpd.web12.9678.1575890286219846503
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Dec 2019 03:18:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SUoifr9K;
 spf=pass (domain: gmail.com, ip: 209.85.222.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f51.google.com with SMTP id d6so5381544uam.11
        for <yocto@lists.yoctoproject.org>; Mon, 09 Dec 2019 03:18:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hoU+QZgHxGWfWWgoIXQrtp6n3zIfeV+mYR9TUDFBy0U=;
        b=SUoifr9Kcx2qWAbe5tH7D+0CWCQRslYLYOiwa7gUYWk9r7/45egwr88mJ99y4q1u4s
         ESojhrd/A0Qxwgvr5qCxyYWwToRSj82HRX2VcIcUUBl4ZXNGhsYTgRIYfA4QCiQwiRZz
         FD+0Ge7FtYaWjoyBEjza3csKwxW+G758GLirngPUJsVHfYK1UEJNWAro4ZzD1pYGa31V
         5cbwqpmRfoLUyw7GOGmJbroqccyBCi5pZ38BXntRO1NPAcODjU3+0a5eMHHUW6cbOCwj
         r/H010v+lRVSMFH0Ln640SUt2aEUXWJxpnU7DUvGmbzTOhJGk7Al7OgiNNPdVvynL296
         2xNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hoU+QZgHxGWfWWgoIXQrtp6n3zIfeV+mYR9TUDFBy0U=;
        b=CRQBrUZFiqP6I83eEe202MrUZBl0CaJR1syGISr1wcFgXeF91l0DQUYO+NLJbf6Bkw
         nWtJRukD94rpuTxtTS9v65eYhofHrWUFFLVbcMQ77n9S0q0X5+4qtC8kLXq8jj1058fo
         jJEX6jjVoRpuQAkEnWc5YDa+zNd0dQ40ftjq5NSs+BfRKVB5/rOagxOxdoNn7Y7fJrOD
         3hoAB0/PkCMp303fTIgFZeVzl31dmaYzXw4bB47oLbu6U/9HX7SCZGnoYAGS/SEZLazd
         zw0MhKrP2gPDJUsKNEHI4/sCDwHXDmLaiafoZvjS5/SzEAwkElavIX22fhoV+l1XAQ3r
         /r+w==
X-Gm-Message-State: APjAAAXKgBySLx0pI9sQBdfI/q9D9bx5FHM8qMl5bLjRYNYR5aVbO+SR
	JyjjMXS48c7l6Jw1W79ofXe2P96SE+CaXofvWXE=
X-Google-Smtp-Source: APXvYqw2jl4WNJkGnABmVaF2Jn2mr3N7yVZyDtb6sf+EobLNeU6eq21v6S+80RGvTnLx9PJSjLe19wS9H99eh8pPLNg=
X-Received: by 2002:ab0:6894:: with SMTP id t20mr24057712uar.100.1575890285281;
 Mon, 09 Dec 2019 03:18:05 -0800 (PST)
MIME-Version: 1.0
References: <98NB.1575840802217143019.f9l4@lists.yoctoproject.org>
In-Reply-To: <98NB.1575840802217143019.f9l4@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 9 Dec 2019 12:17:54 +0100
Message-ID: <CANNYZj85keN+CBps7-ooqwYcAGhS+oOx0E-RrTtpq1Ga8bHLQg@mail.gmail.com>
Subject: Re: [yocto] Unable to build core-image-full-cmdline on openSUSE Leap 15.1: dnf can't find _curses module in do_rootfs task
To: Rebecca Cran <rebecca@bsdio.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a8c7440599438c1d"

--000000000000a8c7440599438c1d
Content-Type: text/plain; charset="UTF-8"

This error means native python3 was somehow built without curses, or isn't
able to use the curses module that was built, so installing host packages
isn't going to help. You need to look into how python3 was built and
installed into recipe-sysroot-native. I can't offer more specific guidance
than that unfortunately.

Alex

On Sun, 8 Dec 2019 at 22:33, Rebecca Cran <rebecca@bsdio.com> wrote:

> I recently switched from Ubuntu 19.10 to openSUSE Leap 15.1, but I'm
> having problems building core-image-full-cmdline on it. I've installed all
> the host packages I can think of, including python-curses and
> python3-curses, with no success.
>
> I'm on the zeus branch, and running "bitbake core-image-full-cmdline"
> results in the following error when running the do_rootfs task:
>
> ERROR: core-image-full-cmdline-1.0-r0 do_rootfs: Could not invoke dnf.
> Command
> '/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/bin/dnf
> -v --rpmverbosity=info -y -c
> /home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/rootfs/etc/dnf/dnf.conf
> --setopt=reposdir=/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/rootfs/etc/yum.repos.d
> --installroot=/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/rootfs
> --setopt=logdir=/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/temp
> --repofrompath=oe-repo,/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/oe-rootfs-repo
> makecache --refresh' returned 1:
> Traceback (most recent call last):
>   File
> "/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/bin/dnf.real",
> line 57, in <module>
>     from dnf.cli import main
>   File
> "/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/lib/python3.7/site-packages/dnf/cli/__init__.py",
> line 30, in <module>
>     from dnf.cli.cli import Cli  # :api
>   File
> "/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/lib/python3.7/site-packages/dnf/cli/cli.py",
> line 44, in <module>
>     from . import output
>   File
> "/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/lib/python3.7/site-packages/dnf/cli/output.py",
> line 34, in <module>
>     import dnf.cli.progress
>   File
> "/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/lib/python3.7/site-packages/dnf/cli/progress.py",
> line 19, in <module>
>     from dnf.cli.term import _term_width
>   File
> "/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/lib/python3.7/site-packages/dnf/cli/term.py",
> line 21, in <module>
>     import curses
>   File
> "/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/lib/python3.7/curses/__init__.py",
> line 13, in <module>
>     from _curses import *
> ModuleNotFoundError: No module named '_curses'
>
> ERROR: Logfile of failure stored in:
> /home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/temp/log.do_rootfs.40254
> ERROR: Task
> (/home/bcran/src/fsl-community-bsp/sources/poky/meta/recipes-extended/images/core-image-full-cmdline.bb:do_rootfs)
> failed with exit code '1'
>
> --
> Rebecca Cran -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47593):
> https://lists.yoctoproject.org/g/yocto/message/47593
> Mute This Topic: https://lists.yoctoproject.org/mt/67777408/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

--000000000000a8c7440599438c1d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This error means native python3 was somehow built wit=
hout curses, or isn&#39;t able to use the curses module that was built, so =
installing host packages isn&#39;t going to help. You need to look into how=
 python3 was built and installed into recipe-sysroot-native. I can&#39;t of=
fer more specific guidance than that unfortunately.</div><div><br></div><di=
v>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sun, 8 Dec 2019 at 22:33, Rebecca Cran &lt;<a href=3D"ma=
ilto:rebecca@bsdio.com">rebecca@bsdio.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">I recently switched from Ubuntu 19=
.10 to openSUSE Leap 15.1, but I&#39;m having problems building core-image-=
full-cmdline on it. I&#39;ve installed all the host packages I can think of=
, including python-curses and python3-curses, with no success.<br><br>I&#39=
;m on the zeus branch, and running &quot;bitbake core-image-full-cmdline&qu=
ot; results in the following error when running the do_rootfs task:<br><br>=
ERROR: core-image-full-cmdline-1.0-r0 do_rootfs: Could not invoke dnf. Comm=
and &#39;/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6sle=
vk-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/=
usr/bin/dnf -v --rpmverbosity=3Dinfo -y -c /home/bcran/src/fsl-community-bs=
p/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmd=
line/1.0-r0/rootfs/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/home/bcran/src/f=
sl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core=
-image-full-cmdline/1.0-r0/rootfs/etc/yum.repos.d --installroot=3D/home/bcr=
an/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnue=
abi/core-image-full-cmdline/1.0-r0/rootfs --setopt=3Dlogdir=3D/home/bcran/s=
rc/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/=
core-image-full-cmdline/1.0-r0/temp --repofrompath=3Doe-repo,/home/bcran/sr=
c/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/c=
ore-image-full-cmdline/1.0-r0/oe-rootfs-repo makecache --refresh&#39; retur=
ned 1:<br>Traceback (most recent call last):<br>=C2=A0 File &quot;/home/bcr=
an/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnue=
abi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/bin/dnf.real&q=
uot;, line 57, in &lt;module&gt;<br>=C2=A0=C2=A0=C2=A0 from dnf.cli import =
main<br>=C2=A0 File &quot;/home/bcran/src/fsl-community-bsp/build-imx6slevk=
/tmp/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recip=
e-sysroot-native/usr/lib/python3.7/site-packages/dnf/cli/__init__.py&quot;,=
 line 30, in &lt;module&gt;<br>=C2=A0=C2=A0=C2=A0 from dnf.cli.cli import C=
li=C2=A0 # :api<br>=C2=A0 File &quot;/home/bcran/src/fsl-community-bsp/buil=
d-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1=
.0-r0/recipe-sysroot-native/usr/lib/python3.7/site-packages/dnf/cli/cli.py&=
quot;, line 44, in &lt;module&gt;<br>=C2=A0=C2=A0=C2=A0 from . import outpu=
t<br>=C2=A0 File &quot;/home/bcran/src/fsl-community-bsp/build-imx6slevk/tm=
p/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-s=
ysroot-native/usr/lib/python3.7/site-packages/dnf/cli/output.py&quot;, line=
 34, in &lt;module&gt;<br>=C2=A0=C2=A0=C2=A0 import dnf.cli.progress<br>=C2=
=A0 File &quot;/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/i=
mx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-n=
ative/usr/lib/python3.7/site-packages/dnf/cli/progress.py&quot;, line 19, i=
n &lt;module&gt;<br>=C2=A0=C2=A0=C2=A0 from dnf.cli.term import _term_width=
<br>=C2=A0 File &quot;/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp=
/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sy=
sroot-native/usr/lib/python3.7/site-packages/dnf/cli/term.py&quot;, line 21=
, in &lt;module&gt;<br>=C2=A0=C2=A0=C2=A0 import curses<br>=C2=A0 File &quo=
t;/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc=
-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/lib=
/python3.7/curses/__init__.py&quot;, line 13, in &lt;module&gt;<br>=C2=A0=
=C2=A0=C2=A0 from _curses import *<br>ModuleNotFoundError: No module named =
&#39;_curses&#39;<br><br>ERROR: Logfile of failure stored in: /home/bcran/s=
rc/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/=
core-image-full-cmdline/1.0-r0/temp/log.do_rootfs.40254<br>ERROR: Task (/ho=
me/bcran/src/fsl-community-bsp/sources/poky/meta/recipes-extended/images/co=
re-image-full-cmdline.bb:do_rootfs) failed with exit code &#39;1&#39;<br><b=
r>-- <br>Rebecca Cran
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
<br>
View/Reply Online (#47593): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/47593" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/47593</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/67777408/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/67777408/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a>=C2=A0 [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">=
alex.kanavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
</blockquote></div>

--000000000000a8c7440599438c1d--
