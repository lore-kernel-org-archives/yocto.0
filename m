Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97BDAE006AD
	for <yocto@yoctoproject.org>; Sun, 17 Mar 2013 11:47:21 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Mar 2013 11:47:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,860,1355126400"; 
	d="scan'208,217";a="280747444"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by orsmga001.jf.intel.com with ESMTP; 17 Mar 2013 11:47:11 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.19]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.244]) with mapi id
	14.01.0355.002; Sun, 17 Mar 2013 18:43:42 +0000
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: Florin Cristian Dan <dan.florincristian@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] burn images to usb problem!!!
Thread-Index: AQHOIp9PVRyN+rUZtkyNWOzibJ5wuJiqN4og
Date: Sun, 17 Mar 2013 18:43:41 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E96167A6142@IRSMSX104.ger.corp.intel.com>
References: <CABzOdpR5QY=ftoHqRhmD4-8d2fnpXm8M9KUwAtohsNCAg+DQfQ@mail.gmail.com>
In-Reply-To: <CABzOdpR5QY=ftoHqRhmD4-8d2fnpXm8M9KUwAtohsNCAg+DQfQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: Re: burn images to usb problem!!!
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
X-List-Received-Date: Sun, 17 Mar 2013 18:47:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E96167A6142IRSMSX104gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E96167A6142IRSMSX104gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Florin,

In the poky folder there is a README.hardware file which contain instructio=
ns on how to write an image to the USB drive.
Here is a section of that file:
"USB Device:
  1. Build a live image. This image type consists of a simple filesystem
     without a partition table, which is suitable for USB keys, and with th=
e
     default setup for the atom-pc machine, this image type is built
     automatically for any image you build. For example:

     $ bitbake core-image-minimal

  2. Use the "dd" utility to write the image to the raw block device. For
     example:

     # dd if=3Dcore-image-minimal-atom-pc.hddimg of=3D/dev/sdb
"
Please make sure you read all the additional information you may need to un=
derstand the steps in building an image for a particular device.
We are glad to have you onboard in the Embedded Linux community.

Regards,
--
Alexandru Georgescu
Yocto QA Engineer

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Florin Cristian Dan
Sent: Sunday, March 17, 2013 01:38
To: yocto@yoctoproject.org
Subject: [yocto] burn images to usb problem!!!

hello,
I'm preety new with linux embedded and especially with Yocyo Project wich b=
y the way i think it's awesome. I managed to build a core-image-sato-quemux=
86, it runs ok within qemu, but now i want to boot this image from a USB me=
mory stick, and i don't know how to do it, and wich files from /build/tmp/d=
eploy/images to use.
I will be greatefull, for an answer, thank you very much

--_000_1FFB62CE8AEB0D4298B51122D8903E96167A6142IRSMSX104gercor_
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"Courrier New";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hello Florin,<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">In the poky folder there =
is a README.hardware file which contain instructions on how to write an ima=
ge to the USB drive.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Here is a section of that=
 file:
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F4=
97D">&#8220;</span><span style=3D"font-size:9.0pt;font-family:&quot;Courrie=
r New&quot;">USB Device:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Courrier New&quot;">&nbsp; 1. Build a live image=
. This image type consists of a simple filesystem<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Courrier New&quot;">&nbsp;&nbsp;&nbsp;&nbsp; wit=
hout a partition table, which is suitable for USB keys, and with the<o:p></=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Courrier New&quot;">&nbsp;&nbsp;&nbsp;&nbsp; def=
ault setup for the atom-pc machine, this image type is built<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Courrier New&quot;">&nbsp;&nbsp;&nbsp;&nbsp; aut=
omatically for any image you build. For example:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Courrier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Courrier New&quot;">&nbsp;&nbsp;&nbsp;&nbsp; $ b=
itbake core-image-minimal<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Courrier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Courrier New&quot;">&nbsp; 2. Use the &quot;dd&q=
uot; utility to write the image to the raw block device. For<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Courrier New&quot;">&nbsp;&nbsp;&nbsp;&nbsp; exa=
mple:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Courrier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Courrier New&quot;">&nbsp;&nbsp;&nbsp;&nbsp; # d=
d if=3Dcore-image-minimal-atom-pc.hddimg of=3D/dev/sdb<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">&#8220;<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Please make sure you read=
 all the additional information you may need to understand the steps in bui=
lding an image for a particular device.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">We are glad to have you o=
nboard in the Embedded Linux community.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Regards,<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">--<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Alexandru Georgescu<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Yocto QA Engineer<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Florin Cristian Dan<br>
<b>Sent:</b> Sunday, March 17, 2013 01:38<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] burn images to usb problem!!!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">hello,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">I'm preety new with linux embedded and especially wi=
th Yocyo Project wich by the way i think it's awesome. I managed to build a=
 core-image-sato-quemux86, it runs ok within qemu, but now i want to boot t=
his image from a USB memory stick,
 and i don't know how to do it, and wich files from /build/tmp/deploy/image=
s to use.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I will be greatefull, for an answer, thank you very =
much<o:p></o:p></p>
</div>
</div>
</body>
</html>

--_000_1FFB62CE8AEB0D4298B51122D8903E96167A6142IRSMSX104gercor_--
