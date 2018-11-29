Return-Path: <Klaus.Noeske@indu-sol.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5076CE00CA9; Thu, 29 Nov 2018 02:51:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.indu-sol.com (mail.indu-sol.com [92.79.72.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 636D6E00901
	for <yocto@yoctoproject.org>; Thu, 29 Nov 2018 02:51:06 -0800 (PST)
From: =?iso-8859-1?Q?Indu-Sol_GmbH=2C_Klaus_N=F6ske?=
	<Klaus.Noeske@indu-sol.com>
To: ChenQi <Qi.Chen@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Yocto version thud busybox build failed: rpc/rpc.h -
	No such file
Thread-Index: AdSHvJYVICes6ng4ShmFpGEJ03xbp////WKA///WQ0A=
Date: Thu, 29 Nov 2018 10:51:03 +0000
Message-ID: <A2C130CD097EC048BAC89FFB315E00FC939C6243@INDU-EXC.indu-sol.intra>
References: <A2C130CD097EC048BAC89FFB315E00FC939C61EE@INDU-EXC.indu-sol.intra>
	<29fc7613-b483-50cc-5d02-e28b527f0204@windriver.com>
In-Reply-To: <29fc7613-b483-50cc-5d02-e28b527f0204@windriver.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: Re: Yocto version thud busybox build failed: rpc/rpc.h - No such file
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
X-List-Received-Date: Thu, 29 Nov 2018 10:51:09 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_A2C130CD097EC048BAC89FFB315E00FC939C6243INDUEXCindusoli_"

--_000_A2C130CD097EC048BAC89FFB315E00FC939C6243INDUEXCindusoli_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I figured it out why rpc is needed. Rpc is needed for the nfs mount feature=
 and was enabled by my old distro configuration for busybox. But don't need=
 this feature.
I just changed/comment out:

-          from CONFIG_FEATURE_HAVE_RPC=3Dy to # CONFIG_FEATURE_HAVE_RPC is=
 not set

-          from CONFIG_FEATURE_MOUNT_NFS=3Dy to # CONFIG_FEATURE_MOUNT_NFS =
is not set
And now this works and compiles.

Thanks for you quick response. Your hint with "your busybox bbappend" helpe=
d me a lot =3D)

BR
Klaus


Von: ChenQi [mailto:Qi.Chen@windriver.com]
Gesendet: Donnerstag, 29. November 2018 10:06
An: Indu-Sol GmbH, Klaus N=F6ske; yocto@yoctoproject.org
Betreff: Re: [yocto] Yocto version thud busybox build failed: rpc/rpc.h - N=
o such file

How about adding in your busybox bbappend file the following line.
DEPENDS +=3D "libtirpc"

Best Regards,
Chen Qi

On 11/29/2018 04:29 PM, Indu-Sol GmbH, Klaus N=F6ske wrote:
Hello,

I try to migrate my project from fido to thud. Currently I have problems to=
 build busybox. It fails with error: rpc/rpc.h - No such file. This was alr=
eady mentioned here: https://lists.yoctoproject.org/pipermail/yocto/2018-Ma=
y/041163.html. But I was not able to find the solution there.
My build host is Ubuntu 16.04 (x86_64) and my target is an ARM board/device=
.
The "thud" commit I use is: 94b13882510561b4ab7c08fd0343038c154680a4 (sanit=
y: Add check for WSL)

What can I do to solve this problem?
Thanks

BR
Klaus





--_000_A2C130CD097EC048BAC89FFB315E00FC939C6243INDUEXCindusoli_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	color:black;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	color:black;
	mso-fareast-language:EN-US;}
span.E-MailFormatvorlage17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.E-MailFormatvorlage19
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1072387411;
	mso-list-type:hybrid;
	mso-list-template-ids:636529144 -877081938 67567619 67567621 67567617 6756=
7619 67567621 67567617 67567619 67567621;}
@list l0:level1
	{mso-level-start-at:8;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body bgcolor=3D"white" lang=3D"DE" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:#1F497D">Hi,<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:#1F497D">I figur=
ed it out why rpc is needed. Rpc is needed for the nfs mount feature and wa=
s enabled by my old distro configuration for busybox. But don&#8217;t need =
this feature.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:#1F497D">I just =
changed/comment out:<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-GB" style=3D"color:#1F497D">=
<span style=3D"mso-list:Ignore">-<span style=3D"font:7.0pt &quot;Times New =
Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-GB" style=3D"color:#1F497D"=
>from CONFIG_FEATURE_HAVE_RPC=3Dy to # CONFIG_FEATURE_HAVE_RPC is not set<o=
:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-GB" style=3D"color:#1F497D">=
<span style=3D"mso-list:Ignore">-<span style=3D"font:7.0pt &quot;Times New =
Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-GB" style=3D"color:#1F497D"=
>from CONFIG_FEATURE_MOUNT_NFS=3Dy to # CONFIG_FEATURE_MOUNT_NFS is not set=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:#1F497D">And now=
 this works and compiles.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:#1F497D">Thanks =
for you quick response. Your hint with &#8220;your busybox bbappend&#8221; =
helped me a lot =3D)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:#1F497D">BR<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:#1F497D">Klaus<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext;mso-fareast-language:=
DE">Von:</span></b><span style=3D"font-size:10.0pt;font-family:&quot;Tahoma=
&quot;,&quot;sans-serif&quot;;color:windowtext;mso-fareast-language:DE"> Ch=
enQi
 [mailto:Qi.Chen@windriver.com] <br>
<b>Gesendet:</b> Donnerstag, 29. November 2018 10:06<br>
<b>An:</b> Indu-Sol GmbH, Klaus N=F6ske; yocto@yoctoproject.org<br>
<b>Betreff:</b> Re: [yocto] Yocto version thud busybox build failed: rpc/rp=
c.h - No such file<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">How about adding in your busybox bbappend file the f=
ollowing line.<br>
DEPENDS &#43;=3D &quot;libtirpc&quot;<br>
<br>
Best Regards,<br>
Chen Qi<br>
<br>
On 11/29/2018 04:29 PM, Indu-Sol GmbH, Klaus N=F6ske wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Hello,</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">I try to migrate my project fro=
m fido to thud. Currently I have problems to build busybox. It fails with e=
rror: rpc/rpc.h - No such file. This was already mentioned here:
<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2018-May/041163.h=
tml">https://lists.yoctoproject.org/pipermail/yocto/2018-May/041163.html</a=
>. But I was not able to find the solution there.
</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">My build host is Ubuntu 16.04 (=
x86_64) and my target is an ARM board/device.
</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">The &#8220;thud&#8221; commit I=
 use is: 94b13882510561b4ab7c08fd0343038c154680a4 (sanity: Add check for WS=
L)</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">What can I do to solve this pro=
blem?</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Thanks</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">BR</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Klaus</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,&quot;serif&quot;;mso-fareast-language:DE"><br>
<br>
<o:p></o:p></span></p>
</blockquote>
<p><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_A2C130CD097EC048BAC89FFB315E00FC939C6243INDUEXCindusoli_--
