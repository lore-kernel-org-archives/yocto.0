Return-Path: <DineshKumar.Varadarajan@lntinfotech.com>
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.202])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B1ECE016D7
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 22:19:17 -0700 (PDT)
Received: from [216.82.241.100:39577] by server-10.bemta-8.messagelabs.com id
	51/82-29437-5D4C0625; Fri, 18 Oct 2013 05:19:17 +0000
X-Env-Sender: DineshKumar.Varadarajan@lntinfotech.com
X-Msg-Ref: server-7.tower-220.messagelabs.com!1382073553!1705671!1
X-Originating-IP: [202.54.134.175]
X-StarScan-Received: 
X-StarScan-Version: 6.9.12; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 13237 invoked from network); 18 Oct 2013 05:19:16 -0000
Received: from unknown (HELO chninmsedge01.chennaiodc.lntinfotech.com)
	(202.54.134.175)
	by server-7.tower-220.messagelabs.com with AES128-SHA encrypted SMTP;
	18 Oct 2013 05:19:16 -0000
Received: from chninmsedge01.chennaiodc.lntinfotech.com (172.29.23.55) by
	chninmsedge01.chennaiodc.lntinfotech.com (172.29.23.10) with Microsoft
	SMTP Server id 8.2.176.0; Fri, 18 Oct 2013 10:47:32 +0530
Received: from CHNDSSMGR.chennaiodc.lntinfotech.com ([127.0.0.1]) by
	chninmsedge01.chennaiodc.lntinfotech.com with Microsoft
	SMTPSVC(6.0.3790.4675);	 Fri, 18 Oct 2013 10:49:13 +0530
Received: from chninmshtcas02.chennaiodc.lntinfotech.com ([172.29.23.4]) by
	CHNDSSMGR.chennaiodc.lntinfotech.com with Microsoft
	SMTPSVC(6.0.3790.4675); Fri, 18 Oct 2013 10:49:13 +0530
Received: from PUNINMSSCRDR.puneodc.lntinfotech.com (172.29.23.20) by
	chninmshtcas02.chennaiodc.lntinfotech.com (172.29.23.3) with Microsoft
	SMTP Server (TLS) id 8.2.176.0; Fri, 18 Oct 2013 10:49:12 +0530
Received: from CHNINMSMBX01.chennaiodc.lntinfotech.com ([169.254.2.18]) by
	PUNINMSSCRDR.puneodc.lntinfotech.com ([172.29.23.20]) with mapi;
	Fri, 18 Oct 2013 10:49:12 +0530
From: DineshKumar Varadarajan <DineshKumar.Varadarajan@lntinfotech.com>
To: <yocto@yoctoproject.org>
Date: Fri, 18 Oct 2013 10:49:05 +0530
Thread-Topic: Add kernel path in *.bb file and Arm based board BSP
Thread-Index: Ac7LwZCQHzxTSvjVQb6WBCHNpPGhgA==
Message-ID: <7860E55F3F8366479EE1138A626B688D0700D74F15@CHNINMSMBX01.chennaiodc.lntinfotech.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: pOY= A3yB CYqy C1t5 C5q2 DZZi FDw2 FR8F F2Uk GDhd GFSG IbD9
	Jh8S J4i8 KETZ K1YR; 1;
	eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {90F5BE11-E52B-4FCE-9924-EBA49D5F093D};
	ZABpAG4AZQBzAGgAawB1AG0AYQByAC4AdgBhAHIAYQBkAGEAcgBhAGoAYQBuAEAAbABuAHQAaQBuAGYAbwB0AGUAYwBoAC4AYwBvAG0A;
	Fri, 18 Oct 2013 05:19:05 GMT;
	QQBkAGQAIABrAGUAcgBuAGUAbAAgAHAAYQB0AGgAIABpAG4AIAAqAC4AYgBiACAAZgBpAGwAZQAgAGEAbgBkACAAQQByAG0AIABiAGEAcwBlAGQAIABiAG8AYQByAGQAIABCAFMAUAA=
x-cr-puzzleid: {90F5BE11-E52B-4FCE-9924-EBA49D5F093D}
acceptlanguage: en-US
Importance: normal
Priority: normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.3790.4913
MIME-Version: 1.0
X-OriginalArrivalTime: 18 Oct 2013 05:19:13.0115 (UTC)
	FILETIME=[951CEAB0:01CECBC1]
Subject: Add kernel path in *.bb file and Arm based board BSP
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
X-List-Received-Date: Fri, 18 Oct 2013 05:19:21 -0000
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Content-Class: urn:content-classes:message
Content-Type: multipart/alternative;
	boundary="_000_7860E55F3F8366479EE1138A626B688D0700D74F15CHNINMSMBX01c_"

--_000_7860E55F3F8366479EE1138A626B688D0700D74F15CHNINMSMBX01c_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi  All,


        I want to create a New BSP for ARM CorteXA9 based board . I have =
downloaded the poky 9.0.2 and create the new BSP with the following =
commands as mentioned in the Manual.


               "yocto-bsp create myarm arm" command and selected the =
"linux-Yocto_3.4" as my kernel.I have modified the bblayeres

                                    LCONF_VERSION =3D "6"

                                    BBPATH =3D "${TOPDIR}"
                                    BBFILES ?=3D ""

                                    BBLAYERS ?=3D " \
                                    =
