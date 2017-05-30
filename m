Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21DCDE00B3D; Tue, 30 May 2017 12:02:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [195.74.38.228 listed in list.dnswl.org]
Received: from bin-vsp-out-01.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82718E00B19
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 12:02:27 -0700 (PDT)
X-Halon-ID: 83e92eb9-456a-11e7-b757-005056917a89
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-01.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Tue, 30 May 2017 21:02:23 +0200 (CEST)
MIME-Version: 1.0
Date: Tue, 30 May 2017 21:02:47 +0200
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Yocto <yocto@yoctoproject.org>, <andybeg@mail.ru>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <1496121539.508008271@f416.i.mail.ru>
References: <1496121539.508008271@f416.i.mail.ru>
Message-ID: <1622d38d47bd4adc9976204dcb7f93c5@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Subject: (No subject)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: petter@technux.se
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 30 May 2017 19:02:34 -0000
Content-Type: multipart/alternative;
	boundary="=_a023a5fb6a473c0778727841d83bfa83"

--=_a023a5fb6a473c0778727841d83bfa83
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

Hi, 

After a quick look, it seems like the problem is related to
the Upgrade to Qt 5.8 that was done in pyro. 

commit: 333949a Upgrade
to Qt 5.8 (in meta-qt5) 

The above mentioned commit causes
'./dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase/0014-Add-IMX-GPU-support.patch'
(in meta-freescale) to fail. So this patch needs to be updated to match
the Qt 5.8 changes (that affects qmake.conf). 

BR Petter 

Petter
Mabäcker

Technux <petter@technux.se>
www.technux.se

2017-05-30 07:19
skrev Андрей Кононов: 

> i'm trying to build
> bitbake
fsl-image-multimedia-full -k
> using PYRO repository and my image
include QT5 library, but get error. The same configuration on MORTY
builded without errors 
> 
> Parsing recipes: 100%
|############################################################################################################################################################################################################################|
Time: 0:19:36
> Parsing of 2258 .bb files complete (0 cached, 2258
parsed). 3050 targets, 506 skipped, 0 masked, 0 errors.
> NOTE:
Resolving any missing task queue dependencies 
> 
> Build
Configuration:
> BB_VERSION = "1.34.0"
> BUILD_SYS = "x86_64-linux"
>
NATIVELSBSTRING = "linuxmint-18.1"
> TARGET_SYS =
"arm-poky-linux-gnueabi"
> MACHINE = "imx6qpsabreauto"
> DISTRO =
"poky"
> DISTRO_VERSION = "2.3"
> TUNE_FEATURES = "arm armv7a vfp thumb
neon callconvention-hard cortexa9"
> TARGET_FPU = "hard"
> meta 
>
meta-poky = "HEAD:31389f8b0088a8a83aa5e50f11359b39934e4640"
> meta-oe 
>
meta-gnome 
> meta-multimedia =
"HEAD:5e82995148a2844c6f483ae5ddd1438d87ea9fb7"
> meta-freescale =
"HEAD:a65d13c315db447adda68b47faeb4c0afd0655b8"
>
meta-freescale-3rdparty =
"HEAD:1f37698ac62945b6531a316ec1232af23cc6c050"
> meta-freescale-distro
= "HEAD:cd5c7a2539f40004f74126e9fdf08254fd9a6390"
> meta-qt5 =
"master:6605c48f3a900da26425ef31d83eb1c95d551531"
> meta-ruby 
>
meta-networking 
> meta-python 
> meta-filesystems =
"HEAD:5e82995148a2844c6f483ae5ddd1438d87ea9fb7" 
> 
> Initialising
tasks: 100%
|#########################################################################################################################################################################################################################|
Time: 0:02:40
> NOTE: Executing SetScene Tasks
> NOTE: Executing
RunQueue Tasks
> ERROR: qtbase-5.8.0+gitAUTOINC+49dc9aa409-r0 do_patch:
Command Error: 'quilt --quiltrc
/media/barsuk/ext4.720/pyro/rootfs.systemd.qp/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/qtbase/5.8.0+gitAUTOINC+49dc9aa409-r0/recipe-sysroot-native/etc/quiltrc
push' exited with 0 Output:
> Applying patch
0014-Add-IMX-GPU-support.patch
> patching file
mkspecs/linux-oe-g++/qmake.conf
> Hunk #1 FAILED at 39.
> 1 out of 1
hunk FAILED -- rejects in file mkspecs/linux-oe-g++/qmake.conf
> Patch
0014-Add-IMX-GPU-support.patch does not apply (enforce with -f)
> ERROR:
qtbase-5.8.0+gitAUTOINC+49dc9aa409-r0 do_patch: Function failed:
patch_do_patch
> ERROR: Logfile of failure stored in:
/media/barsuk/ext4.720/pyro/rootfs.systemd.qp/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/qtbase/5.8.0+gitAUTOINC+49dc9aa409-r0/temp/log.do_patch.8895
>
ERROR: Task
(/media/barsuk/ext4.720/pyro/sources/meta-qt5/recipes-qt/qt5/qtbase_git.bb:do_patch)
failed with exit code '1'
> WARNING: ttf-arphic-uming-20080216-r6
do_populate_lic: ttf-arphic-uming: No generic license file exists for:
Arphic-Public-License in any provider
> NOTE: Tasks Summary: Attempted
5116 tasks of which 6 didn't need to be rerun and 1 failed. 
> 
>
Summary: 1 task failed:
>
/media/barsuk/ext4.720/pyro/sources/meta-qt5/recipes-qt/qt5/qtbase_git.bb:do_patch
>
Summary: There were 2 WARNING messages shown.
> Summary: There were 2
ERROR messages shown, returning a non-zero exit code. 
> 
> -- 
> Андрей
Кононов
 

