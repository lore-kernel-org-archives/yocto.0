Return-Path: <tritini@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 418FBE0080C; Thu,  4 Dec 2014 04:10:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tritini[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wg0-f68.google.com (mail-wg0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E5E1E00461
	for <yocto@yoctoproject.org>; Thu,  4 Dec 2014 04:10:23 -0800 (PST)
Received: by mail-wg0-f68.google.com with SMTP id b13so6154780wgh.3
	for <yocto@yoctoproject.org>; Thu, 04 Dec 2014 04:10:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=8x1rS3yj+rBoMF4g6VF8yd6xr6Q24NaPSyBE5IlGNNE=;
	b=x2M3qdeDuLO4Lc09gU6tV17wfkvzuBPd0rBvDnzBraGE1adgfE93yLUTzM2uOCu4KS
	rMD0u7wcPeCG12cYPW78mMEZLg30dBqn06Qk7jMDAL/Sm6XBSAhlsauVnkykPC9QyE8n
	ZhWZr4BYbvSXUxzj59sPPMkQke9m0aubmLBvZy8nzkCUn8t3piqRqJzYDFSi/VZVk0h7
	E72/zSDfgxq3GP9dG6GV/xmGw9IIHnd5MP2zFdhbRfa0fSqZwWkbYcBefLEh5ubC+ewT
	+xApQGbUTPSAQE6aQmo6UndH3WrqrnADMyQc6xrMUw/gwsbiWTvdlirj66J7MM+c/9oI
	hk+A==
MIME-Version: 1.0
X-Received: by 10.180.95.8 with SMTP id dg8mr34997363wib.33.1417695020375;
	Thu, 04 Dec 2014 04:10:20 -0800 (PST)
Received: by 10.217.178.136 with HTTP; Thu, 4 Dec 2014 04:10:20 -0800 (PST)
Date: Thu, 4 Dec 2014 13:10:20 +0100
Message-ID: <CAAkv4643OfQq6vx2GiKDf31H7bJc8uNo+Bb2mO86FB4aP6tCug@mail.gmail.com>
From: Tran TriTin <tritini@gmail.com>
To: yocto@yoctoproject.org
Subject: Build a Toolchain-QT
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
X-List-Received-Date: Thu, 04 Dec 2014 12:10:28 -0000
Content-Type: multipart/alternative; boundary=f46d04451a5116e482050962d8ad

--f46d04451a5116e482050962d8ad
Content-Type: text/plain; charset=UTF-8

Hi all,

i tried to build a toolchain for Qt SDK with following command, but i
received an error.
Can anyone know how to fix it?
Thanks in advance.









































*[tvtritin@g-105-1 build-core-image]$ bitbake -k meta-toolchain-qtLoading
cache: 100% |###########################################| ETA:
00:00:00Loaded 1294 entries from dependency cache.NOTE: Resolving any
missing task queue dependenciesBuild Configuration:BB_VERSION        =
"1.24.0"BUILD_SYS         = "x86_64-linux"NATIVELSBSTRING   =
"CentOS-6.6"TARGET_SYS        = "i586-poky-linux"MACHINE           =
"qemux86"DISTRO            = "poky"DISTRO_VERSION    =
"1.7"TUNE_FEATURES     = "m32 i586"TARGET_FPU        =
""meta              meta-yocto        meta-yocto-bsp    =
"<unknown>:<unknown>"meta-oracle-java  =
"master:d5256fe7ae592f19ffe0619c093b333eb9f92a93"NOTE: Preparing
runqueueNOTE: Executing SetScene TasksNOTE: Executing RunQueue TasksERROR:
Unable to install packages. Command
'/home/tvtritin/DemoYOCTO/poky1.7/build-core-image-java/tmp/sysroots/x86_64-linux/usr/bin/apt-get
install --force-yes --allow-unauthenticated
nativesdk-packagegroup-qt-toolchain-host
packagegroup-cross-canadian-qemux86' returned 100:Reading package
lists...Building dependency tree...Reading state information...W: Unable to
read
/home/tvtritin/DemoYOCTO/poky1.7/build-core-image-java/tmp/work/i586-poky-linux/meta-toolchain-qt/1.0-r7/apt-sdk/preferences.d/
- DirectoryExists (2: No such file or directory)E: Unable to locate package
nativesdk-packagegroup-qt-toolchain-hostE: Unable to locate package
packagegroup-cross-canadian-qemux86ERROR: Function failed:
do_populate_sdkERROR: Logfile of failure stored in:
/home/tvtritin/DemoYOCTO/poky1.7/build-core-image-java/tmp/work/i586-poky-linux/meta-toolchain-qt/1.0-r7/temp/log.do_populate_sdk.11662ERROR:
Task 7
(/home/tvtritin/DemoYOCTO/poky1.7/meta/recipes-qt/meta/meta-toolchain-qt.bb
<http://meta-toolchain-qt.bb/>, do_populate_sdk) failed with exit code
'1'NOTE: Tasks Summary: Attempted 3790 tasks of which 3789 didn't need to
be rerun and 1 failed.No currently running tasks (3789 of 3791)Summary: 1
task failed:
/home/tvtritin/DemoYOCTO/poky1.7/meta/recipes-qt/meta/meta-toolchain-qt.bb
<http://meta-toolchain-qt.bb/>, do_populate_sdkSummary: There was 1 WARNING
message shown.Summary: There were 2 ERROR messages shown, returning a
non-zero exit code.*



Best regards,

--f46d04451a5116e482050962d8ad
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"font-size:12.8000001907349px"><div><div><div=
>Hi all,=C2=A0<br><br></div>i tried to build a toolchain for Qt SDK with fo=
llowing command, but i received an error.<br></div>Can anyone know how to f=
ix it?<br></div>Thanks in advance.<br><br><i>[tvtritin@g-105-1 build-core-i=
mage]$ bitbake -k meta-toolchain-qt<br>Loading cache: 100% |###############=
############################| ETA:=C2=A0 00:00:00<br>Loaded 1294 entries fr=
om dependency cache.<br>NOTE: Resolving any missing task queue dependencies=
<br><br>Build Configuration:<br>BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =3D &quot;1.24.0&quot;<br>BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=
=A0 =3D &quot;CentOS-6.6&quot;<br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D &quot;i586-poky-linux&quot;<br>MACHINE=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;qemux86&quot;<br>DISTR=
O=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &qu=
ot;poky&quot;<br>DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D &quot;1.7&quot;<br>TU=
NE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;m32 i586&quot;<br>TARGET_FPU=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;&quot;<br>meta=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<br>meta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<br>meta-y=
octo-bsp=C2=A0=C2=A0=C2=A0 =3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;<=
br>meta-oracle-java=C2=A0 =3D &quot;master:d5256fe7ae592f19ffe0619c093b333e=
b9f92a93&quot;<br><br>NOTE: Preparing runqueue<br>NOTE: Executing SetScene =
Tasks<br>NOTE: Executing RunQueue Tasks<br><span style=3D"color:rgb(204,0,0=
)"><b>ERROR</b>: Unable to install packages. Command &#39;/home/tvtritin/De=
moYOCTO/poky1.7/build-core-image-java/tmp/sysroots/x86_64-linux/usr/bin/apt=
-get=C2=A0 install --force-yes --allow-unauthenticated nativesdk-packagegro=
up-qt-toolchain-host packagegroup-cross-canadian-qemux86&#39; returned 100:=
<br>Reading package lists...<br>Building dependency tree...<br>Reading stat=
e information...<br>W: Unable to read /home/tvtritin/DemoYOCTO/poky1.7/buil=
d-core-image-java/tmp/work/i586-poky-linux/meta-toolchain-qt/1.0-r7/apt-sdk=
/preferences.d/ - DirectoryExists (2: No such file or directory)<br>E: Unab=
le to locate package nativesdk-packagegroup-qt-toolchain-host<br>E: Unable =
to locate package packagegroup-cross-canadian-qemux86<br><br><b>ERROR</b>: =
Function failed: do_populate_sdk<br><b>ERROR</b>: Logfile of failure stored=
 in: /home/tvtritin/DemoYOCTO/poky1.7/build-core-image-java/tmp/work/i586-p=
oky-linux/meta-toolchain-qt/1.0-r7/temp/log.do_populate_sdk.11662<br><b>ERR=
OR</b>: Task 7 (/home/tvtritin/DemoYOCTO/poky1.7/meta/recipes-qt/meta/<a hr=
ef=3D"http://meta-toolchain-qt.bb/" target=3D"_blank">meta-toolchain-qt.bb<=
/a>, do_populate_sdk) failed with exit code &#39;1&#39;</span><br>NOTE: Tas=
ks Summary: Attempted 3790 tasks of which 3789 didn&#39;t need to be rerun =
and 1 failed.<br>No currently running tasks (3789 of 3791)<br><br>Summary: =
1 task failed:<br>=C2=A0 /home/tvtritin/DemoYOCTO/poky1.7/meta/recipes-qt/m=
eta/<a href=3D"http://meta-toolchain-qt.bb/" target=3D"_blank">meta-toolcha=
in-qt.bb</a>, do_populate_sdk<br>Summary: There was 1 WARNING message shown=
.<br>Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.</i><br><br><br><br></div><span style=3D"font-size:12.8000001907349px"=
>Best regards,</span><br></div>

--f46d04451a5116e482050962d8ad--
