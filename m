Return-Path: <lcook@ball.com>
Received: from p02c12o145.mxlogic.net (p02c12o145.mxlogic.net [208.65.145.78])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14CCFE0044A
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 14:00:28 -0700 (PDT)
Received: from unknown [162.18.172.11] (EHLO AEROMSG2.AERO.BALL.COM)
	by p02c12o145.mxlogic.net(mxl_mta-6.14.0-1)
	with ESMTP id be424205.0.46360.00-294.115536.p02c12o145.mxlogic.net
	(envelope-from <lcook@ball.com>); 
	Thu, 09 Aug 2012 15:00:28 -0600 (MDT)
X-MXL-Hash: 502424ec40d5fbdb-06556346d775a53a5dc7c1594aad40b0edd701d6
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Thu, 9 Aug 2012 15:00:26 -0600
Message-ID: <3589A542D6E8C7439E385560EFF67FA317094AD9@AEROMSG2.AERO.BALL.COM>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Do the latest pre-built binaries for QEMU PPC work?
Thread-Index: Ac12cgBObQnMAZe/QHKHenT4oaUudw==
From: "Cook, Layne" <lcook@ball.com>
To: <yocto@yoctoproject.org>
X-Processed-By: Rebuild v2.0-0
X-Spam: [F=0.2000000000; CM=0.500; S=0.200(2010122901)]
X-MAIL-FROM: <lcook@ball.com>
X-SOURCE-IP: [162.18.172.11]
X-AnalysisOut: [v=2.0 cv=M4b63VMs c=1 sm=0 a=Yrwd2Gnlmr4keewI0vvgRw==:17 a]
X-AnalysisOut: [=8u3tT1Tug-UA:10 a=IYrdUoLRWNgA:10 a=BLceEmwcHowA:10 a=zNd]
X-AnalysisOut: [txqrCAAAA:8 a=NY6CiwoHdryRIigTLHIA:9 a=CjuIK1q_8ugA:10 a=y]
X-AnalysisOut: [MhMjlubAAAA:8 a=SSmOFEACAAAA:8 a=gKO2Hq4RSVkA:10 a=UiCQ7L4]
X-AnalysisOut: [-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10]
Subject: Do the latest pre-built binaries for QEMU PPC work?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 09 Aug 2012 21:00:28 -0000
Content-class: urn:content-classes:message
Content-Type: multipart/alternative;
	boundary="=_reb-r3DFACC89-t502424EC"

--=_reb-r3DFACC89-t502424EC
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm trying to run what I think are the latest pre-built binaries for
qemuppc:

=20

kernel: vmlinux-qemuppc.bin

filesystem: core-image-minimal-qemuppc.ext3

=20

but I get the following result:

=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Screen capture start =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

lcook@itsloan200-lt:/opt/poky/1.2.1$ source
environment-setup-ppc603e-poky-linux

lcook@itsloan200-lt:/opt/poky/1.2.1$ runqemu qemuppc
~/Downloads/vmlinux-qemuppc.bin
~/Downloads/core-image-minimal-qemuppc.ext3 ext3

=20

Continuing with the following parameters:

KERNEL: [/home/lcook/Downloads/vmlinux-qemuppc.bin]

ROOTFS: [/home/lcook/Downloads/core-image-minimal-qemuppc.ext3]

FSTYPE: [ext3]

Setting up tap interface under sudo

Acquiring lockfile for tap0...

WARNING: distccd not present, no distcc support loaded.

WARNING: nVidia proprietary OpenGL libraries detected.

nVidia's OpenGL libraries are known to have compatibility issues with
qemu,

resulting in a segfault. Please uninstall these drivers or ensure the
mesa libGL

libraries precede nvidia's via LD_PRELOAD(Already do it on Ubuntu 10).

Running qemu-system-ppc...

/opt/poky/1.2.1/sysroots/i686-pokysdk-linux/usr/bin/qemu-system-ppc
-kernel /home/lcook/Downloads/vmlinux-qemuppc.bin -net nic,model=3Dpcnet
-net tap,vlan=3D0,ifname=3Dtap0,script=3Dno,downscript=3Dno -cpu G4 -M mac99
-hda /home/lcook/Downloads/core-image-minimal-qemuppc.ext3 -no-reboot
-show-cursor -usb -usbdevice wacom-tablet -no-reboot -m 128 --append
"root=3D/dev/hda rw console=3DttyS0 console=3Dtty
ip=3D192.168.7.2::192.168.7.1:255.255.255.0 mem=3D128M "

/opt/poky/1.2.1/sysroots/i686-pokysdk-linux/usr/bin/qemu-system-ppc:
error while loading shared libraries: libXext.so.6: cannot open shared
object file: No such file or directory

Set 'tap0' nonpersistent

Releasing lockfile of preconfigured tap device 'tap0'

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Screen capture end  =3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

=20

I am running on Ubuntu 11.04 (x86_64), and following the instructions in
the yocto project quick start for using pre-built binaries and QEMU. I
have libXext.so.6 installed, and I think the OpenGL warning isn't
causing this. Has anyone else successfully done this with the pre-built
binaries? I saw a thread from 2010 where it worked with different
binaries, but I can't find those files anymore.

=20

