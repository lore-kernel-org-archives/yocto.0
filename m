Return-Path: <twoerner@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7DA8E00294
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 15:52:29 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id k6so10010586lbo.35
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 15:52:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=BiYRWUYcpi5baeGkuPx5r738nH6/RFnFMl5zjaa6JoU=;
	b=BvH4+aECQ891ZDiv18472hZZPXE0+BPGqOzQwXFHV5cVSHsr61OQQamJDxM/5GKYuF
	ZZfJS3s7o5dZuguUsxebEK3SYKp/loWQ5OthBE1CP+w6r9HXqHmSwpUY+yicYNSQGLb4
	ala9Dwu2xZRuSC/sgtB++X/uICgnGH9GqfcGnpeJ066gtaMIUkvXJsTStPIF3ijQuKVM
	+GqX2rn6Y/w2v4mp4TV3cnyHjhtgWEwSaZ36EeV8ymZXQGjM5GKCDHiH8GrLQl6+o8+V
	Sjhvi1Jv44I7aw0fXsjF6hlOaFbFFZZ5k8wx4XjysPprwWuBiiqnI0Wr40OtCw29RV1A
	km/w==
MIME-Version: 1.0
Received: by 10.112.84.168 with SMTP id a8mr247332lbz.75.1353973948253; Mon,
	26 Nov 2012 15:52:28 -0800 (PST)
Received: by 10.112.117.194 with HTTP; Mon, 26 Nov 2012 15:52:28 -0800 (PST)
In-Reply-To: <20121126190407.GA69689@gmail.com>
References: <CAHUNapSSawC9WwpdoNdg4vHBY6Yh3UycqYgOyX_pbTNw3S0Etg@mail.gmail.com>
	<CAHUNapSVRuxDxn9L=oHg6aO-RKso2VNF6Mczaf2zwgxHn2zzBw@mail.gmail.com>
	<20121126190407.GA69689@gmail.com>
Date: Mon, 26 Nov 2012 18:52:28 -0500
Message-ID: <CAHUNapRZ2Fg_=G5gv7SGE0__3n7PjKk0R362V_w1nST5AuQpGQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: =?ISO-8859-1?Q?Eren_T=FCrkay?= <eren@hambedded.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: IMAGE_INSTALL_append workflow
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 26 Nov 2012 23:52:30 -0000
Content-Type: multipart/alternative; boundary=f46d04016cad38865404cf6ea090

--f46d04016cad38865404cf6ea090
Content-Type: text/plain; charset=ISO-8859-1

Thank you so much for having a crack at this. Your results have allowed me
to dig a bit deeper into this issue.

I'm still trying to narrow down the exact issue but here's what I have so
far.

I'm working with the git repository, but I've been playing around with this
for about a week, so I'm not 100% up to date. Specifically I'm using:

master:c206007235df3e00c21a1cbf30e8a1bccc07a9e5

Starting with that repository I follow the regular steps:

$ poky/oe-init-build qemux86

then I edit the conf/local.conf to end up with the following (virtually no
changes, just the lines at the end):

PARALLEL_MAKE = "-j 8"
MACHINE ??= "qemux86"
DISTRO ?= "poky"
PACKAGE_CLASSES ?= "package_rpm"
EXTRA_IMAGE_FEATURES = "debug-tweaks"
USER_CLASSES ?= "buildstats image-mklibs image-prelink"
PATCHRESOLVE = "noop"
CONF_VERSION = "1"

BB_DANGLINGAPPENDS_WARNONLY = "yes"
PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"

then I perform

$ bitbake core-image-minimal

everything goes well. I then add the following line to the end of my
conf/local.conf

IMAGE_INSTALL_append = " trace-cmd"

and run

$ bitbake core-image-minimal

everything builds just fine.

Then I modify that last line as follows:

IMAGE_INSTALL_append = " trace-cmd bash"

now when I try to build I get:

