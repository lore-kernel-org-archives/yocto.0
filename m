Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
 by mx.groups.io with SMTP id smtpd.web12.7918.1581094848975188499
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Feb 2020 09:00:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fKpH3B4g;
 spf=pass (domain: gmail.com, ip: 209.85.217.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f43.google.com with SMTP id p14so23591vsq.6
        for <yocto@lists.yoctoproject.org>; Fri, 07 Feb 2020 09:00:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pFm9xJrULO6md45MNOhiTdXqVCx+RbrP/P98QjWXTkA=;
        b=fKpH3B4g2ytEDzHt9ag1uIM5JVewtRhh/al1WPPD3+yC4DVbzMC6xthoOCB3vO/dL5
         pF40efLx1GeqaDDzQoNHe5vigUgfvbXKagdAAKwiGLdV3hcHEhG3lRIw7918ldqPA/1A
         OD+774+qIVSdy9HjvqBAwpuhBsFzuGFeWIT/3dGbyU+f/TB4zYrv60518Xjw81XLxVyn
         v3+IdedhM99Sf3VX8TFgNuC411menCgDgg8W4j7TcCVFKQ8W8AemhIXOId70h+MLWSSN
         jWMAZ8NKTL9lAWzstK61FquaHk52IW1phTrUfXfRNJo6imDrevTU3XCo/3ZEtTY9DeRs
         Kc2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pFm9xJrULO6md45MNOhiTdXqVCx+RbrP/P98QjWXTkA=;
        b=kjPaKj8non01vvDOVp0AB6l0Q+8NuzyAlDAPNjHJSOLs/zBI5VB7740ZQzFQZTd5s/
         yomcs7EC/Tes1UnkipfPhHLpcK0/nKQusyqyhkaRkfrf8Xk9yjoZ8KNqBnAkFwDlpWl/
         Yj3ibZiq7vi10jvuXJijX0E2iCjtg3g7uWi5xWdpMxHs6wUYhpiLyQA+DeqyeO8GwpSS
         cv8JJAmpUtLEWtU3ledY9i++0ylY15JJ7zUmYIuV43+lXUQD0rt9IHLl/ueAC/YiEy6o
         tlHuisfDB+LnPcXZGpTXLb4794S+4kDOvxlvmA3Dy/dY3HhYU7BhUR/ozJR+cdM5KZpH
         xaJA==
X-Gm-Message-State: APjAAAXFgJ+cDLYyDC8ESQX7A3H2KNJXILJCzV+a15yt2DlKdCcjLbNd
	KNlGgL/oALTJsAbg4ibzIkQ5/co+Gd+0e38w9H48Mw==
X-Google-Smtp-Source: APXvYqw1lbD4YikME7Bi3FqgZ4caWIw3gPaRZRHenHVpkIKs0vEz5P3Me5Zx341mAAER+5yveJFiq4Z2SXZzfMNGk/M=
X-Received: by 2002:a05:6102:52e:: with SMTP id m14mr64699vsa.25.1581094847830;
 Fri, 07 Feb 2020 09:00:47 -0800 (PST)
MIME-Version: 1.0
References: <v4uE.1581092927230845408.DXQ8@lists.yoctoproject.org>
In-Reply-To: <v4uE.1581092927230845408.DXQ8@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 7 Feb 2020 18:01:21 +0100
Message-ID: <CANNYZj8dti3bNDe+yz2ymsE05mjwkR4LDsV6bAsJ2mmOqB+mCw@mail.gmail.com>
Subject: Re: [yocto] Can't build poky with 'out of the box' defaults and settings
To: OliverYSedlacek <owy@sevensoftltd.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c2dfcd059dff54d9"

--000000000000c2dfcd059dff54d9
Content-Type: text/plain; charset="UTF-8"

The DISTRO_VERSION in your log is not 2.7 or 3.0, it is 1.8, which is
ancient and won't build on current Debian. How did you set up the source
tree?

Alex

On Fri, 7 Feb 2020 at 17:28, OliverYSedlacek <owy@sevensoftltd.com> wrote:

> I've been tasked with setting up Yocto builds and I thought I'd better
> start with the simplest possible build of Poky. I've tried Yocto 2.7.1 and
> Yocto 3.0.1 on Debian 9 and Debian 10 but they all fail on the bitbake
> command. The simplest failure comes from a Debian 10/Yocto
> 3.0.1/core-image-minimal build, so I've included the output. Where do I go
> from here?
>
> olivers@isembard-deb:~/poky/build$ bitbake -k core-image-minimal
>
> WARNING: Host distribution "Debian-10" has not been validated with this
> version of the build system; you may possibly experience unexpected
> failures. It is recommended that you use a tested distribution.
>
> Loading cache: 100%
> |###############################################################################################|
> ETA:  00:00:00
>
> Loaded 1287 entries from dependency cache.
>
> NOTE: Resolving any missing task queue dependencies
>
>
> Build Configuration:
>
> BB_VERSION        = "1.26.0"
>
> BUILD_SYS         = "x86_64-linux"
>
> NATIVELSBSTRING   = "Debian-10"
>
> TARGET_SYS        = "i586-poky-linux"
>
> MACHINE           = "qemux86"
>
> DISTRO            = "poky"
>
> DISTRO_VERSION    = "1.8.2"
>
> TUNE_FEATURES     = "m32 i586"
>
> TARGET_FPU        = ""
>
> meta
>
> meta-yocto
>
> meta-yocto-bsp    = "fido:87631919819b6f85f23f57689cd1065c64d7fb03"
>
>
> NOTE: Preparing RunQueue
>
> NOTE: Executing SetScene Tasks
>
> NOTE: Executing RunQueue Tasks
>
> ERROR: Function failed: do_compile (log file is located at
> /home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/temp/log.do_compile.27321)
>
> ERROR: Logfile of failure stored in:
> /home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/temp/log.do_compile.27321
>
> Log data follows:
>
> | DEBUG: Executing shell function do_compile
>
> | NOTE: make -j 1
> infodir=/home/olivers/poky/build/tmp/sysroots/x86_64-linux/usr/share/info
>
> | make  all-recursive
>
> | make[1]: Entering directory
> '/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/build'
>
> | Making all in .
>
> | make[2]: Entering directory
> '/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/build'
>
> | make[2]: Nothing to be done for 'all-am'.
>
> | make[2]: Leaving directory
> '/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/build'
>
> | Making all in examples
>
> | make[2]: Entering directory
> '/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/build/examples'
>
> | make[2]: Nothing to be done for 'all'.
>
> | make[2]: Leaving directory
> '/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/build/examples'
>
> | Making all in lib
>
> | make[2]: Entering directory
> '/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/build/lib'
>
> | make  all-am
>
> | make[3]: Entering directory
> '/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/build/lib'
>
> | gcc   -I.
> -I/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/m4-1.4.17/lib
> -isystem/home/olivers/poky/build/tmp/sysroots/x86_64-linux/usr/include
> -isystem/home/olivers/poky/build/tmp/sysroots/x86_64-linux/usr/include -O2
> -pipe -c -o freadahead.o
> /home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/m4-1.4.17/lib/freadahead.c
>
> |
> /home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/m4-1.4.17/lib/freadahead.c:
> In function 'freadahead':
>
> |
> /home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/m4-1.4.17/lib/freadahead.c:91:3:
> error: #error "Please port gnulib freadahead.c to your platform! Look at
> the definition of fflush, fread, ungetc on your system, then report this to
> bug-gnulib."
>
> |   #error "Please port gnulib freadahead.c to your platform! Look at the
> definition of fflush, fread, ungetc on your system, then report this to
> bug-gnulib."
>
> |    ^~~~~
>
> | make[3]: *** [Makefile:1842: freadahead.o] Error 1
>
> | make[3]: Leaving directory
> '/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/build/lib'
>
> | make[2]: *** [Makefile:1602: all] Error 2
>
> | make[2]: Leaving directory
> '/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/build/lib'
>
> | make[1]: *** [Makefile:1506: all-recursive] Error 1
>
> | make[1]: Leaving directory
> '/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/build'
>
> | make: *** [Makefile:1461: all] Error 2
>
> | ERROR: oe_runmake failed
>
> | WARNING: exit code 1 from a shell command.
>
> | ERROR: Function failed: do_compile (log file is located at
> /home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/temp/log.do_compile.27321)
>
> ERROR: Task 947 (/home/olivers/poky/meta/recipes-devtools/m4/
> m4-native_1.4.17.bb, do_compile) failed with exit code '1'
>
> NOTE: Tasks Summary: Attempted 725 tasks of which 724 didn't need to be
> rerun and 1 failed.
>
> No currently running tasks (27 of 2034)
>
>
> Summary: 1 task failed:
>
>   /home/olivers/poky/meta/recipes-devtools/m4/m4-native_1.4.17.bb,
> do_compile
>
> Summary: There was 1 WARNING message shown.
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
> 
>

--000000000000c2dfcd059dff54d9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The DISTRO_VERSION in your log is not 2.7 or 3.0, it is 1.=
8, which is ancient and won&#39;t build on current Debian. How did you set =
up the source tree?<div><br></div><div>Alex</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 7 Feb 2020 at 17:2=
8, OliverYSedlacek &lt;<a href=3D"mailto:owy@sevensoftltd.com">owy@sevensof=
tltd.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;bor=
der-left-color:rgb(204,204,204);padding-left:1ex">I&#39;ve been tasked with=
 setting up Yocto builds and I thought I&#39;d better start with the simple=
st possible build of Poky. I&#39;ve tried Yocto 2.7.1 and Yocto 3.0.1 on De=
bian 9 and Debian 10 but they all fail on the bitbake command. The simplest=
 failure comes from a Debian 10/Yocto 3.0.1/core-image-minimal build, so I&=
#39;ve included the output. Where do I go from here?
<blockquote>olivers@isembard-deb:~/poky/build$ bitbake -k core-image-minim=
al<br><br>WARNING: Host distribution &quot;Debian-10&quot; has not been val=
idated with this version of the build system; you may possibly experience u=
nexpected failures. It is recommended that you use a tested distribution.<b=
r><br>Loading cache: 100% |################################################=
###############################################| ETA:=C2=A0 00:00:00<br><br=
>Loaded 1287 entries from dependency cache.<br><br>NOTE: Resolving any miss=
ing task queue dependencies<br><br><br>Build Configuration:<br><br>BB_VERSI=
ON=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.26.0&quot;<br><br>=
BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-=
linux&quot;<br><br>NATIVELSBSTRING=C2=A0=C2=A0 =3D &quot;Debian-10&quot;<br=
><br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;i586-po=
ky-linux&quot;<br><br>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D &quot;qemux86&quot;<br><br>DISTRO=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;<br><br>=
DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D &quot;1.8.2&quot;<br><br>TUNE_FEATURES=
=
=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;m32 i586&quot;<br><br>TARGET_FPU=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;&quot;<br><br>meta=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>=
<br>meta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br><br>meta-yocto=
-bsp=C2=A0=C2=A0=C2=A0 =3D &quot;fido:87631919819b6f85f23f57689cd1065c64d7f=
b03&quot;<br><br><br>NOTE: Preparing RunQueue<br><br>NOTE: Executing SetSce=
ne Tasks<br><br>NOTE: Executing RunQueue Tasks<br><br>ERROR: Function faile=
d: do_compile (log file is located at /home/olivers/poky/build/tmp/work/x86=
_64-linux/m4-native/1.4.17-r0/temp/log.do_compile.27321)<br><br>ERROR: Logf=
ile of failure stored in: /home/olivers/poky/build/tmp/work/x86_64-linux/m4=
-native/1.4.17-r0/temp/log.do_compile.27321<br><br>Log data follows:<br><br=
>| DEBUG: Executing shell function do_compile<br><br>| NOTE: make -j 1 info=
dir=3D/home/olivers/poky/build/tmp/sysroots/x86_64-linux/usr/share/info<br>=
<br>| make=C2=A0 all-recursive<br><br>| make[1]: Entering directory &#39;/h=
ome/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/build&#39;=
<br><br>| Making all in .<br><br>| make[2]: Entering directory &#39;/home/o=
livers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/build&#39;<br><=
br>| make[2]: Nothing to be done for &#39;all-am&#39;.<br><br>| make[2]: Le=
aving directory &#39;/home/olivers/poky/build/tmp/work/x86_64-linux/m4-nati=
ve/1.4.17-r0/build&#39;<br><br>| Making all in examples<br><br>| make[2]: E=
ntering directory &#39;/home/olivers/poky/build/tmp/work/x86_64-linux/m4-na=
tive/1.4.17-r0/build/examples&#39;<br><br>| make[2]: Nothing to be done for=
 &#39;all&#39;.<br><br>| make[2]: Leaving directory &#39;/home/olivers/poky=
/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/build/examples&#39;<br><br=
>| Making all in lib<br><br>| make[2]: Entering directory &#39;/home/oliver=
s/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/build/lib&#39;<br><b=
r>| make=C2=A0 all-am<br><br>| make[3]: Entering directory &#39;/home/olive=
rs/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/build/lib&#39;<br><=
br>| gcc=C2=A0=C2=A0 -I. -I/home/olivers/poky/build/tmp/work/x86_64-linux/m=
4-native/1.4.17-r0/m4-1.4.17/lib=C2=A0=C2=A0 -isystem/home/olivers/poky/bui=
ld/tmp/sysroots/x86_64-linux/usr/include=C2=A0 -isystem/home/olivers/poky/b=
uild/tmp/sysroots/x86_64-linux/usr/include -O2 -pipe -c -o freadahead.o /ho=
me/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/m4-1.4.17/l=
ib/freadahead.c<br><br>| /home/olivers/poky/build/tmp/work/x86_64-linux/m4-=
native/1.4.17-r0/m4-1.4.17/lib/freadahead.c: In function &#39;freadahead&#3=
9;:<br><br>| /home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.1=
7-r0/m4-1.4.17/lib/freadahead.c:91:3: error: #error &quot;Please port gnuli=
b freadahead.c to your platform! Look at the definition of fflush, fread, u=
ngetc on your system, then report this to bug-gnulib.&quot;<br><br>|=C2=A0=
=C2=A0 #error &quot;Please port gnulib freadahead.c to your platform! Look=
 at the definition of fflush, fread, ungetc on your system, then report thi=
s to bug-gnulib.&quot;<br><br>|=C2=A0=C2=A0=C2=A0 ^~~~~<br><br>| make[3]: *=
** [Makefile:1842: freadahead.o] Error 1<br><br>| make[3]: Leaving director=
y &#39;/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/b=
uild/lib&#39;<br><br>| make[2]: *** [Makefile:1602: all] Error 2<br><br>| m=
ake[2]: Leaving directory &#39;/home/olivers/poky/build/tmp/work/x86_64-lin=
ux/m4-native/1.4.17-r0/build/lib&#39;<br><br>| make[1]: *** [Makefile:1506:=
 all-recursive] Error 1<br><br>| make[1]: Leaving directory &#39;/home/oliv=