/home/murali/src/dinesh/yocto/poky/meta \
                                    =
/home/murali/src/dinesh/yocto/poky/meta-yocto \
                                    =
/home/murali/src/dinesh/yocto/poky/meta-yocto-bsp \
                                    =
/home/murali/src/dinesh/yocto/poky/meta-myarm \
                                    "
                                    BBLAYERS_NON_REMOVABLE ?=3D " \
                                                =
/home/murali/src/dinesh/yocto/poky/meta \
                                                =
/home/murali/src/dinesh/yocto/poky/meta-yocto \
                                                            "


       1. my question is where i hAve to add the kernel PATH (git path) =
in SRC_URI.

                Whether i have add inside the  =
mete-myarm/kernel_recipes/linux/linux-yocto_3.4.bbappend. or some where =
else.


      2. when i entered the "bitbake core-image-minimal" command its =
start executing tasks , but after some time ,its try to "do_fetch" the =
linux-yocto_3.8.git kernel as per the *.bb in the below path
                        =
"/home/murali/src/dinesh/yocto/poky/meta/recipes-kernel/linux_3.8.bb"


          My question is why 3.8 kernel is doing "do_fetch" , my aim is =
build the 3.4 kernel for my board.


          can some one help me out ?? or point some examples


Regards,
Dinesh kumar.v













________________________________
The contents of this e-mail and any attachment(s) may contain =
confidential or privileged information for the intended recipient(s). =
Unintended recipients are prohibited from taking action on the basis of =
information in this e-mail and using or disseminating the information, =
and must notify the sender and delete it from their system. L&T Infotech =
will not accept responsibility or liability for the accuracy or =
completeness of, or the presence of any virus or disabling code in this =
e-mail"
*************************************************************************=
=0D
 This email and attachments have been scanned for=0D
 potential proprietary or sensitive information leakage.=0D
 Websense Data Security, Protecting Your Information from the Inside =
Out.=0D
 www.websense.com=0D
 =
*************************************************************************=


--_000_7860E55F3F8366479EE1138A626B688D0700D74F15CHNINMSMBX01c_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8">
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered =
medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Trebuchet MS";
	panose-1:2 11 6 3 2 2 2 2 2 4;}
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
	{mso-style-type:personal-compose;
	font-family:"Trebuchet MS","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
-->
</style><!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"Section1">
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">Hi &nbsp;All,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; I want to create a New BSP for ARM CorteXA9 based board . I have =
downloaded the poky 9.0.2 and create the new BSP with the following =
commands as mentioned in
 the Manual.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;yocto-bsp create =
myarm arm&quot; command and selected the &quot;linux-Yocto_3.4&quot; as =
my kernel.I have modified the bblayeres<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; LCONF_VERSION =3D =
&quot;6&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; BBPATH =3D =
&quot;${TOPDIR}&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; BBFILES ?=3D &quot;&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; BBLAYERS ?=3D &quot; \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/home/murali/src/dinesh/yocto/poky/meta \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/home/murali/src/dinesh/yocto/poky/meta-yocto \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/home/murali/src/dinesh/yocto/poky/meta-yocto-bsp =
\<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/home/murali/src/dinesh/yocto/poky/meta-myarm \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
BBLAYERS_NON_REMOVABLE ?=3D &quot; \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/home/murali/src/dinesh/yocto/poky/meta \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/home/murali/src/dinesh/yocto/poky/meta-yocto \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. =
my question is where i hAve to add the kernel PATH (git path) in =
SRC_URI.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Whether i have add =
inside the&nbsp; =
mete-myarm/kernel_recipes/linux/linux-yocto_3.4.bbappend. or some where =
else.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. when =
i entered the &quot;bitbake core-image-minimal&quot; command its start =
executing tasks , but after some time ,its try to &quot;do_fetch&quot; =
the linux-yocto_3.8.git kernel
 as per the *.bb in the below path<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; =
&quot;/home/murali/src/dinesh/yocto/poky/meta/recipes-kernel/linux_3.8.bb=
&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; My question is why 3.8 kernel is doing =
&quot;do_fetch&quot; , my aim is build the 3.4 kernel for my =
board.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; can some one help me out ?? or point some =
examples<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">Dinesh kumar.v<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Black" size=3D"3">The contents of this =
e-mail and any attachment(s) may contain confidential or privileged =
information for the intended recipient(s). Unintended recipients are =
prohibited from taking action on the basis of information
 in this e-mail and using or disseminating the information, and must =
notify the sender and delete it from their system. L&amp;T Infotech will =
not accept responsibility or liability for the accuracy or completeness =
of, or the presence of any virus or disabling code
 in this e-mail&quot;<br>
</font>
</body>
</html>
<PRE>********************************************************************=
*****=0D
 This email and attachments have been scanned for=0D
 potential proprietary or sensitive information leakage.=0D
 Websense Data Security, Protecting Your Information from the Inside =
Out.=0D
 www.websense.com=0D
 =
*************************************************************************=

</PRE>

--_000_7860E55F3F8366479EE1138A626B688D0700D74F15CHNINMSMBX01c_--
