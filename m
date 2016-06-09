Return-Path: <megha.dey@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8086E00CFC; Wed,  8 Jun 2016 18:11:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB211E00CF8;
	Wed,  8 Jun 2016 18:11:37 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP; 08 Jun 2016 18:11:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,442,1459839600"; 
	d="scan'208,217";a="716187157"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by FMSMGA003.fm.intel.com with ESMTP; 08 Jun 2016 18:11:38 -0700
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Wed, 8 Jun 2016 18:11:36 -0700
Received: from orsmsx113.amr.corp.intel.com ([169.254.9.105]) by
	ORSMSX158.amr.corp.intel.com ([169.254.10.125]) with mapi id
	14.03.0248.002; Wed, 8 Jun 2016 18:11:36 -0700
From: "Dey, Megha" <megha.dey@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: Script being installed under /etc/init.d instead of
	/usr/lib/systemd folder
Thread-Index: AdHB68ufzUMAVCG/RvSfTL3kZZJetQ==
Date: Thu, 9 Jun 2016 01:11:35 +0000
Message-ID: <C440BA31B54DCD4AAC682D2365C8FEE703C9DE63@ORSMSX113.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZjNmOTczZjgtOGRiNC00MGIxLWEzZTYtNjJhYWNhOGFlNTE0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6IlJ1d2hjYTE5cm9UMnVKd2pxUCtkOFc2NXdIXC9jM2daXC9IOEtMdzBta3hHTT0ifQ==
x-ctpclassification: CTP_IC
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 13 Jun 2016 09:44:45 -0700
Subject: Script being installed under /etc/init.d instead of /usr/lib/systemd folder
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
X-List-Received-Date: Thu, 09 Jun 2016 01:11:39 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C440BA31B54DCD4AAC682D2365C8FEE703C9DE63ORSMSX113amrcor_"

--_000_C440BA31B54DCD4AAC682D2365C8FEE703C9DE63ORSMSX113amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to use the systemd init system from the existing system. I have=
 added the following to my conf file:
DISTRO_FEATURES_append =3D " systemd"
VIRTUAL-RUNTIME_init_manager =3D "systemd"
VIRTUAL-RUNTIME_initscripts =3D ""
DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "sysvinit"

I have also added the 'systemd' binary to the INSTALL_APPEND.
When I boot the resulting image, I do see systemd up and running and I am a=
ble to start and stop services.

However, I do have a script recipe which is currently placed as a bbappend =
to initscripts (meta/recipes-core/initscripts/initscript_..bb) in my custom=
 meta layer.

This script even after shifting to systemd, is being placed in the /etc/ini=
t.d/ folder, and hence doesn't run on boot. I want this to be placed in the=
 /usr/lib/system.d/ folder instead. How would I be able to do this?

Is it because this script is an append to initscripts, it by default gets i=
nstalled under /etc/init.d? If so, where should I place the recipe?

Thanks,
Megha


--_000_C440BA31B54DCD4AAC682D2365C8FEE703C9DE63ORSMSX113amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
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
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to use the systemd init system from the =
existing system. I have added the following to my conf file:<o:p></o:p></p>
<p class=3D"MsoNormal">DISTRO_FEATURES_append =3D &quot; systemd&quot;<o:p>=
</o:p></p>
<p class=3D"MsoNormal">VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;=
<o:p></o:p></p>
<p class=3D"MsoNormal">VIRTUAL-RUNTIME_initscripts =3D &quot;&quot;<o:p></o=
:p></p>
<p class=3D"MsoNormal">DISTRO_FEATURES_BACKFILL_CONSIDERED &#43;=3D &quot;s=
ysvinit&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have also added the &#8216;systemd&#8217; binary t=
o the INSTALL_APPEND.<o:p></o:p></p>
<p class=3D"MsoNormal">When I boot the resulting image, I do see systemd up=
 and running and I am able to start and stop services.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">However, I do have a script recipe which is currentl=
y placed as a bbappend to initscripts (meta/recipes-core/initscripts/initsc=
ript_..bb) in my custom meta layer.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This script even after shifting to systemd, is being=
 placed in the /etc/init.d/ folder, and hence doesn&#8217;t run on boot. I =
want this to be placed in the /usr/lib/system.d/ folder instead. How would =
I be able to do this?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is it because this script is an append to initscript=
s, it by default gets installed under /etc/init.d? If so, where should I pl=
ace the recipe?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Megha<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_C440BA31B54DCD4AAC682D2365C8FEE703C9DE63ORSMSX113amrcor_--
