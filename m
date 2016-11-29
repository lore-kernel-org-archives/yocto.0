Return-Path: <Thomas.Thorne@net2edge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEBECE004E5; Tue, 29 Nov 2016 09:29:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.90 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0090.outbound.protection.outlook.com [104.47.2.90])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D27EE00498
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2016 09:29:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=transitionnetworks.onmicrosoft.com; s=selector1-net2edge-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=w72rKUVvpwiaBxOZqVsGZJEiHYDqV91Fo4sULgmEOvY=;
	b=ZRHakkLdh0gv7Uy5nUOVbroL+49vjwgmdR4FKlGx0IniaYp0jeW+343Q8I/k224KA5MviHb0Cqm00Q58+TjP36T7LPArz4a68ZWy8ETaa1I1Hm87Hhwo8OKo660GqEM1zrEKfjNwnw9taCKzUPUwF/ISKbuhldGl8o9je7SQ4ek=
Received: from DB6PR0701MB1879.eurprd07.prod.outlook.com (10.168.10.151) by
	DB6PR0701MB1879.eurprd07.prod.outlook.com (10.168.10.151) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.761.5; Tue, 29 Nov 2016 13:55:42 +0000
Received: from DB6PR0701MB1879.eurprd07.prod.outlook.com ([10.168.10.151]) by
	DB6PR0701MB1879.eurprd07.prod.outlook.com ([10.168.10.151]) with
	mapi id 15.01.0761.009; Tue, 29 Nov 2016 13:55:42 +0000
From: Thomas Thorne <Thomas.Thorne@net2edge.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Thread-Topic: [meta-raspberrypi] Seeing "dd: failed to open
	'/core-image-minimal-raspberrypi3-20161129134515.rootfs.rpi-sdimg':
	Permission denied" Errors After Update
Thread-Index: AdJKRwyk/aCERKV/TYe2zMb5bFSjTA==
Date: Tue, 29 Nov 2016 13:55:41 +0000
Message-ID: <DB6PR0701MB18797532F7B8802879D25D7AD38D0@DB6PR0701MB1879.eurprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Thomas.Thorne@net2edge.com; 
x-originating-ip: [81.128.174.58]
x-ms-office365-filtering-correlation-id: 3397a177-3783-42e3-f60d-08d4185f6886
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:DB6PR0701MB1879; 
x-microsoft-exchange-diagnostics: 1; DB6PR0701MB1879;
	7:8SZ9KBxjY0Nlrt2wwFdxWT9IlRXdvT2aH+OnjuaZN5ATWdhM8RrPht40kukkcJLPrcYd2qXR74uxy2PKWN4ZhzOToToClFzOkdfshDX0P4y9vw8zEO5wtko92y+s5BToEzJclUxV0D3Y6AjP39bMEX+MH2/xj0vq2lWeYpK76kWMyOVQJk/xq3ueHeByaEz50sC1HVSquAllWE0UONeDhUpuopSRMbbzOm/j8Q5BvR/OEE8vmYGsSKellgP2TEzWCSkvf/koLDQHsORQ+MORltYv+rRSkZx7m1z28nOo4pVRcUj+tTFxt3YNK+EcYSLQLxLgzTJruJoJTl9qCcQ5AQTJRgRA8rYgqvb5TGrMA5BrBp9lmmwXwHXlmqNHN5u5PYFVudPDGivjWHdj6vou9MS1uGoT9Vr0UHxNB1J7PRrH6MqzDhTXX4VC8XryLAIjkFWydEI1ELy6QIGO52p5zw==
x-microsoft-antispam-prvs: <DB6PR0701MB18791D2F2E75ADA1C802455BD38D0@DB6PR0701MB1879.eurprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(102415395)(6060326)(6040361)(6045199)(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6041248)(6061324)(20161123564025)(20161123562025)(20161123560025)(20161123555025)(2016111802025)(6043046);
	SRVR:DB6PR0701MB1879; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0701MB1879; 
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(7916002)(252514010)(199003)(189002)(39380400001)(39400400001)(50986999)(5660300001)(105586002)(5890100001)(2900100001)(92566002)(106356001)(54356999)(99936001)(101416001)(230783001)(861006)(110136003)(7696004)(68736007)(9686002)(450100001)(6916009)(6116002)(81156014)(3846002)(8936002)(575784001)(122556002)(8676002)(81166006)(86362001)(790700001)(606004)(38730400001)(10710500007)(102836003)(6506003)(15650500001)(3660700001)(107886002)(74316002)(3280700002)(189998001)(66066001)(7736002)(7110500001)(7846002)(33656002)(76576001)(97736004)(7906003)(39450400002)(2906002)(77096006)(2420400007)(7099028);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0701MB1879;
	H:DB6PR0701MB1879.eurprd07.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: net2edge.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: net2edge.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2016 13:55:41.8535 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 851184e8-8658-4a6a-973d-aa012bcc8794
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0701MB1879
Subject: [meta-raspberrypi] Seeing "dd: failed to open '/core-image-minimal-raspberrypi3-20161129134515.rootfs.rpi-sdimg': Permission denied" Errors After Update
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
X-List-Received-Date: Tue, 29 Nov 2016 17:29:25 -0000
X-Groupsio-MsgNum: 33192
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_DB6PR0701MB18797532F7B8802879D25D7AD38D0DB6PR0701MB1879_";
	type="multipart/alternative"

