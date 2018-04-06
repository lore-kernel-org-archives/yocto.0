Return-Path: <dhkoo@m2i.co.kr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 345C7E00B9E; Fri,  6 Apr 2018 01:03:59 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B84E7E008D3
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2018 01:03:57 -0700 (PDT)
Received: (qmail 1844 invoked from network); 6 Apr 2018 17:03:54 +0900
Received: from unknown (HELO hiworks.co.kr) (192.168.10.101)
	by 0 (qmail 1.03 + ejcp v14) with SMTP; 6 Apr 2018 17:03:54 +0900
Received: (qmail 38554 invoked from network); 6 Apr 2018 17:03:54 +0900
Received: from unknown (HELO dhkooPC) (dhkoo@m2i.co.kr@112.216.145.10)
	by 0 (qmail 1.03 + ejcp v14) with SMTP; 6 Apr 2018 17:03:54 +0900
X-Authinfo: HIWORKS SMTP authenticated <dhkoo@m2i.co.kr>
From: "dhkoo" <dhkoo@m2i.co.kr>
To: <yocto@yoctoproject.org>
Date: Fri, 6 Apr 2018 17:04:02 +0900
Message-ID: <04c201d3cd7d$d3350630$799f1290$@co.kr>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdPNfCHzCHDX8JP/Sp+lG9EtjpmjVQAAWW2g
Subject: FW: [meta-qt5]Feature 'tslib' was disabled, but the pre-condition 'libs.tslib' failed.
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
X-List-Received-Date: Fri, 06 Apr 2018 08:03:59 -0000
X-Groupsio-MsgNum: 40596
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_04C3_01D3CDC9.431CAE30"
Content-Language: ko

------=_NextPart_000_04C3_01D3CDC9.431CAE30
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_04C4_01D3CDC9.431CAE30"

------=_NextPart_001_04C4_01D3CDC9.431CAE30
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm so sorry the error message is "Feature 'tslib' was enabled, but the
pre-condition 'libs.tslib' failed.", not disabled.

 

So sorry for confusing. :(

 

Koo.

 

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of dhkoo
Sent: Friday, April 06, 2018 4:52 PM
To: yocto@yoctoproject.org
Subject: [yocto] [meta-qt5]Feature 'tslib' was disabled, but the
pre-condition 'libs.tslib' failed.

 

Hello.

 

I want to compile the tslib enabled Qt5.10 on the yocto.

 

After running "bitbake core-image-mymachine", on the log 'run.do_configure'
shows me "-no-tslib" option configured. So I modified qtbase_git.bb to
enable "-tslib" option.

And after that, bitbake shows me "Feature 'tslib' was disabled, but the
pre-condition 'libs.tslib' failed."

 

I added tslib, and xf86-input-tslib at "packagegroup.bb" and using
architecture based on arm7a.

 

Is there any good idea for enable "tslib" successfully?

 

regards.

Koo.


------=_NextPart_001_04C4_01D3CDC9.431CAE30
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
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
	{font-family:"Malgun Gothic";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
@font-face
	{font-family:"Malgun Gothic";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
span.Char
	{mso-style-name:"\D48D\C120 \B3C4\C6C0\B9D0 \D14D\C2A4\D2B8 Char";
	mso-style-priority:99;
	mso-style-link:"\D48D\C120 \B3C4\C6C0\B9D0 \D14D\C2A4\D2B8";
	font-family:"Malgun Gothic";}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Malgun Gothic";
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Malgun Gothic";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;}
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

<p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>I'm so =
sorry the
error message is </span><span lang=3DEN-US>&quot;Feature 'tslib' was =
enabled, but
the pre-condition 'libs.tslib' failed.&quot;, not =
disabled.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>So sorry for confusing. =
:(<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US =
style=3D'color:#1F497D'>Koo.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt =
0cm 0cm 0cm'>

<p class=3DMsoNormal align=3Dleft =
style=3D'text-align:left;text-autospace:ideograph-numeric =
ideograph-other;
word-break:keep-all'><b><span lang=3DEN-US =
style=3D'font-family:"Tahoma","sans-serif"'>From:</span></b><span
lang=3DEN-US style=3D'font-family:"Tahoma","sans-serif"'>
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] =
<b>On
Behalf Of </b>dhkoo<br>
<b>Sent:</b> Friday, April 06, 2018 4:52 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] [meta-qt5]Feature 'tslib' was disabled, but the
pre-condition 'libs.tslib' failed.<o:p></o:p></span></p>

</div>

</div>

<p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Hello.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>I want to compile the tslib =
enabled Qt5.10
on the yocto.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>After running &quot;bitbake
core-image-mymachine&quot;, on the log 'run.do_configure' shows me
&quot;-no-tslib&quot; option configured. So I modified qtbase_git.bb to =
enable
&quot;-tslib&quot; option.<br>
<br>
And after that, bitbake shows me &quot;Feature 'tslib' was disabled, but =
the
pre-condition 'libs.tslib' failed.&quot;<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>I added tslib, and =
xf86-input-tslib at
&quot;packagegroup.bb&quot; and using architecture based on =
arm7a.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Is there any good idea for =
enable
&quot;tslib&quot; successfully?<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>regards.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Koo.<o:p></o:p></span></p>

</div>

</body>

</html>

------=_NextPart_001_04C4_01D3CDC9.431CAE30--

------=_NextPart_000_04C3_01D3CDC9.431CAE30
Content-Type: text/plain;
	name="ATT01216.txt"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="ATT01216.txt"

-- 
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

------=_NextPart_000_04C3_01D3CDC9.431CAE30--
