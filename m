Return-Path: <Karim.Gillani@gov.bc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44A64E01287; Tue, 17 Jul 2018 10:10:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [142.34.224.138 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 3870 seconds by postgrey-1.32 at yocto-www;
	Tue, 17 Jul 2018 10:10:03 PDT
Received: from outbound-kam-1.gov.bc.ca (outbound-kam-1.gov.bc.ca
	[142.34.224.138])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46260E00BB5
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2018 10:10:02 -0700 (PDT)
Received: from e3pmbx12.idir.BCGOV (e3pmbx12.idir.bcgov [142.34.177.196])
	by outbound-kam-1.gov.bc.ca (8.14.4/8.14.4) with ESMTP id
	w6HG5VYo001924
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2018 09:05:32 -0700
Received: from E3PMBX02.idir.BCGOV (142.34.177.191) by e3pmbx12.idir.BCGOV
	(142.34.177.196) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
	Tue, 17 Jul 2018 09:05:31 -0700
Received: from E3PMBX02.idir.BCGOV ([::1]) by E3PMBX02.idir.BCGOV ([::1]) with
	mapi id 15.00.1395.000; Tue, 17 Jul 2018 09:05:31 -0700
From: "Gillani, Karim CITZ:EX" <Karim.Gillani@gov.bc.ca>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-raspberrypi] - X11 EGLSV2 Chromium
Thread-Index: AdQd5yop0JtedX6nSKSNlLsl5GcBZg==
Date: Tue, 17 Jul 2018 16:05:30 +0000
Message-ID: <ce7fc3e6ee9d4a78bfb688737838f9b4@E3PMBX02.idir.BCGOV>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [142.32.124.172]
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.70 on 142.34.224.138
X-Mailman-Approved-At: Sun, 22 Jul 2018 15:36:54 -0700
Subject: [meta-raspberrypi] - X11 EGLSV2 Chromium
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
X-List-Received-Date: Tue, 17 Jul 2018 17:10:04 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_ce7fc3e6ee9d4a78bfb688737838f9b4E3PMBX02idirBCGOV_"

--_000_ce7fc3e6ee9d4a78bfb688737838f9b4E3PMBX02idirBCGOV_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am new to yocto and I am trying to build Chromium with userland. I am not=
 sure what I am missing to have userland build libGLESv2.so, libGLESv2.so.2=
 and libEGL.

All builds great but when I start Chromium, it complains there is no libGLE=
Sv2.so.2.
I searched for libG* and only the following shows up:
/usr/lib/libGL.so.1.2.0
/usr/lib/libGL.so.1

Can someone let me know what I am missing from my layer.conf?

MACHINE =3D "raspberrypi3"

GPU_MEM_256 =3D "128"
GPU_MEM_512 =3D "196"
GPU_MEM_1024 =3D "396"
CORE_IMAGE_EXTRA_INSTALL +=3D "chromium-x11"
PACKAGECONFIG_append_pn-chromium-x11 +=3D " use-egl proprietary-codecs"
LICENSE_FLAGS_WHITELIST =3D " commercial_libav commercial_x264 commercial"
PREFERRED_PROVIDER_virtual/egl =3D "userland"
PREFERRED_PROVIDER_virtual/libgles2 =3D "userland"
MACHINE_FEATURES_append +=3D " rpi"
IMAGE_INSTALL_append =3D " fontconfig kernel-image kernel-devicetree"
IMAGE_FEATURES_append =3D " ssh-server-dropbear hwcodecs x11"
DISTRO_FEATURES_append +=3D " opengl x11 systemd"
DISTRO_FEATURES_remove =3D "wayland"
DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
VIRTUAL-RUNTIME_init_manager =3D "systemd"
VIRTUAL-RUNTIME_initscripts =3D ""

And I am using bitbake core-image-minimal


Thanks in advance..

--_000_ce7fc3e6ee9d4a78bfb688737838f9b4E3PMBX02idirBCGOV_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://sc=
hemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-=
html40">
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-CA" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I am new to yocto and I am trying to build Chromium =
with userland. I am not sure what I am missing to have userland build libGL=
ESv2.so, libGLESv2.so.2 and libEGL.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">All builds great but when I start Chromium, it compl=
ains there is no libGLESv2.so.2.
<o:p></o:p></p>
<p class=3D"MsoNormal">I searched for libG* and only the following shows up=
:<o:p></o:p></p>
<p class=3D"MsoNormal">/usr/lib/libGL.so.1.2.0<o:p></o:p></p>
<p class=3D"MsoNormal">/usr/lib/libGL.so.1<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can someone let me know what I am missing from my la=
yer.conf?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">MACHINE =3D &quot;raspberrypi3&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">GPU_MEM_256 =3D &quot;128&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">GPU_MEM_512 =3D &quot;196&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">GPU_MEM_1024 =3D &quot;396&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">CORE_IMAGE_EXTRA_INSTALL &#43;=3D &quot;chromium-x11=
&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">PACKAGECONFIG_append_pn-chromium-x11 &#43;=3D &quot;=
 use-egl proprietary-codecs&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">LICENSE_FLAGS_WHITELIST =3D &quot; commercial_libav =
commercial_x264 commercial&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">PREFERRED_PROVIDER_virtual/egl =3D &quot;userland&qu=
ot;<o:p></o:p></p>
<p class=3D"MsoNormal">PREFERRED_PROVIDER_virtual/libgles2 =3D &quot;userla=
nd&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">MACHINE_FEATURES_append &#43;=3D &quot; rpi&quot;<o:=
p></o:p></p>
<p class=3D"MsoNormal">IMAGE_INSTALL_append =3D &quot; fontconfig kernel-im=
age kernel-devicetree&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">IMAGE_FEATURES_append =3D &quot; ssh-server-dropbear=
 hwcodecs x11&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">DISTRO_FEATURES_append &#43;=3D &quot; opengl x11 sy=
stemd&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">DISTRO_FEATURES_remove =3D &quot;wayland&quot;<o:p><=
/o:p></p>
<p class=3D"MsoNormal">DISTRO_FEATURES_BACKFILL_CONSIDERED =3D &quot;sysvin=
it&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;=
<o:p></o:p></p>
<p class=3D"MsoNormal">VIRTUAL-RUNTIME_initscripts =3D &quot;&quot;<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">And I am using bitbake core-image-minimal<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks in advance..<o:p></o:p></p>
</div>
</body>
</html>

--_000_ce7fc3e6ee9d4a78bfb688737838f9b4E3PMBX02idirBCGOV_--
