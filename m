Return-Path: <rickard.bremer@tritech.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48514E0090F; Sun,  8 Mar 2015 12:00:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from tritech.se (tritech.se [46.59.120.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56E9DE00769
	for <yocto@yoctoproject.org>; Sun,  8 Mar 2015 12:00:47 -0700 (PDT)
Received: from post.tritech.se (post.tritech.se [10.75.60.100])
	by tritech.se (8.14.3/8.14.3) with ESMTP id t28J0eW5015825
	for <yocto@yoctoproject.org>; Sun, 8 Mar 2015 20:00:45 +0100
Received: from POST.tritech.se ([10.75.60.100]) by post ([10.75.60.100]) with
	mapi id 14.02.0387.000; Sun, 8 Mar 2015 20:00:39 +0100
From: Rickard Bremer <rickard.bremer@tritech.se>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Index: AdBZ0gA5f+tf6pqnQQyYGQ120w7iZg==
Date: Sun, 8 Mar 2015 19:00:39 +0000
Message-ID: <E0AAEDF37958A64591322A370796C7897B6D87@post>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [129.16.140.161]
MIME-Version: 1.0
Subject: (No subject)
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
X-List-Received-Date: Sun, 08 Mar 2015 19:00:56 -0000
Content-Language: sv-SE
Content-Type: multipart/alternative;
	boundary="_000_E0AAEDF37958A64591322A370796C7897B6D87post_"

--_000_E0AAEDF37958A64591322A370796C7897B6D87post_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

Been encountering a new error during the day. The exact same configure did =
build one time before, but on the second build it started to crash.

Best Regards
Rickard

-------------------------------
jenkins@yocto:~/workspace/thesis-build-yocto/build$ bitbake core-image-mini=
mal
Loading cache: 100% |######################################################=
################| ETA:  00:00:00
Loaded 2134 entries from dependency cache.
Parsing recipes: 100% |####################################################=
################| Time: 00:00:00
Parsing of 1651 .bb files complete (1649 cached, 2 parsed). 2135 targets, 4=
9 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        =3D "1.24.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Ubuntu-14.04"
TARGET_SYS        =3D "x86_64-poky-linux"
MACHINE           =3D "congatec-qa3-64"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.7.1"
TUNE_FEATURES     =3D "m64 corei7"
TARGET_FPU        =3D ""
meta
meta-yocto
meta-yocto-bsp    =3D "dizzy:6e9632e9798d78587c9317554c5547ab3b53837c"
meta-intel
meta-valleyisland
meta-tlk          =3D "dizzy:c90fb613745cb31694144f6d2c240b4dda32ee58"
meta-congatec-x86 =3D "dizzy:095f6b1340c57252bcb1a42ab352dc2b4886b36e"
meta-rb           =3D "dizzy:6e9632e9798d78587c9317554c5547ab3b53837c"
meta-oe
meta-python
meta-networking   =3D "master:bb177c85a25d2b75583abe218396520c375f8f18"

NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Index creation command '/var/lib/jenkins/workspace/thesis-build-yoct=
o/build/tmp/sysroots/x86_64-linux/usr/bin/createrepo --update -q /var/lib/j=
enkins/workspace/thesis-build-yocto/build/tmp/deploy/rpm/corei7_64' failed =
with return code 137:
Killed

ERROR: Function failed: do_rootfs
ERROR: Logfile of failure stored in: /var/lib/jenkins/workspace/thesis-buil=
d-yocto/build/tmp/work/congatec_qa3_64-poky-linux/core-image-minimal/1.0-r0=
/temp/log.do_rootfs.26390
ERROR: Task 7 (/var/lib/jenkins/workspace/thesis-build-yocto/meta/recipes-c=
ore/images/core-image-minimal.bb, do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2453 tasks of which 2452 didn't need to be r=
erun and 1 failed.
No currently running tasks (1867 of 2455)

Summary: 1 task failed:
  /var/lib/jenkins/workspace/thesis-build-yocto/meta/recipes-core/images/co=
re-image-minimal.bb, do_rootfs
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.



--_000_E0AAEDF37958A64591322A370796C7897B6D87post_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Hello,<br>
<br>
Been encountering a new error during the day. The exact same configure did =
build one time before, but on the second build it started to crash.<br>
<br>
Best Regards<br>
Rickard <br>
<br>
-------------------------------<br>
jenkins@yocto:~/workspace/thesis-build-yocto/build$ bitbake core-image-mini=
mal<br>
Loading cache: 100% |######################################################=
################| ETA:&nbsp; 00:00:00<br>
Loaded 2134 entries from dependency cache.<br>
Parsing recipes: 100% |####################################################=
################| Time: 00:00:00<br>
Parsing of 1651 .bb files complete (1649 cached, 2 parsed). 2135 targets, 4=
9 skipped, 0 masked, 0 errors.<br>
NOTE: Resolving any missing task queue dependencies<br>
<br>
Build Configuration:<br>
BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;1.24.0&quot;=
<br>
BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-=
linux&quot;<br>
NATIVELSBSTRING&nbsp;&nbsp; =3D &quot;Ubuntu-14.04&quot;<br>
TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-poky-=
linux&quot;<br>
MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &qu=
ot;congatec-qa3-64&quot;<br>
DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;poky&quot;<br>
DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D &quot;1.7.1&quot;<br>
TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;m64 corei7&quot;<br>
TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;&quot;<br>
meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; <br>
meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
meta-yocto-bsp&nbsp;&nbsp;&nbsp; =3D &quot;dizzy:6e9632e9798d78587c9317554c=
5547ab3b53837c&quot;<br>
meta-intel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
meta-valleyisland <br>
meta-tlk&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;di=
zzy:c90fb613745cb31694144f6d2c240b4dda32ee58&quot;<br>
meta-congatec-x86 =3D &quot;dizzy:095f6b1340c57252bcb1a42ab352dc2b4886b36e&=
quot;<br>
meta-rb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &qu=
ot;dizzy:6e9632e9798d78587c9317554c5547ab3b53837c&quot;<br>
meta-oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
meta-python&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
meta-networking&nbsp;&nbsp; =3D &quot;master:bb177c85a25d2b75583abe21839652=
0c375f8f18&quot;<br>
<br>
NOTE: Preparing runqueue<br>
NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>
ERROR: Index creation command '/var/lib/jenkins/workspace/thesis-build-yoct=
o/build/tmp/sysroots/x86_64-linux/usr/bin/createrepo --update -q /var/lib/j=
enkins/workspace/thesis-build-yocto/build/tmp/deploy/rpm/corei7_64' failed =
with return code 137:<br>
Killed<br>
<br>
ERROR: Function failed: do_rootfs<br>
ERROR: Logfile of failure stored in: /var/lib/jenkins/workspace/thesis-buil=
d-yocto/build/tmp/work/congatec_qa3_64-poky-linux/core-image-minimal/1.0-r0=
/temp/log.do_rootfs.26390<br>
ERROR: Task 7 (/var/lib/jenkins/workspace/thesis-build-yocto/meta/recipes-c=
ore/images/core-image-minimal.bb, do_rootfs) failed with exit code '1'<br>
NOTE: Tasks Summary: Attempted 2453 tasks of which 2452 didn't need to be r=
erun and 1 failed.<br>
No currently running tasks (1867 of 2455)<br>
<br>
Summary: 1 task failed:<br>
&nbsp; /var/lib/jenkins/workspace/thesis-build-yocto/meta/recipes-core/imag=
es/core-image-minimal.bb, do_rootfs<br>
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.=
<br>
<br>
<br>
</div>
</body>
</html>

--_000_E0AAEDF37958A64591322A370796C7897B6D87post_--
