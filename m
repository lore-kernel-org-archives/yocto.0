Return-Path: <pushpendrasingh1801@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A2AFE00D8C; Wed,  7 Aug 2019 03:47:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (pushpendrasingh1801[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.161.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f46.google.com (mail-yw1-f46.google.com
	[209.85.161.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE690E00C22
	for <yocto@yoctoproject.org>; Wed,  7 Aug 2019 03:47:10 -0700 (PDT)
Received: by mail-yw1-f46.google.com with SMTP id x74so14170549ywx.6
	for <yocto@yoctoproject.org>; Wed, 07 Aug 2019 03:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=MnYRRCd6vHFEDuuRoHpS/6XEHRnhCSHPIq0neBSAMqU=;
	b=ejbra2Lp2HrPfGam/R73CjI41pZLu3v0SDj9J/nanY8zLPTFqpAhCQfH22VuN9s3BQ
	o+iZfaGcjQTWR+NqU2B2hXBqfNJjKvlb2w22mDt5i4tDxlonDxepzHbKTNLOwNkD59TJ
	OwY6GImD6gTJ9d4JqhzK3zast+LdudjQ5Rlg49lag6F9DK0+KGaCzRZanSJxyXAWCu4k
	iyjCr4Tr2KtN9jXD2DANzPwDcVJmeEuEmuPG7GPulHZaquwaMYns9Y/rYw/hv6ipRSjV
	WYPs7HySppYIV7G1HMZAlUMUk2ikMWfrLW6WLLFMemh3kZGFnzp5va6Pd8noMnWdUJ8U
	79YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=MnYRRCd6vHFEDuuRoHpS/6XEHRnhCSHPIq0neBSAMqU=;
	b=Y+04fLD35y2W1JHj7c+Br7YW+jtBBSVzsoud/AhuvvXSVJQo5Z+AZVBaD4IbJa1B24
	qiGXedTN0C4IrNjO0CN4XkAgjnAwT7N3PExbWEGsJTgHW3fSk2KCOZ4vIm19mF8hmW+/
	2ij16Rqkn/9SoBCM4SEzleZHDhX59olg6wSk1Mg5eK1L4RRJs3KcMR71xlx+vYWfdAg7
	0UziA0dFUTgEE3j9hR6XDcwEgo1T55RVe4NHbgyhWuGgnqJPpEHmhIqfZyyBZkDnEFXQ
	bcyje+S6h/emxQD8R3kgGLQRnkiQbtvHvuT8GsCGzXAM+W8eNvBO36TCYm30slPhmGjT
	7Brg==
X-Gm-Message-State: APjAAAWIFPPDbZysb8OQ3wUfkm+epqJJWcDOUqPLZyGO/JSJ1RuOXDkj
	gtygDGJoadCO36PXQGCZu8m/H/NghsUk5WwSBkp0WHdiCkY=
X-Google-Smtp-Source: APXvYqz7Zwh/sLvqgvYgtOVa7DyiD1k43yA0KJlUmcpy6atbwhRBJuBDzO4donxo1AdnSgoDSB7s88Hae2XGn9vbSjU=
X-Received: by 2002:a0d:dd01:: with SMTP id g1mr5641341ywe.482.1565174829877; 
	Wed, 07 Aug 2019 03:47:09 -0700 (PDT)
MIME-Version: 1.0
From: Pushpendra singh <pushpendrasingh1801@gmail.com>
Date: Wed, 7 Aug 2019 16:16:58 +0530
Message-ID: <CALqK1hxos-zw_cFOUFn+EVOVg=eYHQGvY3d1-y8qwUdeLWQTcw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 19 Aug 2019 02:32:48 -0700
Subject: quilt-native-0.64-r0 do_install: oe_runmake failed
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
X-List-Received-Date: Wed, 07 Aug 2019 10:47:12 -0000
Content-Type: multipart/alternative; boundary="000000000000bf0c0b058f84a93a"

--000000000000bf0c0b058f84a93a
Content-Type: text/plain; charset="UTF-8"

Hi,

I am using Ubantu - 16.04 as an host machine

Xilinx SDK Version : 2017.3

Command : bitbake petalinux-image-minimal

Getting below error

Parsing recipes: 100%
|#######################################################################################################################################################|
Time: 0:09:00
Parsing of 2463 .bb files complete (0 cached, 2463 parsed). 3256 targets,
229 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION = "1.32.0"
BUILD_SYS = "x86_64-linux"
NATIVELSBSTRING = "universal"
TARGET_SYS = "aarch64-poky-linux"
MACHINE = "zcu102-zynqmp"
DISTRO = "poky"
DISTRO_VERSION = "2.2.2"
TUNE_FEATURES = "aarch64"
TARGET_FPU = ""
meta
meta-poky = "rel-v2017.3:8506cec55de8950e89a4d3e786860f1086782587"
meta-perl
meta-systemd
meta-gpe
meta-python
meta-efl
meta-ruby
meta-filesystems
meta-gnome
meta-multimedia
meta-networking
meta-webserver
meta-xfce
meta-initramfs
meta-oe = "rel-v2017.3:a9887ac249b81fcac3007244d0c807c71b73acef"
meta-linaro-toolchain =
"rel-v2017.3:39860f6c7af0858981cc004bbe4f4c421f6be607"
meta-qt5 = "rel-v2017.3:eec778bfb9a0b5494d593a2d7bb02c027b641835"
meta-xilinx = "rel-v2017.3:04a45809e0bc42b35c88f8a08305d82fd25e97cf"
meta-xilinx-tools = "rel-v2017.3:37eff634934efac72d3e2eabb7c4f8d0c8a36fbb"
meta-petalinux = "rel-v2017.3:d74ceaef26e606c2761edfc3446d0ad3c3cc8b8e"
meta-virtualization = "rel-v2017.3:cbfd4376d5e9d229f857151ffdfb57fbc6c0c40d"
meta-openamp = "rel-v2017.3:cfeca8988418e4967f0d6df828d23a1540ae25a0"

Initialising tasks: 100%
|####################################################################################################################################################|
Time: 0:00:21
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: quilt-native-0.64-r0 do_install: oe_runmake failed
ERROR: quilt-native-0.64-r0 do_install: Function failed: do_install (log
file is located at
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/temp/log.do_install.15836)
ERROR: Logfile of failure stored in:
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/temp/log.do_install.15836
Log data follows:
| DEBUG: Executing shell function do_install
| NOTE: make -j 2
BUILD_ROOT=/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/image
install
| ERROR: oe_runmake failed
| config/install-sh -c -d
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/bin
| rm -rf
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/share/quilt/compat
| /bin/bash: config/install-sh: Permission denied
| Makefile:305: recipe for target 'install-main' failed
| make: *** [install-main] Error 126
| make: *** Waiting for unfinished jobs....
| config/install-sh -c -d
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/share/quilt/compat
| /bin/bash: config/install-sh: Permission denied
| Makefile:346: recipe for target 'install-compat1' failed
| make: *** [install-compat1] Error 126
| WARNING:
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/temp/run.do_install.15836:1
exit 1 from 'exit 1'
| ERROR: Function failed: do_install (log file is located at
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/temp/log.do_install.15836)
ERROR: Task
(/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/sources/core/meta/recipes-devtools/quilt/quilt-native_0.64.bb:do_install)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 15 tasks of which 13 didn't need to be rerun
and 1 failed.

Summary: 1 task failed:
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/sources/core/meta/recipes-devtools/quilt/quilt-native_0.64.bb:
do_install
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

--000000000000bf0c0b058f84a93a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p style=3D"box-sizing:border-box;margin:0px 0px 15px;colo=
r:rgb(38,38,38);font-family:&quot;Open Sans&quot;,sans-serif;font-size:16px=
">Hi,</p><p style=3D"box-sizing:border-box;margin:0px 0px 15px;color:rgb(38=
,38,38);font-family:&quot;Open Sans&quot;,sans-serif;font-size:16px">I am u=
sing Ubantu - 16.04 as an host machine=C2=A0</p><p style=3D"box-sizing:bord=
er-box;margin:0px 0px 15px;color:rgb(38,38,38);font-family:&quot;Open Sans&=
quot;,sans-serif;font-size:16px">Xilinx SDK Version :=C2=A0<span style=3D"b=
ox-sizing:border-box;font-weight:700">2017.3</span></p><p style=3D"box-sizi=
ng:border-box;margin:0px 0px 15px;color:rgb(38,38,38);font-family:&quot;Ope=
n Sans&quot;,sans-serif;font-size:16px">Command :=C2=A0<span style=3D"box-s=
izing:border-box;font-weight:700">bitbake petalinux-image-minimal=C2=A0</sp=
an></p><p style=3D"box-sizing:border-box;margin:0px 0px 15px;color:rgb(38,3=
8,38);font-family:&quot;Open Sans&quot;,sans-serif;font-size:16px"><span st=
yle=3D"box-sizing:border-box;font-weight:700">Getting below error=C2=A0</sp=
an></p><p style=3D"box-sizing:border-box;margin:0px 0px 15px;color:rgb(38,3=
8,38);font-family:&quot;Open Sans&quot;,sans-serif;font-size:16px">Parsing =
recipes: 100% |############################################################=
###########################################################################=
################| Time: 0:09:00<br style=3D"box-sizing:border-box">Parsing =
of 2463 .bb files complete (0 cached, 2463 parsed). 3256 targets, 229 skipp=
ed, 0 masked, 0 errors.<br style=3D"box-sizing:border-box">NOTE: Resolving =
any missing task queue dependencies</p><p style=3D"box-sizing:border-box;ma=
rgin:0px 0px 15px;color:rgb(38,38,38);font-family:&quot;Open Sans&quot;,san=
s-serif;font-size:16px">Build Configuration:<br style=3D"box-sizing:border-=
box">BB_VERSION =3D &quot;1.32.0&quot;<br style=3D"box-sizing:border-box">B=
UILD_SYS =3D &quot;x86_64-linux&quot;<br style=3D"box-sizing:border-box">NA=
TIVELSBSTRING =3D &quot;universal&quot;<br style=3D"box-sizing:border-box">=
TARGET_SYS =3D &quot;aarch64-poky-linux&quot;<br style=3D"box-sizing:border=
-box">MACHINE =3D &quot;zcu102-zynqmp&quot;<br style=3D"box-sizing:border-b=
ox">DISTRO =3D &quot;poky&quot;<br style=3D"box-sizing:border-box">DISTRO_V=
ERSION =3D &quot;2.2.2&quot;<br style=3D"box-sizing:border-box">TUNE_FEATUR=
ES =3D &quot;aarch64&quot;<br style=3D"box-sizing:border-box">TARGET_FPU =
=3D &quot;&quot;<br style=3D"box-sizing:border-box">meta<br style=3D"box-si=
zing:border-box">meta-poky =3D &quot;rel-v2017.3:8506cec55de8950e89a4d3e786=
860f1086782587&quot;<br style=3D"box-sizing:border-box">meta-perl<br style=
=3D"box-sizing:border-box">meta-systemd<br style=3D"box-sizing:border-box">=
meta-gpe<br style=3D"box-sizing:border-box">meta-python<br style=3D"box-siz=
ing:border-box">meta-efl<br style=3D"box-sizing:border-box">meta-ruby<br st=
yle=3D"box-sizing:border-box">meta-filesystems<br style=3D"box-sizing:borde=
r-box">meta-gnome<br style=3D"box-sizing:border-box">meta-multimedia<br sty=
le=3D"box-sizing:border-box">meta-networking<br style=3D"box-sizing:border-=
box">meta-webserver<br style=3D"box-sizing:border-box">meta-xfce<br style=
=3D"box-sizing:border-box">meta-initramfs<br style=3D"box-sizing:border-box=
">meta-oe =3D &quot;rel-v2017.3:a9887ac249b81fcac3007244d0c807c71b73acef&qu=
ot;<br style=3D"box-sizing:border-box">meta-linaro-toolchain =3D &quot;rel-=
v2017.3:39860f6c7af0858981cc004bbe4f4c421f6be607&quot;<br style=3D"box-sizi=
ng:border-box">meta-qt5 =3D &quot;rel-v2017.3:eec778bfb9a0b5494d593a2d7bb02=
c027b641835&quot;<br style=3D"box-sizing:border-box">meta-xilinx =3D &quot;=
rel-v2017.3:04a45809e0bc42b35c88f8a08305d82fd25e97cf&quot;<br style=3D"box-=
sizing:border-box">meta-xilinx-tools =3D &quot;rel-v2017.3:37eff634934efac7=
2d3e2eabb7c4f8d0c8a36fbb&quot;<br style=3D"box-sizing:border-box">meta-peta=
linux =3D &quot;rel-v2017.3:d74ceaef26e606c2761edfc3446d0ad3c3cc8b8e&quot;<=
br style=3D"box-sizing:border-box">meta-virtualization =3D &quot;rel-v2017.=
3:cbfd4376d5e9d229f857151ffdfb57fbc6c0c40d&quot;<br style=3D"box-sizing:bor=
der-box">meta-openamp =3D &quot;rel-v2017.3:cfeca8988418e4967f0d6df828d23a1=
540ae25a0&quot;</p><p style=3D"box-sizing:border-box;margin:0px 0px 15px;co=
lor:rgb(38,38,38);font-family:&quot;Open Sans&quot;,sans-serif;font-size:16=
px">Initialising tasks: 100% |#############################################=
###########################################################################=
############################| Time: 0:00:21<br style=3D"box-sizing:border-b=
ox">NOTE: Executing SetScene Tasks<br style=3D"box-sizing:border-box">NOTE:=
 Executing RunQueue Tasks<br style=3D"box-sizing:border-box"><font color=3D=
"#FF6600" style=3D"box-sizing:border-box"><span style=3D"box-sizing:border-=
box;font-weight:700">ERROR: quilt-native-0.64-r0 do_install: oe_runmake fai=
led</span></font><br style=3D"box-sizing:border-box"><font color=3D"#FF6600=
" style=3D"box-sizing:border-box"><span style=3D"box-sizing:border-box;font=
-weight:700">ERROR: quilt-native-0.64-r0 do_install: Function failed: do_in=
stall (log file is located at /home/pre-si-user/Desktop/Pushpendra/Xilix_Zy=
nc/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/temp/log.do_=
install.15836)</span></font><br style=3D"box-sizing:border-box"><font color=
=3D"#FF6600" style=3D"box-sizing:border-box"><span style=3D"box-sizing:bord=
er-box;font-weight:700">ERROR: Logfile of failure stored in: /home/pre-si-u=
ser/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/qu=
ilt-native/0.64-r0/temp/log.do_install.15836</span></font><br style=3D"box-=
sizing:border-box">Log data follows:<br style=3D"box-sizing:border-box">| D=
EBUG: Executing shell function do_install<br style=3D"box-sizing:border-box=
">| NOTE: make -j 2 BUILD_ROOT=3D/home/pre-si-user/Desktop/Pushpendra/Xilix=
_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/image ins=
tall<br style=3D"box-sizing:border-box">| ERROR: oe_runmake failed<br style=
=3D"box-sizing:border-box">| config/install-sh -c -d /home/pre-si-user/Desk=
top/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-nati=
ve/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/=
build/tmp/sysroots/x86_64-linux/usr/bin<br style=3D"box-sizing:border-box">=
| rm -rf /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/t=
mp/work/x86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pu=
shpendra/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/share/qu=
ilt/compat<br style=3D"box-sizing:border-box">| /bin/bash: config/install-s=
h: Permission denied<br style=3D"box-sizing:border-box">| Makefile:305: rec=
ipe for target &#39;install-main&#39; failed<br style=3D"box-sizing:border-=
box">| make: *** [install-main] Error 126<br style=3D"box-sizing:border-box=
">| make: *** Waiting for unfinished jobs....<br style=3D"box-sizing:border=
-box">| config/install-sh -c -d /home/pre-si-user/Desktop/Pushpendra/Xilix_=
Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/image/home=
/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x8=
6_64-linux/usr/share/quilt/compat<br style=3D"box-sizing:border-box">| /bin=
/bash: config/install-sh: Permission denied<br style=3D"box-sizing:border-b=
ox">| Makefile:346: recipe for target &#39;install-compat1&#39; failed<br s=
tyle=3D"box-sizing:border-box">| make: *** [install-compat1] Error 126<br s=
tyle=3D"box-sizing:border-box">| WARNING: /home/pre-si-user/Desktop/Pushpen=
dra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/=
temp/run.do_install.15836:1 exit 1 from &#39;exit 1&#39;<br style=3D"box-si=
zing:border-box">| ERROR: Function failed: do_install (log file is located =
at /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/wor=
k/x86_64-linux/quilt-native/0.64-r0/temp/log.do_install.15836)<br style=3D"=
box-sizing:border-box">ERROR: Task (/home/pre-si-user/Desktop/Pushpendra/Xi=
lix_Zync/Yocto_Code/sources/core/meta/recipes-devtools/quilt/quilt-native_0=
.64.bb:do_install) failed with exit code &#39;1&#39;<br style=3D"box-sizing=
:border-box">NOTE: Tasks Summary: Attempted 15 tasks of which 13 didn&#39;t=
 need to be rerun and 1 failed.</p><p style=3D"box-sizing:border-box;margin=
:0px 0px 15px;color:rgb(38,38,38);font-family:&quot;Open Sans&quot;,sans-se=
rif;font-size:16px">Summary: 1 task failed:<br style=3D"box-sizing:border-b=
ox">/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/sources/core=
/meta/recipes-devtools/quilt/quilt-native_0.64.bb:do_install<br style=3D"bo=
x-sizing:border-box">Summary: There were 2 ERROR messages shown, returning =
a non-zero exit code.</p></div>

--000000000000bf0c0b058f84a93a--
