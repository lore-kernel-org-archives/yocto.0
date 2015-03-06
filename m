Return-Path: <eddy.lai.tw@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0F1AE0086E; Thu,  5 Mar 2015 17:28:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddy.lai.tw[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B32E4E0083A
	for <yocto@yoctoproject.org>; Thu,  5 Mar 2015 17:28:34 -0800 (PST)
Received: by obcwp18 with SMTP id wp18so6553231obc.1
	for <yocto@yoctoproject.org>; Thu, 05 Mar 2015 17:28:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=yez88jNCY/p4gotn+6GT9q2GF36lTVt6yurNdn/B6X8=;
	b=F/x240ESAu9txJQHxccxqRE76g07H53AKyRTLYQnquakvFesCuEtrXIJ/s00EmBfD5
	QxOkk40kNZGdWnXJ/NS0oi4Wz5dL5qTt+3szuzsufAl7X3YOyJDPJ9x0UZMzGxWKeW5V
	4Y9GJA9nip0kxQKd6s2z+8OV/IsM2yV1tDZ6tnlJ9j6IAdQs6dyCKlNZ03wIkZ3X6TWO
	Qd6ldWNB3bDUTYzvf81RPujjIYqBDido+iYUowK3QeX/TbGeJvBM2py4FTFO/KQGHSWZ
	jsTTqqsePz65PxrAIdCYIcaltotkVtJo37lcqm49UDmQ0mXS41BBD1P3Ey217hL8kQjj
	CE+w==
MIME-Version: 1.0
X-Received: by 10.202.106.14 with SMTP id f14mr8823689oic.39.1425605313359;
	Thu, 05 Mar 2015 17:28:33 -0800 (PST)
Received: by 10.76.4.173 with HTTP; Thu, 5 Mar 2015 17:28:33 -0800 (PST)
Date: Thu, 5 Mar 2015 17:28:33 -0800
Message-ID: <CACrgodfSPbF0F_7KirA1A5efWAbsYY9UW-Qe_VfA=VpxYAfBXg@mail.gmail.com>
From: Lai Eddy <eddy.lai.tw@gmail.com>
To: "linux-yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: binutils compile error with dizzy (1.7.1)
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
X-List-Received-Date: Fri, 06 Mar 2015 01:28:36 -0000
Content-Type: multipart/alternative; boundary=001a1140365c4af4a80510949afa

--001a1140365c4af4a80510949afa
Content-Type: text/plain; charset=UTF-8

got error when compiling binutils with poky 1.7.1 / mohonpeak bsp,
have tried cleanall then build again , but the same result,
looks like a link error, how can I resolve this?
--------------------------------------------
Build Configuration:
BB_VERSION        = "1.24.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-14.04"
TARGET_SYS        = "x86_64-poky-linux"
MACHINE           = "mohonpeak64"
DISTRO            = "poky"
DISTRO_VERSION    = "1.7.1"
TUNE_FEATURES     = "m64 corei7"
TARGET_FPU        = ""
meta
meta-yocto
meta-yocto-bsp
meta-intel
meta-mohonpeak    = "<unknown>:<unknown>"
meta-cloud-services
meta-openstack
meta-openstack-compute-deploy
meta-openstack-controller-deploy
meta-openstack-qemu
meta-openstack-compute-test-config
meta-openstack-controller-test-config =
"master:6fef060c2336d4c472c5bc8ec48bfb8a205cd6b3"
:
:
| ldemul.o:(.data+0x8a8): undefined reference to `ld_shl_emulation'
| ldemul.o:(.data+0x8b0): undefined reference to `ld_shlelf_emulation'
| collect2: error: ld returned 1 exit status
| make[4]: *** [ld-new] Error 1
| make[4]: Leaving directory
`/poky/isan/tmp/work/x86_64-linux/binutils-native/2.24-r0/binutils-2.24/build.x86_64-linux.x86_64-linux/ld'
| make[3]: *** [all-recursive] Error 1
| make[3]: Leaving directory
`/poky/isan/tmp/work/x86_64-linux/binutils-native/2.24-r0/binutils-2.24/build.x86_64-linux.x86_64-linux/ld'
| make[2]: *** [all] Error 2
| make[2]: Leaving directory
`/poky/isan/tmp/work/x86_64-linux/binutils-native/2.24-r0/binutils-2.24/build.x86_64-linux.x86_64-linux/ld'
| make[1]: *** [all-ld] Error 2
| make[1]: Leaving directory
`/poky/isan/tmp/work/x86_64-linux/binutils-native/2.24-r0/binutils-2.24/build.x86_64-linux.x86_64-linux'
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/poky/isan/tmp/work/x86_64-linux/binutils-native/2.24-r0/temp/log.do_compile.30031)
ERROR: Task 257 (virtual:native:/poky/meta/recipes-devtools/binutils/
binutils_2.24.bb, do_compile) failed with exit code '1'