Build Configuration:
BB_VERSION        = "1.16.0"
TARGET_ARCH       = "i586"
TARGET_OS         = "linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20121126"
TUNE_FEATURES     = "m32 i586"
TARGET_FPU        = ""
meta
meta-yocto
meta-yocto-bsp    = "master:c206007235df3e00c21a1cbf30e8a1bccc07a9e5"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Function failed: do_rootfs (see
/home/trevor/devel/yocto/gitrepo-method/qemux86/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_rootfs.19668
for further information)
ERROR: Logfile of failure stored in:
/home/trevor/devel/yocto/gitrepo-method/qemux86/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_rootfs.19668
Log data follows:
| DEBUG: Executing shell function do_rootfs
| Generating solve db for
/home/trevor/devel/yocto/gitrepo-method/qemux86/tmp/deploy/rpm/qemux86...
| Generating solve db for
/home/trevor/devel/yocto/gitrepo-method/qemux86/tmp/deploy/rpm/i586...
| Generating solve db for
/home/trevor/devel/yocto/gitrepo-method/qemux86/tmp/deploy/rpm/all...
|    total:               1      0.000000 MB      2.930406 secs
|    fingerprint:      1104      0.032554 MB      0.063469 secs
|    install:           368      0.000000 MB      0.878790 secs
|    digest:            736      5.357010 MB      0.027508 secs
|    signature:         736      0.000000 MB      1.443277 secs
|    dbadd:             368      0.000000 MB      0.866237 secs
|    dbget:           12620      0.000000 MB      0.018020 secs
|    dbput:             368      3.063072 MB      0.541058 secs
|    readhdr:          3681      6.087218 MB      0.010347 secs
|    hdrload:          1929     10.076294 MB      0.012106 secs
|    hdrget:          70812      0.000000 MB      0.081749 secs
| Generating solve db for
/home/trevor/devel/yocto/gitrepo-method/qemux86/tmp/deploy/rpm/all...
| Processing packagegroup-core-boot...
| Processing trace-cmd...
| Processing bash...
| Unable to resolve package bash
| ERROR: some packages were missing
| ERROR: Function failed: do_rootfs (see
/home/trevor/devel/yocto/gitrepo-method/qemux86/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_rootfs.19668
for further information)
ERROR: Task 7
(/home/trevor/devel/yocto/gitrepo-method/poky/meta/recipes-core/images/
core-image-minimal.bb, do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1443 tasks of which 1442 didn't need to be
rerun and 1 failed.
No currently running tasks (1442 of 1444)

Summary: 1 task failed:
  /home/trevor/devel/yocto/gitrepo-method/poky/meta/recipes-core/images/
core-image-minimal.bb, do_rootfs
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

Can anyone reproduce this? It doesn't make sense.

Initially when I first saw this problem, I had been using building
"core-image-rt" so I thought it had something to do with that image. But my
tests from today seem to indicate that it doesn't since I was able to
reproduce my problem with "core-image-minimal" too.

I haven't yet figured out if the "PREFERRED_PROVIDER_virtual/kernel =
"linux-yocto-rt"" line might be the culprit.

--f46d04016cad38865404cf6ea090
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thank you so much for having a crack at this. Your results have allowed me =
to dig a bit deeper into this issue.<br><br>I&#39;m still trying to narrow =
down the exact issue but here&#39;s what I have so far.<br><br>I&#39;m work=
ing with the git repository, but I&#39;ve been playing around with this for=
 about a week, so I&#39;m not 100% up to date. Specifically I&#39;m using:<=
br>
<br><div style=3D"margin-left:40px"><span class=3D""></span><span class=3D"=
"></span>master:c206007235df3e00c21a1cbf30e8a1bccc07a9e5<br></div><br>Start=
ing with that repository I follow the regular steps:<br><br><div style=3D"m=
argin-left:40px">
$ poky/oe-init-build qemux86<br></div><br>then I edit the conf/local.conf t=
o end up with the following (virtually no changes, just the lines at the en=
d):<br><br><div style=3D"margin-left:40px">PARALLEL_MAKE =3D &quot;-j 8&quo=
t;<br>
MACHINE ??=3D &quot;qemux86&quot;<br>DISTRO ?=3D &quot;poky&quot;<br>PACKAG=
E_CLASSES ?=3D &quot;package_rpm&quot;<br>EXTRA_IMAGE_FEATURES =3D &quot;de=
bug-tweaks&quot;<br>USER_CLASSES ?=3D &quot;buildstats image-mklibs image-p=
relink&quot;<br>
PATCHRESOLVE =3D &quot;noop&quot;<br>CONF_VERSION =3D &quot;1&quot;<br><br>=
BB_DANGLINGAPPENDS_WARNONLY =3D &quot;yes&quot;<br>PREFERRED_PROVIDER_virtu=
al/kernel =3D &quot;linux-yocto-rt&quot;<br></div><br>then I perform<br><br=
><div style=3D"margin-left:40px">
$ bitbake core-image-minimal<br></div><br>everything goes well. I then add =
the following line to the end of my conf/local.conf<br><br><div style=3D"ma=
rgin-left:40px">IMAGE_INSTALL_append =3D &quot; trace-cmd&quot;<br></div><b=
r>
and run<br><br><div style=3D"margin-left:40px">$ bitbake core-image-minimal=
<br></div><br>everything builds just fine.<br><br>Then I modify that last l=
ine as follows:<br><br><div style=3D"margin-left:40px">IMAGE_INSTALL_append=
 =3D &quot; trace-cmd bash&quot;<br>
</div><br>now when I try to build I get:<br><br><div style=3D"margin-left:4=
0px">Build Configuration:<br>BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.16=
.0&quot;<br>TARGET_ARCH=A0=A0=A0=A0=A0=A0 =3D &quot;i586&quot;<br>TARGET_OS=
=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;linux&quot;<br>
MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;qemux86&quot;<br>DISTRO=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=A0=
=A0 =3D &quot;1.3+snapshot-20121126&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D =
&quot;m32 i586&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;&quot;<br=
>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>
meta-yocto=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto-bsp=A0=A0=A0 =3D &quot;maste=
r:c206007235df3e00c21a1cbf30e8a1bccc07a9e5&quot;<br><br>NOTE: Resolving any=
 missing task queue dependencies<br>NOTE: Preparing runqueue<br>NOTE: Execu=
ting SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>ERROR: Function failed: do_rootfs (see /h=
ome/trevor/devel/yocto/gitrepo-method/qemux86/tmp/work/qemux86-poky-linux/c=
ore-image-minimal/1.0-r0/temp/log.do_rootfs.19668 for further information)<=
br>
ERROR: Logfile of failure stored in: /home/trevor/devel/yocto/gitrepo-metho=
d/qemux86/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do=
_rootfs.19668<br>Log data follows:<br>| DEBUG: Executing shell function do_=
rootfs<br>
| Generating solve db for /home/trevor/devel/yocto/gitrepo-method/qemux86/t=
mp/deploy/rpm/qemux86...<br>| Generating solve db for /home/trevor/devel/yo=
cto/gitrepo-method/qemux86/tmp/deploy/rpm/i586...<br>| Generating solve db =
for /home/trevor/devel/yocto/gitrepo-method/qemux86/tmp/deploy/rpm/all...<b=
r>
|=A0=A0=A0 total:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1=A0=A0=A0=A0=
=A0 0.000000 MB=A0=A0=A0=A0=A0 2.930406 secs<br>|=A0=A0=A0 fingerprint:=A0=
=A0=A0=A0=A0 1104=A0=A0=A0=A0=A0 0.032554 MB=A0=A0=A0=A0=A0 0.063469 secs<b=
r>|=A0=A0=A0 install:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 368=A0=A0=A0=A0=A0 0.00=
0000 MB=A0=A0=A0=A0=A0 0.878790 secs<br>|=A0=A0=A0 digest:=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 736=A0=A0=A0=A0=A0 5.357010 MB=A0=A0=A0=A0=A0 0.027508 s=
ecs<br>
|=A0=A0=A0 signature:=A0=A0=A0=A0=A0=A0=A0=A0 736=A0=A0=A0=A0=A0 0.000000 M=
B=A0=A0=A0=A0=A0 1.443277 secs<br>|=A0=A0=A0 dbadd:=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 368=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0 0.866237 secs<br=
>|=A0=A0=A0 dbget:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 12620=A0=A0=A0=A0=A0 0.000=
000 MB=A0=A0=A0=A0=A0 0.018020 secs<br>|=A0=A0=A0 dbput:=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 368=A0=A0=A0=A0=A0 3.063072 MB=A0=A0=A0=A0=A0 0.541058 s=
ecs<br>
|=A0=A0=A0 readhdr:=A0=A0=A0=A0=A0=A0=A0=A0=A0 3681=A0=A0=A0=A0=A0 6.087218=
 MB=A0=A0=A0=A0=A0 0.010347 secs<br>|=A0=A0=A0 hdrload:=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 1929=A0=A0=A0=A0 10.076294 MB=A0=A0=A0=A0=A0 0.012106 secs<br>|=
=A0=A0=A0 hdrget:=A0=A0=A0=A0=A0=A0=A0=A0=A0 70812=A0=A0=A0=A0=A0 0.000000 =
MB=A0=A0=A0=A0=A0 0.081749 secs<br>| Generating solve db for /home/trevor/d=
evel/yocto/gitrepo-method/qemux86/tmp/deploy/rpm/all...<br>
| Processing packagegroup-core-boot...<br>| Processing trace-cmd...<br>| Pr=
ocessing bash...<br>| Unable to resolve package bash<br>| ERROR: some packa=
ges were missing<br>| ERROR: Function failed: do_rootfs (see /home/trevor/d=
evel/yocto/gitrepo-method/qemux86/tmp/work/qemux86-poky-linux/core-image-mi=
nimal/1.0-r0/temp/log.do_rootfs.19668 for further information)<br>
ERROR: Task 7 (/home/trevor/devel/yocto/gitrepo-method/poky/meta/recipes-co=
re/images/<a href=3D"http://core-image-minimal.bb">core-image-minimal.bb</a=
>, do_rootfs) failed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Att=
empted 1443 tasks of which 1442 didn&#39;t need to be rerun and 1 failed.<b=
r>
No currently running tasks (1442 of 1444)<br><br>Summary: 1 task failed:<br=
>=A0 /home/trevor/devel/yocto/gitrepo-method/poky/meta/recipes-core/images/=
<a href=3D"http://core-image-minimal.bb">core-image-minimal.bb</a>, do_root=
fs<br>
Summary: There was 1 ERROR message shown, returning a non-zero exit code.<b=
r></div><br>Can anyone reproduce this? It doesn&#39;t make sense.<br><br>In=
itially when I first saw this problem, I had been using building &quot;core=
-image-rt&quot; so I thought it had something to do with that image. But my=
 tests from today seem to indicate that it doesn&#39;t since I was able to =
reproduce my problem with &quot;core-image-minimal&quot; too.<br>
<br>I haven&#39;t yet figured out if the &quot;PREFERRED_PROVIDER_virtual/k=
ernel =3D &quot;linux-yocto-rt&quot;&quot; line might be the culprit.<br>

--f46d04016cad38865404cf6ea090--