--_004_DB6PR0701MB18797532F7B8802879D25D7AD38D0DB6PR0701MB1879_
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0701MB18797532F7B8802879D25D7AD38D0DB6PR0701MB1879_"

--_000_DB6PR0701MB18797532F7B8802879D25D7AD38D0DB6PR0701MB1879_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I updated my Krogoth work area today with `git pull` and I now seeing error=
 messages about being unable to open a root filesystem image for a raspberr=
ypi3.  I have tried in my build area that tries to make an SD card image an=
d the default one which does whatever the basic setup is.

Output from bitbake core-image-minimal attempt. I think this target was wor=
king before I did the pull.  rpi-basic-image, rpi-test-image rpi-hwup-image=
 were also working yesterday but

$ bitbake core-image-minimal
WARNING: Host distribution "Ubuntu-16.04" has not been validated with this =
version of the build system; you may possibly experience unexpected failure=
s. It is recommended that you use a tested distribution.
Parsing recipes: 100% |####################################################=
##################| Time: 00:00:33
Parsing of 1922 .bb files complete (0 cached, 1922 parsed). 2475 targets, 1=
46 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        =3D "1.30.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "universal"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "raspberrypi3"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "2.1.2"
TUNE_FEATURES     =3D "arm armv7ve vfp thumb neon vfpv4 callconvention-hard=
 cortexa7"
TARGET_FPU        =3D "hard"
meta
meta-poky
meta-yocto-bsp    =3D "krogoth:ae9b341ecfcc60e970f29cfe04306411ad26c0cf"
meta-oe
meta-multimedia
meta-networking
meta-python       =3D "krogoth:851a064b53dca3b14dd33eaaaca9573b1a36bf0e"
meta-qt5          =3D "HEAD:2b1871f0d139dc3caaa779a32a1931409c245a36"
meta-raspberrypi  =3D "heads/origin/krogoth:44d41bf3e94c4c8fe5ad5a3650572c8=
d17ef36c9"

NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: core-image-minimal-1.0-r0 do_image_rpi_sdimg: Function failed: do_im=
age_rpi_sdimg (log file is located at /home/thomasthorne/work/yocto-rpi/bui=
ld-pi3/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-minimal/1.0-r0/t=
emp/log.do_image_rpi_sdimg.10818)
ERROR: Logfile of failure stored in: /home/thomasthorne/work/yocto-rpi/buil=
d-pi3/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-minimal/1.0-r0/te=
mp/log.do_image_rpi_sdimg.10818
Log data follows:
| DEBUG: Executing python function set_image_size
| DEBUG: Python function set_image_size finished
| DEBUG: Executing shell function do_image_rpi_sdimg
| Creating filesystem with Boot partition 40960 KiB and RootFS 12288 KiB
| dd: failed to open '/core-image-minimal-raspberrypi3-20161129134515.rootf=
s.rpi-sdimg': Permission denied
| WARNING: /home/thomasthorne/work/yocto-rpi/build-pi3/tmp/work/raspberrypi=
3-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/run.do_image_rpi_sdimg.=
10818:1 exit 1 from 'dd if=3D/dev/zero of=3D${IMGDEPLOYDIR}/core-image-mini=
mal-raspberrypi3-20161129134515.rootfs.rpi-sdimg bs=3D1024 count=3D0 seek=
=3D${SDIMG_SIZE}'
| ERROR: Function failed: do_image_rpi_sdimg (log file is located at /home/=
thomasthorne/work/yocto-rpi/build-pi3/tmp/work/raspberrypi3-poky-linux-gnue=
abi/core-image-minimal/1.0-r0/temp/log.do_image_rpi_sdimg.10818)
ERROR: Task 16 (/home/thomasthorne/work/yocto-rpi/meta/recipes-core/images/=
core-image-minimal.bb, do_image_rpi_sdimg) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2117 tasks of which 2112 didn't need to be r=
erun and 1 failed.
No currently running tasks (2117 of 2119)

