Return-Path: <Nicholas.Crast@saabsensis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A12BFE0078E; Fri, 12 Sep 2014 10:48:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtpmail.saabsensis.com (smtpmail.saabsensis.com [173.225.55.4])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CF1CE006C5
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 10:48:41 -0700 (PDT)
Received: from [10.92.64.54] (helo=ssa-syr-dimstar4.saabusa.com)
	by smtpmail.saabsensis.com with esmtps (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <Nicholas.Crast@saabsensis.com>)
	id 1XSUxc-0007rB-3N
	for yocto@yoctoproject.org; Fri, 12 Sep 2014 13:48:40 -0400
Received: from corpmail01.corp.sensis.com ([10.93.64.16])
	by ssa-syr-dimstar4.saabusa.com with esmtp (Exim 4.72)
	(envelope-from <Nicholas.Crast@saabsensis.com>) id 1XSUxM-0000kq-0r
	for yocto@yoctoproject.org; Fri, 12 Sep 2014 13:48:24 -0400
Received: from CORPMAIL01.corp.sensis.com ([10.93.64.16]) by
	corpmail01.corp.sensis.com ([10.93.64.16]) with mapi id 14.03.0195.001;
	Fri, 12 Sep 2014 13:48:23 -0400
From: "Crast, Nicholas" <Nicholas.Crast@saabsensis.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Enabling Ramdisk Support
Thread-Index: Ac/Osb+ljgFUGReKT6CzPbZtKFTuHQ==
Date: Fri, 12 Sep 2014 17:48:23 +0000
Message-ID: <36A43B0E1E88D84791516F9D44BC48331B3CC208@corpmail01.corp.sensis.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.93.80.50]
MIME-Version: 1.0
X-Sensis-MailScanner-Information: Scanned at Sensis Corporation by MailScanner
X-Sensis-MailScanner-ID: 1XSUxM-0000kq-0r
X-Sensis-MailScanner: Found to be clean
X-Sensis-MailScanner-SpamCheck: not spam (whitelisted),
	SpamAssassin (not cached, score=-1.822, required 5, BAYES_00 -1.90,
	HTML_MESSAGE 0.00, TW_OC 0.08)
X-Sensis-MailScanner-From: nicholas.crast@saabsensis.com
Subject: Enabling Ramdisk Support
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
X-List-Received-Date: Fri, 12 Sep 2014 17:48:43 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_36A43B0E1E88D84791516F9D44BC48331B3CC208corpmail01corps_"

--_000_36A43B0E1E88D84791516F9D44BC48331B3CC208corpmail01corps_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I am having some issues with initrd using u-boot and yocto. My current .con=
fig file in build/tmp/work/mitysom_5csx-poky-linux-gnueabi/linux-mitysom-5c=
sx/3.12-r2/linux-socfpga-socfpga-3.12-7cb4fc4 has the following settings:

CONFIG_BLK_DEV_INITRD=3Dy
CONFIG_INITRAMFS_SOURCE=3D""
CONFIG_RD_GZIP=3Dy

Whenever I attempt to boot up with an initrd, I get a message saying that t=
he kernel was unable to mount the rootfs. What concerns me, though, is I do=
n't see any RAMDISK initialization messages on startup. Looking online, I f=
igure I should see something like this:

[root]# dmesg | grep RAMDISK
RAMDISK driver initialized: 16 RAM disks of 4096K size 1024 blocksize


When I boot up, or at least some sort of error from RAMDISK. Is there a way=
 I can verify that this option is actually being built into my system?

-Nick

----------------------------------------
Nick Crast
Associate Software Engineer
Saab Sensis Corporation
Phone: 315-445-5703
Email: Nicholas.Crast@saabsensis.com<mailto:Nicholas.Crast@saabsensis.com>


This message is intended only for the addressee and may contain information=
 that is company confidential or privileged. Any technical data in this mes=
sage may be exported only in accordance with the U.S. International Traffic=
 in Arms Regulations (22 CFR Parts 120-130) or the Export Administration Re=
gulations (15 CFR Parts 730-774). Unauthorized use is strictly prohibited a=
nd may be unlawful. If you are not the intended recipient, or the person re=
sponsible for delivering to the intended recipient, you should not read, co=
py, disclose or otherwise use this message. If you have received this email=
 in error, please delete it, and advise the sender immediately.

--_000_36A43B0E1E88D84791516F9D44BC48331B3CC208corpmail01corps_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
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
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
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
<p class=3D"MsoNormal">All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am having some issues with initrd using u-boot and=
 yocto. My current .config file in build/tmp/work/mitysom_5csx-poky-linux-g=
nueabi/linux-mitysom-5csx/3.12-r2/linux-socfpga-socfpga-3.12-7cb4fc4 has th=
e following settings:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">CONFIG_BLK_DEV_INITRD=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal">CONFIG_INITRAMFS_SOURCE=3D&quot;&quot;<o:p></o:p></p=
>
<p class=3D"MsoNormal">CONFIG_RD_GZIP=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Whenever I attempt to boot up with an initrd, I get =
a message saying that the kernel was unable to mount the rootfs. What conce=
rns me, though, is I don&#8217;t see any RAMDISK initialization messages on=
 startup. Looking online, I figure I should
 see something like this:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"mso-element:para-border-div;border:solid windowtext 1.0pt;pad=
ding:6.0pt 6.0pt 6.0pt 6.0pt;background:#E6E6F9">
<p class=3D"MsoNormal" style=3D"background:#E6E6F9;border:none;padding:0in"=
><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:=
black">[root]#
<b>dmesg | grep RAMDISK</b><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#E6E6F9;border:none;padding:0in"=
><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:=
black">RAMDISK driver initialized: 16 RAM disks of 4096K size 1024 blocksiz=
e<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I boot up, or at least some sort of error from =
RAMDISK. Is there a way I can verify that this option is actually being bui=
lt into my system?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-Nick <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">----------------------------------------<o:p></o:p><=
/p>
<p class=3D"MsoNormal">Nick Crast<o:p></o:p></p>
<p class=3D"MsoNormal">Associate Software Engineer<o:p></o:p></p>
<p class=3D"MsoNormal">Saab Sensis Corporation<o:p></o:p></p>
<p class=3D"MsoNormal">Phone: 315-445-5703<o:p></o:p></p>
<p class=3D"MsoNormal">Email: <a href=3D"mailto:Nicholas.Crast@saabsensis.c=
om">Nicholas.Crast@saabsensis.com</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<br>
<i><small>This message is intended only for the addressee and may contain i=
nformation that is company confidential or privileged. Any technical data i=
n this message may be exported only in accordance with the U.S. Internation=
al Traffic in Arms Regulations (22
 CFR Parts 120-130) or the Export Administration Regulations (15 CFR Parts =
730-774). Unauthorized use is strictly prohibited and may be unlawful. If y=
ou are not the intended recipient, or the person responsible for delivering=
 to the intended recipient, you
 should not read, copy, disclose or otherwise use this message. If you have=
 received this email in error, please delete it, and advise the sender imme=
diately.
</i></small>
</body>
</html>

--_000_36A43B0E1E88D84791516F9D44BC48331B3CC208corpmail01corps_--
