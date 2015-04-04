Return-Path: <rickard.bremer@tritech.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAD03E00956; Sat,  4 Apr 2015 14:43:31 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14F5BE006E5
	for <yocto@yoctoproject.org>; Sat,  4 Apr 2015 14:43:24 -0700 (PDT)
Received: from post.tritech.se (post.tritech.se [10.75.60.100])
	by tritech.se (8.14.3/8.14.3) with ESMTP id t34LhHX5012990
	for <yocto@yoctoproject.org>; Sat, 4 Apr 2015 23:43:22 +0200
Received: from POST.tritech.se ([10.75.60.100]) by post ([10.75.60.100]) with
	mapi id 14.02.0387.000; Sat, 4 Apr 2015 23:43:16 +0200
From: Rickard Bremer <rickard.bremer@tritech.se>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: sgml-common-native
Thread-Index: AdBvIFvB0yLTsQfoQJaeiHYFaylPZg==
Date: Sat, 4 Apr 2015 21:43:16 +0000
Message-ID: <E0AAEDF37958A64591322A370796C7897C57F0@post>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [83.248.164.111]
MIME-Version: 1.0
Subject: sgml-common-native
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
X-List-Received-Date: Sat, 04 Apr 2015 21:43:31 -0000
Content-Language: sv-SE
Content-Type: multipart/alternative;
	boundary="_000_E0AAEDF37958A64591322A370796C7897C57F0post_"

--_000_E0AAEDF37958A64591322A370796C7897C57F0post_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

hello,

this is the error i get
jenkins@yocto:~/workspace/thesis-build-yocto/intel$ bitbake core-image-x11
Loading cache: 100% |######################################################=
###############################################| ETA:  00:00:00
Loaded 2134 entries from dependency cache.
Parsing recipes: 100% |####################################################=
###############################################| Time: 00:00:00
Parsing of 1652 .bb files complete (1649 cached, 3 parsed). 2136 targets, 4=
9 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
NOTE: multiple providers are available for jpeg (jpeg, libjpeg-turbo)
NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg
NOTE: multiple providers are available for jpeg-native (jpeg-native, libjpe=
g-turbo-native)
NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg-native

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
ERROR: The recipe sgml-common-native is trying to install files into a shar=
ed area when those files already exist. Those files and their manifest loca=
tion are:
   /var/lib/jenkins/workspace/thesis-build-yocto/intel/tmp/sysroots/x86_64-=
