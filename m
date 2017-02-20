Return-Path: <satya.2891@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F14B9E0097C; Mon, 20 Feb 2017 08:30:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (satya.2891[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f51.google.com (mail-lf0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89D57E00867
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 08:30:52 -0800 (PST)
Received: by mail-lf0-f51.google.com with SMTP id z127so52076474lfa.2
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 08:30:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=IWeBSBZxAGl6IhtWs5ES3WOtCGe1ixGUrvOcWr5zs+M=;
	b=quvPjUiwDxVxjQ9m0z6NykT0rqC9rjTyfr4OhJVRPFIAgVO5w/Ma5qCDADscjQKKsN
	sIdl4aYWotJI/la3dltIF4n+KCRC7mdgYE5shDi29HD6EQpZHchRwwuBFcOFCYTGNziK
	V9ImX6t3BR/9UAH2S00IU7utpgKrySaNvzcCyWu4IiAVyFoeJWDnbXCpKB2YC94mnXNl
	lHJkzB0AWnBPCFpQwynj2qURW47cxlrDMgvSR1qoskQEeiG4+4hxlPLjCmUIVxuOHOUS
	12y+OgWI/EHBS6p0lYlDyaSsXqenRnLQSglLoo9QYIlE7k33cXWqenIYBG0Wm2jHnJzp
	4TtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=IWeBSBZxAGl6IhtWs5ES3WOtCGe1ixGUrvOcWr5zs+M=;
	b=KbPB3wkzBLZALRoErVhFY8qO84evOKvETEu0vhRv3FlzFsDt8iY1QZiTKxwJxk0atf
	s+fugdLdzLPUTMBczzm0BRWVZz0Uv0HPqcDPvLbrxbFQKAjrRStYRuS4dITev6IRaxYk
	c4gtb5xwAavZNqTsem/jqO8ClRJEowWlPY4Cv3Q3asHeXP+LRVUDF3KlwH4JJK1QNj9I
	sH0OI13GmsHRkmWZnhUXNwxRB5uvD1eLdvrF4BO/we60+sGdqleknmtl8OP8BoZISutj
	bEw8zh89MT26XOBfBmR6mpCG2oFknjjjvttDuLxM+FIDEhpMWdkU0ZSUetE2sEbdfUeG
	t3Og==
X-Gm-Message-State: AMke39kwc1lnKL+NyvtKbB0EBWjRg03YJ5UoFKgJQfSowW4ur8PCavHUlXLoXfG+PDt3LlXoh1ghMj2t6skyZA==
X-Received: by 10.25.203.3 with SMTP id b3mr6562112lfg.130.1487608250625; Mon,
	20 Feb 2017 08:30:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.155.8 with HTTP; Mon, 20 Feb 2017 08:30:50 -0800 (PST)
From: SatyaNarayana Sampangi <satya.2891@gmail.com>
Date: Mon, 20 Feb 2017 22:00:50 +0530
Message-ID: <CAF1M0z72cFVW61EkLqdSwPrRKO1AptMsntfxxEzo8Qy=ak79oQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Problem: Installation
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 20 Feb 2017 16:30:55 -0000
Content-Type: multipart/alternative; boundary=94eb2c1a07f257f7850548f8c96e

--94eb2c1a07f257f7850548f8c96e
Content-Type: text/plain; charset=UTF-8

Dear All,

I am newbie to this yocto project.

I faced the problem as shown below, solutions will be greatly appreciated.

1. I wrote the .bb file as shown below
-------------------------------------------------------+
  1 SUMMARY = "Simple Hello World Application"
  2
  3 DESCRIPTION = "A test application to show that how to create the r
ecipe and compile with bitbake"
  4
  5 SECTION = "examples"
  6
  7 PRIORITY = "optional"
  8
  9 LICENSE = "MIT"
 10
 11 #LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0ae22730
b33339f74b1128f5b042c9aa"
 12 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade69
8e0bcf8506ecda2f7b4f302"
 13
 14 SRC_URI = "file://hellosatya-1.0.tgz"
 15
 16 S = "${WORKDIR}"
 17
 18 do_compile() {
 19    ${CC} -c helloprint.c
 20    ${CC} -c hello.c
 21    ${CC} -o hellosatya hello.o helloprint.o
 22 }
 23
 24 do_install(){
 25    install -d ${D}${bindir}
 26    install -m 0755 hellosatya ${D}${bindir}
 27 }

2. The Directory structure is shown below,
------------------------------------------------------------+
This structure is present under the directory
~/yocto/poky/build/meta-mylayer/recipes-example

tree hellosatya/
hellosatya/
|-- hello.c
|-- helloprint.c
|-- helloprint.h
|-- hellosatya-1.0
|   `-- hellosatya-1.0.tgz
`-- hellosatya_1.0.bb

1 directory, 5 files


3. When I run bitbake hellosatya, I am getting the error as shown below,
-------------------------------------------------------------------------------------------------------+
bitbake hellosatya
Loading cache: 100%
|##################################################################| ETA:
00:00:00
Loaded 1292 entries from dependency cache.
Parsing recipes: 100%
|################################################################| Time:
00:00:00
Parsing of 895 .bb files complete (894 cached, 1 parsed). 1291 targets, 61
skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.24.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-14.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beaglebone"
DISTRO            = "poky"
DISTRO_VERSION    = "1.7.3"
TUNE_FEATURES     = "arm armv7a vfp neon callconvention-hard cortexa8"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto
meta-yocto-bsp
meta-mylayer      = "dizzy:fb8bf6a75e9ac04d5c6213d3e2f097302f83405f"

NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Function failed: do_compile (log file is located at
/home/satya/yocto/poky/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/hellosatya/1.0-r0/temp/log.do_compile.10060)
ERROR: Logfile of failure stored in:
/home/satya/yocto/poky/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/hellosatya/1.0-r0/temp/log.do_compile.10060
Log data follows:
| DEBUG: Executing shell function do_compile
| arm-poky-linux-gnueabi-gcc: error: helloprint.c: No such file or directory
| arm-poky-linux-gnueabi-gcc: fatal error: no input files
| compilation terminated.
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/home/satya/yocto/poky/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/hellosatya/1.0-r0/temp/log.do_compile.10060)
ERROR: Task 6
(/home/satya/yocto/poky/build/meta-mylayer/recipes-example/hellosatya/
hellosatya_1.0.bb, do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 372 tasks of which 371 didn't need to be
rerun and 1 failed.
No currently running tasks (343 of 379)

Summary: 1 task failed:
  /home/satya/yocto/poky/build/meta-mylayer/recipes-example/hellosatya/
hellosatya_1.0.bb, do_compile
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

4. When I comment do_compile and do_install, the code runs fine.

Any help here, to figure out whats going wrong with my hellosatya_1.0.bb
file

Thanks & Regards,
satya

--94eb2c1a07f257f7850548f8c96e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Dear All,<br><br></div>I am newbi=
e to this yocto project.<br><br></div>I faced the problem as shown below, s=
olutions will be greatly appreciated.<br><br></div>1. I wrote the .bb file =
as shown below<br>-------------------------------------------------------+<=
br>=C2=A0 1 SUMMARY =3D &quot;Simple Hello World Application&quot;<br>=C2=
=A0 2 <br>=C2=A0 3 DESCRIPTION =3D &quot;A test application to show that ho=
w to create the r=C2=A0=C2=A0=C2=A0 ecipe and compile with bitbake&quot;<br=
>=C2=A0 4 <br>=C2=A0 5 SECTION =3D &quot;examples&quot;<br>=C2=A0 6 <br>=C2=
=A0 7 PRIORITY =3D &quot;optional&quot;<br>=C2=A0 8 <br>=C2=A0 9 LICENSE =
=3D &quot;MIT&quot;<br>=C2=A010 <br>=C2=A011 #LIC_FILES_CHKSUM =3D &quot;fi=
le://${COMMON_LICENSE_DIR}/MIT;md5=3D0ae22730=C2=A0=C2=A0=C2=A0 b33339f74b1=
128f5b042c9aa&quot;<br>=C2=A012 LIC_FILES_CHKSUM =3D &quot;file://${COMMON_=
LICENSE_DIR}/MIT;md5=3D0835ade69=C2=A0=C2=A0=C2=A0 8e0bcf8506ecda2f7b4f302&=
quot;<br>=C2=A013 <br>=C2=A014 SRC_URI =3D &quot;file://hellosatya-1.0.tgz&=
quot;<br>=C2=A015 <br>=C2=A016 S =3D &quot;${WORKDIR}&quot;<br>=C2=A017 <br=
>=C2=A018 do_compile() {<br>=C2=A019=C2=A0=C2=A0=C2=A0 ${CC} -c helloprint.=
c<br>=C2=A020=C2=A0=C2=A0=C2=A0 ${CC} -c hello.c<br>=C2=A021=C2=A0=C2=A0=C2=
=A0 ${CC} -o hellosatya hello.o helloprint.o<br>=C2=A022 }<br>=C2=A023 <br>=
=C2=A024 do_install(){<br>=C2=A025=C2=A0=C2=A0=C2=A0 install -d ${D}${bindi=
r}<br>=C2=A026=C2=A0=C2=A0=C2=A0 install -m 0755 hellosatya ${D}${bindir}<b=
r>=C2=A027 }<br><br></div>2. The Directory structure is shown below,<br>---=
---------------------------------------------------------+<br></div>This st=
ructure is present under the directory ~/yocto/poky/build/meta-mylayer/reci=
pes-example<br><div><br><div><div>tree hellosatya/<br>hellosatya/<br>|-- he=
llo.c<br>|-- helloprint.c<br>|-- helloprint.h<br>|-- hellosatya-1.0<br>|=C2=
=A0=C2=A0 `-- hellosatya-1.0.tgz<br>`-- <a href=3D"http://hellosatya_1.0.bb=
">hellosatya_1.0.bb</a><br><br>1 directory, 5 files<br><br><br></div><div>3=
. When I run bitbake hellosatya, I am getting the error as shown below,<br>=
---------------------------------------------------------------------------=
----------------------------+<br>bitbake hellosatya<br>Loading cache: 100% =
|##################################################################| ETA:=
=C2=A0 00:00:00<br>Loaded 1292 entries from dependency cache.<br>Parsing re=
cipes: 100% |##############################################################=
##| Time: 00:00:00<br>Parsing of 895 .bb files complete (894 cached, 1 pars=
ed). 1291 targets, 61 skipped, 0 masked, 0 errors.<br>NOTE: Resolving any m=
issing task queue dependencies<br><br>Build Configuration:<br>BB_VERSION=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.24.0&quot;<br>BUILD_SYS=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-linux&quo=
t;<br>NATIVELSBSTRING=C2=A0=C2=A0 =3D &quot;Ubuntu-14.04&quot;<br>TARGET_SY=
S=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm-poky-linux-gnueab=
i&quot;<br>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D &quot;beaglebone&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=C2=
=A0=C2=A0=C2=A0 =3D &quot;1.7.3&quot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D &quot;arm armv7a vfp neon callconvention-hard cortexa8&quot;<br>TAR=
GET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;vfp-neon&quot;<=
br>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 <br>meta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>m=
eta-yocto-bsp=C2=A0=C2=A0=C2=A0 <br>meta-mylayer=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D &quot;dizzy:fb8bf6a75e9ac04d5c6213d3e2f097302f83405f&quot;<br><br>N=
OTE: Preparing runqueue<br>NOTE: Executing SetScene Tasks<br>NOTE: Executin=
g RunQueue Tasks<br>ERROR: Function failed: do_compile (log file is located=
 at /home/satya/yocto/poky/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gn=
ueabi/hellosatya/1.0-r0/temp/log.do_compile.10060)<br>ERROR: Logfile of fai=
lure stored in: /home/satya/yocto/poky/build/tmp/work/cortexa8hf-vfp-neon-p=
oky-linux-gnueabi/hellosatya/1.0-r0/temp/log.do_compile.10060<br>Log data f=
ollows:<br>| DEBUG: Executing shell function do_compile<br>| arm-poky-linux=
-gnueabi-gcc: error: helloprint.c: No such file or directory<br>| arm-poky-=
linux-gnueabi-gcc: fatal error: no input files<br>| compilation terminated.=
<br>| WARNING: exit code 1 from a shell command.<br>| ERROR: Function faile=
d: do_compile (log file is located at /home/satya/yocto/poky/build/tmp/work=
/cortexa8hf-vfp-neon-poky-linux-gnueabi/hellosatya/1.0-r0/temp/log.do_compi=
le.10060)<br>ERROR: Task 6 (/home/satya/yocto/poky/build/meta-mylayer/recip=
es-example/hellosatya/<a href=3D"http://hellosatya_1.0.bb">hellosatya_1.0.b=
b</a>, do_compile) failed with exit code &#39;1&#39;<br>NOTE: Tasks Summary=
: Attempted 372 tasks of which 371 didn&#39;t need to be rerun and 1 failed=
.<br>No currently running tasks (343 of 379)<br><br>Summary: 1 task failed:=
<br>=C2=A0 /home/satya/yocto/poky/build/meta-mylayer/recipes-example/hellos=
atya/<a href=3D"http://hellosatya_1.0.bb">hellosatya_1.0.bb</a>, do_compile=
<br>Summary: There was 1 ERROR message shown, returning a non-zero exit cod=
e.<br><br></div><div>4. When I comment do_compile and do_install, the code =
runs fine.<br><br></div><div>Any help here, to figure out whats going wrong=
 with my <a href=3D"http://hellosatya_1.0.bb">hellosatya_1.0.bb</a> file<br=
></div><div><br></div><div>Thanks &amp; Regards,<br></div><div>satya<br></d=
iv><div><br><br><br><br></div></div></div></div>

--94eb2c1a07f257f7850548f8c96e--
