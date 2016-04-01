Return-Path: <pdemetrotion@winsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7386E00BE8; Fri,  1 Apr 2016 06:44:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.84 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 931 seconds by postgrey-1.32 at yocto-www;
	Fri, 01 Apr 2016 06:44:13 PDT
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0084.outbound.protection.outlook.com [207.46.100.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CABCEE00838
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2016 06:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=winsystemsinc.onmicrosoft.com; s=selector1-winsystems-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=e/gQ5RsHjwdBB0UnKxfLC08vcW66fiNUoJ19TXdOOak=;
	b=q6zzMDdiamaYbdAa1TbQWXMMF3UiqOZYv6+kKx08lbRe7q6/q8JrdePfymTYSUHm2yFNL8oLSX+6pLN0z5AOsT920SPFlxBH45gZ3eBhXDtXtU4rWPTPr/jm1zKo5NpEUpAhrgz8whejEb7lDjMhHrIIRKg4rm1COP4nh9O/AwM=
Received: from SN1PR0101MB1485.prod.exchangelabs.com (10.163.128.147) by
	SN1PR0101MB1486.prod.exchangelabs.com (10.163.128.148) with Microsoft
	SMTP Server (TLS) id 15.1.453.11; Fri, 1 Apr 2016 13:28:40 +0000
Received: from SN1PR0101MB1485.prod.exchangelabs.com ([10.163.128.147]) by
	SN1PR0101MB1485.prod.exchangelabs.com ([10.163.128.147]) with mapi id
	15.01.0453.021; Fri, 1 Apr 2016 13:28:40 +0000
From: Paul DeMetrotion <pdemetrotion@winsystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Cannot Build gstreamer1.0-plugins-imx
Thread-Index: AdGMGmfMyJLqmcsRSjWiY7cP3+6hlQ==
Date: Fri, 1 Apr 2016 13:28:40 +0000
Message-ID: <SN1PR0101MB148577C1E8064EE5A1C4BF2FBF9A0@SN1PR0101MB1485.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=winsystems.com;
x-originating-ip: [50.84.106.250]
x-ms-office365-filtering-correlation-id: 750c9342-cd19-4b37-fd59-08d35a318a16
x-microsoft-exchange-diagnostics: 1; SN1PR0101MB1486;
	5:dqGvJFrkjjXfK23IO+XFRrhaINSLvxQBWKu8XqmP2lXTwkG6rKeboXEb+NrjzB3jSaASDSJVKJXCF1H+soYbZsszt+S26WNaPoIfocKWhjhFnKwZrdNvRbP3yKl5h629PesoBgHbi4wQFk9QFCgpkA==;
	24:s+MqHXP1UucjWcE5ztnKlIUgYyIJMLGqQzn6+3FLI3Ul+UFAlGvW4hRW9Ff3RggHzLmvpU1MIR8WE0HwXBYe4dGbNVN3Kgt6790h53hQ48c=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:SN1PR0101MB1486;
x-microsoft-antispam-prvs: <SN1PR0101MB148673AAC5B03EC49E63F471BF9A0@SN1PR0101MB1486.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040046)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6041046)(6043046);
	SRVR:SN1PR0101MB1486; BCL:0; PCL:0; RULEID:;
	SRVR:SN1PR0101MB1486; 
x-forefront-prvs: 0899B47777
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(6116002)(19300405004)(19625215002)(1220700001)(5004730100002)(586003)(229853001)(2351001)(450100001)(3846002)(19609705001)(92566002)(102836003)(16236675004)(33656002)(66066001)(19580395003)(5630700001)(230783001)(1096002)(5008740100001)(1730700002)(50986999)(86362001)(122556002)(110136002)(189998001)(11100500001)(790700001)(2501003)(107886002)(54356999)(18717965001)(3280700002)(3660700001)(2906002)(87936001)(2900100001)(5002640100001)(74316001)(15975445007)(10400500002)(5640700001)(5003600100002)(77096005)(81166005);
	DIR:OUT; SFP:1101; SCL:1; SRVR:SN1PR0101MB1486;
	H:SN1PR0101MB1485.prod.exchangelabs.com; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: winsystems.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2016 13:28:40.1344 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 499305db-9394-4200-97fb-d233902786c6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR0101MB1486
