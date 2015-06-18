Return-Path: <joel.maranhao@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A65FE00998; Thu, 18 Jun 2015 14:02:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (joel.maranhao[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F04FE00957
	for <yocto@yoctoproject.org>; Thu, 18 Jun 2015 14:02:38 -0700 (PDT)
Received: by lbbvz5 with SMTP id vz5so11975903lbb.0
	for <yocto@yoctoproject.org>; Thu, 18 Jun 2015 14:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Wy46VBZnzTHxXfyAmt7FHStMUI+gOrWIW+t8+5o3SKs=;
	b=fQhaFbYKUziCYe/490PwbP6fdIRQHICx0eV9jfBLOorz7G4PoZQ8HO+PWzEAeOpqMg
	6fRHS6pdii8nVlK0M/LVRbrnHeR6SXfT4BgjSvm+smMJR0b86xTn1fxiYRWk1ARfXFwV
	7gY9XTsHKedO5ymEU4XuSNN6UPngzwDKxa8QH8qxubLamsoek8OTqDcv4y7yyDvxVk4x
	H8JW0cOGfLyt93N9+zsBbchNSC2qjjK04s8lDaidThW7X/EUlJzZfUuk1AFiowB/FcAJ
	WHq+jzcGOsgvGGPWeVra75ltoKzcG3/lOfZcXXdp89HRG1fuDxZjkTcHWBkNQFjXSmPd
	7hQg==
MIME-Version: 1.0
X-Received: by 10.152.116.6 with SMTP id js6mr14666610lab.28.1434661356741;
	Thu, 18 Jun 2015 14:02:36 -0700 (PDT)
Received: by 10.114.81.202 with HTTP; Thu, 18 Jun 2015 14:02:36 -0700 (PDT)
Date: Thu, 18 Jun 2015 23:02:36 +0200
Message-ID: <CAH2+=r_HHNfp3QxauSZy45tmgZQE27NnDwsMUPkb1YWys5j+7w@mail.gmail.com>
From: =?UTF-8?B?am/Dq2wgbWFyYW5ow6Nv?= <joel.maranhao@gmail.com>
To: yocto@yoctoproject.org
Subject: bitbake meta-toolchain-qt5 fails on Debian 8.1
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
X-List-Received-Date: Thu, 18 Jun 2015 21:02:44 -0000
Content-Type: multipart/alternative; boundary=001a11c237e88aab930518d12058

--001a11c237e88aab930518d12058
Content-Type: text/plain; charset=UTF-8

Hello Yocto project friends,

Trying to build my Qt5 toolchain for Raspberry Pi2 on Yocto fido branch
(first timer).

I am getting the dependency error message below, and it looks like I may
have to simply give up on Debian Wheezy or Jessie (just want to make sure
with you guys before I do). Apparently this works on Ubuntu 14.04 which
requires me to get another machine. So any tips or tricks or way around
this would be great. Note that I absolutely do not need X11 for my project,
but it looks like I do need those libraries to build my toolchain.

THE FAILING COMMAND

    bitbake -v meta-toolchain-qt5

MY ERROR MESSAGE

Configuring packagegroup-core-standalone-sdk-target.
Collected errors:
 * satisfy_dependencies_for: Cannot satisfy the following dependencies for
packagegroup-qt5-toolchain-target:
 * libx11-6 (>= 1.6.2) * libxcb1 (>= 1.11) * libxau6 (>= 1.0.8) * libxdmcp6
(>= 1.1.1) *
 * opkg_install_cmd: Cannot install package
packagegroup-qt5-toolchain-target.

ERROR: Function failed: do_populate_sdk
ERROR: Logfile of failure stored in:
/home/otto/yocto/build/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/meta-toolchain-qt5/1.0-r0/temp/log.do_populate_sdk.16122
ERROR: Task 7 (/home/otto/yocto/build/../poky/meta-qt5/recipes-qt/meta/
meta-toolchain-qt5.bb, do_populate_sdk) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3419 tasks of which 3418 didn't need to be
rerun and 1 failed.
No currently running tasks (3418 of 3420)

Summary: 1 task failed:
  /home/otto/yocto/build/../poky/meta-qt5/recipes-qt/meta/
meta-toolchain-qt5.bb, do_populate_sdk
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

I was able to narrow it down to this command

      /home/otto/yocto/build/tmp/sysroots/x86_64-linux/usr/bin/opkg-cl -f
/home/otto/yocto/build/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/meta-toolchain-qt5/1.0-r0/opkg.conf
-o
/home/otto/yocto/build/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/meta-toolchain-qt5/1.0-r0/sdk/image/opt/poky/1.8/sysroots/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi
--force_postinstall --prefer-arch-to-version   install
packagegroup-core-standalone-sdk-target-dbg
packagegroup-core-standalone-sdk-target packagegroup-qt5-toolchain-target

packagegroup-qt5-toolchain-target seems to lift the dependency error.

MY BUILD CONFIGURATION

Build Configuration:
BB_VERSION        = "1.26.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Debian-8.1"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "raspberrypi2"
DISTRO            = "poky"
DISTRO_VERSION    = "1.8"
TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard vfpv4
cortexa7"
TARGET_FPU        = "vfp-vfpv4-neon"
meta-embarcados
meta-rpi          = "fido:3c1f9a1662bdb0f1a546fa87260a01ad547f7db8"
meta-qt5          = "fido:fc026381545650e10fdd488d5b2a3b2d78f87793"
meta-raspberrypi  = "fido:b896a7da70dd7a16ba7ffd664f7747cb37e1d142"
meta-oe
meta-ruby         = "fido:5b0305d9efa4b5692cd942586fb7aa92dba42d59"
meta
meta-yocto        = "fido:eb4a134a60e3ac26a48379675ad6346a44010339"

I have detailed my attempts on Stackoverflow follow this link :
http://stackoverflow.com/questions/30830053/bitbake-meta-toolchain-qt5-failed-cannot-satisfy-x11-although-feature-was-remov


Happy pointers or advise will be greatly appreciated. Cheers!

--001a11c237e88aab930518d12058
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Yocto project friends,=C2=A0</div><div><br></di=
v><div>Trying to build my Qt5 toolchain for Raspberry Pi2 on Yocto fido bra=
nch (first timer).<br></div><div><br></div><div>I am getting the dependency=
 error message below, and it looks like I may have to simply give up on Deb=
ian Wheezy or Jessie (just want to make sure with you guys before I do). Ap=
parently this works on Ubuntu 14.04 which requires me to get another machin=
e. So any tips or tricks or way around this would be great. Note that I abs=
olutely do not need X11 for my project, but it looks like I do need those l=
ibraries to build my toolchain.</div><div><br></div><div>THE FAILING COMMAN=
D</div><div><br></div><div>=C2=A0 =C2=A0 bitbake -v meta-toolchain-qt5<br><=
/div><div><br></div><div>MY ERROR MESSAGE</div><div><br></div><div><div>Con=
figuring packagegroup-core-standalone-sdk-target.</div><div>Collected error=
s:</div><div>=C2=A0* satisfy_dependencies_for: Cannot satisfy the following=
 dependencies for packagegroup-qt5-toolchain-target:</div><div>=C2=A0* <spa=
n class=3D"" style=3D"white-space:pre">	</span>libx11-6 (&gt;=3D 1.6.2) * <=
span class=3D"" style=3D"white-space:pre">	</span>libxcb1 (&gt;=3D 1.11) * =
<span class=3D"" style=3D"white-space:pre">	</span>libxau6 (&gt;=3D 1.0.8) =
* <span class=3D"" style=3D"white-space:pre">	</span>libxdmcp6 (&gt;=3D 1.1=
.1) *=C2=A0</div><div>=C2=A0* opkg_install_cmd: Cannot install package pack=
agegroup-qt5-toolchain-target.</div><div><br></div><div>ERROR: Function fai=
led: do_populate_sdk</div><div>ERROR: Logfile of failure stored in: /home/o=
tto/yocto/build/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/meta-=
toolchain-qt5/1.0-r0/temp/log.do_populate_sdk.16122</div><div>ERROR: Task 7=
 (/home/otto/yocto/build/../poky/meta-qt5/recipes-qt/meta/<a href=3D"http:/=
/meta-toolchain-qt5.bb">meta-toolchain-qt5.bb</a>, do_populate_sdk) failed =
with exit code &#39;1&#39;</div><div>NOTE: Tasks Summary: Attempted 3419 ta=
sks of which 3418 didn&#39;t need to be rerun and 1 failed.</div><div>No cu=
rrently running tasks (3418 of 3420)</div><div><br></div><div>Summary: 1 ta=
sk failed:</div><div>=C2=A0 /home/otto/yocto/build/../poky/meta-qt5/recipes=
-qt/meta/<a href=3D"http://meta-toolchain-qt5.bb">meta-toolchain-qt5.bb</a>=
, do_populate_sdk</div><div>Summary: There were 2 ERROR messages shown, ret=
urning a non-zero exit code.</div></div><div><br></div><div>I was able to n=
arrow it down to this command</div><div><br></div><div>=C2=A0 =C2=A0 =C2=A0=
 /home/otto/yocto/build/tmp/sysroots/x86_64-linux/usr/bin/opkg-cl -f /home/=
otto/yocto/build/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/meta=
-toolchain-qt5/1.0-r0/opkg.conf -o /home/otto/yocto/build/tmp/work/cortexa7=
hf-vfp-vfpv4-neon-poky-linux-gnueabi/meta-toolchain-qt5/1.0-r0/sdk/image/op=
t/poky/1.8/sysroots/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi --force_po=
stinstall --prefer-arch-to-version =C2=A0 install packagegroup-core-standal=
one-sdk-target-dbg packagegroup-core-standalone-sdk-target packagegroup-qt5=
-toolchain-target<br></div><div><br></div><div>packagegroup-qt5-toolchain-t=
arget seems to lift the dependency error.<br></div><div><br></div>MY BUILD =
CONFIGURATION<br clear=3D"all"><div><br></div><div><div>Build Configuration=
:</div><div>BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.26.0&quot;</d=
iv><div>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;<=
/div><div>NATIVELSBSTRING =C2=A0 =3D &quot;Debian-8.1&quot;</div><div>TARGE=
T_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm-poky-linux-gnueabi&quot;</di=
v><div>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;raspberrypi2&qu=
ot;</div><div>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;pok=
y&quot;</div><div>DISTRO_VERSION =C2=A0 =C2=A0=3D &quot;1.8&quot;</div><div=
>TUNE_FEATURES =C2=A0 =C2=A0 =3D &quot;arm armv7a vfp thumb neon callconven=
tion-hard vfpv4 cortexa7&quot;</div><div>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;vfp-vfpv4-neon&quot;</div><div>meta-embarcados =C2=A0=C2=A0=
</div><div>meta-rpi =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;fido:3c1f9a=
1662bdb0f1a546fa87260a01ad547f7db8&quot;</div><div>meta-qt5 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=3D &quot;fido:fc026381545650e10fdd488d5b2a3b2d78f87793=
&quot;</div><div>meta-raspberrypi =C2=A0=3D &quot;fido:b896a7da70dd7a16ba7f=
fd664f7747cb37e1d142&quot;</div><div>meta-oe =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0</div><div>meta-ruby =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;fido=
:5b0305d9efa4b5692cd942586fb7aa92dba42d59&quot;</div><div>meta =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-yocto =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=3D &quot;fido:eb4a134a60e3ac26a48379675ad6346a44010339&quot;<=
/div><div><br></div></div><div>I have detailed my attempts on Stackoverflow=
 follow this link :=C2=A0<a href=3D"http://stackoverflow.com/questions/3083=
0053/bitbake-meta-toolchain-qt5-failed-cannot-satisfy-x11-although-feature-=
was-remov">http://stackoverflow.com/questions/30830053/bitbake-meta-toolcha=
in-qt5-failed-cannot-satisfy-x11-although-feature-was-remov</a></div><div><=
br></div><div><br></div><div>Happy pointers or advise will be greatly appre=
ciated. Cheers!</div><div><br></div>
</div>

--001a11c237e88aab930518d12058--
