Return-Path: <Neil.Wu@Emerson.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23AAEE008CC; Thu, 13 Nov 2014 01:43:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [144.191.128.192 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from USSTLZ-PINFEZ08.extemr.org (usstlz-pinfez08.extemr.org
	[144.191.128.192])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03C90E00831
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 01:43:10 -0800 (PST)
Received: from USSTLZ-PMSG005.emrsn.org (10.16.72.187) by
	USSTLZ-PINFEZ08.extemr.org (10.16.8.81) with Microsoft SMTP Server
	(TLS) id 14.3.158.1; Thu, 13 Nov 2014 09:43:09 +0000
Received: from USSTLZ-PMSG012.emrsn.org ([169.254.3.30]) by
	USSTLZ-PMSG005.emrsn.org ([169.254.8.212]) with mapi id 14.03.0158.001;
	Thu, 13 Nov 2014 09:43:08 +0000
From: <Neil.Wu@Emerson.com>
To: <yocto@yoctoproject.org>
Thread-Topic: Can't find the header files after install adt_installer.tar.gz
Thread-Index: Ac/6NKRwhXPCQAGzQEuIFZDgXR9GiQE70huA
Date: Thu, 13 Nov 2014 09:43:08 +0000
Message-ID: <3204FE6663E1F14CAF4CA6928E60C8521E20E32E@USSTLZ-PMSG012.emrsn.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.75.1]
MIME-Version: 1.0
Subject: Can't find the header files after install adt_installer.tar.gz
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
X-List-Received-Date: Thu, 13 Nov 2014 09:43:23 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3204FE6663E1F14CAF4CA6928E60C8521E20E32EUSSTLZPMSG012em_"

--_000_3204FE6663E1F14CAF4CA6928E60C8521E20E32EUSSTLZPMSG012em_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all :
           I have installed  the adt_installer .tar.gz like fllowing:
              $ cd ~
              $ tar -xjf adt_installer.tar.bz2
              $ cd adt-installer
              $ ./adt_installer

        Because the YOCTOADT_TARGET_SYSROOT_LOC_arm=3D"$HOME/test-yocto/$YO=
CTOADT_TARGET_MACHINE_arm  in adt_installer.conf file ,
        then I extract the myself Root Filesystem:
             $source /opt/poky/1.7/environment-setup-i586-poky-linux
             $ runqemu-extract-sdk           ~/Downloads/core-image-arm-roo=
tfs.tar.bz2           $HOME/ test-yocto/ qemuarm/

       Try to compile  the  "Helloworld", it apper this error:
          hello.c:1:19: fatal error: stdio.h: No such file or directory

    Do you know how to resolve the issue? Please help me !
    Thank you very much!

--_000_3204FE6663E1F14CAF4CA6928E60C8521E20E32EUSSTLZPMSG012em_
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
<p class=3D"MsoNormal"><span style=3D"font-size:16.0pt;color:#1F497D">Hi al=
l :<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:16.0pt;color:#1F497D">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I have installed &n=
bsp;the adt_installer .tar.gz like fllowing:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:16.0pt;color:#1F497D">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;$=
 cd ~<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:16.0pt;color:#1F497D">&nbsp=
;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$=
 tar -xjf adt_installer.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:16.0pt;color:#1F497D">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;$=
 cd adt-installer<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:16.0pt;color:#1F497D">&nbsp=
;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$=
 ./adt_installer<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:16.0pt;color:#1F497D"><o:p>=
&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:16.0pt;color:#1F497D">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Because the YOCTOADT_TARGET_SYSROOT_L=
OC_arm=3D&quot;$HOME/test-yocto/$YOCTOADT_TARGET_MACHINE_arm&nbsp; in adt_i=
nstaller.conf file ,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:16.0pt;color:#1F497D">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;then I extract the myself Root Filesy=
stem:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:16.0pt;color:#1F497D">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $source=
 /opt/poky/1.7/environment-setup-i586-poky-linux<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:16.0pt;color:#1F497D">&nbsp=
; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$ runqe=
mu-extract-sdk &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
~/Downloads/core-image-arm-rootfs.tar.bz2 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;$HOME/ test-yocto/</span><span style=3D"font-siz=
e:16.0pt">
</span><span style=3D"font-size:16.0pt;color:#1F497D">qemuarm/<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:16.0pt;color:#1F497D"><o:p>=
&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:16.0pt;color:#1F497D">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Try to compile &nbsp;the &nbsp;&#8220;Hello=
world&#8221;, it apper this error:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:16.0pt;color:#1F497D">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
<span style=3D"font-size:16.0pt;color:red">hello.c:1:19: fatal error: stdio=
.h: No such file or directory<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:16.0pt;color:red"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:16.0pt;color:#1F497D">&nbsp=
;&nbsp;&nbsp; Do you know how to resolve the issue? Please help me !
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:16.0pt;color:#1F497D">&nbsp=
;&nbsp;&nbsp;&nbsp;Thank you very much!<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_3204FE6663E1F14CAF4CA6928E60C8521E20E32EUSSTLZPMSG012em_--