Subject: Cannot Build gstreamer1.0-plugins-imx
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
X-List-Received-Date: Fri, 01 Apr 2016 13:44:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN1PR0101MB148577C1E8064EE5A1C4BF2FBF9A0SN1PR0101MB1485_"

--_000_SN1PR0101MB148577C1E8064EE5A1C4BF2FBF9A0SN1PR0101MB1485_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Trying to build gstreamer1.0-plugins-imx but get the following errors. Have=
 not been able to resolve the issue so would appreciate some guidance. Than=
ks.

ERROR: Multiple .bb files are due to be built which each provide virtual/li=
bg2d (/home/pauldemet/fsl-arm-yocto-bsp/sources/meta-fsl-arm/recipes-graphi=
cs/gpu-viv-g2d/gpu-viv-g2d_3.10.17-1.0.2.bb /home/pauldemet/fsl-arm-yocto-b=
sp/sources/meta-fsl-bsp-release/imx/meta-fsl-arm/recipes-graphics/imx-gpu-v=
iv/imx-gpu-viv_5.0.11.p4.4-hfp.bb).
This usually means one provides something the other doesn't and should.
WARNING: /home/pauldemet/fsl-arm-yocto-bsp/sources/meta-fsl-arm-extra/recip=
es-kernel/linux/linux-c420_3.14.28.bb.do_compile is tainted from a forced r=
un
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: The recipe gpu-viv-g2d is trying to install files into a shared area=
 when those files already exist. Those files and their manifest location ar=
e:
   /home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/sysroots/imx6dlc420/pkg=