ers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/build&#39;<br><br>=
| make: *** [Makefile:1461: all] Error 2<br><br>| ERROR: oe_runmake failed<=
br><br>| WARNING: exit code 1 from a shell command.<br><br>| ERROR: Functio=
n failed: do_compile (log file is located at /home/olivers/poky/build/tmp/w=
ork/x86_64-linux/m4-native/1.4.17-r0/temp/log.do_compile.27321)<br><br>ERRO=
R: Task 947 (/home/olivers/poky/meta/recipes-devtools/m4/<a href=3D"http://=
m4-native_1.4.17.bb" target=3D"_blank">m4-native_1.4.17.bb</a>, do_compile)=
 failed with exit code &#39;1&#39;<br><br>NOTE: Tasks Summary: Attempted 72=
5 tasks of which 724 didn&#39;t need to be rerun and 1 failed.<br><br>No cu=
rrently running tasks (27 of 2034)<br><br><br>Summary: 1 task failed:<br><b=
r>=C2=A0 /home/olivers/poky/meta/recipes-devtools/m4/<a href=3D"http://m4-n=
ative_1.4.17.bb" target=3D"_blank">m4-native_1.4.17.bb</a>, do_compile<br><=
br>Summary: There was 1 WARNING message shown.<br><br>Summary: There was 1 =
ERROR message shown, returning a non-zero exit code.<br><br><br></blockquot=
e>
<br>
</blockquote></div>

--000000000000c2dfcd059dff54d9--
