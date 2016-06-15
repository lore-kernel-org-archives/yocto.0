Return-Path: <damir.anicic@psi.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FD20E00C8B; Wed, 15 Jun 2016 01:30:25 -0700 (PDT)
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
X-Greylist: delayed 187 seconds by postgrey-1.32 at yocto-www;
	Wed, 15 Jun 2016 01:30:21 PDT
Received: from edge20.ethz.ch (edge20.ethz.ch [82.130.99.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5D48E00C7D
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 01:30:21 -0700 (PDT)
Received: from CAS12.d.ethz.ch (172.31.38.212) by edge20.ethz.ch
	(82.130.99.26) with Microsoft SMTP Server (TLS) id 14.3.266.1;
	Wed, 15 Jun 2016 10:27:09 +0200
Received: from MBX114.d.ethz.ch ([fe80::4875:1a61:8b1c:148]) by
	CAS12.d.ethz.ch ([fe80::7861:4ecb:7c42:cad4%10]) with mapi id
	14.03.0266.001; Wed, 15 Jun 2016 10:27:12 +0200
From: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 2.1 powerpc64 e6500 - postinstall intercept hook problems
Thread-Index: AdHG3YmZmye/wfM7QHi/1yJMuZDFRg==
Date: Wed, 15 Jun 2016 08:27:10 +0000
Message-ID: <DB23C91B06C303459B24BC3208AF424A20F40A94@MBX114.d.ethz.ch>
Accept-Language: en-US, de-DE, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [129.129.145.249]
MIME-Version: 1.0
Subject: Yocto 2.1 powerpc64 e6500 - postinstall intercept hook problems
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
X-List-Received-Date: Wed, 15 Jun 2016 08:30:25 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB23C91B06C303459B24BC3208AF424A20F40A94MBX114dethzch_"

--_000_DB23C91B06C303459B24BC3208AF424A20F40A94MBX114dethzch_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi !

I am trying to build Yocto 2.1 for PowerPC64, e6500 CPU.

I managed to build, with warnings that some steps will be postponed to firs=
t boot,
but if I add "read-only-rootfs" then warnings change to errors.

The problem seems to be missing qemu-ppc64, see down "exit code: 127".
qemu-* executables ( tmp/sysroots/x86_64-linux/usr/bin/qemu-* ) are built, =
but qemu-ppc64 is missing.

If I build qemu-ppc64 (qemu 2.6) myself (install it to /usr/local/bin which=
 is in PATH),
then I get "Invalid instruction" from my qemu-ppc64.


My build (core-image-psi-gfa-cmd is basically core-image-full-cmdline ):

  Build Configuration:
  BB_VERSION        =3D "1.30.0"
  BUILD_SYS         =3D "x86_64-linux"
  NATIVELSBSTRING   =3D "ScientificLinux-6.4"
  TARGET_SYS        =3D "powerpc64-poky-linux"
  MACHINE           =3D "powerpc64-ppc64e6500"
  DISTRO            =3D "gfa-ppc64e6500"
  DISTRO_VERSION    =3D "2.1"
  TUNE_FEATURES     =3D "m64 fpu-hard e6500 altivec"
  TARGET_FPU        =3D ""
  meta
  meta-poky
  meta-yocto-bsp
  meta-gfa          =3D "krogoth-gfa-v2:898a78357e72fb80f1f8e26ba90bad5b7b0=
54a4f"

  NOTE: Preparing RunQueue
  NOTE: Executing SetScene Tasks
  NOTE: Executing RunQueue Tasks
  WARNING: core-image-psi-gfa-cmd-1.0-r0 do_rootfs: The postinstall interce=
pt hook 'update_gio_module_cache' failed (exit code: 127)! See log for deta=
ils!
  WARNING: core-image-psi-gfa-cmd-1.0-r0 do_rootfs: The postinstalls for th=
e following packages will be postponed for first boot: libglib-2.0-0
  WARNING: core-image-psi-gfa-cmd-1.0-r0 do_rootfs: [log_check] core-image-=
psi-gfa-cmd: found a warning message in the logfile (keyword 'WARNING:'):
  [log_check] WARNING: The postinstall intercept hook 'update_gio_module_ca=
che' failed (exit code: 127)! See log for details!

  WARNING: core-image-psi-gfa-cmd-1.0-r0 do_rootfs: [log_check] core-image-=
psi-gfa-cmd: found a warning message in the logfile (keyword 'WARNING:'):
  [log_check] WARNING: The postinstalls for the following packages will be =
postponed for first boot: libglib-2


If I build core-image-psi-gfa-cmd ( which is basicaly core-image-lsb-sdk ),
then there are few more postinstall problems, too:
  The postinstalls for the following packages will be postponed for first b=
oot:
                 libgdk-pixbuf-2.0-loader-ico libgdk-pixbuf-2.0-loader-bmp =
libgdk-pixbuf-2.0-loader-jpeg
                 libgdk-pixbuf-2.0-loader-png   libgdk-pixbuf-2.0-loader-gi=
f libgdk-pixbuf-2.0-loader-xpm libgdk-pixbuf-2.0-loader-ani

all with the same qemu-ppc64 problem.


I have additionally eudev postinstall problem (generating hwdb.bin) -probab=
ly also qemu related


Please help.

Kind regards,

Damir



--_000_DB23C91B06C303459B24BC3208AF424A20F40A94MBX114dethzch_
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
10pt;">Hi !<br>
<br>
I am trying to build Yocto 2.1 for PowerPC64, e6500 CPU.<br>
<br>
I managed to build, with warnings that some steps will be postponed to firs=
t boot,<br>
but if I add &quot;read-only-rootfs&quot; then warnings change to errors.<b=
r>
<br>
The problem seems to be missing qemu-ppc64, see down &quot;exit code: 127&q=
uot;. <br>
qemu-* executables ( tmp/sysroots/x86_64-linux/usr/bin/qemu-* ) are built, =
but qemu-ppc64 is missing.<br>
<br>
If I build qemu-ppc64 (qemu 2.6) myself (install it to /usr/local/bin which=
 is in PATH),<br>
then I get &quot;Invalid instruction&quot; from my qemu-ppc64.<br>
<br>
<br>
My build (core-image-psi-gfa-cmd is basically core-image-full-cmdline ):<br=
>
<br>
&nbsp; Build Configuration: <br>
&nbsp; BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;1.30.=
0&quot;<br>
&nbsp; BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;=
x86_64-linux&quot;<br>
&nbsp; NATIVELSBSTRING&nbsp;&nbsp; =3D &quot;ScientificLinux-6.4&quot;<br>
&nbsp; TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;power=
pc64-poky-linux&quot;<br>
&nbsp; MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;powerpc64-ppc64e6500&quot;<br>
&nbsp; DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; =3D &quot;gfa-ppc64e6500&quot;<br>
&nbsp; DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D &quot;2.1&quot;<br>
&nbsp; TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;m64 fpu-hard e6500 a=
ltivec&quot;<br>
&nbsp; TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;&quot=
;<br>
&nbsp; meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; <br>
&nbsp; meta-poky&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
&nbsp; meta-yocto-bsp&nbsp;&nbsp;&nbsp; <br>
&nbsp; meta-gfa&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &=
quot;krogoth-gfa-v2:898a78357e72fb80f1f8e26ba90bad5b7b054a4f&quot;<br>
<br>
&nbsp; NOTE: Preparing RunQueue<br>
&nbsp; NOTE: Executing SetScene Tasks<br>
&nbsp; NOTE: Executing RunQueue Tasks<br>
&nbsp; WARNING: core-image-psi-gfa-cmd-1.0-r0 do_rootfs: The postinstall in=
tercept hook 'update_gio_module_cache' failed (exit code: 127)! See log for=
 details!<br>
&nbsp; WARNING: core-image-psi-gfa-cmd-1.0-r0 do_rootfs: The postinstalls f=
or the following packages will be postponed for first boot: libglib-2.0-0<b=
r>
&nbsp; WARNING: core-image-psi-gfa-cmd-1.0-r0 do_rootfs: [log_check] core-i=
mage-psi-gfa-cmd: found a warning message in the logfile (keyword 'WARNING:=
'):<br>
&nbsp; [log_check] WARNING: The postinstall intercept hook 'update_gio_modu=
le_cache' failed (exit code: 127)! See log for details!<br>
<br>
&nbsp; WARNING: core-image-psi-gfa-cmd-1.0-r0 do_rootfs: [log_check] core-i=
mage-psi-gfa-cmd: found a warning message in the logfile (keyword 'WARNING:=
'):<br>
&nbsp; [log_check] WARNING: The postinstalls for the following packages wil=
l be postponed for first boot: libglib-2<br>
<br>
<br>
If I build core-image-psi-gfa-cmd ( which is basicaly core-image-lsb-sdk ),=
<br>
then there are few more postinstall problems, too:<br>
&nbsp; The postinstalls for the following packages will be postponed for fi=
rst boot:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; libgdk-pixbuf-2.0-loader-ico libgdk-pixbuf-2.0-loader=
-bmp libgdk-pixbuf-2.0-loader-jpeg<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; libgdk-pixbuf-2.0-loader-png&nbsp;&nbsp; libgdk-pixbu=
f-2.0-loader-gif libgdk-pixbuf-2.0-loader-xpm libgdk-pixbuf-2.0-loader-ani<=
br>
<br>
all with the same qemu-ppc64 problem.<br>
<br>
<br>
I have additionally eudev postinstall problem (generating hwdb.bin) -probab=
ly also qemu related<br>
<br>
<br>
Please help.<br>
<br>
Kind regards,<br>
<br>
Damir<br>
<br>
<br>
</div>
</body>
</html>

--_000_DB23C91B06C303459B24BC3208AF424A20F40A94MBX114dethzch_--
