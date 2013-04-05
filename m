Return-Path: <cristian.iorga@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69E6EE0148E
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 03:08:40 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 05 Apr 2013 03:08:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,413,1363158000"; 
	d="scan'208,217";a="223175281"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by AZSMGA002.ch.intel.com with ESMTP; 05 Apr 2013 03:08:39 -0700
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Fri, 5 Apr 2013 11:08:12 +0100
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.244]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.245]) with mapi id
	14.01.0355.002; Fri, 5 Apr 2013 11:08:11 +0100
From: "Iorga, Cristian" <cristian.iorga@intel.com>
To: =?iso-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] USB Ethernet problems
Thread-Index: AQHOMd96+F87IaOB8USMtu2CPgSUOZjHZx4g
Date: Fri, 5 Apr 2013 10:08:11 +0000
Message-ID: <969F26A8BAB325438E7EB80D3C3134FB1621F50A@IRSMSX102.ger.corp.intel.com>
References: <CAFyqS9rPxsUqhnNYzCVF4y96DoMDsF2LKV8Xk7ds7Ad3Y+3jYA@mail.gmail.com>
In-Reply-To: <CAFyqS9rPxsUqhnNYzCVF4y96DoMDsF2LKV8Xk7ds7Ad3Y+3jYA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: Re: USB Ethernet problems
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
X-List-Received-Date: Fri, 05 Apr 2013 10:08:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_969F26A8BAB325438E7EB80D3C3134FB1621F50AIRSMSX102gercor_"

--_000_969F26A8BAB325438E7EB80D3C3134FB1621F50AIRSMSX102gercor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

Do you use connman as the network manager?

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Hans Beck=E9rus
Sent: Friday, April 05, 2013 12:08 PM
To: yocto@yoctoproject.org
Subject: [yocto] USB Ethernet problems

Hi. In our configuration we do not have an on-board Ethernet device. It con=
nected to the USB-host adapter.
It seems that probing of such devices are done very late in the kernel boot=
-up which means it gets out of sync with the network init script(s)
and the NIC thus has to be brought up manually after boot.

...
usb 1-1: new high-speed USB device number 2 using xusbps-ehci
hub 1-1:1.0: USB hub found
hub 1-1:1.0: 4 ports detected
VFS: Mounted root (ext2 filesystem) on device 1:0.
devtmpfs: mounted
Freeing init memory: 152K
INIT: version 2.88 booting
usb 1-1.4: new high-speed USB device number 3 using xusbps-ehci
Starting Bootlog daemon: bootlogd: cannot allocate pseudo tty: No such file=
 or directory
bootlogd.
Configuring network interfaces... ifconfig: SIOCGIFFLAGS: No such device
INIT: Entering runlevel: 5
Starting Dropbear SSH server: NET: Registered protocol family 10
dropbear.
Starting syslogd/klogd: done
Stopping Bootlog daemon: bootlogd.
asix 1-1.4:1.0: eth0: register 'asix' at usb-xusbps-ehci.0-1.4, ASIX AX8877=
2 USB 2.0 Ethernet, fc:75:16:cf:6a:86
...

Is there some way to configure a system through Yocto to handle this scenar=
io?

Hans


--_000_969F26A8BAB325438E7EB80D3C3134FB1621F50AIRSMSX102gercor_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hello,<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Do you use connman as the=
 network manager?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Hans Beck=E9rus<br>
<b>Sent:</b> Friday, April 05, 2013 12:08 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] USB Ethernet problems<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Hi. In our configurat=
ion we do not have an on-board Ethernet device. It connected to the USB-hos=
t adapter.<br>
It seems that probing of such devices are done very late in the kernel boot=
-up which means it gets out of sync with the network init script(s)<br>
and the NIC thus has to be brought up manually after boot. <br>
<br>
...<br>
usb 1-1: new high-speed USB device number 2 using xusbps-ehci<br>
hub 1-1:1.0: USB hub found<br>
hub 1-1:1.0: 4 ports detected<br>
VFS: Mounted root (ext2 filesystem) on device 1:0.<br>
devtmpfs: mounted<br>
Freeing init memory: 152K<br>
INIT: version 2.88 booting<br>
usb 1-1.4: new high-speed USB device number 3 using xusbps-ehci<br>
Starting Bootlog daemon: bootlogd: cannot allocate pseudo tty: No such file=
 or directory<br>
bootlogd.<br>
Configuring network interfaces... ifconfig: SIOCGIFFLAGS: No such device<br=
>
INIT: Entering runlevel: 5<br>
Starting Dropbear SSH server: NET: Registered protocol family 10<br>
dropbear.<br>
Starting syslogd/klogd: done<br>
Stopping Bootlog daemon: bootlogd.<br>
asix 1-1.4:1.0: eth0: register 'asix' at usb-xusbps-ehci.0-1.4, ASIX AX8877=
2 USB 2.0 Ethernet, fc:75:16:cf:6a:86<br>
...<br>
<br>
Is there some way to configure a system through Yocto to handle this scenar=
io?<br>
<br>
Hans<br>
<br>
<o:p></o:p></p>
</div>
</body>
</html>

--_000_969F26A8BAB325438E7EB80D3C3134FB1621F50AIRSMSX102gercor_--