--=_a023a5fb6a473c0778727841d83bfa83
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>Hi,</p>
<p>After a quick look, it seems like the problem is related to the Upgrade =
to Qt 5.8 that was done in pyro.</p>
<p>commit: 333949a Upgrade to Qt 5.8 (in meta-qt5)</p>
<p>The above mentioned commit causes './dynamic-layers/qt5-layer/recipes-qt=
/qt5/qtbase/0014-Add-IMX-GPU-support.patch' (in meta-freescale) to fail. So=
 this patch needs to be updated to match the Qt 5.8 changes (that affects q=
make.conf).</p>
<p>BR Petter</p>
<p>&nbsp;</p>
<pre>Petter Mab&auml;cker

Technux &lt;petter@technux.se&gt;
www.technux.se<br /><br /></pre>
<p>2017-05-30 07:19 skrev =D0=90=D0=BD=D0=B4=D1=80=D0=B5=D0=B9 =D0=9A=D0=BE=
=D0=BD=D0=BE=D0=BD=D0=BE=D0=B2:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<p>i'm trying to build<br />bitbake fsl-image-multimedia-full -k<br />using=
 <strong>pyro</strong> repository and my image include QT5 library, but get=
 error. The same configuration on <strong>morty</strong> builded without er=
rors</p>
<p>Parsing recipes: 100% |#################################################=
###########################################################################=
###########################################################################=
#####################| Time: 0:19:36<br />Parsing of 2258 .bb files complet=
e (0 cached, 2258 parsed). 3050 targets, 506 skipped, 0 masked, 0 errors.<b=
r />NOTE: Resolving any missing task queue dependencies</p>
<p>Build Configuration:<br />BB_VERSION =3D "1.34.0"<br />BUILD_SYS =3D "x8=
6_64-linux"<br />NATIVELSBSTRING =3D "linuxmint-18.1"<br />TARGET_SYS =3D "=
arm-poky-linux-gnueabi"<br />MACHINE =3D "imx6qpsabreauto"<br />DISTRO =3D =
"poky"<br />DISTRO_VERSION =3D "2.3"<br />TUNE_FEATURES =3D "arm armv7a vfp=
 thumb neon callconvention-hard cortexa9"<br />TARGET_FPU =3D "hard"<br />m=