Summary: 1 task failed:
  /home/thomasthorne/work/yocto-rpi/meta/recipes-core/images/core-image-min=
imal.bb, do_image_rpi_sdimg
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code


If I try bitbake rpi-hwup-image I see a very similar error message to the a=
bove.

When I look for the core-image-minimal-raspberrypi3-20161129134515.rootfs.r=
pi-sdimg file it does not seem to exist on my filesystem.


If I try to bake a rpi-test-image instead I see:

$ bitbake rpi-test-image
WARNING: Host distribution "Ubuntu-16.04" has not been validated with this =
version of the build system; you may possibly experience unexpected failure=
s. It is recommended that you use a tested distribution.
Loading cache: 100% |######################################################=
##################| ETA:  00:00:00
Loaded 2476 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'linux-firmware-bcm43430' (but /home/thomasthorne/=
work/yocto-rpi/meta-raspberrypi/recipes-core/packagegroups/packagegroup-rpi=
-test.bb RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'linux-firmware-bcm43430' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['linux-firmware-bcm43430']
NOTE: Runtime target 'packagegroup-rpi-test' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['packagegroup-rpi-test', 'lin=
ux-firmware-bcm43430']
ERROR: Required build target 'rpi-test-image' has no buildable providers.
Missing or unbuildable dependency chain was: ['rpi-test-image', 'packagegro=
up-rpi-test', 'linux-firmware-bcm43430']

Which is also new.


Thomas A. F. Thorne MEng. AUS MIET
Software Engineer

Tel: +44 3450 130 030<tel:+44-3450-130-030>
Email: Thomas.Thorne@Net2Edge.com<mailto:Thomas.Thorne@Net2Edge.com>
Web: http://www.Net2Edge.com/<http://www.net2edge.com/>

[Net2Edge Logo]
Net2Edge Limited is a company registered in England & Wales (Company No. 24=
38435, VAT No. GB 537553821) Passfield Oak, Liphook, Hampshire, GU30 7RL. T=
his email transmission is confidential and intended solely for the person o=
r organisation to whom it is addressed. If you are not the intended recipie=
nt, you must not copy, distribute or disseminate the information, or take a=
ny action in reliance of it. Any views expressed in this message are those =
of the individual sender, except where the sender specifically states them =
to be the views of any organisation or employer. If you have received this =
message in error, do not open any attachment but please notify the sender (=
above) and delete this message from your system. Please rely on your own vi=
rus check. Although all outbound mail is checked for viruses, no responsibi=
lity is taken by the sender for any damage rising out of any bug or virus i=
nfection.


--_000_DB6PR0701MB18797532F7B8802879D25D7AD38D0DB6PR0701MB1879_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
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
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:#434244;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
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
<body lang=3D"EN-GB" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">I updated my Krogoth work area today with `git pull` and=
 I now seeing error messages about being unable to open a root filesystem i=
mage for a raspberrypi3.&nbsp; I have tried in my build
 area that tries to make an SD card image and the default one which does wh=
atever the basic setup is.&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">Output from bitbake core-image-minimal attempt. I think =
this target was working before I did the pull.&nbsp; rpi-basic-image, rpi-t=
est-image rpi-hwup-image were also working yesterday
 but <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">$ bitbake core-image-minimal<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">WARNING: Host distribution &quot;Ubuntu-16.04&quot; has =
not been validated with this version of the build system; you may possibly =
experience unexpected failures. It is recommended that you
 use a tested distribution.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">Parsing recipes: 100% |#################################=
#####################################| Time: 00:00:33<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">Parsing of 1922 .bb files complete (0 cached, 1922 parse=
d). 2475 targets, 146 skipped, 0 masked, 0 errors.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">NOTE: Resolving any missing task queue dependencies<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">Build Configuration:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D=
 &quot;1.30.0&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; =3D &quot;x86_64-linux&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">NATIVELSBSTRING&nbsp;&nbsp; =3D &quot;universal&quot;<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D=
 &quot;arm-poky-linux-gnueabi&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; =3D &quot;raspberrypi3&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; =3D &quot;poky&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D &quot;2.1.2&quot;<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;arm armv=
7ve vfp thumb neon vfpv4 callconvention-hard cortexa7&quot;<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D=
 &quot;hard&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">meta-poky&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">meta-yocto-bsp&nbsp;&nbsp;&nbsp; =3D &quot;krogoth:ae9b3=
41ecfcc60e970f29cfe04306411ad26c0cf&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">meta-oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">meta-multimedia&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">meta-networking&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">meta-python&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quo=
t;krogoth:851a064b53dca3b14dd33eaaaca9573b1a36bf0e&quot;<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">meta-qt5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; =3D &quot;HEAD:2b1871f0d139dc3caaa779a32a1931409c245a36&quot;<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">meta-raspberrypi&nbsp; =3D &quot;heads/origin/krogoth:44=
d41bf3e94c4c8fe5ad5a3650572c8d17ef36c9&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">NOTE: Preparing RunQueue<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">NOTE: Executing SetScene Tasks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">NOTE: Executing RunQueue Tasks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">ERROR: core-image-minimal-1.0-r0 do_image_rpi_sdimg: Fun=
ction failed: do_image_rpi_sdimg (log file is located at /home/thomasthorne=
/work/yocto-rpi/build-pi3/tmp/work/raspberrypi3-poky-linux-gnueabi/core-ima=
ge-minimal/1.0-r0/temp/log.do_image_rpi_sdimg.10818)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">ERROR: Logfile of failure stored in: /home/thomasthorne/=
work/yocto-rpi/build-pi3/tmp/work/raspberrypi3-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/temp/log.do_image_rpi_sdimg.10818<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">Log data follows:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">| DEBUG: Executing python function set_image_size<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">| DEBUG: Python function set_image_size finished<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">| DEBUG: Executing shell function do_image_rpi_sdimg<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">| Creating filesystem with Boot partition 40960 KiB and =
RootFS 12288 KiB<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">| dd: failed to open '/core-image-minimal-raspberrypi3-2=
0161129134515.rootfs.rpi-sdimg': Permission denied<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">| WARNING: /home/thomasthorne/work/yocto-rpi/build-pi3/t=
mp/work/raspberrypi3-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/run.=
do_image_rpi_sdimg.10818:1 exit 1 from 'dd if=3D/dev/zero
 of=3D${IMGDEPLOYDIR}/core-image-minimal-raspberrypi3-20161129134515.rootfs=
.rpi-sdimg bs=3D1024 count=3D0 seek=3D${SDIMG_SIZE}'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">| ERROR: Function failed: do_image_rpi_sdimg (log file i=
s located at /home/thomasthorne/work/yocto-rpi/build-pi3/tmp/work/raspberry=
pi3-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_image_rpi_sdim=
g.10818)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">ERROR: Task 16 (/home/thomasthorne/work/yocto-rpi/meta/r=
ecipes-core/images/core-image-minimal.bb, do_image_rpi_sdimg) failed with e=
xit code '1'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">NOTE: Tasks Summary: Attempted 2117 tasks of which 2112 =
didn't need to be rerun and 1 failed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">No currently running tasks (2117 of 2119)<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">Summary: 1 task failed:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">&nbsp; /home/thomasthorne/work/yocto-rpi/meta/recipes-co=
re/images/core-image-minimal.bb, do_image_rpi_sdimg<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">Summary: There was 1 WARNING message shown.<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">Summary: There was 1 ERROR message shown, returning a no=
n-zero exit code<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">If I try bitbake rpi-hwup-image I see a very similar err=
or message to the above.&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">When I look for the core-image-minimal-raspberrypi3-2016=
1129134515.rootfs.rpi-sdimg file it does not seem to exist on my filesystem=
.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">If I try to bake a rpi-test-image instead I see:<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">$ bitbake rpi-test-image<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">WARNING: Host distribution &quot;Ubuntu-16.04&quot; has =
not been validated with this version of the build system; you may possibly =
experience unexpected failures. It is recommended that you
 use a tested distribution.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">Loading cache: 100% |###################################=
