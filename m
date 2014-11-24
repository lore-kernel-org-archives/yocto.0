Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D2C0E0089B; Mon, 24 Nov 2014 01:15:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.13.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Mon, 24 Nov 2014 01:15:43 PST
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B00DE00837
	for <yocto@yoctoproject.org>; Mon, 24 Nov 2014 01:15:43 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AhYFAPj1clSHCzIm/2dsb2JhbABbgkgjIyE0XchcghIdAYNMgycCgR0WAQEBAQEBfIQEAQEDEhteARUVViYBBBsaiB8BqQCEeKAnAQoBAQEekFqCcA9EJIEfBZJolEyOZ4ICIIFbgkCBAwEBAQ
X-IronPort-AV: E=Sophos;i="5.07,447,1413259200"; d="scan'208,217";a="93438784"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by co300216-co-outbound.net.avaya.com with ESMTP;
	24 Nov 2014 04:14:38 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC01.global.avaya.com) ([135.64.58.11])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	24 Nov 2014 04:14:38 -0500
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC01.global.avaya.com ([135.64.58.11]) with mapi id
	14.03.0174.001; Mon, 24 Nov 2014 10:14:37 +0100
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QEMU machine is not reachable from outside network
Thread-Index: AdAHxgfgnDTDY1jYQWCyoHIe2gRK1A==
Date: Mon, 24 Nov 2014 09:14:36 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3083C184@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.45]
MIME-Version: 1.0
Subject: QEMU machine is not reachable from outside network
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
X-List-Received-Date: Mon, 24 Nov 2014 09:15:47 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F38A866CD026F746A3BF0928A84397BE3083C184AZFFEXMB01globa_"

--_000_F38A866CD026F746A3BF0928A84397BE3083C184AZFFEXMB01globa_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I was trying to access QEMU machine from other host (the host from where th=
e machine is not being run). Below is the output of the command 'runqemu qe=
muarm (Primarily a core-image-minimal-dev image) ".

$ runqemu qemuarm

Continuing with the following parameters:
KERNEL: [/home/test/yocto/poky/build/tmp/deploy/images/qemuarm/zImage-qemua=
rm.bin]
ROOTFS: [/home/test/yocto/poky/build/tmp/deploy/images/qemuarm/core-image-m=
inimal-dev-qemuarm-20141124054625.rootfs.ext3]
FSTYPE: [ext3]
Acquiring lockfile for tap0...
Using preconfigured tap device 'tap0'
If this is not intended, touch /tmp/qemu-tap-locks/tap0.skip to make runqem=
u skip tap0.
Running qemu-system-arm...
/home/test/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/qemu-system-a=
rm -kernel /home/test/yocto/poky/build/tmp/deploy/images/qemuarm/zImage-qem=
uarm.bin -net nic,vlan=3D0 -net tap,vlan=3D0,ifname=3Dtap0,script=3Dno,down=
script=3Dno -M versatilepb -hda /home/test/yocto/poky/build/tmp/deploy/imag=
es/qemuarm/core-image-minimal-dev-qemuarm-20141124054625.rootfs.ext3 -no-re=
boot -show-cursor -usb -usbdevice wacom-tablet -no-reboot -m 128 --append "=
root=3D/dev/sda rw console=3DttyAMA0,115200 console=3Dtty ip=3D192.168.7.2:=
:192.168.7.1:255.255.255.0 mem=3D128M highres=3Doff "

Now when I try to ping a host from QEMU host. So for ping 192.168.42.46 I g=
et a proper reply and it work fine. But when I try vice versa I get timeout=
 error as below
ping 192.168.7.2
PING 192.168.7.2 (192.168.7.2) 56(84) bytes of data.
From 192.168.7.1 icmp_seq=3D2 Destination Host Unreachable
From 192.168.7.1 icmp_seq=3D3 Destination Host Unreachable
From 192.168.7.1 icmp_seq=3D4 Destination Host Unreachable

So any thoughts how to fix this issue as need make my QEMU machine to talk =
to external world.

Thanks,
Abhinav

--_000_F38A866CD026F746A3BF0928A84397BE3083C184AZFFEXMB01globa_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I was trying to access QEMU machine from other host =
(the host from where the machine is not being run). Below is the output of =
the command &#8216;runqemu qemuarm (Primarily a core-image-minimal-dev imag=
e) &#8221;.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">$ runqemu qemuarm<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Continuing with the following parameters:<o:p></o:p>=
</p>
<p class=3D"MsoNormal">KERNEL: [/home/test/yocto/poky/build/tmp/deploy/imag=
es/qemuarm/zImage-qemuarm.bin]<o:p></o:p></p>
<p class=3D"MsoNormal">ROOTFS: [/home/test/yocto/poky/build/tmp/deploy/imag=
es/qemuarm/core-image-minimal-dev-qemuarm-20141124054625.rootfs.ext3]<o:p><=
/o:p></p>
<p class=3D"MsoNormal">FSTYPE: [ext3]<o:p></o:p></p>
<p class=3D"MsoNormal">Acquiring lockfile for tap0...<o:p></o:p></p>
<p class=3D"MsoNormal">Using preconfigured tap device 'tap0'<o:p></o:p></p>
<p class=3D"MsoNormal">If this is not intended, touch /tmp/qemu-tap-locks/t=
ap0.skip to make runqemu skip tap0.<o:p></o:p></p>
<p class=3D"MsoNormal">Running qemu-system-arm...<o:p></o:p></p>
<p class=3D"MsoNormal">/home/test/yocto/poky/build/tmp/sysroots/x86_64-linu=
x/usr/bin/qemu-system-arm -kernel /home/test/yocto/poky/build/tmp/deploy/im=
ages/qemuarm/zImage-qemuarm.bin -net nic,vlan=3D0 -net tap,vlan=3D0,ifname=
=3Dtap0,script=3Dno,downscript=3Dno -M versatilepb
 -hda /home/test/yocto/poky/build/tmp/deploy/images/qemuarm/core-image-mini=
mal-dev-qemuarm-20141124054625.rootfs.ext3 -no-reboot -show-cursor -usb -us=
bdevice wacom-tablet -no-reboot -m 128 --append &quot;root=3D/dev/sda rw co=
nsole=3DttyAMA0,115200 console=3Dtty ip=3D192.168.7.2::192.168.7.1:255.255.=
255.0
 mem=3D128M highres=3Doff &quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now when I try to ping a host from QEMU host. So for=
 ping 192.168.42.46 I get a proper reply and it work fine. But when I try v=
ice versa I get timeout error as below<o:p></o:p></p>
<p class=3D"MsoNormal">ping 192.168.7.2<o:p></o:p></p>
<p class=3D"MsoNormal">PING 192.168.7.2 (192.168.7.2) 56(84) bytes of data.=
<o:p></o:p></p>
<p class=3D"MsoNormal">From 192.168.7.1 icmp_seq=3D2 Destination Host Unrea=
chable<o:p></o:p></p>
<p class=3D"MsoNormal">From 192.168.7.1 icmp_seq=3D3 Destination Host Unrea=
chable<o:p></o:p></p>
<p class=3D"MsoNormal">From 192.168.7.1 icmp_seq=3D4 Destination Host Unrea=
chable<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So any thoughts how to fix this issue as need make m=
y QEMU machine to talk to external world.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Abhinav<o:p></o:p></p>
</div>
</body>
</html>

--_000_F38A866CD026F746A3BF0928A84397BE3083C184AZFFEXMB01globa_--
