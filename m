Return-Path: <Sreekanth.Nandakumar@csr.com>
Received: from cluster-d.mailcontrol.com (cluster-d.mailcontrol.com
	[85.115.60.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBB04E00282
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2012 22:05:49 -0700 (PDT)
Received: from banasiexc01.ASIA.ROOT.PRI ([202.80.51.114])
	by rly41d.srv.mailcontrol.com (MailControl) with ESMTP id
	q6B55fAV016886
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 06:05:46 +0100
Received: from BANASIEXM01.ASIA.ROOT.PRI ([10.190.26.20]) by
	banasiexc01.ASIA.ROOT.PRI ([10.190.12.21]) with mapi id 14.01.0289.001;
	Wed, 11 Jul 2012 10:35:40 +0530
From: Sreekanth Nandakumar <Sreekanth.Nandakumar@csr.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Thread-Topic: clarification
Thread-Index: Ac1fItBouKnQLLRgRLWviCPl9Wycrg==
Date: Wed, 11 Jul 2012 05:05:39 +0000
Message-ID: <F949F2ADAD67534D8F639CC2B9DE2B0F4A12AAEB@banasiexm01.ASIA.ROOT.PRI>
Accept-Language: en-US, en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.147.10.106]
MIME-Version: 1.0
X-Scanned-By: MailControl 7.7.2 (www.mailcontrol.com) on 10.68.0.151
X-Mailman-Approved-At: Wed, 11 Jul 2012 17:51:44 -0700
Subject: clarification
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
X-List-Received-Date: Wed, 11 Jul 2012 05:05:50 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F949F2ADAD67534D8F639CC2B9DE2B0F4A12AAEBbanasiexm01ASIA_"

--_000_F949F2ADAD67534D8F639CC2B9DE2B0F4A12AAEBbanasiexm01ASIA_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,



As I am new to yocto can you clarify the following things.



We have our own kernel code(v 2.6.38) placed in local directory /home/admin=
istrator/testing/kernel) . I have written recipe for it.



We have Makefile to build the kernel. Will bitbake identify the Makefile & =
start building or how will it work?



Kindly let me know where should the SRC_URI should point if it is pointing =
to local directory.



Please clarify how to run a single recipe using bitbake or wat is the proce=
ss to run a single recipe file?



Regards

Sreekanth



Member of the CSR plc group of companies. CSR plc registered in England and=
 Wales, registered number 4187346, registered office Churchill House, Cambr=
idge Business Park, Cowley Road, Cambridge, CB4 0WZ, United Kingdom
More information can be found at www.csr.com. Follow CSR on Twitter at http=
://twitter.com/CSR_PLC and read our blog at www.csr.com/blog

--_000_F949F2ADAD67534D8F639CC2B9DE2B0F4A12AAEBbanasiexm01ASIA_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:Consolas;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:Consolas;}
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
<p class=3D"MsoPlainText">Hi,<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">As I am new to yocto can you clarify the followin=
g things.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">We have our own kernel code(v 2.6.38) placed in l=
ocal directory /home/administrator/testing/kernel) . I have written recipe =
for it.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">We have Makefile to build the kernel. Will bitbak=
e identify the Makefile &amp; start building or how will it work?<o:p></o:p=
></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Kindly let me know where should the SRC_URI shoul=
d point if it is pointing to local directory.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Please clarify how to run a single recipe using b=
itbake or wat is the process to run a single recipe file?<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Regards<o:p></o:p></p>
<p class=3D"MsoPlainText">Sreekanth<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<br><br>
<SPAN style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Arial, Helvetica, sans-serif">=
Member of the CSR plc group of companies. CSR plc registered in England and=
 Wales, registered number 4187346, registered office Churchill House, Cambr=
idge Business Park, Cowley Road, Cambridge, CB4 0WZ, United Kingdom<br>More=
 information can be found at <a href=3Dhttp://www.csr.com>www.csr.com</a>. =
Follow CSR on Twitter at <a href=3Dhttp://twitter.com/CSR_PLC>http://twitte=
r.com/CSR_PLC</a> and read our blog at <a href=3Dhttp://www.csr.com/blog>ww=
w.csr.com/blog</a></SPAN>
</body>
</html>

--_000_F949F2ADAD67534D8F639CC2B9DE2B0F4A12AAEBbanasiexm01ASIA_--
