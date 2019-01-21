Return-Path: <humpertjohannes83@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BC40E00BC6; Mon, 21 Jan 2019 05:37:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (humpertjohannes83[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
	[209.85.208.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0426EE006B3
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 05:37:21 -0800 (PST)
Received: by mail-lj1-f169.google.com with SMTP id k19-v6so17499183lji.11
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 05:37:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=OClVrEQCA9Wqw44FnNVn9IWCVg5fNhzvQuIWGn2bCvg=;
	b=fPVdhnv4S6ex3upJ8aRfuNRGLM4X/i67VzhHm3YKJGQUO3MXtNOZyypz93ePuDYzWK
	aC2oNAw4RfNtC31lw7CQRA6dkgQpcgHUM0tAp0EBqy/9Np/tolJkojw+xKLJdH3LoqE2
	OSRmjZxd6+dO0GSFsPrg5BbsXEOU56faA6dpsgUkxV1b78+9owjb6XiAa0XO06ri4YUY
	vLXai5lDuS8tuMedgub+VRoLuhIobLQmQjl7FkCSVRXGwkYptsiVpMSjxhw7z//S3PrI
	+DBQnk41vgjWW7c0d5ejrqieOsqINQgro2KCwxQChsS0NMvep0obLHkmnCMzXQ9DvhJu
	YXtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=OClVrEQCA9Wqw44FnNVn9IWCVg5fNhzvQuIWGn2bCvg=;
	b=UIxVqzWqn/46Kc55P7cVHTnRGiXPIteGcPDn+5YduhpnTfHahOi1ak09KVLDiCoDAI
	acGqG/M+2w6dz5uqn6qNPy68CuC/8xYuQ3FUw3rC9vTrod/aBvQYwB9C+PmgeNNeI13Z
	tX04rK1kcMUl97eJHCC7PkYvt/Op5t3VOnrXaQjkb0j2fthdBqTr6RAZ77i7i1gSLPFI
	muGW8489YPztWqfTbqV4oWZP29VSDAfxJdLm5cybEHGOMwXoUbjYfn0HoN3TV/sP7M6a
	M890LToRlrU+Te79yHLBSOIa/7eU8eozMRbPLTe9LGlMWklpukGyoKHkUmSEkaN1Kdkq
	e44g==
X-Gm-Message-State: AJcUukd5REijA4op3eUlUiOzmdBrISKdFt6gb0+sIoboYZl2KNbM/Z57
	Q3h5109r85E4o3A3A28d9BgPTKH+QSA4WfFP3PM+e5zT
X-Google-Smtp-Source: ALg8bN6wpsYCA6oSV5X5q1V1HrhqifaKRccWlX8lwzz6ToURHTSG0nu2pZhNZr9a7Yyre5+XbbZtAO6oKX2P7xQkQDc=
X-Received: by 2002:a2e:890b:: with SMTP id
	d11-v6mr17480313lji.113.1548077840729; 
	Mon, 21 Jan 2019 05:37:20 -0800 (PST)
MIME-Version: 1.0
From: Johannes Humpert <humpertjohannes83@gmail.com>
Date: Mon, 21 Jan 2019 14:37:09 +0100
Message-ID: <CAMBu-336+bCzi__2ujQ33hj56kYUn59RqsUy3JsHHwT7=QTiiA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 21 Jan 2019 08:09:28 -0800
Subject: Using old version of Recipe with new Yocto Release
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
X-List-Received-Date: Mon, 21 Jan 2019 13:37:23 -0000
Content-Type: multipart/alternative; boundary="000000000000c809aa057ff7f5ea"

--000000000000c809aa057ff7f5ea
Content-Type: text/plain; charset="UTF-8"

Hallo Yocto,

Is it possible to use old versions of the recipe with newer yocto releases?
For example, I am currently trying to compile a 2015.01 version of the
U-boot recipe with the Yocto Sumo release, but unfortunately it throws a
compilation error that oe-runmake failed. Could anyone please guide me with
this issue.

The build config is as follows:

*Build Configuration:*
*BB_VERSION           = "1.37.0"*
*BUILD_SYS            = "x86_64-linux"*
*NATIVELSBSTRING      = "universal-4.8"*
*TARGET_SYS           = "arm-poky-linux-gnueabi"*
*MACHINE              = "arm-cortex-a8"*
*DISTRO               = "poky"*
*DISTRO_VERSION       = "2.5"*
*TUNE_FEATURES        = "arm armv7a vfp neon callconvention-hard cortexa8"*
*TARGET_FPU           = "hard"       *
*meta                 *
*meta-poky            *
*meta-yocto-bsp       *
*meta-oe              = "master:45ee3c0e98bd3ed81419aaeae1e7324e486161a2"*

The error log message is as follows:

*DEBUG: Executing shell function do_compile*
*NOTE: make -j 2 CROSS_COMPILE=arm-poky-linux-gnueabi-
CC=arm-poky-linux-gnueabi-gcc
--sysroot=/source/yocto/build/tmp/work/arm_cortex_a8-poky-linux-gnueabi/u-boot/v2015.01+gitAUTOINC+92fa7f53f1-r0/recipe-sysroot
V=1 KCFLAGS=-fgnu89-inline am335x_evm_config*
*make -f ./scripts/Makefile.build obj=scripts/basic*
*  cc -Wp,-MD,scripts/basic/.fixdep.d -Wall -Wstrict-prototypes -O2
-fomit-frame-pointer     -o scripts/basic/fixdep scripts/basic/fixdep.c  *
*/bin/sh: cc: command not found*
*make[1]: *** [scripts/Makefile.host:91: scripts/basic/fixdep] Error 127*
*make: *** [Makefile:390: scripts_basic] Error 2*
*ERROR: oe_runmake failed*
*WARNING:
/source/yocto/build/tmp/work/arm_cortex_a8-poky-linux-gnueabi/u-boot/v2015.01+gitAUTOINC+92fa7f53f1-r0/temp/run.do_compile.20414:1
exit 1 from 'exit 1'*
*ERROR: Function failed: do_compile (log file is located at
/source/yocto/build/tmp/work/arm_cortex_a8-poky-linux-gnueabi/u-boot/v2015.01+gitAUTOINC+92fa7f53f1-r0/temp/log.do_compile.20414)*

Thanks,
-Johannes

--000000000000c809aa057ff7f5ea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hallo Yocto,<div><br></d=
iv><div>Is it possible to use old versions of the recipe with newer yocto r=
eleases? For example, I am currently trying to compile a 2015.01 version of=
 the U-boot recipe with the Yocto Sumo release, but unfortunately it throws=
 a compilation error that oe-runmake failed. Could anyone please guide me w=
ith this issue.</div><div><br></div><div>The build config is as follows:</d=
iv><div><div><br></div><div><i>Build Configuration:</i></div><div><i>BB_VER=
SION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.37.0&quot;</i></di=
v><div><i>BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_=
64-linux&quot;</i></div><div><i>NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &qu=
ot;universal-4.8&quot;</i></div><div><i>TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=3D &quot;arm-poky-linux-gnueabi&quot;</i></div><div><i>MA=
CHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-cortex-=
a8&quot;</i></div><div><i>DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=3D &quot;poky&quot;</i></div><div><i>DISTRO_VERSION=C2=A0 =C2=
=A0 =C2=A0 =C2=A0=3D &quot;2.5&quot;</i></div><div><i>TUNE_FEATURES=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =3D &quot;arm armv7a vfp neon callconvention-hard cort=
exa8&quot;</i></div><div><i>TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;hard&quot;=C2=A0 =C2=A0 =C2=A0 =C2=A0</i></div><div><i>meta=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</i></div><di=
v><i>meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</i></div><div=
><i>meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0</i></div><div><i>meta-oe=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;master:45ee3c0e98bd=
3ed81419aaeae1e7324e486161a2&quot;</i></div></div><div><i><br></i></div><di=
v>The error log message is as follows:</div><div><br></div><div><div><i>DEB=
UG: Executing shell function do_compile</i></div><div><i>NOTE: make -j 2 CR=
OSS_COMPILE=3Darm-poky-linux-gnueabi- CC=3Darm-poky-linux-gnueabi-gcc=C2=A0=
 --sysroot=3D/source/yocto/build/tmp/work/arm_cortex_a8-poky-linux-gnueabi/=
u-boot/v2015.01+gitAUTOINC+92fa7f53f1-r0/recipe-sysroot V=3D1 KCFLAGS=3D-fg=
nu89-inline am335x_evm_config</i></div><div><i>make -f ./scripts/Makefile.b=
uild obj=3Dscripts/basic</i></div><div><i>=C2=A0 cc -Wp,-MD,scripts/basic/.=
fixdep.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer=C2=A0 =C2=A0 =
=C2=A0-o scripts/basic/fixdep scripts/basic/fixdep.c=C2=A0=C2=A0</i></div><=
div><i>/bin/sh: cc: command not found</i></div><div><i>make[1]: *** [script=
s/Makefile.host:91: scripts/basic/fixdep] Error 127</i></div><div><i>make: =
*** [Makefile:390: scripts_basic] Error 2</i></div><div><i>ERROR: oe_runmak=
e failed</i></div><div><i>WARNING: /source/yocto/build/tmp/work/arm_cortex_=
a8-poky-linux-gnueabi/u-boot/v2015.01+gitAUTOINC+92fa7f53f1-r0/temp/run.do_=
compile.20414:1 exit 1 from &#39;exit 1&#39;</i></div><div><i>ERROR: Functi=
on failed: do_compile (log file is located at /source/yocto/build/tmp/work/=
arm_cortex_a8-poky-linux-gnueabi/u-boot/v2015.01+gitAUTOINC+92fa7f53f1-r0/t=
emp/log.do_compile.20414)</i></div></div><div><br></div><div>Thanks,</div><=
div>-Johannes</div><div><i><br></i></div><div><br></div></div></div></div>

--000000000000c809aa057ff7f5ea--
