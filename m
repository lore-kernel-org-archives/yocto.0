Return-Path: <bfleming@meteorcomm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93AC2E0080F; Wed, 17 Sep 2014 11:26:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [208.65.144.80 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 256 seconds by postgrey-1.32 at yocto-www;
	Wed, 17 Sep 2014 11:26:37 PDT
Received: from p02c11o147.mxlogic.net (p02c11o147.mxlogic.net [208.65.144.80])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5A18E007A2
	for <yocto@yoctoproject.org>; Wed, 17 Sep 2014 11:26:37 -0700 (PDT)
Received: from unknown [66.194.68.138] (EHLO mail.meteorcomm.com)
	by p02c11o147.mxlogic.net(mxl_mta-8.1.0-0) with ESMTP id
	462d9145.2ba9aac1d940.17937.00-578.52709.p02c11o147.mxlogic.net
	(envelope-from <bfleming@meteorcomm.com>); 
	Wed, 17 Sep 2014 12:26:44 -0600 (MDT)
X-MXL-Hash: 5419d26418c63465-c52ccb1dc4dedbfcd1a5017f0f4517614c02bf02
Received: from unknown [66.194.68.138] (EHLO mail.meteorcomm.com)
	by p02c11o147.mxlogic.net(mxl_mta-8.1.0-0)
	with ESMTP id c51d9145.0.15208.00-361.44427.p02c11o147.mxlogic.net
	(envelope-from <bfleming@meteorcomm.com>); 
	Wed, 17 Sep 2014 12:22:25 -0600 (MDT)
X-MXL-Hash: 5419d1613550249d-bef78afeedb52312429d786ac00c9fcf66366a97
Received: from MCCRENEX01.MeteorComm.lan (10.20.0.34) by
	MCCRENEX02.meteorcomm.lan (10.20.0.35) with Microsoft SMTP Server (TLS)
	id 15.0.847.32; Wed, 17 Sep 2014 11:22:02 -0700
Received: from MCCRENEX01.MeteorComm.lan ([::1]) by MCCRENEX01.meteorcomm.lan
	([fe80::d0e9:9a8f:b1e5:ca73%15]) with mapi id 15.00.0847.030;
	Wed, 17 Sep 2014 11:22:02 -0700
From: Benjamin Fleming <bfleming@meteorcomm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Eclipse ADT plugin and project variables
Thread-Index: Ac/SpChCmHhr7C74SNqmsaBd608p6A==
Date: Wed, 17 Sep 2014 18:22:01 +0000
Message-ID: <5cf3e102adfe4abc9f995179c181181d@MCCRENEX01.meteorcomm.lan>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.17.213]
MIME-Version: 1.0
X-AnalysisOut: [v=2.1 cv=bPoCIZOZ c=1 sm=1 tr=0 a=TjRZ7Zekk1wF9OVcTBmBEQ==]
X-AnalysisOut: [:117 a=TjRZ7Zekk1wF9OVcTBmBEQ==:17 a=8FSzfFd3PCMA:10 a=Izg]
X-AnalysisOut: [YMkLeY5IA:10 a=UyYZ2OoZI4wA:10 a=7byFnpv8cOIA:10 a=BLceEmw]
X-AnalysisOut: [cHowA:10 a=xqWC_Br6kY4A:10 a=oLoTwKZ2AAAA:8 a=YlVTAMxIAAAA]
X-AnalysisOut: [:8 a=ew9oB1-UalkknrY3gvEA:9 a=CjuIK1q_8ugA:10 a=yMhMjlubAA]
X-AnalysisOut: [AA:8 a=SSmOFEACAAAA:8 a=FWxtPU5og0STnrNXbJ4A:9 a=gKO2Hq4RS]
X-AnalysisOut: [VkA:10 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:]
X-AnalysisOut: [10]
X-Spam: [F=0.5000000000; CM=0.500; MH=0.500(2014091721); S=0.200(2014051901)]
X-MAIL-FROM: <bfleming@meteorcomm.com>
X-SOURCE-IP: [66.194.68.138]
Subject: Eclipse ADT plugin and project variables
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
X-List-Received-Date: Wed, 17 Sep 2014 18:26:46 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5cf3e102adfe4abc9f995179c181181dMCCRENEX01meteorcommlan_"

