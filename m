Return-Path: <Neil.Wu@Emerson.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A39D4E008BA; Sun, 19 Oct 2014 19:24:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [144.191.128.189 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from USSTLZ-PINFEZ05.extemr.org (usstlz-pinfez05.extemr.org
	[144.191.128.189])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 559DEE00861
	for <yocto@yoctoproject.org>; Sun, 19 Oct 2014 19:24:21 -0700 (PDT)
Received: from USSTLZ-PMSG010.emrsn.org (10.16.72.192) by
	USSTLZ-PINFEZ05.extemr.org (10.16.8.78) with Microsoft SMTP Server
	(TLS) id 14.3.158.1; Mon, 20 Oct 2014 02:24:21 +0000
Received: from USSTLZ-PMSG012.emrsn.org ([169.254.3.183]) by
	USSTLZ-PMSG010.emrsn.org ([169.254.2.179]) with mapi id 14.03.0158.001;
	Mon, 20 Oct 2014 02:24:20 +0000
From: <Neil.Wu@Emerson.com>
To: <yocto@yoctoproject.org>
Thread-Topic: create_image.tar fail
Thread-Index: Ac/QwcFOPo0Bg5rkSSK4jS9YNrymzgFg8X/gBXFQsfA=
Date: Mon, 20 Oct 2014 02:24:20 +0000
Message-ID: <3204FE6663E1F14CAF4CA6928E60C85215BBF531@USSTLZ-PMSG012.emrsn.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.75.1]
MIME-Version: 1.0
Subject: Re: create_image.tar fail
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
X-List-Received-Date: Mon, 20 Oct 2014 02:24:26 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3204FE6663E1F14CAF4CA6928E60C85215BBF531USSTLZPMSG012em_"

--_000_3204FE6663E1F14CAF4CA6928E60C85215BBF531USSTLZPMSG012em_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
*                   I need to  creat a new recipes to add libtdb to rootfs.=
 The source code of tdb is Makefile-Base Package. Bitbake make will run the=
 makefile  automatically<javascript:void(0);> to finish the do_compile. But=
 , I must to execute<javascript:void(0);> one "configure" file of source co=
de in do_configure task before do_compile. How to execute the "configure"  =
in do_configure task ?
*
*                  do_configure{
*                             ............   /*how to execure the configure=
 file*/
*                            }

            How to solve the problem?  If you know , please help me.  Thank=
 you.
Thank you&Best regards
Neil Wu


--_000_3204FE6663E1F14CAF4CA6928E60C85215BBF531USSTLZPMSG012em_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
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
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
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
/* List Definitions */
@list l0
	{mso-list-id:24864807;
	mso-list-template-ids:-162079504;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1
	{mso-list-id:1249921462;
	mso-list-template-ids:437657730;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:#1F497D">Hello,<o:p></o:p></span=
></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:0in;text-indent:-.25in;line-hei=
ght:18.0pt;mso-list:l0 level1 lfo2;background:#F2F2F2">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:Symbol;col=
or:#1F497D"><span style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0=
pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span></span><![endif]><span style=3D"font-size:14.0pt;color:#1F497=
D">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;I need to &n=
bsp;creat a new recipes to add libtdb to rootfs. The source code of tdb is =
Makefile-Base Package. Bitbake make will run the makefile &nbsp;<a href=3D"=
javascript:void(0);"><span style=3D"color:#1F497D;text-decoration:none">aut=
omatically</span></a>
 to finish the do_compile. But , I must to <a href=3D"javascript:void(0);">=
<span style=3D"color:#1F497D;text-decoration:none">execute</span></a> one &=
#8220;configure&#8221; file of source code in do_configure task before do_c=
ompile. How to execute the &#8220;configure&#8221; &nbsp;in do_configure
 task ?<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0in;text-indent:-.25in;line-hei=
ght:18.0pt;mso-list:l1 level1 lfo1;background:#F2F2F2">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:Symbol;col=
or:#1F497D"><span style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0=
pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span></span><![endif]><span style=3D"font-size:14.0pt;color:#1F497=
D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0in;text-indent:-.25in;line-hei=
ght:18.0pt;mso-list:l1 level1 lfo1;background:#F2F2F2">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:Symbol;col=
or:#434343"><span style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0=
pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;do_configure{</span><span style=3D"=
font-size:9.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;color=
:#434343"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0in;text-indent:-.25in;line-hei=
ght:18.0pt;mso-list:l1 level1 lfo1;background:#F2F2F2">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:Symbol;col=
or:#434343"><span style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0=
pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#8230;&#8230;&#8230;&#8230;&nbsp;&nbsp; /*h=
ow to execure the configure file*/</span><span style=3D"font-size:9.0pt;fon=
t-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:#434343"><o:p></o:=
p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:0in;text-indent:-.25in;line-hei=
ght:18.0pt;mso-list:l1 level1 lfo1;background:#F2F2F2">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:Symbol;col=
or:#434343"><span style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0=
pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;}</span><span style=3D"font-size:9.0pt;font-family=
:&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:#434343"><o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; How to solve the problem?&nbsp=
; If you know , please help me. &nbsp;Thank you.</span><o:p></o:p></p>
<p class=3D"MsoNormal">Thank you&amp;Best regards<o:p></o:p></p>
<p class=3D"MsoNormal">Neil Wu<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_3204FE6663E1F14CAF4CA6928E60C85215BBF531USSTLZPMSG012em_--