#####################################| ETA:&nbsp; 00:00:00<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">Loaded 2476 entries from dependency cache.<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">NOTE: Resolving any missing task queue dependencies<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">ERROR: Nothing RPROVIDES 'linux-firmware-bcm43430' (but =
/home/thomasthorne/work/yocto-rpi/meta-raspberrypi/recipes-core/packagegrou=
ps/packagegroup-rpi-test.bb RDEPENDS on or otherwise
 requires it)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">NOTE: Runtime target 'linux-firmware-bcm43430' is unbuil=
dable, removing...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">Missing or unbuildable dependency chain was: ['linux-fir=
mware-bcm43430']<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">NOTE: Runtime target 'packagegroup-rpi-test' is unbuilda=
ble, removing...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">Missing or unbuildable dependency chain was: ['packagegr=
oup-rpi-test', 'linux-firmware-bcm43430']<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">ERROR: Required build target 'rpi-test-image' has no bui=
ldable providers.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">Missing or unbuildable dependency chain was: ['rpi-test-=
image', 'packagegroup-rpi-test', 'linux-firmware-bcm43430']<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244">Which is also new.&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244;mso-fareast-language:EN-GB">Thomas A. F. Thorne MEng. AUS=
 MIET<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Arial&quot;,sans=
-serif;color:#434244;mso-fareast-language:EN-GB">Software Engineer<o:p></o:=
p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244;mso-fareast-language:EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Arial&quot;,sans=
-serif;color:#434244;mso-fareast-language:EN-GB">Tel:</span></b><span style=
=3D"font-family:&quot;Arial&quot;,sans-serif;color:#208CA6;mso-fareast-lang=
uage:EN-GB">
<b><a href=3D"tel:&#43;44-3450-130-030"><span style=3D"color:#208CA6;text-d=
ecoration:none">&#43;44 3450 130 030</span></a></b></span><b><u><span style=
=3D"color:#208CA6;mso-fareast-language:EN-GB"><o:p></o:p></span></u></b></p=
>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Arial&quot;,sans=
-serif;color:#434244;mso-fareast-language:EN-GB">Email:</span></b><span sty=
le=3D"font-family:&quot;Arial&quot;,sans-serif;color:#434244;mso-fareast-la=
nguage:EN-GB">
</span><b><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:#20=
8CA6;mso-fareast-language:EN-GB"><a href=3D"mailto:Thomas.Thorne@Net2Edge.c=
om"><span style=3D"color:#208CA6;text-decoration:none">Thomas.Thorne@Net2Ed=
ge.com</span></a></span></b><span style=3D"color:#434244;mso-fareast-langua=
ge:EN-GB"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Arial&quot;,sans=
-serif;color:#434244;mso-fareast-language:EN-GB">Web:</span></b><span style=
=3D"font-family:&quot;Arial&quot;,sans-serif;color:#434244;mso-fareast-lang=
uage:EN-GB">
</span><b><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:#20=
8CA6;mso-fareast-language:EN-GB"><a href=3D"http://www.net2edge.com/"><span=
 style=3D"color:#208CA6;text-decoration:none">http://www.Net2Edge.com/</spa=
