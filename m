Return-Path: <nickdademo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F02CE008D7; Sun,  9 Nov 2014 17:05:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nickdademo[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4485AE007C0
	for <yocto@yoctoproject.org>; Sun,  9 Nov 2014 17:05:24 -0800 (PST)
Received: by mail-oi0-f54.google.com with SMTP id a141so4654294oig.41
	for <yocto@yoctoproject.org>; Sun, 09 Nov 2014 17:05:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=FOptuAVvgIOTBBI3NexBPXznEgBigPgAa5+r4t8yYHM=;
	b=ZD1bsKAWiZDSlM7ma0g0T0oyHgn0PzJzAnx9n2qO4nOt0q2nZ9qFyzyRkQhflXrn9T
	fQ3SkxtWXq4rp6Ie9uQ7D3PCgWHbsX8Tt1u5KpybPS2IAMj1LjmSXBCLKJkqQbDqtTr/
	8KVPsvs2rmZkCfLN7+cnFruHRM5CodBxJPuxc2yHWJ70kmU1IQdJqK6CsZ37zykF6xkX
	DdrHF/gyDGQFW6P1VdnQ9+IkYx+dQZJli0GOaOnXqtilMHnWsV0Gr+Lt5DHiFhelQ3SQ
	Ot79DIB2AUKsJey/zvPsUYQnK71Z1NE7SfIKYckF7L24BorenUatM1iIh5sApv6HvfHl
	orxw==
X-Received: by 10.60.123.18 with SMTP id lw18mr24170107oeb.7.1415581523803;
	Sun, 09 Nov 2014 17:05:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.167.163 with HTTP; Sun, 9 Nov 2014 17:05:03 -0800 (PST)
From: "Nick D'Ademo" <nickdademo@gmail.com>
Date: Mon, 10 Nov 2014 12:05:03 +1100
Message-ID: <CANR6C54aazdi1bArSq-DdqMMJGcbQMuR2HsygV_8LDdTy3oUHg@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Unable to find the ncurses libraries when running menuconfig
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
X-List-Received-Date: Mon, 10 Nov 2014 01:05:28 -0000
Content-Type: multipart/alternative; boundary=047d7b5d4264e082c4050776c1f3

--047d7b5d4264e082c4050776c1f3
Content-Type: text/plain; charset=UTF-8

Getting a strange error when attempting to configure the Yocto Linux kernel
via: bitbake linux-yocto -c menuconfig.

Does anyone have any ideas? (error message below)
Much appreciated.

Build Configuration:
BB_VERSION        = "1.24.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-14.04"
TARGET_SYS        = "x86_64-poky-linux"
MACHINE           = "nuc"
DISTRO            = "poky"
DISTRO_VERSION    = "1.7"
TUNE_FEATURES     = "m64 corei7"
TARGET_FPU        = ""















*make[1]: Entering directory
`/home/nick/poky/build/tmp/work/corei7-64-intel-common-poky-linux/linux-yocto/3.17.1+gitAUTOINC+b86dd5c6f4_0caf16d385-r0/linux-corei7-64-intel-common-standard-build'
GEN     ./Makefile *** Unable to find the ncurses libraries or the ***
required header files. *** 'make menuconfig' requires the ncurses
libraries. ***  *** Install ncurses (ncurses-devel) and try again. ***
make[3]: *** [scripts/kconfig/dochecklxdialog] Error 1make[2]: ***
[menuconfig] Error 2make[1]: *** [sub-make] Error 2make: *** [__sub-make]
Error 2Command failed.Press any key to continue... *

--047d7b5d4264e082c4050776c1f3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Getting a strange error when attempting to configure =
the Yocto Linux kernel via: bitbake linux-yocto -c menuconfig.<br><br>Does =
anyone have any ideas? (error message below)<br>Much appreciated.<br><br></=
div>Build Configuration:<br>BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &quot;1.24.0&quot;<br>BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0=
 =3D &quot;Ubuntu-14.04&quot;<br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D &quot;x86_64-poky-linux&quot;<br>MACHINE=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;nuc&quot;<br>DISTRO=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;p=
oky&quot;<br>DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D &quot;1.7&quot;<br>TUNE_F=
EATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;m64 corei7&quot;<br>TARGET_FPU=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;&quot;<br><br><div><br><i=
>make[1]: Entering directory `/home/nick/poky/build/tmp/work/corei7-64-inte=
l-common-poky-linux/linux-yocto/3.17.1+gitAUTOINC+b86dd5c6f4_0caf16d385-r0/=
linux-corei7-64-intel-common-standard-build&#39;<br>=C2=A0 GEN=C2=A0=C2=A0=
=C2=A0=C2=A0 ./Makefile<br>=C2=A0*** Unable to find the ncurses libraries o=
r the<br>=C2=A0*** required header files.<br>=C2=A0*** &#39;make menuconfig=
&#39; requires the ncurses libraries.<br>=C2=A0*** <br>=C2=A0*** Install nc=
urses (ncurses-devel) and try again.<br>=C2=A0*** <br>make[3]: *** [scripts=
/kconfig/dochecklxdialog] Error 1<br>make[2]: *** [menuconfig] Error 2<br>m=
ake[1]: *** [sub-make] Error 2<br>make: *** [__sub-make] Error 2<br>Command=
 failed.<br>Press any key to continue... </i><br><br><br><div>
</div></div></div>

--047d7b5d4264e082c4050776c1f3--
