Return-Path: <mark.junghanns@spectra.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A89F6E006E3; Thu,  6 Oct 2016 06:51:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_40,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.2807]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 502 seconds by postgrey-1.32 at yocto-www;
	Thu, 06 Oct 2016 06:51:26 PDT
Received: from mail.spectra.de (mail.spectra.de [195.85.237.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06C92E00404
	for <yocto@yoctoproject.org>; Thu,  6 Oct 2016 06:51:26 -0700 (PDT)
X-SPECTRA-MailScanner-EFA-Watermark: 1476366174.29957@EGoF40np0jtArF5YnBx8nw
X-SPECTRA-MailScanner-EFA-From: mark.junghanns@spectra.de
X-SPECTRA-MailScanner-EFA: Found to be clean
X-SPECTRA-MailScanner-EFA-ID: 42ED5A0339.A6943
X-SPECTRA-MailScanner-EFA-Information: Please contact it-team@spectra.de for
	more information
Received: from AresMail.spectra.netz (unknown [172.16.10.11])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.spectra.de (Postfix) with ESMTPS id 42ED5A0339
	for <yocto@yoctoproject.org>; Thu,  6 Oct 2016 15:42:54 +0200 (CEST)
Received: from ARESMAIL.spectra.netz ([::1]) by AresMail.spectra.netz ([::1])
	with mapi id 14.03.0123.003; Thu, 6 Oct 2016 15:42:54 +0200
From: Mark Junghanns <mark.junghanns@spectra.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] PSPLASH behavior during shutdown
Thread-Index: AdIf13+HaMGVI9F/Qcm69UBplAmz3g==
Date: Thu, 6 Oct 2016 13:42:53 +0000
Message-ID: <EEF480D2AA622D48BD0D761FB54F5B1BD0F5EB@AresMail.spectra.netz>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.100.146]
x-esetresult: clean, is OK
x-esetid: 37303A29125E4C676C7D66
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 06 Oct 2016 08:03:17 -0700
Subject: PSPLASH behavior during shutdown
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
X-List-Received-Date: Thu, 06 Oct 2016 13:51:28 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_EEF480D2AA622D48BD0D761FB54F5B1BD0F5EBAresMailspectrane_"

--_000_EEF480D2AA622D48BD0D761FB54F5B1BD0F5EBAresMailspectrane_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi there,
I have a question concerning Psplash's behavior during shutdown. My image i=
s using xfce4 and I'm using psplash to display a logo during startup. This =
is working as expected. My problem starts when I'm shutting down the sessio=
n. The X-server stops and the console becomes visible (displaying the usual=
 stuff that is shown during shutting down), until the splash screen appears=
 - which is not very reliable either. Could somebody give me a hint on wher=
e to start solving this?

Many thanks in advance,
Mark

--_000_EEF480D2AA622D48BD0D761FB54F5B1BD0F5EBAresMailspectrane_
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi there,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have a question concerning Ps=
plash&#8217;s behavior during shutdown. My image is using xfce4 and I&#8217=
;m using psplash to display a logo during startup. This is working as expec=
ted. My problem starts when I&#8217;m shutting down the
 session. The X-server stops and the console becomes visible (displaying th=
e usual stuff that is shown during shutting down), until the splash screen =
appears &#8211; which is not very reliable either. Could somebody give me a=
 hint on where to start solving this?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Many thanks in advance,<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Mark<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_EEF480D2AA622D48BD0D761FB54F5B1BD0F5EBAresMailspectrane_--
