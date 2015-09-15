Return-Path: <Neil.Wu@emerson.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B033EE00BCE; Tue, 15 Sep 2015 01:48:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [68.232.141.200 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Tue, 15 Sep 2015 01:48:10 PDT
Received: from esa3.emerson-outbound.iphmx.com
	(esa3.emerson-outbound.iphmx.com [68.232.141.200])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87887E00B72
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 01:48:10 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.17,534,1437436800"; d="scan'208,217";a="16582907"
Received: from usstlz-pinfez06.extemr.org ([144.191.128.190])
	by esa3.emerson-outbound.iphmx.com with ESMTP/TLS/AES128-SHA;
	15 Sep 2015 08:46:58 +0000
Received: from USSTLZ-PMSG015.emrsn.org (10.16.72.197) by mail.emerson.com
	(10.16.8.79) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Tue, 15 Sep 2015 08:46:39 +0000
Received: from USSTLZ-PMSG012.emrsn.org ([169.254.3.189]) by
	USSTLZ-PMSG015.emrsn.org ([169.254.7.62]) with mapi id 14.03.0224.002;
	Tue, 15 Sep 2015 08:46:38 +0000
From: <Neil.Wu@Emerson.com>
To: <yocto@yoctoproject.org>
Thread-Topic: Legacy library find.pl will be removed from the Perl core
	distribution in the next major release
Thread-Index: AdDvj/X6TB/6wSrRR1WcrPFceyggJQ==
Date: Tue, 15 Sep 2015 08:46:37 +0000
Message-ID: <3204FE6663E1F14CAF4CA6928E60C8523E83E112@USSTLZ-PMSG012.emrsn.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.19.249.11]
MIME-Version: 1.0
Subject: Legacy library find.pl will be removed from the Perl core distribution in the next major release
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
X-List-Received-Date: Tue, 15 Sep 2015 08:48:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3204FE6663E1F14CAF4CA6928E60C8523E83E112USSTLZPMSG012em_"

--_000_3204FE6663E1F14CAF4CA6928E60C8523E83E112USSTLZPMSG012em_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi , all

The version of YP which I using is 1.6.2.  When building  the openssl, it a=
ppears the problem as following :

                ERROR: Function failed: do_configure (log file is located a=
t /home/ectrs/poky/cortexta8_build/tmp/work/i686-linux/openssl-native/1.0.1=
j-r0/temp/log.do_configure.6021)
ERROR: Logfile of failure stored in: /home/ectrs/poky/cortexta8_build/tmp/w=
ork/i686-linux/openssl-native/1.0.1j-r0/temp/log.do_configure.6021
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: Executing shell function do_configure
| Legacy library find.pl will be removed from the Perl core distribution in=
 the next major release. Please install it from the CPAN distribution Perl4=
::CoreLibs. It is being used at perlpath.pl, line 7.
| Usage: Configure [no-<cipher> ...] [enable-<cipher> ...] [experimental-<c=
ipher> ...] [-Dxxx] [-lxxx] [-Lxxx] [-fxxx] [-Kxxx] [no-hw-xxx|no-hw] [[no-=
]threads] [[no-]shared] [[no-]zlib|zlib-dynamic] [no-asm] [no-dso] [no-krb5=
] [sctp] [386] [--prefix=3DDIR] [--openssldir=3DOPENSSLDIR] [--with-xxx[=3D=
vvv]] [--test-sanity] os/compiler[:flags]
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at /home/ectrs/=
poky/cortexta8_build/tmp/work/i686-linux/openssl-native/1.0.1j-r0/temp/log.=
do_configure.6021)
ERROR: Task 514 (virtual:native:/home/ectrs/poky/meta/recipes-connectivity/=
openssl/openssl_1.0.1j.bb, do_configure) failed with exit code '1'

How to resolve this problem?  If you know , please tell me .  Thank you ver=
y much.

Neil

Thanks

--_000_3204FE6663E1F14CAF4CA6928E60C8523E83E112USSTLZPMSG012em_
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
<style>
<!--
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
	{font-family:"\@SimSun";
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
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
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
<p class=3D"MsoNormal">Hi , all<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The version of YP which I using is 1.6.2. &nbsp;When=
 building &nbsp;the openssl, it appears the problem as following :<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ERROR: Function failed: do_configure=
 (log file is located at /home/ectrs/poky/cortexta8_build/tmp/work/i686-lin=
ux/openssl-native/1.0.1j-r0/temp/log.do_configure.6021)<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">ERROR: Logfile of failure=
 stored in: /home/ectrs/poky/cortexta8_build/tmp/work/i686-linux/openssl-na=
tive/1.0.1j-r0/temp/log.do_configure.6021<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">Log data follows:<o:p></o=
:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">| DEBUG: Executing python=
 function sysroot_cleansstate<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">| DEBUG: Python function =
sysroot_cleansstate finished<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">| DEBUG: Executing shell =
function do_configure<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">| Legacy library find.pl =
will be removed from the Perl core distribution in the next major release. =
Please install it from the CPAN distribution Perl4::CoreLibs. It is being u=
sed at perlpath.pl, line 7.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">| Usage: Configure [no-&l=
t;cipher&gt; ...] [enable-&lt;cipher&gt; ...] [experimental-&lt;cipher&gt; =
...] [-Dxxx] [-lxxx] [-Lxxx] [-fxxx] [-Kxxx] [no-hw-xxx|no-hw] [[no-]thread=
s] [[no-]shared] [[no-]zlib|zlib-dynamic] [no-asm] [no-dso]
 [no-krb5] [sctp] [386] [--prefix=3DDIR] [--openssldir=3DOPENSSLDIR] [--wit=
h-xxx[=3Dvvv]] [--test-sanity] os/compiler[:flags]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">| WARNING: exit code 1 fr=
om a shell command.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">| ERROR: Function failed:=
 do_configure (log file is located at /home/ectrs/poky/cortexta8_build/tmp/=
work/i686-linux/openssl-native/1.0.1j-r0/temp/log.do_configure.6021)<o:p></=
o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">ERROR: Task 514 (virtual:=
native:/home/ectrs/poky/meta/recipes-connectivity/openssl/openssl_1.0.1j.bb=
, do_configure) failed with exit code '1'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How to resolve this problem? &nbsp;If you know , ple=
ase tell me .&nbsp; Thank you very much.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Neil <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
</div>
</body>
</html>

--_000_3204FE6663E1F14CAF4CA6928E60C8523E83E112USSTLZPMSG012em_--
