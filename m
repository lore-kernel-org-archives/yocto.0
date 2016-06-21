Return-Path: <damir.anicic@psi.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16FD2E00855; Tue, 21 Jun 2016 06:00:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [82.130.99.26 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from edge20.ethz.ch (edge20.ethz.ch [82.130.99.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC0FFE00708
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 06:00:56 -0700 (PDT)
Received: from CAS21.d.ethz.ch (172.31.51.111) by edge20.ethz.ch
	(82.130.99.26) with Microsoft SMTP Server (TLS) id 14.3.266.1;
	Tue, 21 Jun 2016 15:00:51 +0200
Received: from MBX214.d.ethz.ch ([fe80::5c68:3688:18d4:cbf7]) by
	CAS21.d.ethz.ch ([fe80::55ba:c4a5:d8a7:ab62%10]) with mapi id
	14.03.0266.001; Tue, 21 Jun 2016 15:00:54 +0200
From: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 2.1 perl problem
Thread-Index: AdHLvNR7cxzv77rzRP67xRQlJO9sag==
Date: Tue, 21 Jun 2016 13:00:53 +0000
Message-ID: <DB23C91B06C303459B24BC3208AF424A20F4CF40@MBX214.d.ethz.ch>
Accept-Language: en-US, de-DE, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [129.129.145.249]
MIME-Version: 1.0
Subject: Yocto 2.1 perl problem
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
X-List-Received-Date: Tue, 21 Jun 2016 13:00:59 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB23C91B06C303459B24BC3208AF424A20F4CF40MBX214dethzch_"

--_000_DB23C91B06C303459B24BC3208AF424A20F4CF40MBX214dethzch_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi!

Suddenly perl does not build any more (I did not have the problem in last t=
wo weeks).
I did not change anything (my humble bitbake understanding) about perl.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Build Configuration:
BB_VERSION        =3D "1.30.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "universal"
TARGET_SYS        =3D "powerpc64-poky-linux"
MACHINE           =3D "powerpc64-ppc64e6500"
DISTRO            =3D "gfa-ppc64e6500"
DISTRO_VERSION    =3D "2.1"
TUNE_FEATURES     =3D "m64 fpu-hard e6500 altivec"
TARGET_FPU        =3D ""
meta
meta-poky
meta-yocto-bsp
meta-gfa          =3D "krogoth:4376fb851791a1fb514873ad239d516dd7159341"

NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: perl-5.22.1-r0 do_package: objcopy failed with exit code 256 (cmd wa=
s 'powerpc64-poky-linux-objcopy' --only-keep-debug '/home/anicic/yocto-2.1-=
all/build/ppc64e6500/tmp/work/ppc64e6500-poky-linux/perl/5.22.1-r0/package/=
usr/lib64/perl/ptest/generate_uudmap' '/home/anicic/yocto-2.1-all/build/ppc=
64e6500/tmp/work/ppc64e6500-poky-linux/perl/5.22.1-r0/package/usr/lib64/per=
l/ptest/.debug/generate_uudmap'):
powerpc64-poky-linux-objcopy: Unable to recognise the format of the input f=
ile `/home/anicic/yocto-2.1-all/build/ppc64e6500/tmp/work/ppc64e6500-poky-l=
inux/perl/5.22.1-r0/package/usr/lib64/perl/ptest/generate_uudmap'
ERROR: perl-5.22.1-r0 do_package: Function failed: split_and_strip_files
ERROR: Logfile of failure stored in: /home/anicic/yocto-2.1-all/build/ppc64=
e6500/tmp/work/ppc64e6500-poky-linux/perl/5.22.1-r0/temp/log.do_package.212=
05
ERROR: Task 1691 (/home/anicic/yocto-2.1-all/poky/meta/recipes-devtools/per=
l/perl_5.22.1.bb, do_package) failed with exit code '1'
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The problem seems to be that
/home/anicic/yocto-2.1-all/build/ppc64e6500/tmp/work/ppc64e6500-poky-linux/=
perl/5.22.1-r0/package/usr/lib64/perl/ptest/generate_uudmap
is built for host "ELF 64-bit LSB executable, x86-64"
instead of target "64-bit PowerPC or cisco 7500"

What could it be?

Damir


--_000_DB23C91B06C303459B24BC3208AF424A20F4CF40MBX214dethzch_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Hi!<br>
<br>
Suddenly perl does not build any more (I did not have the problem in last t=
wo weeks).<br>
I did not change anything (my humble bitbake understanding) about perl.<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Build Configuration:<br>
BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;1.30.0&quot;=
<br>
BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-=
linux&quot;<br>
NATIVELSBSTRING&nbsp;&nbsp; =3D &quot;universal&quot;<br>
TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;powerpc64-po=
ky-linux&quot;<br>
MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &qu=
ot;powerpc64-ppc64e6500&quot;<br>
DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;gfa-ppc64e6500&quot;<br>
DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D &quot;2.1&quot;<br>
TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;m64 fpu-hard e6500 altivec&=
quot;<br>
TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;&quot;<br>
meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; <br>
meta-poky&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
meta-yocto-bsp&nbsp;&nbsp;&nbsp; <br>
meta-gfa&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;kr=
ogoth:4376fb851791a1fb514873ad239d516dd7159341&quot;<br>
<br>
NOTE: Preparing RunQueue<br>
NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>
ERROR: perl-5.22.1-r0 do_package: objcopy failed with exit code 256 (cmd wa=
s 'powerpc64-poky-linux-objcopy' --only-keep-debug '/home/anicic/yocto-2.1-=
all/build/ppc64e6500/tmp/work/ppc64e6500-poky-linux/perl/5.22.1-r0/package/=
usr/lib64/perl/ptest/generate_uudmap'
 '/home/anicic/yocto-2.1-all/build/ppc64e6500/tmp/work/ppc64e6500-poky-linu=
x/perl/5.22.1-r0/package/usr/lib64/perl/ptest/.debug/generate_uudmap'):<br>
powerpc64-poky-linux-objcopy: Unable to recognise the format of the input f=
ile `/home/anicic/yocto-2.1-all/build/ppc64e6500/tmp/work/ppc64e6500-poky-l=
inux/perl/5.22.1-r0/package/usr/lib64/perl/ptest/generate_uudmap'<br>
ERROR: perl-5.22.1-r0 do_package: Function failed: split_and_strip_files<br=
>
ERROR: Logfile of failure stored in: /home/anicic/yocto-2.1-all/build/ppc64=
e6500/tmp/work/ppc64e6500-poky-linux/perl/5.22.1-r0/temp/log.do_package.212=
05<br>
ERROR: Task 1691 (/home/anicic/yocto-2.1-all/poky/meta/recipes-devtools/per=
l/perl_5.22.1.bb, do_package) failed with exit code '1'<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
<br>
The problem seems to be that <br>
/home/anicic/yocto-2.1-all/build/ppc64e6500/tmp/work/ppc64e6500-poky-linux/=
perl/5.22.1-r0/package/usr/lib64/perl/ptest/generate_uudmap<br>
is built for host &quot;ELF 64-bit LSB executable, x86-64&quot;<br>
instead of target &quot;64-bit PowerPC or cisco 7500&quot;<br>
<br>
What could it be?<br>
<br>
Damir<br>
<br>
</div>
</body>
</html>

--_000_DB23C91B06C303459B24BC3208AF424A20F4CF40MBX214dethzch_--
