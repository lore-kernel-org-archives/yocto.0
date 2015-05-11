Return-Path: <Teemu.Keskinarkaus@Maximatecc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9541BE009D4; Mon, 11 May 2015 00:58:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.4 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 394 seconds by postgrey-1.32 at yocto-www;
	Mon, 11 May 2015 00:58:54 PDT
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.4])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AF61E009AF
	for <yocto@yoctoproject.org>; Mon, 11 May 2015 00:58:54 -0700 (PDT)
Received: from [216.82.249.131] by server-4.bemta-12.messagelabs.com id
	C2/A1-16642-3BF50555; Mon, 11 May 2015 07:52:19 +0000
X-Env-Sender: Teemu.Keskinarkaus@Maximatecc.com
X-Msg-Ref: server-16.tower-28.messagelabs.com!1431330738!32849328!1
X-Originating-IP: [207.250.73.121]
X-StarScan-Received: 
X-StarScan-Version: 6.13.14; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 26428 invoked from network); 11 May 2015 07:52:19 -0000
Received: from unknown (HELO ammail.actuant.com) (207.250.73.121)
	by server-16.tower-28.messagelabs.com with AES128-SHA encrypted SMTP;
	11 May 2015 07:52:19 -0000
Received: from AMDRSEX03.actuant.pri (10.10.32.35) by AMDTCEX10.actuant.pri
	(10.0.11.67) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Mon, 11 May 2015 02:52:18 -0500
Received: from AMDTCEX10.actuant.pri ([fe80::40f6:8682:1d1f:3805]) by
	AMDRSEX03.actuant.pri ([fe80::7ce7:fc59:90a:1d2d%16]) with mapi id
	14.03.0174.001; Mon, 11 May 2015 02:52:18 -0500
From: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@Maximatecc.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Toolchain and SDK
Thread-Index: AdCLvYop66QVkIh9RaahnRbFDiNSfA==
Date: Mon, 11 May 2015 07:52:16 +0000
Message-ID: <83DB4EC8FADD45428E3CC4E3664761FD218F77C5@AMDTCEX10.actuant.pri>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.116]
MIME-Version: 1.0
Subject: Toolchain and SDK
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
X-List-Received-Date: Mon, 11 May 2015 07:58:58 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_83DB4EC8FADD45428E3CC4E3664761FD218F77C5AMDTCEX10actuan_"

--_000_83DB4EC8FADD45428E3CC4E3664761FD218F77C5AMDTCEX10actuan_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm sure (or at least hope so) that there is documentation for this, but I =
just couldn't find it.

We are using Yocto to build Linux images on couple different HW (x86 and im=
x6). Now we would like to make SDK (with toolchain) for them.

I've learned that there is command: bitbake image-recipe -c populate_sdk th=
at'll create the sdk. The thing is that it contains the sysroots, but toolc=
hain is not there.

I tried meta-toolchain - target as well, but that too didn't make the toolc=
hain or at least I couldn't find it anywhere.

How should I do the sdk that it comes with the toolchain also? I'm using Yo=
cto versions 1.6.1 and 1.7.1.

Teemu Keskinarkaus
Software system engineer
Cell: +358 400 330047
Fax: +358 207 669199
www.maximatecc.com<http://www.maximatecc.com/>

maximatecc
making machines smart, safe and productive


________________________________

Actuant Corporation Email Notice

This message is intended only for the use of the Addressee and may contain =
information that is PRIVILEGED and/or CONFIDENTIAL.
This email is intended only for the personal and confidential use of the re=
cipient(s) named above. If the reader of this email is not an intended reci=
pient, you have received this email in error and any review, dissemination,=
 distribution or copying is strictly prohibited.
If you have received this email in error, please notify the sender immediat=
ely by return mail and permanently delete the copy you received.

Thank you.

--_000_83DB4EC8FADD45428E3CC4E3664761FD218F77C5AMDTCEX10actuan_
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
	{font-family:"Century Gothic";
	panose-1:2 11 5 2 2 2 2 2 2 4;}