LC




This message and any enclosures are intended only for the addressee.  Pleas=
e=20

notify the sender by email if you are not the intended recipient.  If you a=
re=20

not the intended recipient, you may not use, copy, disclose, or distribute =
this=20

message or its contents or enclosures to any other person and any such acti=
ons=20

may be unlawful.  Ball reserves the right to monitor and review all message=
s=20

and enclosures sent to or from this email address.

--=_reb-r3DFACC89-t502424EC
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:"Malgun Gothic";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@Malgun Gothic";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DWordSection1>

<p class=3DMsoNormal>I&#8217;m trying to run what I think are the latest
pre-built binaries for qemuppc:<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>kernel: vmlinux-qemuppc.bin<o:p></o:p></p>

<p class=3DMsoNormal>filesystem: core-image-minimal-qemuppc.ext3<o:p></o:p>=
</p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>but I get the following result:<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Sc=
reen capture start
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<o:p></o:p></p>

<p class=3DMsoNormal>lcook@itsloan200-lt:/opt/poky/1.2.1$ source
environment-setup-ppc603e-poky-linux<o:p></o:p></p>

<p class=3DMsoNormal>lcook@itsloan200-lt:/opt/poky/1.2.1$ runqemu qemuppc
~/Downloads/vmlinux-qemuppc.bin ~/Downloads/core-image-minimal-qemuppc.ext3
ext3<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Continuing with the following parameters:<o:p></o:p></=
p>

<p class=3DMsoNormal>KERNEL: [/home/lcook/Downloads/vmlinux-qemuppc.bin]<o:=
p></o:p></p>

<p class=3DMsoNormal>ROOTFS: [/home/lcook/Downloads/core-image-minimal-qemu=
ppc.ext3]<o:p></o:p></p>

<p class=3DMsoNormal>FSTYPE: [ext3]<o:p></o:p></p>

<p class=3DMsoNormal>Setting up tap interface under sudo<o:p></o:p></p>

<p class=3DMsoNormal>Acquiring lockfile for tap0...<o:p></o:p></p>

<p class=3DMsoNormal>WARNING: distccd not present, no distcc support loaded=
.<o:p></o:p></p>

<p class=3DMsoNormal>WARNING: nVidia proprietary OpenGL libraries detected.=
<o:p></o:p></p>

<p class=3DMsoNormal>nVidia's OpenGL libraries are known to have compatibil=
ity
issues with qemu,<o:p></o:p></p>

<p class=3DMsoNormal>resulting in a segfault. Please uninstall these driver=
s or
ensure the mesa libGL<o:p></o:p></p>

<p class=3DMsoNormal>libraries precede nvidia's via LD_PRELOAD(Already do i=
t on
Ubuntu 10).<o:p></o:p></p>

<p class=3DMsoNormal>Running qemu-system-ppc...<o:p></o:p></p>

<p class=3DMsoNormal>/opt/poky/1.2.1/sysroots/i686-pokysdk-linux/usr/bin/qe=
mu-system-ppc
-kernel /home/lcook/Downloads/vmlinux-qemuppc.bin -net nic,model=3Dpcnet -n=
et
tap,vlan=3D0,ifname=3Dtap0,script=3Dno,downscript=3Dno -cpu G4 -M mac99 -hda
/home/lcook/Downloads/core-image-minimal-qemuppc.ext3 -no-reboot -show-curs=
or
-usb -usbdevice wacom-tablet -no-reboot -m 128 --append &quot;root=3D/dev/h=
da rw
console=3DttyS0 console=3Dtty ip=3D192.168.7.2::192.168.7.1:255.255.255.0 m=
em=3D128M
&quot;<o:p></o:p></p>

<p class=3DMsoNormal>/opt/poky/1.2.1/sysroots/i686-pokysdk-linux/usr/bin/qe=
mu-system-ppc:
error while loading shared libraries: libXext.so.6: cannot open shared obje=
ct
file: No such file or directory<o:p></o:p></p>

<p class=3DMsoNormal>Set 'tap0' nonpersistent<o:p></o:p></p>

<p class=3DMsoNormal>Releasing lockfile of preconfigured tap device 'tap0'<=
o:p></o:p></p>

<p class=3DMsoNormal>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Sc=
reen capture end &nbsp;=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>I am running on Ubuntu 11.04 (x86_64), and following t=
he
instructions in the yocto project quick start for using pre-built binaries =
and
QEMU. I have libXext.so.6 installed, and I think the OpenGL warning isn&#82=
17;t
causing this. Has anyone else successfully done this with the pre-built
binaries? I saw a thread from 2010 where it worked with different binaries,=
 but
I can&#8217;t find those files anymore.<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>LC<o:p></o:p></p>

</div>

</body>

</html>


<pre>

This message and any enclosures are intended only for the addressee.  Pleas=
e=20

notify the sender by email if you are not the intended recipient.  If you a=
re=20

not the intended recipient, you may not use, copy, disclose, or distribute =
this=20

message or its contents or enclosures to any other person and any such acti=
ons=20

may be unlawful.  Ball reserves the right to monitor and review all message=
s=20

and enclosures sent to or from this email address.</pre>

--=_reb-r3DFACC89-t502424EC--
