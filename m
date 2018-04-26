Return-Path: <mohamad.noor.alim.hussin@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59D86E00BC3; Thu, 26 Apr 2018 00:26:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73BD5E00B9C
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 00:26:47 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Apr 2018 00:26:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,330,1520924400"; 
	d="scan'208,217";a="219495432"
Received: from pgsmsx101.gar.corp.intel.com ([10.221.44.78])
	by orsmga005.jf.intel.com with ESMTP; 26 Apr 2018 00:26:34 -0700
Received: from pgsmsx107.gar.corp.intel.com ([169.254.7.161]) by
	PGSMSX101.gar.corp.intel.com ([169.254.1.211]) with mapi id
	14.03.0319.002; Thu, 26 Apr 2018 15:26:33 +0800
From: "Hussin, Mohamad Noor Alim" <mohamad.noor.alim.hussin@intel.com>
To: Raymond Yeung <rksyeung@hotmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: PXE Boot NFS not working
Thread-Index: AQHT3RibB3SjOiqCJ0iFNIV79C8ZUKQSpG5A
Date: Thu, 26 Apr 2018 07:26:32 +0000
Message-ID: <A05DCA0C0293664FB237A9C4B0E55E4601515890@PGSMSX107.gar.corp.intel.com>
References: <MWHPR19MB1183FFEEF33178BA3331F6A6C58E0@MWHPR19MB1183.namprd19.prod.outlook.com>
In-Reply-To: <MWHPR19MB1183FFEEF33178BA3331F6A6C58E0@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.200.100
dlp-reaction: no-action
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYTgyNzlhZmItMWU5Yi00ZWY3LWFiOTgtM2NhNDZmNzVjMjllIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJlTG1EV1wvU3hLTzJ1TlkxWkw1ZHFcL0VRdGMyZk1tc0tlXC9PMXRaa0lrNWo4OGNcLzh0WnRCdHNKOU1KT29ubEduKyJ9
x-ctpclassification: CTP_NT
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Subject: Re: PXE Boot NFS not working
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
X-List-Received-Date: Thu, 26 Apr 2018 07:26:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_A05DCA0C0293664FB237A9C4B0E55E4601515890PGSMSX107garcor_"

--_000_A05DCA0C0293664FB237A9C4B0E55E4601515890PGSMSX107garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Refer to my post here https://lists.yoctoproject.org/pipermail/yocto/2018-A=
pril/040860.html

Don't use initramfs/initrd as it not working.


Regards,
Alim Hussin

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Raymond Yeung
Sent: Thursday, April 26, 2018 12:46 PM
To: yocto@yoctoproject.org
Subject: [yocto] PXE Boot NFS not working


I've an Intel Xeon-D board.  I could boot up the board with PXE booting.  H=
owever, this seems to be always looking for "removable media"; if there is =
none, it would hang (in a .sh file).  I want to explore NFS approach.  So f=
ar, I've read up, experimented on NFS setup via pxelinux.cfg/default file. =
 I'm able to manually perform nfs mount from client side, but doing it via =
configuration file doesn't seem to work.



Now, I'm wondering if my bzImage and initrd files are built correct.  Accor=
ding to this article here:



https://wiki.yoctoproject.org/wiki/Poky_NFS_Root



Two requirements must be met.  First one is that the network driver must be=
 built into the kernel rather than being a module.  Second one is to disabl=
e network init script.



Does anyone know how to do the above two items?  What recipe file(s) should=
 I modify?



Thanks,

Raymond

--_000_A05DCA0C0293664FB237A9C4B0E55E4601515890PGSMSX107garcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><a name=3D"_MailEndCompose"><span lang=3D"EN-MY" sty=
le=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F=
497D">Refer to my post here
</span></a><a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2018-A=
pril/040860.html"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-famil=
y:&quot;Calibri&quot;,sans-serif">https://lists.yoctoproject.org/pipermail/=
yocto/2018-April/040860.html</span></a><span lang=3D"EN-MY" style=3D"font-s=
ize:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Don&#8217;t use initra=
mfs/initrd as it not working.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Alim Hussin<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><a name=3D"_____replyseparator"></a><b><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">From:</spa=
n></b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-=
serif"> yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg]
<b>On Behalf Of </b>Raymond Yeung<br>
<b>Sent:</b> Thursday, April 26, 2018 12:46 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] PXE Boot NFS not working<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div id=3D"divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">I=
've an Intel Xeon-D board. &nbsp;I could boot up the board with PXE booting=
. &nbsp;However, this seems to be always looking for &quot;removable media&=
quot;; if there is none, it would hang (in a .sh file). &nbsp;I want
 to explore NFS approach. &nbsp;So far, I've read up, experimented on NFS s=
etup via pxelinux.cfg/default file. &nbsp;I'm able to manually perform nfs =
mount from client side, but doing it via configuration file doesn't seem to=
 work.<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">N=
ow, I'm wondering if my bzImage and initrd files are built correct. &nbsp;A=
ccording to this article here:<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
a href=3D"https://wiki.yoctoproject.org/wiki/Poky_NFS_Root" id=3D"LPlnk2399=
2">https://wiki.yoctoproject.org/wiki/Poky_NFS_Root</a><o:p></o:p></span></=
p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">T=
wo requirements must be met. &nbsp;First one is that the network driver mus=
t be built into the kernel rather than being a module. &nbsp;Second one is =
to disable network init&nbsp;script.<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">D=
oes anyone know how to do the above two items? &nbsp;What recipe file(s) sh=
ould I modify?<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">T=
hanks,<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">R=
aymond<o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_A05DCA0C0293664FB237A9C4B0E55E4601515890PGSMSX107garcor_--
