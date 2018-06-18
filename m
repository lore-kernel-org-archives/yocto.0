Return-Path: <tykwon@m2i.co.kr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0D16E0084F; Mon, 18 Jun 2018 00:35:36 -0700 (PDT)
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
X-Greylist: delayed 398 seconds by postgrey-1.32 at yocto-www;
	Mon, 18 Jun 2018 00:35:35 PDT
Received: from smtp1.hiworks.co.kr (smtp1.hiworks.co.kr [121.254.168.204])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C9F8E007AD
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2018 00:35:35 -0700 (PDT)
Received: (qmail 166599 invoked from network); 18 Jun 2018 16:28:54 +0900
Received: from unknown (HELO hiworks.co.kr) (192.168.10.219)
	by 0 (qmail 1.03 + ejcp v14) with SMTP; 18 Jun 2018 16:28:54 +0900
Received: (qmail 125887 invoked from network); 18 Jun 2018 16:28:54 +0900
Received: from unknown (HELO DESKTOP3HTLQGF) (tykwon@m2i.co.kr@112.216.145.10)
	by 0 (qmail 1.03 + ejcp v14) with SMTP; 18 Jun 2018 16:28:54 +0900
X-Authinfo: HIWORKS SMTP authenticated
	<tykwon@m2i.co.kr|112.216.145.10|tykwon@m2i.co.kr|180618162854_2199125883>
From: "tykwon" <tykwon@m2i.co.kr>
To: <yocto@yoctoproject.org>
Date: Mon, 18 Jun 2018 16:28:56 +0900
Message-ID: <065e01d406d6$04874950$0d95dbf0$@co.kr>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdQG1gRnUhy0DW9nRzij0HaVG0yDUw==
Subject: How do I use additional commands in recipe?
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
X-List-Received-Date: Mon, 18 Jun 2018 07:35:36 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_065F_01D40721.746EF150"
Content-Language: ko

------=_NextPart_000_065F_01D40721.746EF150
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello.

 

I want to use pyppd while using the hplip package.

pyppd is a command to process the ppd data of
hplip.(https://pypi.org/project/pyppd/)

 

I tried to use pyppd in recipe of hplip.

 

do_install_append () {

        apt-get install python-pip

        pip install pyppd

        pyppd ${WORKDIR}/image/usr/share/ppd/HP

}

 

However, in the do_install step, the following error occurs.

apt-get: not found

pip: not found

pyppd: not found

 

The pyppd I want to use is only needed in the do_install step.

How do I use pyppd in recipe?

 

I'm sorry I do not have enough English.

 

Regards

Kwon


------=_NextPart_000_065F_01D40721.746EF150
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:"\B9D1\C740 \ACE0\B515";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
@font-face
	{font-family:"\@\B9D1\C740 \ACE0\B515";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-autospace:none;
	word-break:break-hangul;
	font-size:10.0pt;
	font-family:"\B9D1\C740 \ACE0\B515";}
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
	font-family:"\B9D1\C740 \ACE0\B515";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"\B9D1\C740 \ACE0\B515";
	color:windowtext;}
span.Char
	{mso-style-name:"\D48D\C120 \B3C4\C6C0\B9D0 \D14D\C2A4\D2B8 Char";
	mso-style-priority:99;
	mso-style-link:"\D48D\C120 \B3C4\C6C0\B9D0 \D14D\C2A4\D2B8";
	font-family:"\B9D1\C740 \ACE0\B515";}
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

<p class=3DMsoNormal><span lang=3DEN-US>I want to use pyppd while using =
the hplip
package.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>pyppd is a command to process =
the ppd data
of hplip.(https://pypi.org/project/pyppd/)<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>I tried to use pyppd in recipe =
of hplip.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>do_install_append () =
{<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
apt-get install python-pip<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
pip install pyppd<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
pyppd ${WORKDIR}/image/usr/share/ppd/HP<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>}<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>However, in the do_install step, =
the
following error occurs.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>apt-get: not =
found<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>pip: not =
found<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>pyppd: not =
found<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>The pyppd I want to use is only =
needed in
the do_install step.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>How do I use pyppd in =
recipe?<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>I'm sorry I do not have enough =
English.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Regards</span><span lang=3DEN-US
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif"'><o:p></o:p>=
</span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Kwon</span><span =
lang=3DEN-US><o:p></o:p></span></p>

</div>

</body>

</html>

------=_NextPart_000_065F_01D40721.746EF150--