data/runtime-reverse/libg2d0.8
Matched in manifest-imx6dlc420-imx-gpu-viv.packagedata
Please verify which recipe should provide the above files.
The build has stopped as continuing in this scenario WILL break things, if =
not now, possibly in the future (we've seen builds fail several months late=
r). If the system knew how to recover from this automatically it would howe=
ver there are several different scenarios which can result in this and we d=
on't know which one this is. It may be you have switched providers of somet=
hing like virtual/kernel (e.g. from linux-yocto to linux-yocto-dev), in tha=
t case you need to execute the clean task for both recipes and it will reso=
lve this error. It may be you changed DISTRO_FEATURES from systemd to udev =
or vice versa. Cleaning those recipes should again resolve this error howev=
er switching DISTRO_FEATURES on an existing build directory is not supporte=
d, you should really clean out tmp and rebuild (reusing sstate should be sa=
fe). It could be the overlapping files detected are harmless in which case =
adding them to SSTATE_DUPWHITELIST may be the correct solution. It could al=
so be your build is including two different conflicting versions of things =
(e.g. bluez 4 and bluez 5 and the correct solution for that would be to res=
olve the conflict. If in doubt, please ask on the mailing list, sharing the=
 error and filelist above.
ERROR: If the above message is too much, the simpler version is you're advi=
sed to wipe out tmp and rebuild (reusing sstate is fine). That will likely =
fix things in most (but not all) cases.
ERROR: Function failed: sstate_task_postfunc
ERROR: Logfile of failure stored in: /home/pauldemet/fsl-arm-yocto-bsp/buil=
d-c420/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gpu-viv-g2d/1_3.10.1=
7-1.0.2-r0/temp/log.do_packagedata.25685
ERROR: Task 106 (/home/pauldemet/fsl-arm-yocto-bsp/sources/meta-fsl-arm/rec=
ipes-graphics/gpu-viv-g2d/gpu-viv-g2d_3.10.17-1.0.2.bb, do_packagedata) fai=
led with exit code '1'
ERROR: The recipe gpu-viv-g2d is trying to install files into a shared area=
 when those files already exist. Those files and their manifest location ar=
e:
   /home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/sysroots/imx6dlc420/sys=
root-providers/virtual_libg2d
Matched in manifest-imx6dlc420-imx-gpu-viv.populate_sysroot
/home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/sysroots/imx6dlc420/usr/li=
b/libg2d-viv.so
Matched in manifest-imx6dlc420-imx-gpu-viv.populate_sysroot
/home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/sysroots/imx6dlc420/usr/li=
b/libg2d.so
Matched in manifest-imx6dlc420-imx-gpu-viv.populate_sysroot
/home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/sysroots/imx6dlc420/usr/in=
clude/g2d.h
Matched in manifest-imx6dlc420-imx-gpu-viv.populate_sysroot
Please verify which recipe should provide the above files.
The build has stopped as continuing in this scenario WILL break things, if =
not now, possibly in the future (we've seen builds fail several months late=
r). If the system knew how to recover from this automatically it would howe=
ver there are several different scenarios which can result in this and we d=
on't know which one this is. It may be you have switched providers of somet=
hing like virtual/kernel (e.g. from linux-yocto to linux-yocto-dev), in tha=
t case you need to execute the clean task for both recipes and it will reso=
lve this error. It may be you changed DISTRO_FEATURES from systemd to udev =
or vice versa. Cleaning those recipes should again resolve this error howev=
er switching DISTRO_FEATURES on an existing build directory is not supporte=
d, you should really clean out tmp and rebuild (reusing sstate should be sa=
fe). It could be the overlapping files detected are harmless in which case =
adding them to SSTATE_DUPWHITELIST may be the correct solution. It could al=
so be your build is including two different conflicting versions of things =
(e.g. bluez 4 and bluez 5 and the correct solution for that would be to res=
olve the conflict. If in doubt, please ask on the mailing list, sharing the=
 error and filelist above.
ERROR: If the above message is too much, the simpler version is you're advi=
sed to wipe out tmp and rebuild (reusing sstate is fine). That will likely =
fix things in most (but not all) cases.
ERROR: Function failed: sstate_task_postfunc
ERROR: Logfile of failure stored in: /home/pauldemet/fsl-arm-yocto-bsp/buil=
d-c420/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gpu-viv-g2d/1_3.10.1=
7-1.0.2-r0/temp/log.do_populate_sysroot.25684
ERROR: Task 102 (/home/pauldemet/fsl-arm-yocto-bsp/sources/meta-fsl-arm/rec=
ipes-graphics/gpu-viv-g2d/gpu-viv-g2d_3.10.17-1.0.2.bb, do_populate_sysroot=
) failed with exit code '1'


Paul DeMetrotion


--_000_SN1PR0101MB148577C1E8064EE5A1C4BF2FBF9A0SN1PR0101MB1485_
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
<p class=3D"MsoNormal">Trying to build gstreamer1.0-plugins-imx but get the=
 following errors. Have not been able to resolve the issue so would appreci=
ate some guidance. Thanks.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">ERROR: Multiple .bb files are due to be built which each provide virtu=
al/libg2d (/home/pauldemet/fsl-arm-yocto-bsp/sources/meta-fsl-arm/recipes-g=
raphics/gpu-viv-g2d/gpu-viv-g2d_3.10.17-1.0.2.bb
 /home/pauldemet/fsl-arm-yocto-bsp/sources/meta-fsl-bsp-release/imx/meta-fs=
l-arm/recipes-graphics/imx-gpu-viv/imx-gpu-viv_5.0.11.p4.4-hfp.bb).<o:p></o=
:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">This usually means one provides something the other doesn't and should=
.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">WARNING: /home/pauldemet/fsl-arm-yocto-bsp/sources/meta-fsl-arm-extra/=
recipes-kernel/linux/linux-c420_3.14.28.bb.do_compile
 is tainted from a forced run<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">NOTE: Executing SetScene Tasks<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">NOTE: Executing RunQueue Tasks<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">ERROR: The recipe gpu-viv-g2d is trying to install files into a shared=
 area when those files already exist.
 Those files and their manifest location are:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp; /home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/sysroots=
/imx6dlc420/pkgdata/runtime-reverse/libg2d0.8<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">Matched in manifest-imx6dlc420-imx-gpu-viv.packagedata<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">Please verify which recipe should provide the above files.<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">The build has stopped as continuing in this scenario WILL break things=
, if not now, possibly in the future (we've
 seen builds fail several months later). If the system knew how to recover =
from this automatically it would however there are several different scenar=
ios which can result in this and we don't know which one this is. It may be=
 you have switched providers of
 something like virtual/kernel (e.g. from linux-yocto to linux-yocto-dev), =
in that case you need to execute the clean task for both recipes and it wil=
l resolve this error. It may be you changed DISTRO_FEATURES from systemd to=
 udev or vice versa. Cleaning those
 recipes should again resolve this error however switching DISTRO_FEATURES =
on an existing build directory is not supported, you should really clean ou=
t tmp and rebuild (reusing sstate should be safe). It could be the overlapp=
ing files detected are harmless
 in which case adding them to SSTATE_DUPWHITELIST may be the correct soluti=
on. It could also be your build is including two different conflicting vers=
ions of things (e.g. bluez 4 and bluez 5 and the correct solution for that =
would be to resolve the conflict.
 If in doubt, please ask on the mailing list, sharing the error and filelis=
t above.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">ERROR: If the above message is too much, the simpler version is you're=
 advised to wipe out tmp and rebuild (reusing
 sstate is fine). That will likely fix things in most (but not all) cases.<=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">ERROR: Function failed: sstate_task_postfunc<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">ERROR: Logfile of failure stored in: /home/pauldemet/fsl-arm-yocto-bsp=
/build-c420/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gpu-viv-g2d/1_3=
.10.17-1.0.2-r0/temp/log.do_packagedata.25685<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">ERROR: Task 106 (/home/pauldemet/fsl-arm-yocto-bsp/sources/meta-fsl-ar=
m/recipes-graphics/gpu-viv-g2d/gpu-viv-g2d_3.10.17-1.0.2.bb,
 do_packagedata) failed with exit code '1'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">ERROR: The recipe gpu-viv-g2d is trying to install files into a shared=
 area when those files already exist.
 Those files and their manifest location are:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp; /home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/sysroots=
/imx6dlc420/sysroot-providers/virtual_libg2d<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">Matched in manifest-imx6dlc420-imx-gpu-viv.populate_sysroot<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">/home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/sysroots/imx6dlc420/u=
sr/lib/libg2d-viv.so<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">Matched in manifest-imx6dlc420-imx-gpu-viv.populate_sysroot<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">/home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/sysroots/imx6dlc420/u=
sr/lib/libg2d.so<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">Matched in manifest-imx6dlc420-imx-gpu-viv.populate_sysroot<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">/home/pauldemet/fsl-arm-yocto-bsp/build-c420/tmp/sysroots/imx6dlc420/u=
sr/include/g2d.h<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">Matched in manifest-imx6dlc420-imx-gpu-viv.populate_sysroot<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">Please verify which recipe should provide the above files.<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">The build has stopped as continuing in this scenario WILL break things=
, if not now, possibly in the future (we've
 seen builds fail several months later). If the system knew how to recover =
from this automatically it would however there are several different scenar=
ios which can result in this and we don't know which one this is. It may be=
 you have switched providers of
 something like virtual/kernel (e.g. from linux-yocto to linux-yocto-dev), =
in that case you need to execute the clean task for both recipes and it wil=
l resolve this error. It may be you changed DISTRO_FEATURES from systemd to=
 udev or vice versa. Cleaning those
 recipes should again resolve this error however switching DISTRO_FEATURES =
on an existing build directory is not supported, you should really clean ou=
t tmp and rebuild (reusing sstate should be safe). It could be the overlapp=
ing files detected are harmless
 in which case adding them to SSTATE_DUPWHITELIST may be the correct soluti=
on. It could also be your build is including two different conflicting vers=
ions of things (e.g. bluez 4 and bluez 5 and the correct solution for that =
would be to resolve the conflict.
 If in doubt, please ask on the mailing list, sharing the error and filelis=
t above.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">ERROR: If the above message is too much, the simpler version is you're=
 advised to wipe out tmp and rebuild (reusing
 sstate is fine). That will likely fix things in most (but not all) cases.<=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">ERROR: Function failed: sstate_task_postfunc<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">ERROR: Logfile of failure stored in: /home/pauldemet/fsl-arm-yocto-bsp=
/build-c420/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gpu-viv-g2d/1_3=
.10.17-1.0.2-r0/temp/log.do_populate_sysroot.25684<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">ERROR: Task 102 (/home/pauldemet/fsl-arm-yocto-bsp/sources/meta-fsl-ar=
m/recipes-graphics/gpu-viv-g2d/gpu-viv-g2d_3.10.17-1.0.2.bb,
 do_populate_sysroot) failed with exit code '1'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Paul DeMetrotion<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_SN1PR0101MB148577C1E8064EE5A1C4BF2FBF9A0SN1PR0101MB1485_--
