Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED322E00D69; Wed,  6 Dec 2017 09:13:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D47DE00CE2
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 09:13:52 -0800 (PST)
Received: by mail-oi0-f51.google.com with SMTP id j17so3034603oih.3
	for <yocto@yoctoproject.org>; Wed, 06 Dec 2017 09:13:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=sXfv3cM8EzeiGnIe9LSeIonYYIZdUwo0OEzcCi0zpBw=;
	b=T9L0w7uwP6tf4gAssJfUum8LtScdwLvHCpCRrKsmPNIOEnyLsqcDTtXZuUuoG09g58
	qc8q/xL2zSFZw61jlo6wmhoi/LaQbUkuS8/XJSMRCKGUsKQH4nAqUAyoidVAgwnrscYm
	oS9IH+ujK9bWAMU9YXW8mSPkGxYRogz5FY3tXVjL5ZtU1tqogJeXH+sd1Ee7KcJFQN09
	2Ejl0utgxecuEvS0YBZvo2vUQGT1e41LW7oJcVMkryzTI7EPtJ8yJyqDBDrwfZfckXGx
	gyNny+YKVl/IhJ7Ra2j9SakWtk7LqzCTfo6mas8AD6LaYkKdudapWPBiizRVZ45gwmNg
	y8Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=sXfv3cM8EzeiGnIe9LSeIonYYIZdUwo0OEzcCi0zpBw=;
	b=YjzJqQ1P/9E9FXL89mQV2Gz8YNGfrfQ2fUjP7E2plfaSVX3F04wmqKvuGgOqoZn5hz
	1hag09+fS+8eoGGRepc6YCIyHC0ofVf7rri05redFHJQrRtroO07JgnE3Qo20lSGyEf4
	RubeVMztcwYroVF4Lfq8hkNt2UWX7eqDc08WX3y9MLVlN+O9HMLhjtgkkTlUnQJzyN74
	fusrOA7mMYQXacGLvlIcvPiYmjItqdKOTHklhqcKoz/Uzuj3mgh1Psyr3ngwJJBssLiF
	n1g6m5hABSvQHpktWwbw9AbJOft9HiPdiC+kFlQXdrRoqudsLp0tFiIUNa5L67ra/SFP
	WzMg==
X-Gm-Message-State: AJaThX52/CCpOnewJHYwaValhHzmHurOsN1goC8GCWZFdSCH5C/FJEci
	s4VCWXDbZWrozT9v/hUGu/9YaT+ekOE1wPX7LHq7Iw==
X-Google-Smtp-Source: AGs4zMbOMbQIwoWmmVhz+MjmGOxrpkibg3z6hIZpU16sqsZXz44wQXCdQutVR7xveGRf33XD8wQYHxvOysg/k4MkowE=
X-Received: by 10.202.114.22 with SMTP id p22mr20690930oic.327.1512580431628; 
	Wed, 06 Dec 2017 09:13:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.113 with HTTP; Wed, 6 Dec 2017 09:13:51 -0800 (PST)
From: Jerry Lian <jerry.lian@gmail.com>
Date: Wed, 6 Dec 2017 12:13:51 -0500
Message-ID: <CAE0QtjMkS-hWknAiO1s0n8H=_6iA8YAJQqRCj7mDj4kGFum16A@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Build error: "u-boot-imx_2017.03.bb:do_compile" failed ( freescale I.MX 6 on Ubuntu 16.04) ?
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
X-List-Received-Date: Wed, 06 Dec 2017 17:13:55 -0000
Content-Type: multipart/alternative; boundary="001a11352e52524d91055faf13d2"

--001a11352e52524d91055faf13d2
Content-Type: text/plain; charset="UTF-8"

