Return-Path: <Neil.Wu@Emerson.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CD0AE0072A; Sun, 16 Nov 2014 18:16:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [144.191.128.191 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from USSTLZ-PINFEZ07.extemr.org (usstlz-pinfez07.extemr.org
	[144.191.128.191])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DB80E0048B
	for <yocto@yoctoproject.org>; Sun, 16 Nov 2014 18:16:24 -0800 (PST)
Received: from USSTLZ-PMSG003.emrsn.org (10.16.72.185) by
	USSTLZ-PINFEZ07.extemr.org (10.16.8.80) with Microsoft SMTP Server
	(TLS) id 14.3.158.1; Mon, 17 Nov 2014 02:16:23 +0000
Received: from USSTLZ-PMSG012.emrsn.org ([169.254.3.30]) by
	USSTLZ-PMSG003.emrsn.org ([169.254.7.37]) with mapi id 14.03.0158.001;
	Mon, 17 Nov 2014 02:16:23 +0000
From: <Neil.Wu@Emerson.com>
To: <yocto@yoctoproject.org>
Thread-Topic: Compile th nativesdk-automake fail.
Thread-Index: Ac/6NKRwhXPCQAGzQEuIFZDgXR9GiQE70huAALn2KxA=
Date: Mon, 17 Nov 2014 02:16:21 +0000
Message-ID: <3204FE6663E1F14CAF4CA6928E60C8521E20E67E@USSTLZ-PMSG012.emrsn.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.75.1]
MIME-Version: 1.0
Subject: Compile th nativesdk-automake fail.
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
X-List-Received-Date: Mon, 17 Nov 2014 02:16:26 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3204FE6663E1F14CAF4CA6928E60C8521E20E67EUSSTLZPMSG012em_"

--_000_3204FE6663E1F14CAF4CA6928E60C8521E20E67EUSSTLZPMSG012em_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all :
It appears the following problem when compiling the nativesdk-automake:

| Can't locate Text/Tabs.pm in @INC (@INC contains: //usr/lib/perl/5.14.3 /=
/usr/lib/perl //usr/lib/perl/5.14.3 /opt/poky/1.6.1/sysroots/i686-pokysdk-l=
inux/usr/lib/perl/site_perl/5.14.3/ /opt/poky/1.6.1/sysroots/i686-pokysdk-l=
inux/usr/lib/perl/site_perl/5.14.3 /opt/poky/1.6.1/sysroots/i686-pokysdk-li=
nux/usr/lib/perl/vendor_perl/5.14.3/ /opt/poky/1.6.1/sysroots/i686-pokysdk-=
linux/usr/lib/perl/vendor_perl/5.14.3 /opt/poky/1.6.1/sysroots/i686-pokysdk=
-linux/usr/lib/perl/5.14.3/ /opt/poky/1.6.1/sysroots/i686-pokysdk-linux/usr=
/lib/perl/5.14.3 /opt/poky/1.6.1/sysroots/i686-pokysdk-linux/usr/lib/perl/5=
.14.3 .) at /home/etcrs/poky/build/tmp/work/i686-nativesdk-pokysdk-linux/na=
tivesdk-automake/1.14-r0/automake-1.14/doc/help2man line 25.
| BEGIN failed--compilation aborted at /home/etcrs/poky/build/tmp/work/i686=
-nativesdk-pokysdk-linux/nativesdk-automake/1.14-r0/automake-1.14/doc/help2=
man line 25.

If someone has also encountered such a problem, please tell me how to resol=
ve it!
Thank you !

--_000_3204FE6663E1F14CAF4CA6928E60C8521E20E67EUSSTLZPMSG012em_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:Consolas;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:Consolas;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi all :<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">It appears the followi=
ng problem when compiling the nativesdk-automake:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">| Can't locate Text/Ta=
bs.pm in @INC (@INC contains: //usr/lib/perl/5.14.3 //usr/lib/perl //usr/li=
b/perl/5.14.3 /opt/poky/1.6.1/sysroots/i686-pokysdk-linux/usr/lib/perl/site=
_perl/5.14.3/ /opt/poky/1.6.1/sysroots/i686-pokysdk-linux/usr/lib/perl/site=
_perl/5.14.3
 /opt/poky/1.6.1/sysroots/i686-pokysdk-linux/usr/lib/perl/vendor_perl/5.14.=
3/ /opt/poky/1.6.1/sysroots/i686-pokysdk-linux/usr/lib/perl/vendor_perl/5.1=
4.3 /opt/poky/1.6.1/sysroots/i686-pokysdk-linux/usr/lib/perl/5.14.3/ /opt/p=
oky/1.6.1/sysroots/i686-pokysdk-linux/usr/lib/perl/5.14.3
 /opt/poky/1.6.1/sysroots/i686-pokysdk-linux/usr/lib/perl/5.14.3 .) at /hom=
e/etcrs/poky/build/tmp/work/i686-nativesdk-pokysdk-linux/nativesdk-automake=
/1.14-r0/automake-1.14/doc/help2man line 25.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">| BEGIN failed--compil=
ation aborted at /home/etcrs/poky/build/tmp/work/i686-nativesdk-pokysdk-lin=
ux/nativesdk-automake/1.14-r0/automake-1.14/doc/help2man line 25.<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">If someone has also en=
countered such a problem, please tell me how to resolve it!
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thank you !<o:p></o:p>=
</span></p>
</div>
</body>
</html>

--_000_3204FE6663E1F14CAF4CA6928E60C8521E20E67EUSSTLZPMSG012em_--
