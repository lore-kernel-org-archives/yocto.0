Return-Path: <ERIC.T.SKULLERUD@leidos.com>
Received: from smtpout201.leidos.com (smtpout201.leidos.com [149.8.148.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84CF0E016D8
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 11:18:31 -0800 (PST)
Received: from dc01p-em-sbg03.saic.com ([149.8.144.232] [149.8.144.232]) by
	emp-cpmx2.dcs.leidos.com with ESMTP id BT-MMP-3810873 for
	yocto@yoctoproject.org; Mon, 4 Nov 2013 13:18:25 -0600
X-AuditID: 0a10b422-b7f246d000001be1-69-5277f30182b8
Received: from 0599-its-exbh01.us.saic.com (Unknown_Domain [139.121.144.120])
	by dc01p-em-sbg03.saic.com (Symantec Messaging Gateway) with SMTP id
	4A.96.07137.103F7725; Mon,  4 Nov 2013 13:18:25 -0600 (CST)
Received: from 0461-its-exmb01.us.saic.com ([10.8.67.21]) by
	0599-its-exbh01.us.saic.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Mon, 4 Nov 2013 11:19:43 -0800
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Mon, 4 Nov 2013 11:18:05 -0800
Message-Id: <307379D59B652E4BB777329A19EB96D802D626D8@0461-its-exmb01.us.saic.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Running QEMU on Fedora14 guest OS running on VMPlayer,
	on Win7 host
Thread-Index: Ac7Zj9OdvGwOxlM9TDi/GIqmTtXLdw==
From: "Skullerud, Eric T." <ERIC.T.SKULLERUD@leidos.com>
To: <yocto@yoctoproject.org>
X-OriginalArrivalTime: 04 Nov 2013 19:19:43.0303 (UTC)
	FILETIME=[D0DEAD70:01CED992]
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrJIsWRmVeSWpSXmKPExsXSXTmhQpfxc3mQQdN0NYtJL9ewOTB6tJ/o
	YwtgjFKxKcovLUlVyMgvLrFVKs4tKdDLSc1MyS/WS87PtTIyNTJV0rdLUMn48nYLS8Fsk4qn
	T+4yNzDu1+1i5OSQEDCRmLN+MiuELSZx4d56ti5GLg4hgQuMEusmX2SFcBYySky+eRmqSk9i
	2eIpLCA2s4CWxJFLTYwgNq+AoMTJmU+g4uES32aeZAOxhQV8JJoeTQKLswioSFx8so8Voj5I
	YmfDOxaImYISi2bvYYa54t+uh2C9IgKBEl8u7GeGsPUkri/dDbaLTcBCYvXtqUwQcRmJ41dn
	g80REtCQWHx8PRPEnGCJFxe2sUxgFJ6F5NRZSE6dheTUWYwcQLaeRNtGRoiwtsSyha+ZIWxd
	if/P5zAjiy9gZF/FKJ6SbGBYoJuaq1uclG5grFecmJkMCvNNjMAY4xLYorSDcdsK80OMAhyM
	Sjy8ky6VBwmxJpYVV+YeYpTgYFYS4X11DyjEm5JYWZValB9fVJqTWnyIsQoYTBOZpUST84Hx
	n1cSb2hsbmBkYWJpZGhuaE4VYSVxXqu4oiAhgfTEktTs1NSC1CKY5UwcnFINjDyvimz+nyyK
	8/mh/d+xlP918DvxylYda0uzn5++T7F/ttdk8hKLVT1px6v6F+5/N22i38lTm15xT5Rj2eB3
	/duMdG1Tse/hcULPduwTCi5wSe7MUCpaxnVlb9u6ind7m9jv6CYqNC3Z3jQ1MD/mT2psutuy
	9OuWHjMv/Jxu7Fi9nXlKJGtzlBJLcUaioRZzUXEiAA16pkwMAwAA
X-Mailman-Approved-At: Mon, 04 Nov 2013 11:47:16 -0800
Subject: Running QEMU on Fedora14 guest OS running on VMPlayer, on Win7 host
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
X-List-Received-Date: Mon, 04 Nov 2013 19:18:34 -0000
Content-class: urn:content-classes:message
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CED992.D0A0ADF4"

------_=_NextPart_001_01CED992.D0A0ADF4
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

HI,

=20

I've been trying to get QEMUx86 running inside a Fedora14 guest OS
running on VMPlayer.=20

=20

After executing the QEMU startup (using the target OS example provided
by Intel), in the bash console where I enter the start up command,
messages appear that include:

=20

Cannot register service : RPC: Unable to receive; errono =3D Connection
Refused (this repeats maybe 6x's).=20

On your target, please remember to add the following options for NFS

Nfsroot-IP_ADDRESS:/home/eric/yocto/file_system, nfsvers=3D2,
mountprog=3D21111, nfsprog=3D11111, udp

WARNING: distcc not present, no distcc support loaded.

Running qemu...

/opt/poky/1.2/sysroots/i686-pokysdk-linux/usr/bin/qemu -kernel
./bzImage-qemux86.bin -net nix, vlan=3D0, -net tap, vlan=3D0,
ifname-tap0,script=3Dno,downscript=3Dno, -show -curser -usb -usbdevice
wacom-tablet -vga vmware -enable-gl -no-reboot -m 128 -append
"root=3D/dev/nfs
nfsroot=3D192.208.6.1:./file_system,nfsvers-2,mountprog=3D21111,nfsprog=3D=
1111
1,udp,port=3D3049,mountport-3048 rw ip=3D192.208.6.2::
192.208.6.1:255.255.255.0 mem=3D128M oprofile.timer=3D1 "

Enabling opengl

=20

After that last line, VMPlayer hangs and have to repower.=20

=20

In parallel with the bash output above, a new window opens (QEMU - Press
Ctrl-Alt to exit...) and displays a bunch of messages that fly off the
top of the display faster than I can read. When the thing finally hands,
the last few lines in that window are:

md: autorun ...

md: ...autorun done

usb 1-1: new full-speed usbe device number 2 using uhci_hcd

input: Wacom Penpartner as
/devices/pci0000:00:01.2/usb1/1-1/1-1:1.0/input/input3

=20

QUESTION: Am I wondering down the wrong path here - is it even possible
to run qemu within a guest linux running on VMPlayer???

=20

Thank you.


------_=_NextPart_001_01CED992.D0A0ADF4
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 14 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
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
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal> =
HI,<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>I&#8217;ve been trying to get QEMUx86 running inside a =
Fedora14 guest OS running on VMPlayer. <o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>After =
executing the QEMU startup (using the target OS example provided by =
Intel), in the bash console where I enter the start up command, messages =
appear that include:<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Cannot =
register service : RPC: Unable to receive; errono =3D Connection Refused =
(this repeats maybe 6x&#8217;s). <o:p></o:p></p><p class=3DMsoNormal>On =
your target, please remember to add the following options for =
NFS<o:p></o:p></p><p class=3DMsoNormal> =
Nfsroot-IP_ADDRESS:/home/eric/yocto/file_system, nfsvers=3D2, =
mountprog=3D21111, nfsprog=3D11111, udp<o:p></o:p></p><p =
class=3DMsoNormal>WARNING: distcc not present, no distcc support =
loaded.<o:p></o:p></p><p class=3DMsoNormal>Running =
qemu&#8230;<o:p></o:p></p><p =
class=3DMsoNormal>/opt/poky/1.2/sysroots/i686-pokysdk-linux/usr/bin/qemu =
&#8211;kernel ./bzImage-qemux86.bin &#8211;net nix, vlan=3D0, -net tap, =
vlan=3D0, ifname-tap0,script=3Dno,downscript=3Dno, -show &#8211;curser =
&#8211;usb &#8211;usbdevice wacom-tablet &#8211;vga vmware =
&#8211;enable-gl &#8211;no-reboot &#8211;m 128 &#8211;append =
&#8220;root=3D/dev/nfs =
nfsroot=3D192.208.6.1:./file_system,nfsvers-2,mountprog=3D21111,nfsprog=3D=
11111,udp,port=3D3049,mountport-3048 rw ip=3D192.208.6.2:: =
192.208.6.1:255.255.255.0 mem=3D128M oprofile.timer=3D1 =
&#8220;<o:p></o:p></p><p class=3DMsoNormal>Enabling =
opengl<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>After that last line, VMPlayer hangs and have to =
repower. <o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>In parallel with the bash output above, a new window =
opens (QEMU &#8211; Press Ctrl-Alt to exit&#8230;) and displays a bunch =
of messages that fly off the top of the display faster than I can read. =
When the thing finally hands, the last few lines in that window =
are:<o:p></o:p></p><p class=3DMsoNormal>md: autorun =
&#8230;<o:p></o:p></p><p class=3DMsoNormal>md: &#8230;autorun =
done<o:p></o:p></p><p class=3DMsoNormal>usb 1-1: new full-speed usbe =
device number 2 using uhci_hcd<o:p></o:p></p><p class=3DMsoNormal>input: =
Wacom Penpartner as =
/devices/pci0000:00:01.2/usb1/1-1/1-1:1.0/input/input3<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>QUESTION: Am =
I wondering down the wrong path here &#8211; is it even possible to run =
qemu within a guest linux running on VMPlayer???<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Thank =
you.<o:p></o:p></p></div></body></html>

------_=_NextPart_001_01CED992.D0A0ADF4--
