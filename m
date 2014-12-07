Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0B8BE00872; Sat,  6 Dec 2014 19:11:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [202.136.110.238 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from webmail2.adam.net.au (webmail2.adam.net.au [202.136.110.238])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3BC5E00833
	for <yocto@yoctoproject.org>; Sat,  6 Dec 2014 19:11:26 -0800 (PST)
Received: from localhost (webmail2.adam.net.au [127.0.0.1])
	by webmail2.adam.net.au (8.13.8/8.13.8) with ESMTP id sB73BKeY028491;
	Sun, 7 Dec 2014 13:41:20 +1030
Message-Id: <2f122a2cc42c6ffa877fcc0a19addea7e46735d1@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: "Tran TriTin" <tritini@gmail.com>, yocto@yoctoproject.org
X-Mailer: Atmail 6.3.5.8698
in-reply-to: <CAAkv4643OfQq6vx2GiKDf31H7bJc8uNo+Bb2mO86FB4aP6tCug@mail.gmail.com>
Date: Sun, 07 Dec 2014 13:41:20 +1030
MIME-Version: 1.0
Subject: Re: Build a Toolchain-QT
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: peterengcomau001@adam.com.au
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 07 Dec 2014 03:11:38 -0000
Content-Type: multipart/alternative;
	boundary="=_1dc0ca7983e6ce76ff7d8879870e2924"

--=_1dc0ca7983e6ce76ff7d8879870e2924
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Try using $ bitbake -k meta-toolchain-qte=C2=A0This builds the toochain=
=0Afor the embedded version of QTLachlan=C2=A0 =0A=0A----- Original Mess=
age -----=0AFrom: "Tran TriTin" =0ATo:=0ACc:=0ASent:Thu, 4 Dec 2014 13:1=
0:20 +0100=0ASubject:[yocto] Build a Toolchain-QT=0A=0A    Hi all,=C2=A0=
=0A=0Ai tried to build a toolchain for Qt SDK with following command, bu=
t i=0Areceived an error.=0ACan anyone know how to fix it?=0AThanks in ad=
vance.=0A=0A[tvtritin@g-105-1 build-core-image]$ bitbake -k meta-toolcha=
in-qt=0ALoading cache: 100% |###########################################=
|=0AETA:=C2=A0 00:00:00=0ALoaded 1294 entries from dependency cache.=0AN=
OTE: Resolving any missing task queue dependencies=0A=0ABuild Configurat=
ion:=0ABB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "1.24.0"=
=0ABUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "x86_64=
-linux"=0ANATIVELSBSTRING=C2=A0=C2=A0 =3D "CentOS-6.6"=0ATARGET_SYS=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "i586-poky-linux"=0AMACHINE=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "qemux8=
6"=0ADISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D "poky"=0ADISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D "1.7"=0ATUNE_FE=
ATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D "m32 i586"=0ATARGET_FPU=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D ""=0Ameta=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=0Ameta-yocto=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=0Ameta-yocto-bsp=C2=A0=
=C2=A0=C2=A0 =3D ":"=0Ameta-oracle-java=C2=A0 =3D=0A"master:d5256fe7ae59=
2f19ffe0619c093b333eb9f92a93"=0A=0ANOTE: Preparing runqueue=0ANOTE: Exec=
uting SetScene Tasks=0ANOTE: Executing RunQueue Tasks=0AERROR: Unable to=
 install packages. Command=0A'/home/tvtritin/DemoYOCTO/poky1.7/build-cor=
e-image-java/tmp/sysroots/x86_64-linux/usr/bin/apt-get=C2=A0=0Ainstall -=
-force-yes --allow-unauthenticated=0Anativesdk-packagegroup-qt-toolchain=
-host=0Apackagegroup-cross-canadian-qemux86' returned 100:=0AReading pac=
kage lists...=0ABuilding dependency tree...=0AReading state information.=
.=0AW: Unable to read=0A/home/tvtritin/DemoYOCTO/poky1.7/build-core-ima=
ge-java/tmp/work/i586-poky-linux/meta-toolchain-qt/1.0-r7/apt-sdk/prefer=
ences.d/=0A- DirectoryExists (2: No such file or directory)=0AE: Unable=
 to locate package nativesdk-packagegroup-qt-toolchain-host=0AE: Unable=
 to locate package packagegroup-cross-canadian-qemux86=0A=0AERROR: Funct=
ion failed: do_populate_sdk=0AERROR: Logfile of failure stored in:=0A/ho=
me/tvtritin/DemoYOCTO/poky1.7/build-core-image-java/tmp/work/i586-poky-l=
inux/meta-toolchain-qt/1.0-r7/temp/log.do_populate_sdk.11662=0AERROR: Ta=
sk 7=0A(/home/tvtritin/DemoYOCTO/poky1.7/meta/recipes-qt/meta/meta-toolc=
hain-qt.bb=0A[1], do_populate_sdk) failed with exit code '1'=0ANOTE: Tas=
ks Summary: Attempted 3790 tasks of which 3789 didn't need=0Ato be rerun=
 and 1 failed.=0ANo currently running tasks (3789 of 3791)=0A=0ASummary:=
 1 task failed:=0A=C2=A0=0A/home/tvtritin/DemoYOCTO/poky1.7/meta/recipes=
-qt/meta/meta-toolchain-qt.bb=0A[2], do_populate_sdk=0ASummary: There wa=
s 1 WARNING message shown.=0ASummary: There were 2 ERROR messages shown,=
 returning a non-zero exit=0Acode.=0A=0A Best regards,=0A ---- Message s=
ent via Adam Internet WebMail -=0Ahttp://www.adam.com.au/=0A=0ALinks:=0A=
------=0A[1] http://meta-toolchain-qt.bb/=0A[2] http://meta-toolchain-qt=
bb/=0A

--=_1dc0ca7983e6ce76ff7d8879870e2924
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>Try using $ bitbake -k meta-toolchain-qte=C2=A0<div>This bui=
lds the toochain for the embedded version of QT</div><div>Lachlan=C2=A0<=
div>=0A=09=09=09=09<br /><blockquote><br />----- Original Message -----<=
br /><div style=3D"width:100%;background:rgb(228,228,228);"><div style=
=3D"font-weight:bold;">From:</div> "Tran TriTin" &lt;tritini@gmail.com&g=
t;</div><br /><div style=3D"font-weight:bold;">To:</div>&lt;yocto@yoctop=
roject.org&gt;<br /><div style=3D"font-weight:bold;">Cc:</div><br /><div=
 style=3D"font-weight:bold;">Sent:</div>Thu, 4 Dec 2014 13:10:20 +0100<b=
r /><div style=3D"font-weight:bold;">Subject:</div>[yocto] Build a Toolc=
hain-QT<br /><br /><br /><div dir=3D"ltr">=0A<div style=3D"font-size:12.=
8000001907349px;">=0A<div>=0A<div>=0A<div>Hi all,=C2=A0<br /><br /></div=
>i tried to build a toolchain for Qt SDK with following command, but i r=
eceived an error.<br /></div>Can anyone know how to fix it?<br /></div>T=
hanks in advance.<br /><br /><i>[tvtritin@g-105-1 build-core-image]$ bit=
bake -k meta-toolchain-qt<br />Loading cache: 100% |####################=
#######################| ETA:=C2=A0 00:00:00<br />Loaded 1294 entries fr=
om dependency cache.<br />NOTE: Resolving any missing task queue depende=
ncies<br /><br />Build Configuration:<br />BB_VERSION=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 =3D "1.24.0"<br />BUILD_SYS=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "x86_64-linux"<br />NATIVELSBSTRING=
=C2=A0=C2=A0 =3D "CentOS-6.6"<br />TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D "i586-poky-linux"<br />MACHINE=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "qemux86"<br />DISTRO=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "poky"<=
br />DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D "1.7"<br />TUNE_FEATURES=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D "m32 i586"<br />TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D ""<br />meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<br />meta-yocto=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<br />meta-yocto-bsp=C2=A0=
=C2=A0=C2=A0 =3D "&lt;unknown&gt;:&lt;unknown&gt;"<br />meta-oracle-java=
=C2=A0 =3D "master:d5256fe7ae592f19ffe0619c093b333eb9f92a93"<br /><br />=
NOTE: Preparing runqueue<br />NOTE: Executing SetScene Tasks<br />NOTE:=
 Executing RunQueue Tasks<br /><span style=3D"color:rgb(204,0,0);"><b>ER=
ROR</b>: Unable to install packages. Command '/home/tvtritin/DemoYOCTO/p=
oky1.7/build-core-image-java/tmp/sysroots/x86_64-linux/usr/bin/apt-get=
=C2=A0 install --force-yes --allow-unauthenticated nativesdk-packagegrou=
p-qt-toolchain-host packagegroup-cross-canadian-qemux86' returned 100:<b=
r />Reading package lists...<br />Building dependency tree...<br />Readi=
ng state information...<br />W: Unable to read /home/tvtritin/DemoYOCTO/=
poky1.7/build-core-image-java/tmp/work/i586-poky-linux/meta-toolchain-qt=
/1.0-r7/apt-sdk/preferences.d/ - DirectoryExists (2: No such file or dir=
ectory)<br />E: Unable to locate package nativesdk-packagegroup-qt-toolc=
hain-host<br />E: Unable to locate package packagegroup-cross-canadian-q=
emux86<br /><br /><b>ERROR</b>: Function failed: do_populate_sdk<br /><b=
>ERROR</b>: Logfile of failure stored in: /home/tvtritin/DemoYOCTO/poky1=
7/build-core-image-java/tmp/work/i586-poky-linux/meta-toolchain-qt/1.0-=
r7/temp/log.do_populate_sdk.11662<br /><b>ERROR</b>: Task 7 (/home/tvtri=
tin/DemoYOCTO/poky1.7/meta/recipes-qt/meta/<a href=3D"http://meta-toolch=
ain-qt.bb/">meta-toolchain-qt.bb</a>, do_populate_sdk) failed with exit=
 code '1'</span><br />NOTE: Tasks Summary: Attempted 3790 tasks of which=
 3789 didn't need to be rerun and 1 failed.<br />No currently running ta=
sks (3789 of 3791)<br /><br />Summary: 1 task failed:<br />=C2=A0 /home/=
tvtritin/DemoYOCTO/poky1.7/meta/recipes-qt/meta/<a href=3D"http://meta-t=
oolchain-qt.bb/">meta-toolchain-qt.bb</a>, do_populate_sdk<br />Summary:=
 There was 1 WARNING message shown.<br />Summary: There were 2 ERROR mes=
sages shown, returning a non-zero exit code.</i><br /><br /><br /><br />=
</div>=0A<span style=3D"font-size:12.8000001907349px;">Best regards,</sp=
an><br /></div>=0A=0A</blockquote></div></div>---- Message sent via Adam=
 Internet WebMail  - http://www.adam.com.au/</body></html>

--=_1dc0ca7983e6ce76ff7d8879870e2924--
