Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.11170.1618927380383223870
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Apr 2021 07:03:03 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=HV13IMNy;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1618927380; x=1776607380;
  h=from:to:subject:date:in-reply-to:mime-version;
  bh=C4E7udXoG7CSuG9QTFzdMS74vbtLNc4r41ZsdSXaZi0=;
  b=HV13IMNyCLHbG54fybwxrFM367HBij1QV72Kj3A5WRumTP7GBFnoAoUt
   gv+tbM1u8zE4jzJMY3UWIFuG/5Z/W0fNhxDT98cu000Bc/8tNK2xN+XFo
   OIM6OvQVhlhoray2QVKY91AFtifoM4q3mGhNJ3Ob9ftvIRNs/Kn0Oj3hS
   4=;
IronPort-SDR: RQPwriHl2f7O06nvNriRguPp2X/atscM2sWFy6LPTohrh8Qn4CzBlxfDuJtCavemJdyuSa1/na
 PmqabU5OIxDA==
IronPort-PHdr: =?us-ascii?q?A9a23=3AsS1mYREu6fGGHlcsEBUc951GfwNLhN3EVjU92?=
 =?us-ascii?q?t8ck7tLN56b1NHcBiT32/xhgRfzUJnB7Loc0qyK6vGmAzRdqs3e+Fk5M7V0H?=
 =?us-ascii?q?ycfjssXmwFySOWkMmbcaMDQUiohAc5ZX0Vk9XzoeWJcGcL5ekGA6ibqtW1aF?=
 =?us-ascii?q?RrwLxd6KfroEYDOkcu3y/qy+5rOaAlUmTaxe7x/IAiyoAnLqMUanYtvJqk/x?=
 =?us-ascii?q?xbLv3BFZ/lYyWR0KFyJgh3y/N2w/Jlt8yRRv/Iu6ctNWrjkcqo7ULJVEi0oP?=
 =?us-ascii?q?3g668P3uxbDSxCP5mYHXWUNjhVIGQnF4wrkUZr3ryD3q/By2CiePc3xULA0R?=
 =?us-ascii?q?TGv5LplRRP0lCsKMSMy/XrJgcJskq1UvBOhpwR+w4HKZoGVKOF+db7Zcd8DW?=
 =?us-ascii?q?GZNQtpdWylHD4ihbYUAEvABMP5YoYfjulUOsRWwCwqiBOztyz9HmnD50LYg3?=
 =?us-ascii?q?Og9EwHLxhAsE84QvHnSsd77NL0SUeewzKTQwznNaPRW2THm6IfWbB8huumAV?=
 =?us-ascii?q?q9tf8rN10YvCR3KjlONooH7IjiZ0uoCvXWe4+ZuSOmijHUnqx1vrTix2Mgsj?=
 =?us-ascii?q?JPFhocSylDC7iV23pg6JcajRUFge9GrDoBQtiGBN4tqXMwiRnpotDwmxb0Bv?=
 =?us-ascii?q?J62ZS4Hw4koyBDDcfKIaZSI4g79W+aLJzd1nGxpdbyiixuu9UWtxfDwWte03?=
 =?us-ascii?q?VtFsiZLndnBu20R2hDP5MWLVudw80mu1DqR1g3f9uNJLEQ6m6bGNpMswb49m?=
 =?us-ascii?q?ocVvE/eHSH2gF37gLKKekk+9OWl6f7rbqjiq5KSLYN5iwDzPrwzlsCjG+g1P?=
 =?us-ascii?q?QcDU3KU9OimybHu/Uv0S6hQgPIsiKnWqpXaKNwepq6+HgBazJ4u6w26Dze6y?=
 =?us-ascii?q?NQYmmQHLE5ddBKHkYfpP1bOLej+Dfe/hVSjijJrx+vFM7DhHpnBMmXPnK3nf?=
 =?us-ascii?q?bln8UJT0xA8ws5E55NUEbEBPOz8WkrqtNDCEhA5NAm0z/7mCNV7yIweRXqCD?=
 =?us-ascii?q?rKFPK/Iv1KF5PgjL/SIaYIbojrwKvko6+brjXAjmF8deaep3YEQaHC9BvlmO?=
 =?us-ascii?q?FmZbmTygtgfF2cGpA8+TOvsiF2ZTzFceW2yUrkn6T4hFo2mFofCRpuxgLOf2?=
 =?us-ascii?q?Se7BYdaaXxBClCJCXvobZmLW+8QaCKOJc9sijwFVb+9RI890hGjrwv6y7t8L?=
 =?us-ascii?q?urI4S0Ur5Li1N9p6O3PkhEy7SZ0D8Of026TU250gnkERzgs3KBw8gRBzQKq1?=
 =?us-ascii?q?7R/hbRxE8BU4fRXGlMzM4LbyapzDcz1XAXfVt6TTRCtRdDwRXl7X9U639gmZ?=
 =?us-ascii?q?0dmB87knxfIwy2yGbgXmreXQpsu/eiUi2n2LNp643LHz7U6yUghSddILXehh?=
 =?us-ascii?q?KN0607UHYGfwGuDkKP/P4Eb2jXA+XzHhVGSsV9VVkZbGeX4ZjFVLh/Nsdnn6?=
 =?us-ascii?q?0WESrioErkqKSNLwMOZO7BWZ9jyy15BQaGwa5zlf2utljLoVl6zzbSWYd+vI?=
 =?us-ascii?q?j1FtBg=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ARDkNMqrSOMsGKqPgrqmddnIaV5rWeYIsi2?=
 =?us-ascii?q?QD101hICF9WObwrbHNoN033QL54Qx+ZFgOgtaFUZPhfVr97phz2I8LIPOZcT?=
 =?us-ascii?q?KOggCVBaVv95HrzTGlOyCWzI9g/JxteaR/F9H8ZGIS5anHyTOlGNUtysTvyt?=
 =?us-ascii?q?HMuc7iyR5WPGJXQpAlzxx+DT+cCVAzbDYuP/YEPavZ3OZhihaaPVQvB/7QOl?=
 =?us-ascii?q?A1G9LugPDmr9bcTSc7OjYbyC+o5AnE1ILH?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2CHAACb3n5g/0LBJQpaHAEBAQEBAQc?=
 =?us-ascii?q?BARIBAQQEAQFACYE4BAEBCwGBIoF/DoEzC5YtA4VmlRmBaAsBAQEBAQEBAQE?=
 =?us-ascii?q?IAR0BFgQBAYRQAoF1JjcGDgIDAQEMAQEGAQEBAQEGBAGBA4VdgjgpAYNiAQE?=
 =?us-ascii?q?BBAEsXAIBCA0EBAEBFhkoCh0IAQEEARIIgmUFgX6oXTV3gTQaAmWJbwkBgTA?=
 =?us-ascii?q?BgWSFHIZUgg1BgRODIj6DewgKARIBYIU5BIFvFIEBgU0wEXECkX+KdJ5lBwO?=
 =?us-ascii?q?DDJVrhxkeD4NPin+FfQOLHIUYlR6eLQwGN4RIAgQCBAUCFoFqMVxwcIM5UBc?=
 =?us-ascii?q?CnHpzOAIGCgEBAwmLf4EQAQE?=