n></a></span></b><b><span style=3D"font-family:&quot;Arial&quot;,sans-serif=
;color:#208CA6;mso-fareast-language:EN-GB"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black;mso-fareast-language:EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#22162B;mso-fareas=
t-language:EN-GB"><img border=3D"0" width=3D"189" height=3D"51" style=3D"wi=
dth:1.9687in;height:.5312in" id=3D"Picture_x0020_1" src=3D"cid:image001.png=
@01D24A47.5B11EAC0" alt=3D"Net2Edge Logo"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#434244;mso-fareas=
t-language:EN-GB">Net2Edge Limited is a company registered in England &amp;=
 Wales (Company No. 2438435, VAT No. GB 537553821) Passfield
 Oak, Liphook, Hampshire, GU30 7RL. This email transmission is confidential=
 and intended solely for the person or organisation to whom it is addressed=
. If you are not the intended recipient, you must not copy, distribute or d=
isseminate the information, or take
 any action in reliance of it. Any views expressed in this message are thos=
e of the individual sender, except where the sender specifically states the=
m to be the views of any organisation or employer. If you have received thi=
s message in error, do not open
 any attachment but please notify the sender (above) and delete this messag=
e from your system. Please rely on your own virus check. Although all outbo=
und mail is checked for viruses, no responsibility is taken by the sender f=
or any damage rising out of any
 bug or virus infection.</span><span style=3D"color:#434244;mso-fareast-lan=
guage:EN-GB"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DB6PR0701MB18797532F7B8802879D25D7AD38D0DB6PR0701MB1879_--

--_004_DB6PR0701MB18797532F7B8802879D25D7AD38D0DB6PR0701MB1879_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=6351;
	creation-date="Tue, 29 Nov 2016 13:55:41 GMT";
	modification-date="Tue, 29 Nov 2016 13:55:41 GMT"
Content-ID: <image001.png@01D24A47.5B11EAC0>
Content-Transfer-Encoding: base64

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
tnP/D6swSSaEGOOdAAAAAElFTkSuQmCC

--_004_DB6PR0701MB18797532F7B8802879D25D7AD38D0DB6PR0701MB1879_--
