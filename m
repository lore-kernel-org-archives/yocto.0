Return-Path: <Nicholas.Crast@saabsensis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27CEEE007C0; Mon, 27 Oct 2014 11:04:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0034]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 2282 seconds by postgrey-1.32 at yocto-www;
	Mon, 27 Oct 2014 11:04:03 PDT
Received: from smtpmail.saabsensis.com (smtpmail.saabsensis.com [173.225.55.4])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBD87E00744
	for <yocto@yoctoproject.org>; Mon, 27 Oct 2014 11:04:03 -0700 (PDT)
Received: from [10.92.64.54] (helo=ssa-syr-dimstar4.saabusa.com)
	by smtpmail.saabsensis.com with esmtps
	(TLS1.0:RSA_AES_256_CBC_SHA1:256) (Exim 4.80)
	(envelope-from <Nicholas.Crast@saabsensis.com>) id 1Xio3M-00024P-5a
	for yocto@yoctoproject.org; Mon, 27 Oct 2014 13:26:00 -0400
Received: from corpmail01.corp.sensis.com ([10.93.64.16])
	by ssa-syr-dimstar4.saabusa.com with esmtp (Exim 4.72)
	(envelope-from <Nicholas.Crast@saabsensis.com>) id 1Xio34-0001XG-8E
	for yocto@yoctoproject.org; Mon, 27 Oct 2014 13:25:42 -0400
Received: from CORPMAIL01.corp.sensis.com ([10.93.64.16]) by
	corpmail01.corp.sensis.com ([10.93.64.16]) with mapi id 14.03.0195.001;
	Mon, 27 Oct 2014 13:25:42 -0400
From: "Crast, Nicholas" <Nicholas.Crast@saabsensis.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Best practices for changing a conf file
Thread-Index: Ac/yCwg3edBKghqOS/WFC3BC6yGjwg==
Date: Mon, 27 Oct 2014 17:25:41 +0000
Message-ID: <36A43B0E1E88D84791516F9D44BC48331B3DCC62@corpmail01.corp.sensis.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.93.80.50]
MIME-Version: 1.0
X-Sensis-MailScanner-Information: Scanned at Sensis Corporation by MailScanner
X-Sensis-MailScanner-ID: 1Xio34-0001XG-8E
X-Sensis-MailScanner: Found to be clean
X-Sensis-MailScanner-SpamCheck: not spam (whitelisted),
	SpamAssassin (not cached, score=-1.899, required 4,
	autolearn=not spam, BAYES_00 -1.90, HTML_MESSAGE 0.00)
X-Sensis-MailScanner-From: nicholas.crast@saabsensis.com
Subject: Best practices for changing a conf file
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
X-List-Received-Date: Mon, 27 Oct 2014 18:04:10 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_36A43B0E1E88D84791516F9D44BC48331B3DCC62corpmail01corps_"

--_000_36A43B0E1E88D84791516F9D44BC48331B3DCC62corpmail01corps_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm just looking for some advice on best practices. I want to change the co=
nfiguration file for rsyslog called rsyslog.conf (poky/meta/recipes-extende=
d/rsyslog), but there is a certain appeal to me of not changing the files i=
n the meta directory. I like to keep those pristine and accomplish everythi=
ng I need with recipes in a different layer. Is the best way to change this=
 file to just go in and change that .conf file, or is there an easy way to =
use a .bbappend file to substitute my own configuration file?

Thanks,
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

--_000_36A43B0E1E88D84791516F9D44BC48331B3DCC62corpmail01corps_
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m just looking for some advice on best pract=
ices. I want to change the configuration file for rsyslog called rsyslog.co=
nf (poky/meta/recipes-extended/rsyslog), but there is a certain appeal to m=
e of not changing the files in the meta
 directory. I like to keep those pristine and accomplish everything I need =
with recipes in a different layer. Is the best way to change this file to j=
ust go in and change that .conf file, or is there an easy way to use a .bba=
ppend file to substitute my own
 configuration file?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks, <o:p></o:p></p>
<p class=3D"MsoNormal">-Nick<o:p></o:p></p>
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

--_000_36A43B0E1E88D84791516F9D44BC48331B3DCC62corpmail01corps_--
