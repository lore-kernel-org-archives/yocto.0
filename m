Return-Path: <dhkoo@m2i.co.kr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A911E00BAA; Tue, 10 Apr 2018 22:27:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [121.254.168.204 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp1.hiworks.co.kr (smtp1.hiworks.co.kr [121.254.168.204])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05D36E009C9
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 22:27:06 -0700 (PDT)
Received: (qmail 32113 invoked from network); 11 Apr 2018 14:27:03 +0900
Received: from unknown (HELO hiworks.co.kr) (192.168.10.37)
	by 0 (qmail 1.03 + ejcp v14) with SMTP; 11 Apr 2018 14:27:03 +0900
Received: (qmail 2538 invoked from network); 11 Apr 2018 14:27:03 +0900
Received: from unknown (HELO dhkooPC) (dhkoo@m2i.co.kr@112.216.145.10)
	by 0 (qmail 1.03 + ejcp v14) with SMTP; 11 Apr 2018 14:27:03 +0900
X-Authinfo: HIWORKS SMTP authenticated <dhkoo@m2i.co.kr>
From: "dhkoo" <dhkoo@m2i.co.kr>
To: <yocto@yoctoproject.org>
Date: Wed, 11 Apr 2018 14:27:07 +0900
Message-ID: <002d01d3d155$bba38ec0$32eaac40$@co.kr>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdPRVbt6OPUfvWJmTleBRwjGTcvOjQ==
Subject: [meta-qt5] Is the font type "qpf2" available on Qt 5?
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
X-List-Received-Date: Wed, 11 Apr 2018 05:27:08 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_002E_01D3D1A1.2B8B36C0"
Content-Language: ko

------=_NextPart_000_002E_01D3D1A1.2B8B36C0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello.

 

I'm working on meta-qt5 for qt applications. In the Qt5 documentation(
http://doc.qt.io/qt-5/qt-embedded-fonts.html ), It seems that can use qpf2
and qpf font, but I cannot find how to apply it.

 

I think it should preset on do_configure step, but there's no similar option
on "configure --help"..

 

Is someone has any good idea?

 

Regards.

Koo.


------=_NextPart_000_002E_01D3D1A1.2B8B36C0
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

<p class=3DMsoNormal><span lang=3DEN-US>I'm working on meta-qt5 for qt
applications. In the Qt5 documentation( =
http://doc.qt.io/qt-5/qt-embedded-fonts.html
), It seems that can use qpf2 and qpf font, but I cannot find how to =
apply it.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>I think it should preset on =
do_configure
step, but there's no similar option on &quot;configure =
--help&quot;..<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Is someone has any good =
idea?<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Regards.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Koo.<o:p></o:p></span></p>

</div>

</body>

</html>

------=_NextPart_000_002E_01D3D1A1.2B8B36C0--
