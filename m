Return-Path: <srinivasan.rns@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E08FE00BCC; Mon, 21 Jan 2019 05:39:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srinivasan.rns[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.67 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
	[209.85.210.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C14AE006F1;
	Mon, 21 Jan 2019 05:39:41 -0800 (PST)
Received: by mail-ot1-f67.google.com with SMTP id a11so20500387otr.10;
	Mon, 21 Jan 2019 05:39:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=bhFAoOg50bUjY2lLDqEGdtaNG01Dkzbha+9cXeCYEHk=;
	b=p7+MGMO4QqPU2MfPQYIEZNZwiOVvJ9o9++K7iTf32RfJxumL63u8XhtLGama1KQoFP
	HwPVHZmQkWb8xDA9GDzwkxSsEGEsIbGPQ9UqQcC8Kfl5YWxPcKdTPNSt9BvqlXQ+tEWN
	o9hwFF1BZGXfYngmKTD9qTlkxV97iTpP61u/9p7+6090Q/tWexC/JZMBUVdgDQnrhZAG
	G4VlhyfFQS5UoWpubD8yNJMUyMKQeC7qAmv3uTGYxbmM2I67iJNJZcVhWedFykWwW978
	UFaBJEh+uVg0rEewQrTuIP4SrNuAernYgh3zhoyRHCfHdEELUwKAGrLxtrwKuAncNLh8
	8vaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=bhFAoOg50bUjY2lLDqEGdtaNG01Dkzbha+9cXeCYEHk=;
	b=Mm+i+rrBEqEN3M/ACBaOqoeoKAOnVyRRiiAVCnJp/MqdHKqCSXi5PgGeYWrdIqPjd1
	8cMXl/8mFr0nKiwO2M5UXdZcBkpu4rKXv3p/RXnTwgbCtZEB4dJfYcghEtvwWPD1uv99
	Mj9L2vg+KZqCtgM+2QskWj2LTEo9K73sh7TDEKKnjTl+0qlcRn7Pp1c9w/dvr8mZQFaq
	XbPJhOomuDRKf/sw1ey1Y5J0VWFwIQa7ib7nk6RAIqKfYJt1tpc/oVdqjQxkBgHoFBPW
	30S/U7FnakR9bSJfCZ3CkruQ3t1giOeLdJrFUl4JU1A/u9P2326KJ1Vkzsr0g8j3/d+a
	BLNQ==
X-Gm-Message-State: AJcUukfzuFoPQQFxtTFOZV3Qj4BgOMJfx/BdGARXkqd1ZRCXILw+LmgV
	8AXZX78gXwUfXjg5uXgzefVak0BglSJUdxW2j7M=
X-Google-Smtp-Source: ALg8bN7p9fOgaC/ouY9NWUn/hnfbRJhcBXef4u67HJqHc+fHzkxjjjvj71a0PVHV8MQS/Qageb3K8ZATJn+4Ci6wYHU=
X-Received: by 2002:a9d:121:: with SMTP id 30mr18950992otu.189.1548077980885; 
	Mon, 21 Jan 2019 05:39:40 -0800 (PST)
MIME-Version: 1.0
From: srinivasan <srinivasan.rns@gmail.com>
Date: Mon, 21 Jan 2019 14:39:29 +0100
Message-ID: <CAFsTbWfH34XxhD1pyXwm8NcR7WvN0fcdHZyAqPTAK=saQdC++w@mail.gmail.com>
To: angolini@gmail.com, 
	meta-freescale Mailing List <meta-freescale@yoctoproject.org>,
	yocto-bsp@yoctoproject.org, 
	yocto-builds@yoctoproject.org, meta-intel@yoctoproject.org, 
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>, Poky Project <poky@yoctoproject.org>, 
	yocto-infrastructure@yoctoproject.org, 
	Yocto-mailing-list <yocto@yoctoproject.org>,
	meta-freescale-request@yoctoproject.org
X-Mailman-Approved-At: Mon, 21 Jan 2019 08:09:28 -0800
Subject: Build error after changing PACKAGE_CLASSES to package_deb
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
X-List-Received-Date: Mon, 21 Jan 2019 13:39:43 -0000
Content-Type: multipart/alternative; boundary="00000000000022aa54057ff7fe99"

--00000000000022aa54057ff7fe99
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Yocto Experts Team,

I am seeing the below error after changing the package_classes from "rpm"
to "deb" as below, when I am trying to add freescale meta layers to my
custom yocto distribution

Could you please do the needful by providing some inputs in resolving the
below issue?

Logs:
WARNING: Host distribution "ubuntu-18.04" has not been validated with this
version of the build system; you may possibly experience unexpected
failures. It is recommended that you use a tested distribution.
Parsing recipes: 100%
|##########################################################################=
###########################################################################=
###########################################################################=
#############|
Time: 0:00:15
Parsing of 2304 .bb files complete (0 cached, 2304 parsed). 3210 targets,
385 skipped, 6 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           =3D "1.38.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "ubuntu-18.04"
TARGET_SYS           =3D "aarch64-poky-linux"
MACHINE              =3D "imx8mmevk"
DISTRO               =3D "NativeOS-TRK"
DISTRO_VERSION       =3D "1.0.8"
TUNE_FEATURES        =3D "aarch64"
TARGET_FPU           =3D ""
meta-traktor-imx8    =3D "master:525bab5e576c2f0f1242cd1e6b546859c856441a"
meta-traktor         =3D "sumo:b91788da6bd52485faa85bb19bc7a9a1ddf2ee5d"
meta-qt5             =3D "qt-5.11:ff6127ddd318d422f595295d1c189a86b3032873"
meta-nativeos        =3D "sumo:8a14b16e4049051e29009e67afa63bfac5ddb26e"
meta-freescale       =3D "master:525bab5e576c2f0f1242cd1e6b546859c856441a"
meta
meta-poky            =3D "sumo:623b77885051174d0e05198843e739110977bd18"
meta-oe
meta-python
meta-networking      =3D "sumo:8760facba1bceb299b3613b8955621ddaa3d4c3f"
meta-bsp
meta-sdk             =3D "master:525bab5e576c2f0f1242cd1e6b546859c856441a"

Initialising tasks: 100%
|##########################################################################=
###########################################################################=
###########################################################################=
##########|
Time: 0:00:05
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: linux-imx-4.14.62-r0 do_package_write_deb: Error executing a python
function in exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
 *** 0002:do_package_deb(d)
     0003:
File:
'/home/srinishanmugam/nibuild_test/nativeos/sources/poky/meta/classes/packa=
ge_deb.bbclass',
lineno: 102, function: do_package_deb
     0098:
     0099:    os.chdir(oldcwd)
     0100:
     0101:    if error:
 *** 0102:        raise error
     0103:}
     0104:do_package_deb[vardeps] +=3D "deb_write_pkg"
     0105:do_package_deb[vardepsexclude] =3D "BB_NUMBER_THREADS"
     0106:
Exception: subprocess.CalledProcessError: Command
'PATH=3D"/home/srinishanmugam/nibuild_test/nativeos/build/tmp/sysroots-unin=
ative/x86_64-linux/usr/bin:/home/srinishanmugam/nibuild_test/nativeos/sourc=
es/poky/scripts:/home/srinishanmugam/nibuild_test/nativeos/build/tmp/work/i=
mx8mmevk-poky-linux/linux-imx/4.14.62-r0/recipe-sysroot-native/usr/bin/aarc=
h64-poky-linux:/home/srinishanmugam/nibuild_test/nativeos/build/tmp/work/im=
x8mmevk-poky-linux/linux-imx/4.14.62-r0/recipe-sysroot/usr/bin/crossscripts=
:/home/srinishanmugam/nibuild_test/nativeos/build/tmp/work/imx8mmevk-poky-l=
inux/linux-imx/4.14.62-r0/recipe-sysroot-native/usr/sbin:/home/srinishanmug=
am/nibuild_test/nativeos/build/tmp/work/imx8mmevk-poky-linux/linux-imx/4.14=
.62-r0/recipe-sysroot-native/usr/bin:/home/srinishanmugam/nibuild_test/nati=
veos/build/tmp/work/imx8mmevk-poky-linux/linux-imx/4.14.62-r0/recipe-sysroo=
t-native/sbin:/home/srinishanmugam/nibuild_test/nativeos/build/tmp/work/imx=
8mmevk-poky-linux/linux-imx/4.14.62-r0/recipe-sysroot-native/bin:/home/srin=
ishanmugam/nibuild_test/nativeos/sources/poky/bitbake/bin:/home/srinishanmu=
gam/nibuild_test/nativeos/build/tmp/hosttools"
dpkg-deb -b
/home/srinishanmugam/nibuild_test/nativeos/build/tmp/work/imx8mmevk-poky-li=
nux/linux-imx/4.14.62-r0/packages-split/kernel-module-snd-usbmidi-lib-4.14.=
62-imx_4.14.62_1.0.0_beta+g1907fe4c3287
/home/srinishanmugam/nibuild_test/nativeos/build/tmp/work/imx8mmevk-poky-li=
nux/linux-imx/4.14.62-r0/deploy-debs/imx8mmevk'
returned non-zero exit status 2.

Subprocess output:
dpkg-deb: error: package name has characters that aren't lowercase
alphanums or '-+.'

ERROR: linux-imx-4.14.62-r0 do_package_write_deb: Function failed:
do_package_deb
ERROR: Logfile of failure stored in:
/home/srinishanmugam/nibuild_test/nativeos/build/tmp/work/imx8mmevk-poky-li=
nux/linux-imx/4.14.62-r0/temp/log.do_package_write_deb.31568
ERROR: Task
(/home/srinishanmugam/nibuild_test/nativeos/sources/meta-fsl-bsp-release/im=
x/meta-bsp/recipes-kernel/linux/linux-imx_4.14.62.bb:do_package_write_deb)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 3614 tasks of which 3104 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:

/home/srinishanmugam/nibuild_test/nativeos/sources/meta-fsl-bsp-release/imx=
/meta-bsp/recipes-kernel/linux/linux-imx_4.14.62.bb:
do_package_write_deb
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
2019-01-21 14:29:02,436 - Error during build (Return code 1)

Many Thanks in advance

--00000000000022aa54057ff7fe99
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default"><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">Dear Yocto Expe=
rts Team,</font></div><div class=3D"gmail_default"><font face=3D"comic sans=
 ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">I am seeing the below error after changing t=
he package_classes from &quot;rpm&quot; to &quot;deb&quot; as below, when I=
 am trying to add freescale meta layers to my custom yocto distribution</fo=
nt></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-ser=
if"><br></font></div><div class=3D"gmail_default"><font face=3D"comic sans =
ms, sans-serif">Could you please do the needful by providing some inputs in=
 resolving the below issue?</font></div><div class=3D"gmail_default"><br></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">L=
ogs:</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, =
sans-serif">WARNING: Host distribution &quot;ubuntu-18.04&quot; has not bee=
n validated with this version of the build system; you may possibly experie=
nce unexpected failures. It is recommended that you use a tested distributi=
on.</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif">Parsing recipes: 100% |#########################################=
###########################################################################=
###########################################################################=
##############################################| Time: 0:00:15</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">Parsin=
g of 2304 .bb files complete (0 cached, 2304 parsed). 3210 targets, 385 ski=
pped, 6 masked, 0 errors.</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">NOTE: Resolving any missing task queue dep=
endencies</font></div><div class=3D"gmail_default"><font face=3D"comic sans=
 ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">Build Configuration:</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">BB_VERSION=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.38.0&quot;</font></div><d=
iv class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">BUILD_S=
YS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</f=
ont></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-se=
rif">NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;ubuntu-18.04&quot;</font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
">TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;aarch64-poky=
-linux&quot;</font></div><div class=3D"gmail_default"><font face=3D"comic s=
ans ms, sans-serif">MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =3D &quot;imx8mmevk&quot;</font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=3D &quot;NativeOS-TRK&quot;</font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif">DISTRO_VERSION=C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.0.8&quot;</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">TUNE_FEATURES=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =3D &quot;aarch64&quot;</font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif">TARGET_FPU=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;</font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif">meta-traktor-imx8=C2=A0=
 =C2=A0 =3D &quot;master:525bab5e576c2f0f1242cd1e6b546859c856441a&quot;</fo=
nt></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-ser=
if">meta-traktor=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;sumo:b91788da6b=
d52485faa85bb19bc7a9a1ddf2ee5d&quot;</font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif">meta-qt5=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;qt-5.11:ff6127ddd318d422f595295d1c189a=
86b3032873&quot;</font></div><div class=3D"gmail_default"><font face=3D"com=
ic sans ms, sans-serif">meta-nativeos=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;=
sumo:8a14b16e4049051e29009e67afa63bfac5ddb26e&quot;</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">meta-freescale=
=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;master:525bab5e576c2f0f1242cd1e6b54685=
9c856441a&quot;</font></div><div class=3D"gmail_default"><font face=3D"comi=
c sans ms, sans-serif">meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif">meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D &quot;sumo:623b77885051174d0e05198843e739110977bd18&quot;</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">meta-o=
e=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</font></div><div cl=
ass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">meta-python=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</font></div><div class=3D"gmail_de=
fault"><font face=3D"comic sans ms, sans-serif">meta-networking=C2=A0 =C2=
=A0 =C2=A0 =3D &quot;sumo:8760facba1bceb299b3613b8955621ddaa3d4c3f&quot;</f=
ont></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-se=
rif">meta-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">meta-s=
dk=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;master:525bab5e=
576c2f0f1242cd1e6b546859c856441a&quot;</font></div><div class=3D"gmail_defa=
ult"><font face=3D"comic sans ms, sans-serif"><br></font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">Initialising ta=
sks: 100% |################################################################=
###########################################################################=
###########################################################################=
####################| Time: 0:00:05</font></div><div class=3D"gmail_default=
"><font face=3D"comic sans ms, sans-serif">NOTE: Executing SetScene Tasks</=
font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif">NOTE: Executing RunQueue Tasks</font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif">ERROR: linux-imx-4.14.62-r0 do_=
package_write_deb: Error executing a python function in exec_python_func() =
autogenerated:</font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">The stack trace of python calls that resu=
lted in this exception/failure was:</font></div><div class=3D"gmail_default=
"><font face=3D"comic sans ms, sans-serif">File: &#39;exec_python_func() au=
togenerated&#39;, lineno: 2, function: &lt;module&gt;</font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 =C2=A0 =
=C2=A00001:</font></div><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif">=C2=A0*** 0002:do_package_deb(d)</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 =C2=A0 =
=C2=A00003:</font></div><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif">File: &#39;/home/srinishanmugam/nibuild_test/nativeos/so=
urces/poky/meta/classes/package_deb.bbclass&#39;, lineno: 102, function: do=
_package_deb</font></div><div class=3D"gmail_default"><font face=3D"comic s=
ans ms, sans-serif">=C2=A0 =C2=A0 =C2=A00098:</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 =C2=A0 =C2=A000=
99:=C2=A0 =C2=A0 os.chdir(oldcwd)</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif">=C2=A0 =C2=A0 =C2=A00100:</font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
=C2=A0 =C2=A0 =C2=A00101:=C2=A0 =C2=A0 if error:</font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0*** 0102:=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 raise error</font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif">=C2=A0 =C2=A0 =C2=A00103:}</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">=C2=A0 =C2=A0 =C2=A00104:do_package_deb[vardeps] +=3D &quot;deb_write_pk=
g&quot;</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">=C2=A0 =C2=A0 =C2=A00105:do_package_deb[vardepsexclude] =3D =
&quot;BB_NUMBER_THREADS&quot;</font></div><div class=3D"gmail_default"><fon=
t face=3D"comic sans ms, sans-serif">=C2=A0 =C2=A0 =C2=A00106:</font></div>=
<div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">Excep=
tion: subprocess.CalledProcessError: Command &#39;PATH=3D&quot;/home/srinis=
hanmugam/nibuild_test/nativeos/build/tmp/sysroots-uninative/x86_64-linux/us=
r/bin:/home/srinishanmugam/nibuild_test/nativeos/sources/poky/scripts:/home=
/srinishanmugam/nibuild_test/nativeos/build/tmp/work/imx8mmevk-poky-linux/l=
inux-imx/4.14.62-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux:/home/=
srinishanmugam/nibuild_test/nativeos/build/tmp/work/imx8mmevk-poky-linux/li=
nux-imx/4.14.62-r0/recipe-sysroot/usr/bin/crossscripts:/home/srinishanmugam=
/nibuild_test/nativeos/build/tmp/work/imx8mmevk-poky-linux/linux-imx/4.14.6=
2-r0/recipe-sysroot-native/usr/sbin:/home/srinishanmugam/nibuild_test/nativ=
eos/build/tmp/work/imx8mmevk-poky-linux/linux-imx/4.14.62-r0/recipe-sysroot=
-native/usr/bin:/home/srinishanmugam/nibuild_test/nativeos/build/tmp/work/i=
mx8mmevk-poky-linux/linux-imx/4.14.62-r0/recipe-sysroot-native/sbin:/home/s=
rinishanmugam/nibuild_test/nativeos/build/tmp/work/imx8mmevk-poky-linux/lin=
ux-imx/4.14.62-r0/recipe-sysroot-native/bin:/home/srinishanmugam/nibuild_te=
st/nativeos/sources/poky/bitbake/bin:/home/srinishanmugam/nibuild_test/nati=
veos/build/tmp/hosttools&quot; dpkg-deb -b /home/srinishanmugam/nibuild_tes=
t/nativeos/build/tmp/work/imx8mmevk-poky-linux/linux-imx/4.14.62-r0/package=
s-split/kernel-module-snd-usbmidi-lib-4.14.62-imx_4.14.62_1.0.0_beta+g1907f=
e4c3287 /home/srinishanmugam/nibuild_test/nativeos/build/tmp/work/imx8mmevk=
-poky-linux/linux-imx/4.14.62-r0/deploy-debs/imx8mmevk&#39; returned non-ze=
ro exit status 2.</font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif"><br></font></div><div class=3D"gmail_default"><fon=
t face=3D"comic sans ms, sans-serif">Subprocess output:</font></div><div cl=
ass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">dpkg-deb: er=
ror: package name has characters that aren&#39;t lowercase alphanums or &#3=
9;-+.&#39;</font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">ERROR: linux-imx-4.14.62-r0 do_package_write=
_deb: Function failed: do_package_deb</font></div><div class=3D"gmail_defau=
lt"><font face=3D"comic sans ms, sans-serif">ERROR: Logfile of failure stor=
ed in: /home/srinishanmugam/nibuild_test/nativeos/build/tmp/work/imx8mmevk-=
poky-linux/linux-imx/4.14.62-r0/temp/log.do_package_write_deb.31568</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
ERROR: Task (/home/srinishanmugam/nibuild_test/nativeos/sources/meta-fsl-bs=
p-release/imx/meta-bsp/recipes-kernel/linux/linux-imx_4.14.62.bb:do_package=
_write_deb) failed with exit code &#39;1&#39;</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">NOTE: Tasks Summary: A=
ttempted 3614 tasks of which 3104 didn&#39;t need to be rerun and 1 failed.=
</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans=
-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"comic s=
ans ms, sans-serif">Summary: 1 task failed:</font></div><div class=3D"gmail=
_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 /home/srinishanmu=
gam/nibuild_test/nativeos/sources/meta-fsl-bsp-release/imx/meta-bsp/recipes=
-kernel/linux/linux-imx_4.14.62.bb:do_package_write_deb</font></div><div cl=
ass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">Summary: The=
re was 1 WARNING message shown.</font></div><div class=3D"gmail_default"><f=
ont face=3D"comic sans ms, sans-serif">Summary: There were 2 ERROR messages=
 shown, returning a non-zero exit code.</font></div><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif">2019-01-21 14:29:02,436 - Er=
ror during build (Return code 1)</font></div><div class=3D"gmail_default"><=
font face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif">Many Thanks in advance<=
/font></div><div style=3D"font-family:&quot;comic sans ms&quot;,sans-serif"=
><br></div></div></div></div>

--00000000000022aa54057ff7fe99--
