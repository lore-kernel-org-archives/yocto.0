Return-Path: <dhkoo@m2i.co.kr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A24A1E00E65; Mon,  5 Feb 2018 02:19:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [121.254.168.205 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp3.hiworks.co.kr (smtp3.hiworks.co.kr [121.254.168.205])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4986DE007D1
	for <yocto@yoctoproject.org>; Mon,  5 Feb 2018 02:19:54 -0800 (PST)
Received: (qmail 193968 invoked from network); 5 Feb 2018 19:19:51 +0900
Received: from unknown (HELO hiworks.co.kr) (192.168.10.37)
	by 0 (qmail 1.03 + ejcp v14) with SMTP; 5 Feb 2018 19:19:51 +0900
Received: (qmail 153194 invoked from network); 5 Feb 2018 19:19:51 +0900
Received: from unknown (HELO dhkooPC) (dhkoo@m2i.co.kr@112.216.145.10)
	by 0 (qmail 1.03 + ejcp v14) with SMTP; 5 Feb 2018 19:19:51 +0900
X-Authinfo: HIWORKS SMTP authenticated <dhkoo@m2i.co.kr>
From: "dhkoo" <dhkoo@m2i.co.kr>
To: <yocto@yoctoproject.org>
Date: Mon, 5 Feb 2018 19:19:52 +0900
Message-ID: <007101d39e6a$dc891650$959b42f0$@co.kr>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdOeatuq6TQaThtJQO61KY+bIJvacg==
x-cr-hashedpuzzle: A6Nf BVfC Ba0/ Bjnm DUBJ EpVC F4lW GcbP GpKj G9hc HPM2 JEuW
	JX5j Jr7L JwXt KhRI; 1;
	eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {8C0E5504-8090-4B0E-A2FD-F52D5C1F08D2};
	ZABoAGsAbwBvAEAAbQAyAGkALgBjAG8ALgBrAHIA;
	Mon, 05 Feb 2018 10:19:51 GMT;
	SABvAHcAIAB0AG8AIABkAG8AXwBwAG8AcAB1AGwAYQB0AGUAXwBzAGQAawAgAHcAaQB0AGgAbwB1AHQAIABRAEUATQBVAA==
x-cr-puzzleid: {8C0E5504-8090-4B0E-A2FD-F52D5C1F08D2}
Subject: How to do_populate_sdk without QEMU
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
X-List-Received-Date: Mon, 05 Feb 2018 10:19:56 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0072_01D39EB6.4C70BE50"
Content-Language: ko

------=_NextPart_000_0072_01D39EB6.4C70BE50
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello.

 

I'm working with Rocko 2.4.1, and as my work reaches to the last stage, I'm
beating my head to distribute SDK for my colleagues.
I found that command "do_populate_sdk" can make SDK environment easily, but
the problem is SDK's capacity is too huge.

 

Of course there's many reasons for that, but I guess the QEMU is one of the
reason.(I suppose many binaries are used for QEMU.)

We has no plan to use QEMU, so I want exclude QEMU from my SDK.

 

but I have no idea where to begin.
Is there any idea to exclude QEMU?

 


Koo.


------=_NextPart_000_0072_01D39EB6.4C70BE50
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:"Malgun Gothic";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
@font-face
	{font-family:"Malgun Gothic";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-autospace:none;
	word-break:break-hangul;
	font-size:10.0pt;
	font-family:"Malgun Gothic";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"\D48D\C120 \B3C4\C6C0\B9D0 \D14D\C2A4\D2B8 Char";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-autospace:none;
	word-break:break-hangul;
	font-size:9.0pt;
	font-family:"Malgun Gothic";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Malgun Gothic";
	color:windowtext;}
span.Char
	{mso-style-name:"\D48D\C120 \B3C4\C6C0\B9D0 \D14D\C2A4\D2B8 Char";
	mso-style-priority:99;
	mso-style-link:"\D48D\C120 \B3C4\C6C0\B9D0 \D14D\C2A4\D2B8";
	font-family:"Malgun Gothic";}
.MsoChpDefault
	{mso-style-type:export-only;}
 /* Page Definitions */
 @page Section1
	{size:612.0pt 792.0pt;
	margin:3.0cm 72.0pt 72.0pt 72.0pt;}
div.Section1
	{page:Section1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DKO link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal><span lang=3DEN-US>Hello.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>I'm working with Rocko 2.4.1, =
and as my
work reaches to the last stage, I'm beating my head to distribute SDK =
for my colleagues.<br>
I found that command &quot;do_populate_sdk&quot; can make SDK =
environment
easily, but the problem is SDK's capacity is too =
huge.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Of course there's many reasons =
for that,
but I guess the QEMU is one of the reason.(I suppose many binaries are =
used for
QEMU.)<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>We has no plan to use QEMU, so I =
want exclude
QEMU from my SDK.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>but I have no idea where to =
begin.<br>
Is there any idea to exclude QEMU?<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><br>
Koo.<o:p></o:p></span></p>

</div>

</body>

</html>

------=_NextPart_000_0072_01D39EB6.4C70BE50--