X-IPAS-Result: =?us-ascii?q?A2CHAACb3n5g/0LBJQpaHAEBAQEBAQcBARIBAQQEAQFAC?=
 =?us-ascii?q?YE4BAEBCwGBIoF/DoEzC5YtA4VmlRmBaAsBAQEBAQEBAQEIAR0BFgQBAYRQA?=
 =?us-ascii?q?oF1JjcGDgIDAQEMAQEGAQEBAQEGBAGBA4VdgjgpAYNiAQEBBAEsXAIBCA0EB?=
 =?us-ascii?q?AEBFhkoCh0IAQEEARIIgmUFgX6oXTV3gTQaAmWJbwkBgTABgWSFHIZUgg1Bg?=
 =?us-ascii?q?RODIj6DewgKARIBYIU5BIFvFIEBgU0wEXECkX+KdJ5lBwODDJVrhxkeD4NPi?=
 =?us-ascii?q?n+FfQOLHIUYlR6eLQwGN4RIAgQCBAUCFoFqMVxwcIM5UBcCnHpzOAIGCgEBA?=
 =?us-ascii?q?wmLf4EQAQE?=
X-IronPort-AV: E=Sophos;i="5.82,237,1613433600"; 
   d="scan'208,217";a="367342102"
IronPort-SDR: lTcrEhC+T50g7uFUsANb0sJt8Yza2vKW/lSvE6Lq2RXKL1PE71XRb8RYaEORfd7wqhvUJrkoae
 E9oVv3OoVnkqjld2Dzw5s4qjKYIQyLizyiglGNioO+p4Ir3pykkqWle8sOx8tHR3fi7DzV4oQQ
 3Bql9qlaXW4OoPIP8n2/jzYGhjHwd0tie5rQEClXE1MqAtF568GMcgCpJg6tr1CKu9+o5WfDyA
 fQFIyxquus7XWHsB9csTNOpfXbCxAMPsLXBqA4ZbntHSSSeLZC1SohycuPOeA7zrTJt6Zm1G86
 ZV8=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Anton Antonov <anton.antonov@arm.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto llvm support
