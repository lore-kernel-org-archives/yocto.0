Return-Path: <tritini@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0B94E00521; Thu,  4 Dec 2014 02:36:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tritini[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ABE9E002F9
	for <yocto@yoctoproject.org>; Thu,  4 Dec 2014 02:36:36 -0800 (PST)
Received: by mail-wi0-f171.google.com with SMTP id bs8so34172257wib.16
	for <yocto@yoctoproject.org>; Thu, 04 Dec 2014 02:36:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=+m08Z0pHG2JdCgkGQ9UK+EwEHXPPrtGGp4GQbqxstck=;
	b=r/rr65E6Ev2s8X8/Ys+FY2q0PJq3qk/5ALBi2F6oPOWnvGmgORZGHWvS+6u26OeIFT
	ymDOL97FKJtHrw1sdnqwgLPwRalrQoJBmfjEleQW+0DBiJkzdXQS3VQOgrG5DByukuK6
	QnAWpnoN1Vxc7JQFnf83MkkJj83Ydaa5BYu6de+l/zDiAaMmQGdMSzAF7t4vpQ+Udxzv
	Jg1oVrN3OYOCn7Sf94OnK/+npfEnGqGGmAG+uccQnXoAXZe6Mqs5Zssr17yTqKxmPwkY
	iWFnd0tCbqPhbwc+FPs7gvJPdqpyprVlfO5Dbkh2VWyBPHNslmsijkFAv/pdGhu3K8mx
	MhaA==
MIME-Version: 1.0
X-Received: by 10.180.90.133 with SMTP id bw5mr20803699wib.50.1417689395788;
	Thu, 04 Dec 2014 02:36:35 -0800 (PST)
Received: by 10.217.178.136 with HTTP; Thu, 4 Dec 2014 02:36:35 -0800 (PST)
Date: Thu, 4 Dec 2014 11:36:35 +0100
Message-ID: <CAAkv466AT07_VX+uMqVpzEw+qrY-L_ka-EKp8h=0YsFH6VSzew@mail.gmail.com>
From: Tran TriTin <tritini@gmail.com>
To: yocto@yoctoproject.org
Subject: Toolchain for Qt SDK
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
X-List-Received-Date: Thu, 04 Dec 2014 10:36:41 -0000
Content-Type: multipart/alternative; boundary=f46d043be1aad681000509618870

--f46d043be1aad681000509618870
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
"1.7"TUNE_FEATURES     = "m32 i586"TARGET_FPU        = ""meta
meta-yocto        meta-yocto-bsp    =
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
<http://meta-toolchain-qt.bb>, do_populate_sdk) failed with exit code
'1'NOTE: Tasks Summary: Attempted 3790 tasks of which 3789 didn't need to
be rerun and 1 failed.No currently running tasks (3789 of 3791)Summary: 1
task failed:
/home/tvtritin/DemoYOCTO/poky1.7/meta/recipes-qt/meta/meta-toolchain-qt.bb
<http://meta-toolchain-qt.bb>, do_populate_sdkSummary: There was 1 WARNING
message shown.Summary: There were 2 ERROR messages shown, returning a
non-zero exit code.*



Best regards,
Tin

--f46d043be1aad681000509618870
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi all, <br><br></div>i tried to =
build a toolchain for Qt SDK with following command, but i received an erro=
r.<br></div>Can anyone know how to fix it?<br></div>Thanks in advance.<br><=
br><i>[tvtritin@g-105-1 build-core-image]$ bitbake -k meta-toolchain-qt<br>=
Loading cache: 100% |###########################################| ETA:=C2=
=A0 00:00:00<br>Loaded 1294 entries from dependency cache.<br>NOTE: Resolvi=
ng any missing task queue dependencies<br><br>Build Configuration:<br>BB_VE=
RSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.24.0&quot;<br>B=
UILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-l=
inux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0 =3D &quot;CentOS-6.6&quot;<br>TAR=
GET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;i586-poky-linux=
&quot;<br>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D &quot;qemux86&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=C2=A0=
=C2=A0=C2=A0 =3D &quot;1.7&quot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D &quot;m32 i586&quot;<br>TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &quot;&quot;<br>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 <br>meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D &quot;&lt;unkno=
wn&gt;:&lt;unknown&gt;&quot;<br>meta-oracle-java=C2=A0 =3D &quot;master:d52=
56fe7ae592f19ffe0619c093b333eb9f92a93&quot;<br><br>NOTE: Preparing runqueue=
<br>NOTE: Executing SetScene Tasks<br>NOTE: Executing RunQueue Tasks<br><sp=
an style=3D"color:rgb(204,0,0)"><b>ERROR</b>: Unable to install packages. C=
ommand &#39;/home/tvtritin/DemoYOCTO/poky1.7/build-core-image-java/tmp/sysr=
oots/x86_64-linux/usr/bin/apt-get=C2=A0 install --force-yes --allow-unauthe=
nticated nativesdk-packagegroup-qt-toolchain-host packagegroup-cross-canadi=
an-qemux86&#39; returned 100:<br>Reading package lists...<br>Building depen=
dency tree...<br>Reading state information...<br>W: Unable to read /home/tv=
tritin/DemoYOCTO/poky1.7/build-core-image-java/tmp/work/i586-poky-linux/met=
a-toolchain-qt/1.0-r7/apt-sdk/preferences.d/ - DirectoryExists (2: No such =
file or directory)<br>E: Unable to locate package nativesdk-packagegroup-qt=
-toolchain-host<br>E: Unable to locate package packagegroup-cross-canadian-=
qemux86<br><br><b>ERROR</b>: Function failed: do_populate_sdk<br><b>ERROR</=
b>: Logfile of failure stored in: /home/tvtritin/DemoYOCTO/poky1.7/build-co=
re-image-java/tmp/work/i586-poky-linux/meta-toolchain-qt/1.0-r7/temp/log.do=
_populate_sdk.11662<br><b>ERROR</b>: Task 7 (/home/tvtritin/DemoYOCTO/poky1=
.7/meta/recipes-qt/meta/<a href=3D"http://meta-toolchain-qt.bb">meta-toolch=
ain-qt.bb</a>, do_populate_sdk) failed with exit code &#39;1&#39;</span><br=
>NOTE: Tasks Summary: Attempted 3790 tasks of which 3789 didn&#39;t need to=
 be rerun and 1 failed.<br>No currently running tasks (3789 of 3791)<br><br=
>Summary: 1 task failed:<br>=C2=A0 /home/tvtritin/DemoYOCTO/poky1.7/meta/re=
cipes-qt/meta/<a href=3D"http://meta-toolchain-qt.bb">meta-toolchain-qt.bb<=
/a>, do_populate_sdk<br>Summary: There was 1 WARNING message shown.<br>Summ=
ary: There were 2 ERROR messages shown, returning a non-zero exit code.</i>=
<br><br><br><br></div>Best regards,<br></div>Tin<br></div>

--f46d043be1aad681000509618870--
