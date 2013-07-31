Return-Path: <B19537@freescale.com>
Received: from db8outboundpool.messaging.microsoft.com
	(mail-db8lp0186.outbound.messaging.microsoft.com [213.199.154.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08752E003F8
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 03:24:52 -0700 (PDT)
Received: from mail7-db8-R.bigfish.com (10.174.8.236) by
	DB8EHSOBE005.bigfish.com (10.174.4.68) with Microsoft SMTP Server id
	14.1.225.22; Wed, 31 Jul 2013 10:24:50 +0000
Received: from mail7-db8 (localhost [127.0.0.1])	by mail7-db8-R.bigfish.com
	(Postfix) with ESMTP id EF1CE1BC0262;
	Wed, 31 Jul 2013 10:24:49 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -3
X-BigFish: VS-3(zz9371Ic85fhfecI1443I14ffIzz1f42h208ch1ee6h1de0h1fdah2073h1202h1e76h1d1ah1d2ah1fc6hzz1d7338h1de098h17326ah18c673h1c8fb4h1de096h8275bh8275dh1de097hz2dh2a8h668h839h8e2h8e3hd25hf0ah1288h12a5h12bdh137ah1441h1504h1537h153bh15d0h162dh1631h1758h18e1h1946h19b5h1ad9h1b0ah1b2fh1bceh1fb3h1d0ch1d2eh1d3fh1dfeh1dffh1e1dhbe9i1155h)
Received: from mail7-db8 (localhost.localdomain [127.0.0.1]) by mail7-db8
	(MessageSwitch) id 1375266287561914_31751;
	Wed, 31 Jul 2013 10:24:47 +0000 (UTC)
Received: from DB8EHSMHS010.bigfish.com (unknown [10.174.8.234])	by
	mail7-db8.bigfish.com (Postfix) with ESMTP id 85151580049;
	Wed, 31 Jul 2013 10:24:47 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB8EHSMHS010.bigfish.com
	(10.174.4.20) with Microsoft SMTP Server (TLS) id 14.16.227.3;
	Wed, 31 Jul 2013 10:24:45 +0000
Received: from 039-SN2MPN1-021.039d.mgd.msft.net ([169.254.1.43]) by
	039-SN1MMR1-004.039d.mgd.msft.net ([::1]) with mapi id 14.03.0136.001;
	Wed, 31 Jul 2013 10:24:43 +0000
From: Luo Zhenhua-B19537 <B19537@freescale.com>
To: Aman Sharma <amansh.sharma5@gmail.com>
Thread-Topic: [yocto] Integrate java with yocto
Thread-Index: AQHOjdUl/6Jx4uNimUaYMmD9o9T2Vpl+kkwg
Date: Wed, 31 Jul 2013 10:24:43 +0000
Message-ID: <CA452391058F6D4E9715FB2C29D9312A016522AF@039-SN2MPN1-021.039d.mgd.msft.net>
References: <CAPMH7--cJ6ZOM_s3EzbQjBYCrYn90sAMSEvTLaDMuHmx+LapKQ@mail.gmail.com>
In-Reply-To: <CAPMH7--cJ6ZOM_s3EzbQjBYCrYn90sAMSEvTLaDMuHmx+LapKQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.208.134]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Integrate java with yocto
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
X-List-Received-Date: Wed, 31 Jul 2013 10:24:55 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CA452391058F6D4E9715FB2C29D9312A016522AF039SN2MPN102103_"

--_000_CA452391058F6D4E9715FB2C29D9312A016522AF039SN2MPN102103_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Aman,

Following is the procedure.

1.       Edit conf/bblayers to append meta-java in BBLAYERS

2.       Add IMAGE_INSTALL_append =3D " jre-related-pkg-list" in local.conf=
 or your image bb file

3.       Build the rootfs image

Since the build of meta-jave is not verified with FSL toolchain, I am not s=
ure if the jre build can finish correctly.


Best Regards,

Zhenhua

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Aman Sharma
Sent: Wednesday, July 31, 2013 6:02 PM
To: yocto@yoctoproject.org
Subject: [yocto] Integrate java with yocto

Hi All,

I am new in Yocto,i  need to port Java based application on Freescale based=
 powerpc embedded board.I am using Yocto  and Freescale SDK to build the im=
age.

Currently i am trying to include meta-java in yocto directory and trying to=
 build image. Can any one please guide me how to proceed in this content.
What is the way to include JRE on embedded board using Yocto.

Thanks in advance for your help.

--
Regards
Aman


--_000_CA452391058F6D4E9715FB2C29D9312A016522AF039SN2MPN102103_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:m=3D"http://schema=
s.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html=
40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:282855088;
	mso-list-type:hybrid;
	mso-list-template-ids:1365960478 67698703 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1
	{mso-list-id:1393119547;
	mso-list-type:hybrid;
	mso-list-template-ids:-1970880350 67698703 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.25in;
	text-indent:-.25in;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Aman,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Following is the procedur=
e.
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.25in;text-indent:-.25in=
;mso-list:l1 level1 lfo1">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span style=3D"mso-list:Ign=
ore">1.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Edit conf/bblayer=
s to append meta-java in BBLAYERS<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.25in;text-indent:-.25in=
;mso-list:l1 level1 lfo1">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span style=3D"mso-list:Ign=
ore">2.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Add IMAGE_INSTALL=
_append =3D &#8220; jre-related-pkg-list&#8221; in local.conf or your image=
 bb file<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.25in;text-indent:-.25in=
;mso-list:l1 level1 lfo1">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span style=3D"mso-list:Ign=
ore">3.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Build the rootfs =
image<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Since the build of meta-j=
ave is not verified with FSL toolchain, I am not sure if the jre build can =
finish correctly.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Best Regards,<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Zhenhua<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Aman Sharma<br>
<b>Sent:</b> Wednesday, July 31, 2013 6:02 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Integrate java with yocto<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi All,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I am new in Yocto,i &nbsp;need to port Java based ap=
plication on Freescale based powerpc embedded board.I am using Yocto &nbsp;=
and Freescale SDK to build the image.&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Currently i am trying to include meta-java in yocto =
directory and trying to build image. Can any one please guide me how to pro=
ceed in this content.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">What is the way to include JRE on embedded board usi=
ng Yocto.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks in advance for your help.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">--<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Regards<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Aman<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_CA452391058F6D4E9715FB2C29D9312A016522AF039SN2MPN102103_--