--001a1140365c4af4a80510949afa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>got error when compiling binutils with poky 1.7.=
1 / mohonpeak bsp,<br></div>have tried cleanall then build again , but the =
same result, <br></div>looks like a link error, how can I resolve this?<br>=
<div><div><div><div>--------------------------------------------<br>Build C=
onfiguration:<br>BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &=
quot;1.24.0&quot;<br>BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0 =3D &quot;U=
buntu-14.04&quot;<br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D &quot;x86_64-poky-linux&quot;<br>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;mohonpeak64&quot;<br>DISTRO=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky=
&quot;<br>DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D &quot;1.7.1&quot;<br>TUNE_FE=
ATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;m64 corei7&quot;<br>TARGET_FPU=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;&quot;<br>meta<br>meta-yo=
cto<br>meta-yocto-bsp<br>meta-intel<br>meta-mohonpeak=C2=A0=C2=A0=C2=A0 =3D=
 &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;<br>meta-cloud-services<br>meta=
-openstack<br>meta-openstack-compute-deploy<br>meta-openstack-controller-de=
ploy<br>meta-openstack-qemu<br>meta-openstack-compute-test-config<br>meta-o=
penstack-controller-test-config =3D &quot;master:6fef060c2336d4c472c5bc8ec4=
8bfb8a205cd6b3&quot;<br>:<br>:<br>| ldemul.o:(.data+0x8a8): undefined refer=
ence to `ld_shl_emulation&#39;<br>| ldemul.o:(.data+0x8b0): undefined refer=
ence to `ld_shlelf_emulation&#39;<br>| collect2: error: ld returned 1 exit =
status<br>| make[4]: *** [ld-new] Error 1<br>| make[4]: Leaving directory `=
/poky/isan/tmp/work/x86_64-linux/binutils-native/2.24-r0/binutils-2.24/buil=
d.x86_64-linux.x86_64-linux/ld&#39;<br>| make[3]: *** [all-recursive] Error=
 1<br>| make[3]: Leaving directory `/poky/isan/tmp/work/x86_64-linux/binuti=
ls-native/2.24-r0/binutils-2.24/build.x86_64-linux.x86_64-linux/ld&#39;<br>=
| make[2]: *** [all] Error 2<br>| make[2]: Leaving directory `/poky/isan/tm=
p/work/x86_64-linux/binutils-native/2.24-r0/binutils-2.24/build.x86_64-linu=
x.x86_64-linux/ld&#39;<br>| make[1]: *** [all-ld] Error 2<br>| make[1]: Lea=
ving directory `/poky/isan/tmp/work/x86_64-linux/binutils-native/2.24-r0/bi=
nutils-2.24/build.x86_64-linux.x86_64-linux&#39;<br>| make: *** [all] Error=
 2<br>| ERROR: oe_runmake failed<br>| WARNING: exit code 1 from a shell com=
mand.<br>| ERROR: Function failed: do_compile (log file is located at /poky=
/isan/tmp/work/x86_64-linux/binutils-native/2.24-r0/temp/log.do_compile.300=
31)<br>ERROR: Task 257 (virtual:native:/poky/meta/recipes-devtools/binutils=
/<a href=3D"http://binutils_2.24.bb">binutils_2.24.bb</a>, do_compile) fail=
ed with exit code &#39;1&#39;<br><br></div></div></div></div></div>

--001a1140365c4af4a80510949afa--
