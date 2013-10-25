Return-Path: <joaohf@gmail.com>
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAE3EE0176D
	for <yocto@yoctoproject.org>; Fri, 25 Oct 2013 06:16:16 -0700 (PDT)
Received: by mail-wg0-f50.google.com with SMTP id n12so3810544wgh.17
	for <yocto@yoctoproject.org>; Fri, 25 Oct 2013 06:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=0rZM68GtlOPWRWn977BOXjAQTFtyKIgYRjOM/gXiaSs=;
	b=dj5jshZsHUgAVS3Mt2krp3HKWp9MjtJZU+4Y23Q02X5fQbmsXnIb1hnzm8mXk3jNqc
	UW8NW3uoDsR7QQc0ZtJxi8QkiHb1a2pmqNwV3zmW788Vm7ojDz66FaqqPpxZGsjFtRGZ
	WEhNy7UsauiH6oadmKpHkpAPxM3VifX2uvcnYpFDDzm6hHU9VKa7cxqEgmhc7rH8oMPf
	fYjTbDSV1kCwMNVO8LAYK/XU2pf4is1tnxJiXk95hBcO+5uzNGDIGukjuKn1mRmiJAzE
	Edvhmn4SyG7WGFutJA+3PoLVMltKkHUQpcGTEv0xlXxguVzNo1ii+F8nex+gxGLWGn0I
	9Zsw==
MIME-Version: 1.0
X-Received: by 10.180.36.105 with SMTP id p9mr2604026wij.2.1382706974704; Fri,
	25 Oct 2013 06:16:14 -0700 (PDT)
Received: by 10.216.90.132 with HTTP; Fri, 25 Oct 2013 06:16:14 -0700 (PDT)
Date: Fri, 25 Oct 2013 11:16:14 -0200
Message-ID: <CANFVK7-RGLuL9=wYagjNmScMt7gi_1nUOM=V8DiWJiTfRCahGw@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: yocto-dora problems building python
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
X-List-Received-Date: Fri, 25 Oct 2013 13:16:20 -0000
Content-Type: multipart/alternative; boundary=e89a8f5035620e497404e9908e94

--e89a8f5035620e497404e9908e94
Content-Type: text/plain; charset=UTF-8

Hello,

I got this QA error when build python:

ERROR: QA Issue: python: The compile log indicates that host include and/or
library paths were used.

Any hint?

----
Build Configuration:
BB_VERSION        = "1.20.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-13.04"
TARGET_SYS        = "i586-poky-linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.5"
TUNE_FEATURES     = "m32 i586"
TARGET_FPU        = ""
meta              = "dora:faf8f8660fae26a14578738b642fdeb08bcb9d54"
meta-oe
meta-systemd      = "dora:513e7ca20ddd0a5c3b649bf292a67c3e0473d3a8"
meta-yocto        = "dora:faf8f8660fae26a14578738b642fdeb08bcb9d54"
meta-padtec
meta-otns         = "master:b2db43d21f303e4e02956cc9f2e9ad2bf547dd95"
meta-intel
meta-crownbay     = "custom:fa3b568222f87fc557f01bb5acb5d362e6bde301"

NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: QA Issue: python: The compile log indicates that host include and/or
library paths were used.
         Please check the log
'/srv/build/yocto/build/work/i586-poky-linux/python/2.7.3-r0.3/temp/log.do_compile'
for more information.
ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa
ERROR: Logfile of failure stored in:
/srv/build/yocto/build/work/i586-poky-linux/python/2.7.3-r0.3/temp/log.do_package.29112
ERROR: Task 12 (/home/jfreitas/yocto/poky/meta/recipes-devtools/python/
python_2.7.3.bb, do_package) failed with exit code '1'
NOTE: Tasks Summary: Attempted 872 tasks of which 540 didn't need to be
rerun and 1 failed.
NOTE: Writing buildhistory
No currently running tasks (872 of 876)

Summary: 1 task failed:
  /home/jfreitas/yocto/poky/meta/recipes-devtools/python/python_2.7.3.bb,
do_package
Summary: There were 3 ERROR messages shown, returning a non-zero exit code.


Thanks.

--e89a8f5035620e497404e9908e94
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><br></div>Hello,<br><br></div>I got this QA=
 error when build python:<br><br>ERROR: QA Issue: python: The compile log i=
ndicates that host include and/or library paths were used.<br><br></div>Any=
 hint?<br>
<div><div><div><br>----<br>Build Configuration:<br>BB_VERSION=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.20.0&quot;<br>BUILD_SYS=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-linux&quot;<br>NAT=
IVELSBSTRING=C2=A0=C2=A0 =3D &quot;Ubuntu-13.04&quot;<br>TARGET_SYS=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;i586-poky-linux&quot;<br>
MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &qu=
ot;qemux86&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=C2=A0=C2=A0=C2=A0=
 =3D &quot;1.5&quot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;m32=
 i586&quot;<br>TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &qu=
ot;&quot;<br>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D &quot;dora:faf8f8660fae26a14578738b642fdeb08bcb9d=
54&quot;<br>
meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>met=
a-systemd=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;dora:513e7ca20ddd0a5c3b64=
9bf292a67c3e0473d3a8&quot;<br>meta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =3D &quot;dora:faf8f8660fae26a14578738b642fdeb08bcb9d54&quot;<br>=
meta-padtec=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-otns=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;master:b2db43d21f303e4e02956=
cc9f2e9ad2bf547dd95&quot;<br>
meta-intel=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-crownbay=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D &quot;custom:fa3b568222f87fc557f01bb5acb5d362e6bd=
e301&quot;<br><br>NOTE: Preparing runqueue<br>NOTE: Executing SetScene Task=
s<br>NOTE: Executing RunQueue Tasks<br>ERROR: QA Issue: python: The compile=
 log indicates that host include and/or library paths were used.<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Please check the log &#39;=
/srv/build/yocto/build/work/i586-poky-linux/python/2.7.3-r0.3/temp/log.do_c=
ompile&#39; for more information.<br>ERROR: QA run found fatal errors. Plea=
se consider fixing them.<br>ERROR: Function failed: do_package_qa<br>
ERROR: Logfile of failure stored in: /srv/build/yocto/build/work/i586-poky-=
linux/python/2.7.3-r0.3/temp/log.do_package.29112<br>ERROR: Task 12 (/home/=
jfreitas/yocto/poky/meta/recipes-devtools/python/<a href=3D"http://python_2=
.7.3.bb">python_2.7.3.bb</a>, do_package) failed with exit code &#39;1&#39;=
<br>
NOTE: Tasks Summary: Attempted 872 tasks of which 540 didn&#39;t need to be=
 rerun and 1 failed.<br>NOTE: Writing buildhistory<br>No currently running =
tasks (872 of 876)<br><br>Summary: 1 task failed:<br>=C2=A0 /home/jfreitas/=
yocto/poky/meta/recipes-devtools/python/<a href=3D"http://python_2.7.3.bb">=
python_2.7.3.bb</a>, do_package<br>
Summary: There were 3 ERROR messages shown, returning a non-zero exit code.=
<br><br><br></div><div>Thanks.</div></div></div></div>

--e89a8f5035620e497404e9908e94--
