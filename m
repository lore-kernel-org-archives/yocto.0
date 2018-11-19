Return-Path: <ssajal@blackberry.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE465E00C3C; Mon, 19 Nov 2018 11:18:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [208.65.78.89 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Mon, 19 Nov 2018 11:18:53 PST
Received: from smtp-p02.blackberry.com (smtp-p02.blackberry.com [208.65.78.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83AF3E00C09
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 11:18:53 -0800 (PST)
Received: from smtp-pop.rim.net (HELO XCT104CNC.rim.net) ([10.65.161.204])
	by mhs214cnc.rim.net with ESMTP/TLS/DHE-RSA-AES256-SHA;
	19 Nov 2018 14:13:50 -0500
Received: from XCT197YKF.rim.net (10.2.25.5) by XCT104CNC.rim.net
	(10.65.161.204) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Mon, 19 Nov 2018 14:13:50 -0500
Received: from XMB117CNC.rim.net ([fe80::24f3:cc30:b596:7ca0]) by
	XCT197YKF.rim.net ([fe80::d451:a94b:26c6:5632%13]) with mapi id
	14.03.0415.000; Mon, 19 Nov 2018 14:13:49 -0500
From: Sakib Sajal <ssajal@blackberry.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: kconfig variables not being included in yocto build.
Thread-Index: AdSAPAAysZRwI1beQH6v7tb8fnNDNw==
Date: Mon, 19 Nov 2018 19:13:49 +0000
Message-ID: <999B71279F0CB24F8E7673582CE50F6ED38B8C@XMB117CNC.rim.net>
Accept-Language: en-US, en-CA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.65.160.249]
MIME-Version: 1.0
Subject: kconfig variables not being included in yocto build.
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
X-List-Received-Date: Mon, 19 Nov 2018 19:18:54 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_999B71279F0CB24F8E7673582CE50F6ED38B8CXMB117CNCrimnet_"

--_000_999B71279F0CB24F8E7673582CE50F6ED38B8CXMB117CNCrimnet_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I have been trying to patch the linux kernel and add some kernel configurat=
ion but I am failing to add kconfig fragments to be included in the final b=
uild.

Initially I tried patching the kernel with hardcoded values in the patch.

I am building for qemu to minimize the variables I have to worry about.

Build Configuration:
BB_VERSION           =3D "1.38.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "ubuntu-16.04"
TARGET_SYS           =3D "i586-poky-linux"
MACHINE              =3D "qemux86"
DISTRO               =3D "poky"
DISTRO_VERSION       =3D "2.5.1"         // branch "sumo"
TUNE_FEATURES        =3D "m32 i586"
TARGET_FPU           =3D ""


My initial project structure:

-poky
--meta
--meta-poky
--meta-yocto-bsp
--meta-my-layer
---recipes-kernel
----linux
-----linux-yocto
------my-patch.patch
-----linux-yocto_4%.bbappend
---conf
----layer.conf

Content of the bbappend file:
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"

SRC_URI +=3D "file://my-patch.patch"

I enabled my-layer by adding the layer in the build/conf/bblayers.conf file=
. I was able to build an image and test my changes with the hardcoded value=
d in my patch.

However I want the values to be configurable through kernel configuration. =
Since I knew what variables I have introduced, I put them in a .cfg file wi=
th their desired values in the linux-yocto folder.

New project structure:

-poky
--meta-my-layer
---recipes-kernel
----linux
-----linux-yocto
------my-conf-frag.cfg

(other files and directories are same as before)

Added the following line to the .bbappend file:
SRC_URI +=3D "file://my-conf-frag.cfg"

Content of my-conf-frag.cfg:
CONFIG_MY_FIRST_VAR=3D"MY-NAME"
CONFIG_MY_SECOND_VAR=3Dy

Then I run:
bitbake core-image-base

and get the following error:

ERROR: Task (<work_dir>/poky/meta/recipes-kernel/linux/linux-yocto_4.14.bb:=
do_compile) failed with exit code '1'

The kernel isn't being compiled since it does not know what "CONFIG_MY_FIRS=
T_VAR" is.

I checked for .config files in the build directory and found one in "poky/b=
uild/tmp/work-shared/qemux86/kernel-source/.kernel-meta/cfg/.config" which =
contained the two variables I defined in my cfg file. But that file is a ke=
rnel configuration fragment file itself. The final config file which is use=
d to build the image is located, I believe, in "poky/build/tmp/work/qemux86=
-poky-linux/linux-yocto/4.14.67+gitAUTOINC+c43c9e19a2_084af9624d-r0/linux-q=
emux86-standard-build/.config" but i do not see the variables there in the =
final .config file. I was also able to locate the cfg and the patch file in=
 "/poky/build/tmp/work/qemux86-poky-linux/linux-yocto/4.14.67+gitAUTOINC+c4=
3c9e19a2_084af9624d-r0/"directory. Therefore the files are being picked up =
by the build system but the fragments are not being applied to make the fin=
al .config file used to build the kernel.

I went through yocto mailing list for similar problems and followed the ste=
ps provided with no success. I also went through yocto's mega-manual and ke=
rnel development manual as well as the yocto-lab pdfs and followed all the =
different steps but i always get the compilation error.

Can someone please help me. Thanks in advance!

Sakib Sajal


--_000_999B71279F0CB24F8E7673582CE50F6ED38B8CXMB117CNCrimnet_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" id=3D"owaParaStyle">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body fpstyle=3D"1" ocsi=3D"0">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Hello,<br>
<br>
I have been trying to patch the linux kernel and add some kernel configurat=
ion but I am failing to add kconfig fragments to be included in the final b=
uild.<br>
<br>
Initially I tried patching the kernel with hardcoded values in the patch.<b=
r>
<br>
I am building for qemu to minimize the variables I have to worry about.<br>
<br>
Build Configuration:<br>
BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
&quot;1.38.0&quot;<br>
BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D &quot;x86_64-linux&quot;<br>
NATIVELSBSTRING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;ubuntu-16.04&quot;<=
br>
TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
&quot;i586-poky-linux&quot;<br>
MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; =3D &quot;qemux86&quot;<br>
DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D &quot;poky&quot;<br>
DISTRO_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;2.5.1&quot; &n=
bsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; // branch &quot;sumo&quot;<br>
TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;m32 i586&=
quot;<br>
TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
&quot;&quot;<br>
<br>
<br>
My initial project structure:<br>
<br>
-poky<br>
--meta<br>
--meta-poky<br>
--meta-yocto-bsp<br>
--meta-my-layer<br>
---recipes-kernel<br>
----linux<br>
-----linux-yocto<br>
------my-patch.patch<br>
-----linux-yocto_4%.bbappend<br>
---conf<br>
----layer.conf<br>
<br>
Content of the bbappend file:<br>
FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
<br>
SRC_URI &#43;=3D &quot;file://my-patch.patch&quot;<br>
<br>
I enabled my-layer by adding the layer in the build/conf/bblayers.conf file=
. I was able to build an image and test my changes with the hardcoded value=
d in my patch.<br>
<br>
However I want the values to be configurable through kernel configuration. =
Since I knew what variables I have introduced, I put them in a .cfg file wi=
th their desired values in the linux-yocto folder.
<br>
<br>
New project structure:<br>
<br>
-poky<br>
--meta-my-layer<br>
---recipes-kernel<br>
----linux<br>
-----linux-yocto<br>
------my-conf-frag.cfg<br>
<br>
(other files and directories are same as before)<br>
<br>
Added the following line to the .bbappend file:<br>
SRC_URI &#43;=3D &quot;file://my-conf-frag.cfg&quot;<br>
<br>
Content of my-conf-frag.cfg:<br>
CONFIG_MY_FIRST_VAR=3D&quot;MY-NAME&quot;<br>
CONFIG_MY_SECOND_VAR=3Dy<br>
<br>
Then I run:<br>
bitbake core-image-base<br>
<br>
and get the following error:<br>
<br>
ERROR: Task (&lt;work_dir&gt;/poky/meta/recipes-kernel/linux/linux-yocto_4.=
14.bb:do_compile) failed with exit code '1'<br>
<br>
The kernel isn't being compiled since it does not know what &quot;CONFIG_MY=
_FIRST_VAR&quot; is.<br>
<br>
I checked for .config files in the build directory and found one in &quot;p=
oky/build/tmp/work-shared/qemux86/kernel-source/.kernel-meta/cfg/.config&qu=
ot; which contained the two variables I defined in my cfg file. But that fi=
le is a kernel configuration fragment file
 itself. The final config file which is used to build the image is located,=
 I believe, in &quot;poky/build/tmp/work/qemux86-poky-linux/linux-yocto/4.1=
4.67&#43;gitAUTOINC&#43;c43c9e19a2_084af9624d-r0/linux-qemux86-standard-bui=
ld/.config&quot; but i do not see the variables there
 in the final .config file. I was also able to locate the cfg and the patch=
 file in &quot;/poky/build/tmp/work/qemux86-poky-linux/linux-yocto/4.14.67&=
#43;gitAUTOINC&#43;c43c9e19a2_084af9624d-r0/&quot;directory. Therefore the =
files are being picked up by the build system but
 the fragments are not being applied to make the final .config file used to=
 build the kernel.<br>
<br>
I went through yocto mailing list for similar problems and followed the ste=
ps provided with no success. I also went through yocto's mega-manual and ke=
rnel development manual as well as the yocto-lab pdfs and followed all the =
different steps but i always get
 the compilation error.<br>
<br>
<div>Can someone please help me. Thanks in advance!</div>
<div><br>
</div>
<div>Sakib Sajal</div>
<div><br>
</div>
</div>
</body>
</html>

--_000_999B71279F0CB24F8E7673582CE50F6ED38B8CXMB117CNCrimnet_--