Thread-Topic: [yocto] #yocto llvm support
Thread-Index: Adc15CeJBNXiVQrnS+CDBQ6ketFtuQAKZz6AAAgxBaA=
Date: Tue, 20 Apr 2021 14:00:49 +0000
In-Reply-To: <5768.1618926679380653163@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.100.33
dlp-reaction: no-action
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.167795E0A720E61F.782@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_53542bc0b37f41d999c892b9a757188abaesystemscom_"

--_000_53542bc0b37f41d999c892b9a757188abaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I noticed similar behavior...

I am running zeus 3.0.4, "devtool sdk-install llvm" will get llvm 8.0.1...

When I build meta-clang, and I set TOOLCHAIN?=3D"clang" in local.conf it ap=
pears to grab llvm-project-source-9.0.1-9.0.1...

From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf=
 Of Anton Antonov
Sent: Tuesday, April 20, 2021 9:51 AM
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] #yocto llvm support

External Email Alert

This email has been sent from an account outside of the BAE Systems network=
.
Please treat the email with caution, especially if you are requested to cli=
ck on a link, decrypt/open an attachment, or enable macros.  For further in=
formation on how to spot phishing, access "Cybersecurity OneSpace Page" and=
 report phishing by clicking the button "Report Phishing" on the Outlook to=
olbar.


Hi Steven,

  I used meta-clang in my recipes and I noticed that:
1. The current release of poky uses LLVM v11.1.0 by default (poky/meta/reci=
pes-devtools/llvm/llvm_git.bb)
2. Meta-clang requires LLVM v12.0.0 (meta-clang/conf/layer.conf defines LLV=
MVERSION =3D "12.0.0")

As a result just including meta-clang into bblayers.conf will require bitba=
ke to build a new version of LLVM and rebuild everything which uses it

Anton

--_000_53542bc0b37f41d999c892b9a757188abaesystemscom_
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
@font-face
	{font-family:"Lucida Sans Unicode";
	panose-1:2 11 6 2 3 5 4 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">I noticed similar behavior&#8230;<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">I am running zeus 3.0.4, &#8220;devto=
ol sdk-install llvm&#8221; will get llvm 8.0.1&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">When I build meta-clang, and I set TO=
OLCHAIN?=3D&#8221;clang&#8221; in local.conf it appears to grab llvm-projec=
t-source-9.0.1-9.0.1&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> yocto@lists.yoctoproject.org &=
lt;yocto@lists.yoctoproject.org&gt;
<b>On Behalf Of </b>Anton Antonov<br>
<b>Sent:</b> Tuesday, April 20, 2021 9:51 AM<br>
<b>To:</b> yocto@lists.yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] #yocto llvm support<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<table class=3D"MsoNormalTable" border=3D"1" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"97%" style=3D"width:97.0%;margin-left:5.4pt;border-collapse=
:collapse;border:none">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97.0%;border:solid red 1.0p=
t;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;color:red">External Email Alert<=
/span></u></strong><o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"686" valign=3D"top" style=3D"width:15.0in;border:solid red 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:3.0pt;m=
argin-right:0in;margin-bottom:4.0pt;margin-left:0in;text-align:center;backg=
round:white">
<strong><span style=3D"font-size:10.0pt;color:black">This email has been se=
nt from an account outside of the BAE Systems network.</span></strong><o:p>=
</o:p></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, especi=
ally if you are requested to click on a link, decrypt/open an attachment, o=
r enable macros.&nbsp; For further information on how to spot phishing, acc=
ess &#8220;Cybersecurity OneSpace Page&#8221; and report
 phishing by clicking the button &#8220;Report Phishing&#8221; on the Outlo=
ok toolbar.</span><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><br>
Hi Steven,<br>
<br>
&nbsp; I used meta-clang in my recipes and I noticed that:<br>
1. The current release of poky uses LLVM v11.1.0 by default (poky/meta/reci=
pes-devtools/llvm/llvm_git.bb)<br>
2. Meta-clang requires LLVM v12.0.0 (meta-clang/conf/layer.conf defines LLV=
MVERSION =3D &quot;12.0.0&quot;)<br>
<br>
As a result just including meta-clang into bblayers.conf will require bitba=
ke to build a new version of LLVM and rebuild everything which uses it<br>
<br>
Anton <o:p></o:p></p>
</div>
</div>
</body>
</html>

--_000_53542bc0b37f41d999c892b9a757188abaesystemscom_--