linux/etc/sgml/catalog
Please verify which recipe should provide the above files.
The build has stopped as continuing in this scenario WILL break things, if =
not now, possibly in the future (we've seen builds fail several months late=
r). If the system knew how to recover from this automatically it would howe=
ver there are several different scenarios which can result in this and we d=
on't know which one this is. It may be you have switched providers of somet=
hing like virtual/kernel (e.g. from linux-yocto to linux-yocto-dev), in tha=
t case you need to execute the clean task for both recipes and it will reso=
lve this error. It may be you changed DISTRO_FEATURES from systemd to udev =
or vice versa. Cleaning those recipes should again resolve this error howev=
er switching DISTRO_FEATURES on an existing build directory is not supporte=
d, you should really clean out tmp and rebuild (reusing sstate should be sa=
fe). It could be the overlapping files detected are harmless in which case =
adding them to SSTATE_DUPWHITELIST may be the correct solution. It could al=
so be your build is including two different conflicting versions of things =
(e.g. bluez 4 and bluez 5 and the correct solution for that would be to res=
olve the conflict. If in doubt, please ask on the mailing list, sharing the=
 error and filelist above.
ERROR: If the above message is too much, the simpler version is you're advi=
sed to wipe out tmp and rebuild (reusing sstate is fine). That will likely =
fix things in most (but not all) cases.
ERROR: Function failed: sstate_task_postfunc
ERROR: Logfile of failure stored in: /var/lib/jenkins/workspace/thesis-buil=
d-yocto/intel/tmp//work/x86_64-linux/sgml-common-native/0.6.3-r1/temp/log.d=
o_populate_sysroot.6790
ERROR: Task 5320 (/var/lib/jenkins/workspace/thesis-build-yocto/meta/recipe=
s-devtools/sgml-common/sgml-common-native_0.6.3.bb, do_populate_sysroot) fa=
iled with exit code '1'
NOTE: Tasks Summary: Attempted 3116 tasks of which 3115 didn't need to be r=
erun and 1 failed.
No currently running tasks (2345 of 5487)

Summary: 1 task failed:
  /var/lib/jenkins/workspace/thesis-build-yocto/meta/recipes-devtools/sgml-=
common/sgml-common-native_0.6.3.bb, do_populate_sysroot
Summary: There were 3 ERROR messages shown, returning a non-zero exit code.

need help, tried to erase tmp but no improvement.

/ Best
Rickard

--_000_E0AAEDF37958A64591322A370796C7897C57F0post_
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
10pt;">hello,<br>
<br>
this is the error i get<br>
jenkins@yocto:~/workspace/thesis-build-yocto/intel$ bitbake core-image-x11<=
br>
Loading cache: 100% |######################################################=
###############################################| ETA:&nbsp; 00:00:00<br>
Loaded 2134 entries from dependency cache.<br>
Parsing recipes: 100% |####################################################=
###############################################| Time: 00:00:00<br>
Parsing of 1652 .bb files complete (1649 cached, 3 parsed). 2136 targets, 4=
9 skipped, 0 masked, 0 errors.<br>
NOTE: Resolving any missing task queue dependencies<br>
NOTE: multiple providers are available for jpeg (jpeg, libjpeg-turbo)<br>
NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg<br>
NOTE: multiple providers are available for jpeg-native (jpeg-native, libjpe=
g-turbo-native)<br>
NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg-native<br>
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
ERROR: The recipe sgml-common-native is trying to install files into a shar=
ed area when those files already exist. Those files and their manifest loca=
tion are:<br>
&nbsp;&nbsp; /var/lib/jenkins/workspace/thesis-build-yocto/intel/tmp/sysroo=
ts/x86_64-linux/etc/sgml/catalog<br>
Please verify which recipe should provide the above files.<br>
The build has stopped as continuing in this scenario WILL break things, if =
not now, possibly in the future (we've seen builds fail several months late=
r). If the system knew how to recover from this automatically it would howe=
ver there are several different
 scenarios which can result in this and we don't know which one this is. It=
 may be you have switched providers of something like virtual/kernel (e.g. =
from linux-yocto to linux-yocto-dev), in that case you need to execute the =
clean task for both recipes and
 it will resolve this error. It may be you changed DISTRO_FEATURES from sys=
temd to udev or vice versa. Cleaning those recipes should again resolve thi=
s error however switching DISTRO_FEATURES on an existing build directory is=
 not supported, you should really
 clean out tmp and rebuild (reusing sstate should be safe). It could be the=
 overlapping files detected are harmless in which case adding them to SSTAT=
E_DUPWHITELIST may be the correct solution. It could also be your build is =
including two different conflicting
 versions of things (e.g. bluez 4 and bluez 5 and the correct solution for =
that would be to resolve the conflict. If in doubt, please ask on the maili=
ng list, sharing the error and filelist above.<br>
ERROR: If the above message is too much, the simpler version is you're advi=
sed to wipe out tmp and rebuild (reusing sstate is fine). That will likely =
fix things in most (but not all) cases.<br>
ERROR: Function failed: sstate_task_postfunc<br>
ERROR: Logfile of failure stored in: /var/lib/jenkins/workspace/thesis-buil=
d-yocto/intel/tmp//work/x86_64-linux/sgml-common-native/0.6.3-r1/temp/log.d=
o_populate_sysroot.6790<br>
ERROR: Task 5320 (/var/lib/jenkins/workspace/thesis-build-yocto/meta/recipe=
s-devtools/sgml-common/sgml-common-native_0.6.3.bb, do_populate_sysroot) fa=
iled with exit code '1'<br>
NOTE: Tasks Summary: Attempted 3116 tasks of which 3115 didn't need to be r=
erun and 1 failed.<br>
No currently running tasks (2345 of 5487)<br>
<br>
Summary: 1 task failed:<br>
&nbsp; /var/lib/jenkins/workspace/thesis-build-yocto/meta/recipes-devtools/=
sgml-common/sgml-common-native_0.6.3.bb, do_populate_sysroot<br>
Summary: There were 3 ERROR messages shown, returning a non-zero exit code.=
<br>
<br>
need help, tried to erase tmp but no improvement.<br>
<br>
/ Best<br>
Rickard<br>
</div>
</body>
</html>

--_000_E0AAEDF37958A64591322A370796C7897C57F0post_--