--_000_5cf3e102adfe4abc9f995179c181181dMCCRENEX01meteorcommlan_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have the Yocto 1.6.1 Eclipse ADT plugin installed in the ARM DS-5 (5.18) =
platform (based on Eclipse Kepler). After some struggling, I have been able=
 to generate a CMake-based project that build successfully, but it has left=
 me with 2 related questions.
The first is specification of the cmake executable: The plugin won't use th=
e correct PATH variable when calling CMake: Under Project->Properties...->C=
/C++ Build->Settings->CMake configure, the default command is 'cmake', whic=
h for me finds the wrong copy on my system. I have 2 copies of cmake on my =
system, the first is installed under /usr/bin/, and the second (and the one=
 I want to use) is under my poky tree (~/poky/build/tmp/sysroots/x86_64-lin=
ux/usr/bin/). The PATH in my project environment variables (Project->Proper=
ties...->C/C++ Build->Environment) points to the sysroots path first, and i=
ndeed, if I create a shellscript that defines the same path it finds the ex=
pected cmake executable. To make this work currently, I have to enter the a=
bsolute path to the appropriate binary, which seems wrong.

This leads me to my second question; what is the expected method of sharing=
 projects? I don't see a way to easily share my .project and .cproject file=
s with my coworkers while allowing them to use my ADT plugin settings. My p=
oky build directory (including sysroots) is in my home directory. As a resu=
lt, many of  the Environment variables refer to a path containing my home d=
irectory. Perhaps this is just my ignorance of Eclipse, but I don't see a g=
ood way of sharing the setup work without a) asking them to import my proje=
ct and then modifying around 25 paths, or b) asking them to create a new he=
llo world project in which they then have to overwrite files. How do I go a=
bout sharing the project files?

Regards,
Ben


--_000_5cf3e102adfe4abc9f995179c181181dMCCRENEX01meteorcommlan_
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
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
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I have the Yocto 1.6.1 Eclipse ADT plugin installed =
in the ARM DS-5 (5.18) platform (based on Eclipse Kepler). After some strug=
gling, I have been able to generate a CMake-based project that build succes=
sfully, but it has left me with 2
 related questions.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">The first is specification of the cmake executable: =
The plugin won&#8217;t use the correct PATH variable when calling CMake: Un=
der Project-&gt;Properties&#8230;-&gt;C/C&#43;&#43; Build-&gt;Settings-&gt;=
CMake configure, the default command is &#8216;cmake&#8217;, which for me f=
inds
 the wrong copy on my system. I have 2 copies of cmake on my system, the fi=
rst is installed under /usr/bin/, and the second (and the one I want to use=
) is under my poky tree (~/poky/build/tmp/sysroots/x86_64-linux/usr/bin/). =
The PATH in my project environment
 variables (Project-&gt;Properties&#8230;-&gt;C/C&#43;&#43; Build-&gt;Envir=
onment) points to the sysroots path first, and indeed, if I create a shells=
cript that defines the same path it finds the expected cmake executable. To=
 make this work currently, I have to enter the absolute
 path to the appropriate binary, which seems wrong.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This leads me to my second question; what is the exp=
ected method of sharing projects? I don&#8217;t see a way to easily share m=
y .project and .cproject files with my coworkers while allowing them to use=
 my ADT plugin settings. My poky build directory
 (including sysroots) is in my home directory. As a result, many of &nbsp;t=
he Environment variables refer to a path containing my home directory. Perh=
aps this is just my ignorance of Eclipse, but I don&#8217;t see a good way =
of sharing the setup work without a) asking
 them to import my project and then modifying around 25 paths, or b) asking=
 them to create a new hello world project in which they then have to overwr=
ite files. How do I go about sharing the project files?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Ben<o:p></o:p></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><o:p>&n=
bsp;</o:p></p>
</div>
</body>
</html>

--_000_5cf3e102adfe4abc9f995179c181181dMCCRENEX01meteorcommlan_--
