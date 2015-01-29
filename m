Return-Path: <Thomas.Moore2@atk.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05A50E0090F; Wed, 28 Jan 2015 19:32:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mx-mn.atk.com (mx-mn.atk.com [192.107.248.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F267CE0092E
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 19:32:07 -0800 (PST)
Received: from unknown (HELO UT40SVCWEC0001.atk.com) ([146.168.70.142])
	by mx-mn.atk.com with ESMTP; 28 Jan 2015 21:23:52 -0600
Received: from UT40SVCWEM001.atk.com ([169.254.4.192]) by
	UT40SVCWEC0001.atk.com ([146.168.70.142]) with mapi id 14.03.0174.001;
	Wed, 28 Jan 2015 20:32:06 -0700
From: "Moore, Thomas (FtWorth)" <Thomas.Moore2@ATK.COM>
To: ChenQi <Qi.Chen@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Shell not processing color escape codes
Thread-Index: AdA7RN4B0XDa1KMrRzKoHECUhWqgmQAYWGCAAA2fW6D//6E0gIAAcrHg
Date: Thu, 29 Jan 2015 03:32:06 +0000
Message-ID: <7B6FE55CD594D7478CED8A39DF3BFC0A5E74178A@UT40SVCWEM001.atk.com>
References: <7B6FE55CD594D7478CED8A39DF3BFC0A5E7416E7@UT40SVCWEM001.atk.com>
	<54C99B51.2050600@windriver.com>
	<7B6FE55CD594D7478CED8A39DF3BFC0A5E741769@UT40SVCWEM001.atk.com>
	<54C9A737.2020301@windriver.com>
In-Reply-To: <54C9A737.2020301@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.99.32.35]
MIME-Version: 1.0
Subject: Re: Shell not processing color escape codes
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
X-List-Received-Date: Thu, 29 Jan 2015 03:32:14 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E74178AUT40SVCWEM001at_"

--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E74178AUT40SVCWEM001at_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Oops. I was running an older version of the image. The new version of the i=
mage does have the GNU less command and it works as expected.

Thanks,

Thomas

From: ChenQi [mailto:Qi.Chen@windriver.com]
Sent: Wednesday, January 28, 2015 9:21 PM
To: Moore, Thomas (FtWorth); yocto@yoctoproject.org
Subject: Re: [yocto] Shell not processing color escape codes

That's a little strange. The `less' command you are using should be from th=
e less package.
It has higher priority than that from busybox.

ALTERNATIVE_${PN} =3D "less"
ALTERNATIVE_PRIORITY =3D "100"

The priority from busybox is "50".

Regards,
Chen Qi

On 01/29/2015 11:01 AM, Moore, Thomas (FtWorth) wrote:
I added less to my IMAGE_INSTALL, but it looks like I still have the busybo=
x version in my image. How might I go about forcing the use of the standard=
 less?

Thomas

From: ChenQi [mailto:Qi.Chen@windriver.com]
Sent: Wednesday, January 28, 2015 8:31 PM
To: Moore, Thomas (FtWorth); yocto@yoctoproject.org<mailto:yocto@yoctoproje=
ct.org>
Subject: Re: [yocto] Shell not processing color escape codes

On 01/29/2015 05:56 AM, Moore, Thomas (FtWorth) wrote:
Hello,

In my image, I've included systemd. I've noticed that when running the syst=
emctl command, the shell (/bin/sh) is not processing the color escape codes=
. Here's an example of what it looks like:

[[1;39m82 loaded units listed.[[0m Pass -all to see loaded but inactive uni=
ts, too.

Any suggestions on how I can either get the shell to process the escape cod=
es or prevent systemctl from generating them?

Thanks,

Thomas





1. Install 'less'
2. append '--no-pager' to commands

There's related a bug on bugzilla.
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5723

Regards,
Chen Qi


--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E74178AUT40SVCWEM001at_
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
@font-face
	{font-family:"Times New Roman \, serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	color:black;}
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
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	color:black;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";
	color:black;}
span.EmailStyle21
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
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Oops. I was running an=
 older version of the image. The new version of the image does have the GNU=
 less command and it works as expected.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<p class=3D"MsoNormal"><b><span style=3D"color:#1F497D">Thomas</span></b><s=
pan style=3D"color:#1F497D"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif=
&quot;;color:windowtext"> ChenQi [mailto:Qi.Chen@windriver.com]
<br>
<b>Sent:</b> Wednesday, January 28, 2015 9:21 PM<br>
<b>To:</b> Moore, Thomas (FtWorth); yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Shell not processing color escape codes<o:p></o=
:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">That's a little strange. The `less' command you are =
using should be from the less package.<br>
It has higher priority than that from busybox.<br>
<br>
ALTERNATIVE_${PN} =3D &quot;less&quot;<br>
ALTERNATIVE_PRIORITY =3D &quot;100&quot;<br>
<br>
The priority from busybox is &quot;50&quot;.<br>
<br>
Regards,<br>
Chen Qi<br>
<br>
On 01/29/2015 11:01 AM, Moore, Thomas (FtWorth) wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I added less to my IMA=
GE_INSTALL, but it looks like I still have the busybox version in my image.=
 How might I go about forcing the use of the standard less?</span><o:p></o:=
p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:=
p></p>
<div>
<p class=3D"MsoNormal"><b><span style=3D"color:#1F497D">Thomas </span></b><=
o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:=
p></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif=
&quot;;color:windowtext"> ChenQi [<a href=3D"mailto:Qi.Chen@windriver.com">=
mailto:Qi.Chen@windriver.com</a>]
<br>
<b>Sent:</b> Wednesday, January 28, 2015 8:31 PM<br>
<b>To:</b> Moore, Thomas (FtWorth); <a href=3D"mailto:yocto@yoctoproject.or=
g">yocto@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Shell not processing color escape codes</span><=
o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">On 01/29/2015 05:56 AM, Moore, Thomas (FtWorth) wrot=
e:<o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">In my image, I&#8217;ve included systemd. I&#8217;ve=
 noticed that when running the systemctl command, the shell (/bin/sh) is no=
t processing the color escape codes. Here&#8217;s an example of what it loo=
ks like:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">[[1;39m82 loaded units listed.[[0m Pass &#8211;all t=
o see loaded but inactive units, too.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Any suggestions on how I can either get the shell to=
 process the escape codes or prevent systemctl from generating them?<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><b>Thomas</b><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman , serif&quot;,&quot;serif&quot;"><br>
<br>
<br>
</span><o:p></o:p></p>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman , serif&quot;,&quot;serif&quot;"><br>
1. Install 'less'<br>
2. append '--no-pager' to commands<br>
<br>
There's related a bug on bugzilla.<br>
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5723">https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D5723</a><br>
<br>
Regards,<br>
Chen Qi</span><o:p></o:p></p>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,&quot;serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E74178AUT40SVCWEM001at_--
