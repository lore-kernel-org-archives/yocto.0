Return-Path: <alexander.haenel-baas@sieb-meyer.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91776E008C9; Thu,  6 Nov 2014 03:03:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 74 seconds by postgrey-1.32 at yocto-www;
	Thu, 06 Nov 2014 03:03:54 PST
Received: from mail.sieb-meyer.de (smnotes1.sieb-meyer.de [213.252.170.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3640BE00830
	for <yocto@yoctoproject.org>; Thu,  6 Nov 2014 03:03:54 -0800 (PST)
Received: from SMEXCHANGE01.siebmeyer.org ([::1]) by
	SMExchange01.siebmeyer.org ([::1]) with mapi id 14.02.0387.000;
	Thu, 6 Nov 2014 12:02:35 +0100
From: =?iso-8859-1?Q?H=E4nel-Baas=2C_Alexander?=
	<alexander.haenel-baas@sieb-meyer.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: eclipse yocto plugin lost the settings
Thread-Index: Ac/5sII28HjonYx9TcuPXovW7aUaww==
Date: Thu, 6 Nov 2014 11:02:33 +0000
Message-ID: <9BA84827B30CBE4996725F98F7DC9123428E3116@SMExchange01.siebmeyer.org>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.11.207]
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean
MIME-Version: 1.0
Subject: eclipse yocto plugin lost the settings
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
X-List-Received-Date: Thu, 06 Nov 2014 11:03:58 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_9BA84827B30CBE4996725F98F7DC9123428E3116SMExchange01sie_"

--_000_9BA84827B30CBE4996725F98F7DC9123428E3116SMExchange01sie_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

I have installed the yoco eclipse plug in from http://downloads.yoctoprojec=
t.org/releases/eclipse-plugin/1.6/kepler.

During the installation process I become the message:
" Warning: You are installing software that contains unsigned content. The =
authenticity or validity of this software cannot be established. Do you wan=
t to continue with the installation?"

I continued the installation.

My Problem is now, I set the Toolchain/Sysroot location in the Yocto ADT Di=
alog, then press Apply/OK button to save the settings.
Then close the Dialog open it again, and my settings are lost...

I look into installed software->plugins an see that the Signed symbol is br=
oken.

The Eclipse version is:
Keppler Version: Kepler Service Release 2
Build id: 20140224-0627
and  runs on a debian System

What can I do to get the plugin to work?

Greeting and thanks,
Alex





--_000_9BA84827B30CBE4996725F98F7DC9123428E3116SMExchange01sie_
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
	mso-fareast-language:EN-US;}
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
	mso-style-link:"Sprechblasentext Zchn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:EN-US;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.SprechblasentextZchn
	{mso-style-name:"Sprechblasentext Zchn";
	mso-style-priority:99;
	mso-style-link:Sprechblasentext;
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
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
<p class=3D"MsoNormal">Hi<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have installed the yoco eclip=
se plug in from
<a href=3D"http://downloads.yoctoproject.org/releases/eclipse-plugin/1.6/ke=
pler">http://downloads.yoctoproject.org/releases/eclipse-plugin/1.6/kepler<=
/a>.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">During the installation process=
 I become the message:
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&#8221; Warning: You are instal=
ling software that contains unsigned content. The authenticity or validity =
of this software cannot be established. Do you want to continue with the in=
stallation?&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I continued the installation.<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">My Problem is now, I set the To=
olchain/Sysroot location in the Yocto ADT Dialog, then press Apply/OK butto=
n to save the settings.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Then close the Dialog open it a=
gain, and my settings are lost&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I look into installed software-=
&gt;plugins an see that the Signed symbol is broken.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The Eclipse version is:<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Keppler Version: Kepler Service=
 Release 2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Build id: 20140224-0627<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">and &nbsp;runs on a debian Syst=
em<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">What can I do to get the plugin=
 to work?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Greeting and thanks,<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Alex<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_9BA84827B30CBE4996725F98F7DC9123428E3116SMExchange01sie_--
