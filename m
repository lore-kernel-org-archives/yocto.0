Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B68AFE0045D; Mon, 31 Oct 2016 07:42:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [135.11.29.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Mon, 31 Oct 2016 07:42:56 PDT
Received: from p-us1-iereast-outbound.us1.avaya.com
	(p-us1-iereast-outbound.us1.avaya.com [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6264FE00404
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 07:42:56 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2HjAQCvVxdY/xUHmMZcHAEBBAEBCgEBg?=
	=?us-ascii?q?nMhFgEBAQEBH1h9BwGNLpZ+lD6BRUInhXwCghI/FAECAQEBAQEBAQNfHQuCVzk?=
	=?us-ascii?q?GBy8BAQEBAQEBAQEBAQEBHAIPQQEBGQEBAQEDEhtcAgEIDQQEAQELHQcyFAkIA?=
	=?us-ascii?q?QEEEwgaiDIBDaVilzoBAQEBAQEBAQEBAQEBAQEBAQEBAQEXBYY9hFWEOg80gnu?=
	=?us-ascii?q?CLwWaGAGGL5QJhXuNEYQCHjZghRJyAQEBAYVPgS0BgQgBAQE?=
X-IPAS-Result: =?us-ascii?q?A2HjAQCvVxdY/xUHmMZcHAEBBAEBCgEBgnMhFgEBAQEBH1h?=
	=?us-ascii?q?9BwGNLpZ+lD6BRUInhXwCghI/FAECAQEBAQEBAQNfHQuCVzkGBy8BAQEBAQEBA?=
	=?us-ascii?q?QEBAQEBHAIPQQEBGQEBAQEDEhtcAgEIDQQEAQELHQcyFAkIAQEEEwgaiDIBDaV?=
	=?us-ascii?q?ilzoBAQEBAQEBAQEBAQEBAQEBAQEBAQEXBYY9hFWEOg80gnuCLwWaGAGGL5QJh?=
	=?us-ascii?q?XuNEYQCHjZghRJyAQEBAYVPgS0BgQgBAQE?=
X-IronPort-AV: E=Sophos;i="5.31,575,1473134400"; 
	d="scan'208,217";a="214220411"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	31 Oct 2016 10:41:52 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC01.global.avaya.com) ([135.11.85.12])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	31 Oct 2016 10:41:52 -0400
Received: from AZ-US1EXMB02.global.avaya.com ([fe80::c01d:740:c927:8888]) by
	AZ-US1EXHC01.global.avaya.com ([135.11.85.12]) with mapi id
	14.03.0319.002; Mon, 31 Oct 2016 10:41:52 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 2.2 minimum kernel requirement
Thread-Index: AdIzg4bIO9VniquCT8Kc16okCpJcPgAAUoCg
Date: Mon, 31 Oct 2016 14:41:50 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377987FF67300@AZ-US1EXMB02.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377987FF672EC@AZ-US1EXMB02.global.avaya.com>
In-Reply-To: <30C2D590D16A5C46ADFE6521910377987FF672EC@AZ-US1EXMB02.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.50]
MIME-Version: 1.0
Subject: Re: Yocto 2.2 minimum kernel requirement
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
X-List-Received-Date: Mon, 31 Oct 2016 14:42:59 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE6521910377987FF67300AZUS1EXMB02glob_"

--_000_30C2D590D16A5C46ADFE6521910377987FF67300AZUS1EXMB02glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I should clarify that these build machines are not for Yocto builds,
but for building an application that uses the Yocto SDK.

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Vuille, Martin (Martin)
Sent: October 31, 2016 10:38
To: yocto@yoctoproject.org
Subject: [yocto] Yocto 2.2 minimum kernel requirement

We are looking at upgrading from Yocto 1.8 to 2.2.

Yocto 2.2 has a minimum kernel requirement of 3.2.0.

This isn't an issue for our target (ARMv5, Linux 4.4) but may be
an issue for our automated build machines (x86, Linux 2.6.32-CentOS 6.)

However, there is a note that says
"For x86 and x86_64, you can reset OLDEST_KERNEL<https://urldefense.proofpo=
int.com/v2/url?u=3Dhttp-3A__www.yoctoproject.org_docs_2.2_mega-2Dmanual_meg=
a-2Dmanual.html-23var-2DOLDEST-5FKERNEL&d=3DDQMFAg&c=3DBFpWQw8bsuKpl1SgiZH6=
4Q&r=3DSbT_XjBLTrjzWy1iRhblzG3bKRhcodBp7tD_mnp1dpg&m=3DJBfbjyLEHgQmBZGcIm8l=
b9q00p7ApivpoxD9UIz8BE0&s=3DUevjhjTvolaxefVicfpOrA5-ShXGU7YBHo7bUeDG3OQ&e=
=3D> to anything down to 2.6.32 if desired."

Is it possible to configure things such that we can keep supporting the old
kernel for the SDK while we support a more up-to-date kernel for the target=
?

MV

--_000_30C2D590D16A5C46ADFE6521910377987FF67300AZUS1EXMB02glob_
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
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
<body lang=3D"EN-CA" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I should clarify that =
these build machines are not for Yocto builds,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">but for building an ap=
plication that uses the Yocto SDK.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;mso-fareast-language:EN=
-CA">From:</span></b><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-fa=
mily:&quot;Tahoma&quot;,&quot;sans-serif&quot;;mso-fareast-language:EN-CA">=
 yocto-bounces@yoctoproject.org
 [mailto:yocto-bounces@yoctoproject.org] <b>On Behalf Of </b>Vuille, Martin=
 (Martin)<br>
<b>Sent:</b> October 31, 2016 10:38<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Yocto 2.2 minimum kernel requirement<o:p></o:p></sp=
an></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">We are looking at upgrading fro=
m Yocto 1.8 to 2.2.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Yocto 2.2 has a minimum kernel =
requirement of 3.2.0.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">This isn&#8217;t an issue for o=
ur target (ARMv5, Linux 4.4) but may be<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">an issue for our automated buil=
d machines (x86, Linux 2.6.32&#8212;CentOS 6.)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">However, there is a note that s=
ays<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&#8220;</span>For x86 and x86_6=
4, you can reset
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__www.yoctop=
roject.org_docs_2.2_mega-2Dmanual_mega-2Dmanual.html-23var-2DOLDEST-5FKERNE=
L&amp;d=3DDQMFAg&amp;c=3DBFpWQw8bsuKpl1SgiZH64Q&amp;r=3DSbT_XjBLTrjzWy1iRhb=
lzG3bKRhcodBp7tD_mnp1dpg&amp;m=3DJBfbjyLEHgQmBZGcIm8lb9q00p7ApivpoxD9UIz8BE=
0&amp;s=3DUevjhjTvolaxefVicfpOrA5-ShXGU7YBHo7bUeDG3OQ&amp;e=3D" title=3D"OL=
DEST_KERNEL">
<code><span style=3D"font-size:10.0pt">OLDEST_KERNEL</span></code></a> to a=
nything down to 2.6.32 if desired.&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is it possible to configure things such that we can =
keep supporting the old<o:p></o:p></p>
<p class=3D"MsoNormal">kernel for the SDK while we support a more up-to-dat=
e kernel for the target?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">MV<o:p></o:p></p>
</div>
</div>
</body>
</html>

--_000_30C2D590D16A5C46ADFE6521910377987FF67300AZUS1EXMB02glob_--