eta <br />meta-poky =3D "HEAD:31389f8b0088a8a83aa5e50f11359b39934e4640"<br =
/>meta-oe <br />meta-gnome <br />meta-multimedia =3D "HEAD:5e82995148a2844c=
6f483ae5ddd1438d87ea9fb7"<br />meta-freescale =3D "HEAD:a65d13c315db447adda=
68b47faeb4c0afd0655b8"<br />meta-freescale-3rdparty =3D "HEAD:1f37698ac6294=
5b6531a316ec1232af23cc6c050"<br />meta-freescale-distro =3D "HEAD:cd5c7a253=
9f40004f74126e9fdf08254fd9a6390"<br />meta-qt5 =3D "master:6605c48f3a900da2=
6425ef31d83eb1c95d551531"<br />meta-ruby <br />meta-networking <br />meta-p=
ython <br />meta-filesystems =3D "HEAD:5e82995148a2844c6f483ae5ddd1438d87ea=
9fb7"</p>
<p>Initialising tasks: 100% |##############################################=
###########################################################################=
###########################################################################=
#####################| Time: 0:02:40<br />NOTE: Executing SetScene Tasks<br=
 />NOTE: Executing RunQueue Tasks<br />ERROR: qtbase-5.8.0+gitAUTOINC+49dc9=
aa409-r0 do_patch: Command Error: 'quilt --quiltrc /media/barsuk/ext4.720/p=
yro/rootfs.systemd.qp/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/qt=
base/5.8.0+gitAUTOINC+49dc9aa409-r0/recipe-sysroot-native/etc/quiltrc push'=
 exited with 0 Output:<br />Applying patch 0014-Add-IMX-GPU-support.patch<b=
r />patching file mkspecs/linux-oe-g++/qmake.conf<br />Hunk #1 FAILED at 39=
=2E<br />1 out of 1 hunk FAILED -- rejects in file mkspecs/linux-oe-g++/qma=
ke.conf<br />Patch 0014-Add-IMX-GPU-support.patch does not apply (enforce w=
ith -f)<br />ERROR: qtbase-5.8.0+gitAUTOINC+49dc9aa409-r0 do_patch: Functio=
n failed: patch_do_patch<br />ERROR: Logfile of failure stored in: /media/b=
arsuk/ext4.720/pyro/rootfs.systemd.qp/tmp/work/cortexa9hf-neon-mx6qdl-poky-=
linux-gnueabi/qtbase/5.8.0+gitAUTOINC+49dc9aa409-r0/temp/log.do_patch.8895<=
br />ERROR: Task (/media/barsuk/ext4.720/pyro/sources/meta-qt5/recipes-qt/q=
t5/qtbase_git.bb:do_patch) failed with exit code '1'<br />WARNING: ttf-arph=
ic-uming-20080216-r6 do_populate_lic: ttf-arphic-uming: No generic license =
file exists for: Arphic-Public-License in any provider<br />NOTE: Tasks Sum=
mary: Attempted 5116 tasks of which 6 didn't need to be rerun and 1 failed=
=2E</p>
<p>Summary: 1 task failed:<br /> /media/barsuk/ext4.720/pyro/sources/meta-q=
t5/recipes-qt/qt5/qtbase_git.bb:do_patch<br />Summary: There were 2 WARNING=
 messages shown.<br />Summary: There were 2 ERROR messages shown, returning=
 a non-zero exit code.</p>
<br /><br />-- <br />=D0=90=D0=BD=D0=B4=D1=80=D0=B5=D0=B9 =D0=9A=D0=BE=D0=
=BD=D0=BE=D0=BD=D0=BE=D0=B2</blockquote>
</body></html>

--=_a023a5fb6a473c0778727841d83bfa83--