I got an error when trying to build for freescale I.MX6 on Ubuntu
16.04.(see below)
(I just follow the guide from http://freescale.github.io)

Anybody got hints?

Thanks!
Jerry

=======================================================================
................
| tools/libfdt_wrap.c:147:21: fatal error: Python.h: No such file or
directory
| compilation terminated.
| error: command 'x86_64-linux-gnu-gcc' failed with exit status 1
|
/home/jerry/fsl-release-bsp/build-x11/tmp/work/imx6qsabresd-poky-linux-gnueabi/u-boot-imx/2017.03-r0/git/tools/Makefile:123:
recipe for target 'tools/_libfdt.so' failed
| make[2]: *** [tools/_libfdt.so] Error 1
|
/home/jerry/fsl-release-bsp/build-x11/tmp/work/imx6qsabresd-poky-linux-gnueabi/u-boot-imx/2017.03-r0/git/Makefile:1229:
recipe for target 'tools' failed
| make[1]: *** [tools] Error 2
| make[1]: Leaving directory
'/home/jerry/fsl-release-bsp/build-x11/tmp/work/imx6qsabresd-poky-linux-gnueabi/u-boot-imx/2017.03-r0/build/mx6qsabresd_config'
| Makefile:150: recipe for target 'sub-make' failed
| make: *** [sub-make] Error 2
| make: Leaving directory
'/home/jerry/fsl-release-bsp/build-x11/tmp/work/imx6qsabresd-poky-linux-gnueabi/u-boot-imx/2017.03-r0/git'
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/home/jerry/fsl-release-bsp/build-x11/tmp/work/imx6qsabresd-poky-linux-gnueabi/u-boot-imx/2017.03-r0/temp/log.do_compile.9339)
ERROR: Task
(/home/jerry/fsl-release-bsp/sources/meta-fsl-bsp-release/imx/meta-bsp/recipes-bsp/u-boot/u-boot-imx_2017.03.bb:do_compile)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 4851 tasks of which 3009 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:

/home/jerry/fsl-release-bsp/sources/meta-fsl-bsp-release/imx/meta-bsp/recipes-bsp/u-boot/u-boot-imx_2017.03.bb:
do_compile
..........................
========================================================================

--001a11352e52524d91055faf13d2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I got an error when trying to build for freescal=
e I.MX6 on Ubuntu 16.04.(see below)<br></div><div>(I just follow the guide =
from <a href=3D"http://freescale.github.io">http://freescale.github.io</a>)=
<br><br></div>Anybody got hints?<br><br></div>Thanks!<br><div><div>Jerry<br=
><br></div><div><div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br>................<br>| tools/libfdt_wrap.c:147:21: fatal =
error: Python.h: No such file or directory<br>| compilation terminated.<br>=
| error: command &#39;x86_64-linux-gnu-gcc&#39; failed with exit status 1<b=
r>| /home/jerry/fsl-release-bsp/build-x11/tmp/work/imx6qsabresd-poky-linux-=
gnueabi/u-boot-imx/2017.03-r0/git/tools/Makefile:123: recipe for target &#3=
9;tools/_libfdt.so&#39; failed<br>| make[2]: *** [tools/_libfdt.so] Error 1=
<br>| /home/jerry/fsl-release-bsp/build-x11/tmp/work/imx6qsabresd-poky-linu=
x-gnueabi/u-boot-imx/2017.03-r0/git/Makefile:1229: recipe for target &#39;t=
ools&#39; failed<br>| make[1]: *** [tools] Error 2<br>| make[1]: Leaving di=
rectory &#39;/home/jerry/fsl-release-bsp/build-x11/tmp/work/imx6qsabresd-po=
ky-linux-gnueabi/u-boot-imx/2017.03-r0/build/mx6qsabresd_config&#39;<br>| M=
akefile:150: recipe for target &#39;sub-make&#39; failed<br>| make: *** [su=
b-make] Error 2<br>| make: Leaving directory &#39;/home/jerry/fsl-release-b=
sp/build-x11/tmp/work/imx6qsabresd-poky-linux-gnueabi/u-boot-imx/2017.03-r0=
/git&#39;<br>| WARNING: exit code 1 from a shell command.<br>| ERROR: Funct=
ion failed: do_compile (log file is located at /home/jerry/fsl-release-bsp/=
build-x11/tmp/work/imx6qsabresd-poky-linux-gnueabi/u-boot-imx/2017.03-r0/te=
mp/log.do_compile.9339)<br>ERROR: Task (/home/jerry/fsl-release-bsp/sources=
/meta-fsl-bsp-release/imx/meta-bsp/recipes-bsp/u-boot/u-boot-imx_2017.03.bb=
:do_compile) failed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Atte=
mpted 4851 tasks of which 3009 didn&#39;t need to be rerun and 1 failed.<br=
><br>Summary: 1 task failed:<br>=C2=A0 /home/jerry/fsl-release-bsp/sources/=
meta-fsl-bsp-release/imx/meta-bsp/recipes-bsp/u-boot/u-boot-imx_2017.03.bb:=
do_compile<br>..........................<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></div></div></div></div></div>

--001a11352e52524d91055faf13d2--