@font-face
	{font-family:Georgia;
	panose-1:2 4 5 2 5 4 5 2 3 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 2.0cm 70.85pt 2.0cm;}
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m sure (or at least hope so) that there is d=
ocumentation for this, but I just couldn&#8217;t find it.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are using Yocto to build Linux images on couple d=
ifferent HW (x86 and imx6). Now we would like to make SDK (with toolchain) =
for them.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve learned that there is command: bitbake im=
age-recipe &#8211;c populate_sdk that&#8217;ll create the sdk. The thing is=
 that it contains the sysroots, but toolchain is not there.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I tried meta-toolchain &#8211; target as well, but t=
hat too didn&#8217;t make the toolchain or at least I couldn&#8217;t find i=
t anywhere.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How should I do the sdk that it comes with the toolc=
hain also? I&#8217;m using Yocto versions 1.6.1 and 1.7.1.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"line-height:9.0pt;mso-line-height-rule:exac=
tly"><b><span style=3D"font-size:10.0pt;font-family:&quot;Century Gothic&qu=
ot;,&quot;sans-serif&quot;">Teemu Keskinarkaus<br>
</span></b><span style=3D"font-size:7.5pt;font-family:&quot;Century Gothic&=
quot;,&quot;sans-serif&quot;">Software system engineer</span><b><span style=
=3D"font-size:10.0pt;font-family:&quot;Century Gothic&quot;,&quot;sans-seri=
f&quot;"><br>
</span></b><span style=3D"font-size:7.5pt;font-family:&quot;Century Gothic&=
quot;,&quot;sans-serif&quot;">Cell: &#43;358&nbsp;400&nbsp;330047</span><b>=
<span style=3D"font-size:6.0pt;font-family:&quot;Century Gothic&quot;,&quot=
;sans-serif&quot;"><br>
</span></b><span style=3D"font-size:7.5pt;font-family:&quot;Century Gothic&=
quot;,&quot;sans-serif&quot;">Fax: &#43;358&nbsp;207 669199</span><b><span =
style=3D"font-size:6.0pt;font-family:&quot;Century Gothic&quot;,&quot;sans-=
serif&quot;"><br>
</span></b><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-family:&quot=
;Century Gothic&quot;,&quot;sans-serif&quot;"><a href=3D"http://www.maximat=
ecc.com/"><span style=3D"font-size:7.5pt;color:#0070C0">www.maximatecc.com<=
/span></a></span><span lang=3D"EN-GB" style=3D"font-size:7.5pt;font-family:=
&quot;Century Gothic&quot;,&quot;sans-serif&quot;;color:#0070C0">
</span><b><span style=3D"font-size:6.0pt;font-family:&quot;Century Gothic&q=
uot;,&quot;sans-serif&quot;;color:#0070C0"><br>
<br>
</span></b><b><span lang=3D"EN-GB" style=3D"font-size:12.0pt;font-family:&q=
uot;Century Gothic&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></s=
pan></b></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-GB" style=3D"font-size:12.0pt;fo=
nt-family:&quot;Century Gothic&quot;,&quot;sans-serif&quot;;color:black">ma=
ximatecc<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:7.5pt;font-f=
amily:&quot;Century Gothic&quot;,&quot;sans-serif&quot;;color:black">making=
 machines smart, safe and productive</span><span style=3D"font-size:7.5pt">=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Black" size=3D"1"><br>
Actuant Corporation Email Notice<br>
<br>
This message is intended only for the use of the Addressee and may contain =
information that is PRIVILEGED and/or CONFIDENTIAL.<br>
This email is intended only for the personal and confidential use of the re=
cipient(s) named above. If the reader of this email is not an intended reci=
pient, you have received this email in error and any review, dissemination,=
 distribution or copying is strictly
 prohibited.<br>
If you have received this email in error, please notify the sender immediat=
ely by return mail and permanently delete the copy you received.<br>
<br>
Thank you.<br>
</font>
</body>
</html>

--_000_83DB4EC8FADD45428E3CC4E3664761FD218F77C5AMDTCEX10actuan_--
