Return-Path: <chan.kitx.yu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76E93E00930; Thu,  2 Apr 2015 02:26:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB0F1E008DC
	for <yocto@yoctoproject.org>; Thu,  2 Apr 2015 02:26:31 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP; 02 Apr 2015 02:26:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,509,1422950400"; 
	d="scan'208,217";a="707835355"
Received: from pgsmsx107.gar.corp.intel.com ([10.221.44.105])
	by orsmga002.jf.intel.com with ESMTP; 02 Apr 2015 02:26:30 -0700
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.205]) by
	PGSMSX107.gar.corp.intel.com ([169.254.7.219]) with mapi id
	14.03.0224.002; Thu, 2 Apr 2015 17:25:35 +0800
From: "Yu, Chan KitX" <chan.kitx.yu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Kernel Panic: /sbin/init not found
Thread-Index: AdBtJJT1N+XghKcCR/iJRvDjeaehYg==
Date: Thu, 2 Apr 2015 09:25:35 +0000
Message-ID: <0E4D391FE2BDEC45AA0B4E32D6BD598A28AF2F@PGSMSX101.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Subject: Kernel Panic: /sbin/init not found
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
X-List-Received-Date: Thu, 02 Apr 2015 09:26:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0E4D391FE2BDEC45AA0B4E32D6BD598A28AF2FPGSMSX101garcorpi_"

--_000_0E4D391FE2BDEC45AA0B4E32D6BD598A28AF2FPGSMSX101garcorpi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello all,

My Yocto build environment was working perfectly until last week when I got=
 kernel panic caused by missing/sbin/init. When I examined the image, I fou=
nd that /sbin/init is indeed absent from the root image. To troubleshoot th=
e issue, I tried building a stock Yocto whose target platform is 64-bit mac=
hine using a  freshly installed Ubuntu 14.04 from another build machine.  D=
espite that, the kernel panic still occurs and that's the main reason I'm w=
riting here; that is to see if anyone else has the same issue. I did not ma=
ke any change or any customization to local.conf aside from setting MACHINE=
 to 64 bit and adding the following lines which enable multilib:

IMAGE_INSTALL =3D "lib32-connman"
require conf/multilib.conf
MULTILIBS =3D "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 =3D "x86"

I would be more than happy to provide necessary diagnostic message shall yo=
u request so. Let me know if you guys are able to reproduce this issue.

Chan Kit

--_000_0E4D391FE2BDEC45AA0B4E32D6BD598A28AF2FPGSMSX101garcorpi_
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
<p class=3D"MsoNormal">Hello all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My Yocto build environment was working perfectly unt=
il last week when I got kernel panic caused by missing/sbin/init. When I ex=
amined the image, I found that /sbin/init is indeed absent from the root im=
age. To troubleshoot the issue, I
 tried building a stock Yocto whose target platform is 64-bit machine using=
 a &nbsp;freshly installed Ubuntu 14.04 from another build machine. &nbsp;D=
espite that, the kernel panic still occurs and that&#8217;s the main reason=
 I&#8217;m writing here; that is to see if anyone else
 has the same issue. I did not make any change or any customization to loca=
l.conf aside from setting MACHINE to 64 bit and adding the following lines =
which enable multilib:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">IMAGE_INSTALL =3D &quot;lib32-connman&quot;<o:p></o:=
p></p>
<p class=3D"MsoNormal">require conf/multilib.conf<o:p></o:p></p>
<p class=3D"MsoNormal">MULTILIBS =3D &quot;multilib:lib32&quot;<o:p></o:p><=
/p>
<p class=3D"MsoNormal">DEFAULTTUNE_virtclass-multilib-lib32 =3D &quot;x86&q=
uot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I would be more than happy to provide necessary diag=
nostic message shall you request so. Let me know if you guys are able to re=
produce this issue.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Chan Kit <o:p></o:p></p>
</div>
</body>
</html>

--_000_0E4D391FE2BDEC45AA0B4E32D6BD598A28AF2FPGSMSX101garcorpi_--
