Return-Path: <peter.spierenburg@nautel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16D18E00DA4; Thu, 25 Jan 2018 05:16:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.135 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0135.outbound.protection.outlook.com [104.47.38.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EE24E00B66
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 05:16:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nautel.onmicrosoft.com; s=selector1-nautel-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=ISBSnVtnHgDpegpjFnbF3sJddcokRTULMbArHB0ULWM=;
	b=Qa4Nvgb/Xud6k4k85OKQh/CfQuJz5VYEpA7OqIhEEoZOq7lkfMTcqSOlcHBzk1ffwRtO7l5ovYUhl1gAyDSXppf0EKhA1s2lyo8TGcJbjq7bXFgl+c3IZCqeMXs2zDD63wCF8+bQnu8HHMtyq4zBcNVGFotv/XUKaHy89G1zu3c=
Received: from MWHPR13MB1584.namprd13.prod.outlook.com (10.175.140.149) by
	MWHPR13MB1773.namprd13.prod.outlook.com (10.171.145.135) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.464.6; Thu, 25 Jan 2018 13:16:04 +0000
Received: from MWHPR13MB1584.namprd13.prod.outlook.com ([10.175.140.149]) by
	MWHPR13MB1584.namprd13.prod.outlook.com ([10.175.140.149]) with mapi id
	15.20.0444.013; Thu, 25 Jan 2018 13:16:04 +0000
From: Peter Spierenburg <peter.spierenburg@nautel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How do I generate a dtb for my board support package?
Thread-Index: AQHTlUrMuQ9+EGnL006VzjvxSSjFpKOETgX+
Date: Thu, 25 Jan 2018 13:16:04 +0000
Message-ID: <MWHPR13MB1584687F1F31126DF1FCA1CA9EE10@MWHPR13MB1584.namprd13.prod.outlook.com>
References: <MWHPR13MB1584C1139309858BD0E22C089EE20@MWHPR13MB1584.namprd13.prod.outlook.com>
In-Reply-To: <MWHPR13MB1584C1139309858BD0E22C089EE20@MWHPR13MB1584.namprd13.prod.outlook.com>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=peter.spierenburg@nautel.com; 
x-originating-ip: [24.222.2.222]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MWHPR13MB1773;
	7:dFSmm45N7Dt5VbPoDro15kpzLB+iRnTYxY176GuccLLNbCO7ug//cerqRa5C2k6p0+XWRuh3N/uTKQMBrFb+TOQHQstHXa1BZA3B+OMsp/t7R8bnYTwfhy3tWaIg+YJJD/NBXFjfeveewAznNBUdJDN7MltEd8miDTofJFjTB24LXLWTDdw92cVQBGxmA8zjM/MG7QrOHm0kC99rXb994uJ96ikNyWP+sVGn8RPl0bfzcN6BXIikym+DtBDUJtvl
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 7a87ed2f-1fc2-44b2-ad43-08d563f5c9c0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(4627221)(201703031133081)(201702281549075)(5600026)(4604075)(3008032)(2017052603307)(7153060)(7193020);
	SRVR:MWHPR13MB1773; 
x-ms-traffictypediagnostic: MWHPR13MB1773:
x-microsoft-antispam-prvs: <MWHPR13MB1773AB93718F31A5751B74A09EE10@MWHPR13MB1773.namprd13.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(788757137089);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(5005006)(8121501046)(3002001)(93006095)(93001095)(10201501046)(3231023)(2400081)(944501161)(6041288)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(20161123564045)(20161123558120)(20161123560045)(6072148)(201708071742011);
	SRVR:MWHPR13MB1773; BCL:0; PCL:0; RULEID:; SRVR:MWHPR13MB1773; 
x-forefront-prvs: 0563F2E8B7
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39380400002)(346002)(39830400003)(376002)(366004)(396003)(199004)(189003)(8936002)(2501003)(6606003)(6916009)(8676002)(1730700003)(81156014)(2351001)(53936002)(33656002)(81166006)(2950100002)(25786009)(5640700003)(6506007)(55016002)(105586002)(54896002)(9686003)(5890100001)(19627405001)(106356001)(3280700002)(186003)(76176011)(3660700001)(2900100001)(7696005)(66066001)(6436002)(59450400001)(102836004)(68736007)(97736004)(5660300001)(7736002)(2906002)(6116002)(3846002)(74316002)(77096007)(86362001)(99286004)(14454004)(575784001)(478600001)(316002)(26005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR13MB1773;
	H:MWHPR13MB1584.namprd13.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: nautel.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: pTRW57xoJf3tI9wizsBOqOo+rFjexK360BGt09Jc1zYC2exIAxNu3FOT/lO5JUGHWgZhM+RsG8yj3yR/LLpsUg==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nautel.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a87ed2f-1fc2-44b2-ad43-08d563f5c9c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2018 13:16:04.4996 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 656f830c-eb88-49fe-90f1-433363ec7ccf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR13MB1773
Subject: How do I generate a dtb for my board support package?
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
X-List-Received-Date: Thu, 25 Jan 2018 13:16:09 -0000
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_MWHPR13MB1584687F1F31126DF1FCA1CA9EE10MWHPR13MB1584namp_"

--_000_MWHPR13MB1584687F1F31126DF1FCA1CA9EE10MWHPR13MB1584namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I am trying to write a board support package for the adzs-sc589-ezlite boar=
d from Analog Devices, because AD only supplies a buildroot package, and I =
would prefer to use yocto.


AD's buildroot produces a uImage kernel with dtb that is served to the boar=
d using tftp. The root file system is served to the board by nfs.


I've begun working on my own bsp for this board. I have successfully booted=
 and interacted with the board using buildroot's kernel and dtb combined wi=
th yocto's root filesystem.


I'd now like to replace the buildroot kernel and dtb file with ones generat=
ed by yocto.


My bsp layer is called meta-adzs-sc589-ezlite.


The meta-adzs-sc589-ezlite/conf/machine/adzs-sc589-ezlite.conf contains:



#@TYPE: Machine
#@NAME: adzs-sc589-ezlite

#@DESCRIPTION: Machine configuration for adzs-sc589-ezlite systems


PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
PREFERRED_VERSION_linux-yocto ?=3D "4.12%"


require conf/machine/include/qemu.inc
require conf/machine/include/tune-arm926ejs.inc


KERNEL_IMAGETYPE =3D "uImage"
KERNEL_EXTRA_ARGS +=3D "LOADADDR=3Dc2008000"
KERNEL_DEVICETREE =3D "sc589-ezkit.dts"
SERIAL_CONSOLE =3D "115200 ttyAMA0"


and my meta-adzs-sc589-ezlite/recipes-kernel/linux/linux-yocto_4.12.bbappen=
d


FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"

PR :=3D "${PR}.1"

COMPATIBLE_MACHINE_adzs-sc589-ezlite =3D "adzs-sc589-ezlite"


KERNEL_FEATURES_append_adzs-sc589-ezlite +=3D " cfg/smp.scc"

SRC_URI +=3D "file://adzs-sc589-ezlite.scc \
            file://adzs-sc589-ezlite.cfg \
            file://adzs-sc589-ezlite-standard.scc \
            file://adzs-sc589-ezlite-user-config.cfg \
            file://adzs-sc589-ezlite-user-features.scc \
            file://adzs-sc589-ezlite-user-patches.scc \
            file://sc589-ezkit.dts \
            file://sc58x.dtsi \
           "

# replace these SRCREVs with the real commit ids once you've had
# the appropriate changes committed to the upstream linux-yocto repo
SRCREV_machine_pn-linux-yocto_adzs-sc589-ezlite ?=3D "${AUTOREV}"
SRCREV_meta_pn-linux-yocto_adzs-sc589-ezlite ?=3D "${AUTOREV}"
#LINUX_VERSION =3D "4.10"
#Remove the following line once AUTOREV is locked to a certain SRCREV
KERNEL_VERSION_SANITY_SKIP =3D "1"



However, when I perform a build, I get:


ERROR: linux-yocto-4.12.18+gitAUTOINC+0d0f74b803_8506961765-r0.1 do_compile=
: oe_runmake failed
ERROR: linux-yocto-4.12.18+gitAUTOINC+0d0f74b803_8506961765-r0.1 do_compile=
: Function failed: do_compile (log file is located at /home/user/work/sad-y=
octo/poky/build/tmp/work/adzs_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4=
.12.18+gitAUTOINC+0d0f74b803_8506961765-r0.1/temp/log.do_compile.28883)
ERROR: Logfile of failure stored in: /home/user/work/sad-yocto/poky/build/t=
mp/work/adzs_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18+gitAUTOINC=
+0d0f74b803_8506961765-r0.1/temp/log.do_compile.28883
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 4 HOSTCC=3Dgcc  -isystem/home/user/work/sad-yocto/poky/buil=
d/tmp/work/adzs_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18+gitAUTO=
INC+0d0f74b803_8506961765-r0.1/recipe-sysroot-native/usr/include -O2 -pipe =
-L/home/user/work/sad-yocto/poky/build/tmp/work/adzs_sc589_ezlite-poky-linu=
x-gnueabi/linux-yocto/4.12.18+gitAUTOINC+0d0f74b803_8506961765-r0.1/recipe-=
sysroot-native/usr/lib -L/home/user/work/sad-yocto/poky/build/tmp/work/adzs=
_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18+gitAUTOINC+0d0f74b803_=
8506961765-r0.1/recipe-sysroot-native/lib -Wl,-rpath-link,/home/user/work/s=
ad-yocto/poky/build/tmp/work/adzs_sc589_ezlite-poky-linux-gnueabi/linux-yoc=
to/4.12.18+gitAUTOINC+0d0f74b803_8506961765-r0.1/recipe-sysroot-native/usr/=
lib -Wl,-rpath-link,/home/user/work/sad-yocto/poky/build/tmp/work/adzs_sc58=
9_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18+gitAUTOINC+0d0f74b803_85069=
61765-r0.1/recipe-sysroot-native/lib -Wl,-rpath,/home/user/work/sad-yocto/p=
oky/build/tmp/work/adzs_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18=
+gitAUTOINC+0d0f74b803_8506961765-r0.1/recipe-sysroot-native/usr/lib -Wl,-r=
path,/home/user/work/sad-yocto/poky/build/tmp/work/adzs_sc589_ezlite-poky-l=
inux-gnueabi/linux-yocto/4.12.18+gitAUTOINC+0d0f74b803_8506961765-r0.1/reci=
pe-sysroot-native/lib -Wl,-O1 HOSTCPP=3Dgcc  -E uImage CC=3Darm-poky-linux-=
gnueabi-gcc  -mno-thumb-interwork -marm -fuse-ld=3Dbfd -ffile-prefix-map=3D=
/home/user/work/sad-yocto/poky/build/tmp/work-shared/adzs-sc589-ezlite/kern=
el-source=3D/kernel-source/  LD=3Darm-poky-linux-gnueabi-ld.bfd   LOADADDR=
=3Dc2008000
|   CHK     include/config/kernel.release
|   Using /home/user/work/sad-yocto/poky/build/tmp/work-shared/adzs-sc589-e=
zlite/kernel-source as source for kernel
|   GEN     ./Makefile
|   CHK     include/generated/uapi/linux/version.h
|   CHK     include/generated/utsrelease.h
|   CHK     include/generated/timeconst.h
|   CHK     include/generated/bounds.h
|   CHK     include/generated/asm-offsets.h
|   CALL    /home/user/work/sad-yocto/poky/build/tmp/work-shared/adzs-sc589=
-ezlite/kernel-source/scripts/checksyscalls.sh
|   CHK     scripts/mod/devicetable-offsets.h
|   CHK     include/generated/compile.h
|   CHK     kernel/config_data.h
|   Kernel: arch/arm/boot/Image is ready
|   Kernel: arch/arm/boot/zImage is ready
|   Kernel: arch/arm/boot/uImage is ready
| NOTE: make -j 4 HOSTCC=3Dgcc  -isystem/home/user/work/sad-yocto/poky/buil=
d/tmp/work/adzs_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18+gitAUTO=
INC+0d0f74b803_8506961765-r0.1/recipe-sysroot-native/usr/include -O2 -pipe =
-L/home/user/work/sad-yocto/poky/build/tmp/work/adzs_sc589_ezlite-poky-linu=
x-gnueabi/linux-yocto/4.12.18+gitAUTOINC+0d0f74b803_8506961765-r0.1/recipe-=
sysroot-native/usr/lib -L/home/user/work/sad-yocto/poky/build/tmp/work/adzs=
_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18+gitAUTOINC+0d0f74b803_=
8506961765-r0.1/recipe-sysroot-native/lib -Wl,-rpath-link,/home/user/work/s=
ad-yocto/poky/build/tmp/work/adzs_sc589_ezlite-poky-linux-gnueabi/linux-yoc=
to/4.12.18+gitAUTOINC+0d0f74b803_8506961765-r0.1/recipe-sysroot-native/usr/=
lib -Wl,-rpath-link,/home/user/work/sad-yocto/poky/build/tmp/work/adzs_sc58=
9_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18+gitAUTOINC+0d0f74b803_85069=
61765-r0.1/recipe-sysroot-native/lib -Wl,-rpath,/home/user/work/sad-yocto/p=
oky/build/tmp/work/adzs_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18=
+gitAUTOINC+0d0f74b803_8506961765-r0.1/recipe-sysroot-native/usr/lib -Wl,-r=
path,/home/user/work/sad-yocto/poky/build/tmp/work/adzs_sc589_ezlite-poky-l=
inux-gnueabi/linux-yocto/4.12.18+gitAUTOINC+0d0f74b803_8506961765-r0.1/reci=
pe-sysroot-native/lib -Wl,-O1 HOSTCPP=3Dgcc  -E sc589-ezkit.dts
| make[2]: *** No rule to make target `sc589-ezkit.dts'.  Stop.
| make[1]: *** [sub-make] Error 2
| make: *** [__sub-make] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at /home/user/wor=
k/sad-yocto/poky/build/tmp/work/adzs_sc589_ezlite-poky-linux-gnueabi/linux-=
yocto/4.12.18+gitAUTOINC+0d0f74b803_8506961765-r0.1/temp/log.do_compile.288=
83)
ERROR: Task (/home/user/work/sad-yocto/poky/meta/recipes-kernel/linux/linux=
-yocto_4.12.bb:do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2444 tasks of which 2443 didn't need to be r=
erun and 1 failed.



What is the common practice for adding .dts/.dtsi files to a bsp in order t=
o generate a .dtb file during the build?


Peter.


This communication, including any attached documentation, is intended only =
for the person or entity to which it is addressed, and may contain confiden=
tial, personal, and/or privileged information. Any unauthorized disclosure,=
 copying, or taking action on the contents is strictly prohibited. If you h=
ave received this message in error, please contact us immediately so we may=
 correct our records. Please then delete or destroy the original transmissi=
on and any subsequent reply. Thank you.

--_000_MWHPR13MB1584687F1F31126DF1FCA1CA9EE10MWHPR13MB1584namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-family: Calib=
ri, Helvetica, sans-serif; font-size: 12pt;">I am trying to write a board s=
upport package for the&nbsp;</span><span style=3D"font-family: Calibri, Hel=
vetica, sans-serif; font-size: 12pt;">adzs-sc589-ezlite
 board from Analog Devices, because AD only supplies a buildroot package, a=
nd I would prefer to use yocto.</span><br>
</p>
<div style=3D"color: rgb(0, 0, 0);">
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0"><span><br>
</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span>AD's buildroot produces a =
uImage kernel with dtb that is served to the board using tftp. The root fil=
e system is served to the board by nfs.</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span><br>
</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span>I've begun working on my o=
wn bsp for this board. I have successfully booted and interacted with the b=
oard using buildroot's kernel and dtb combined with yocto's root filesystem=
.</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span style=3D"font-size: 12pt;"=
><br>
</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span style=3D"font-size: 12pt;"=
>I'd now like to replace the buildroot kernel and dtb file with ones genera=
ted by yocto.</span><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"><span><br>
</span></p>
<p style=3D"margin-top:0; margin-bottom:0">My bsp layer is called meta-<spa=
n>adzs-sc589-ezlite.</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span><br>
</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span>The&nbsp;<span>meta-adzs-s=
c589-ezlite/conf/machine/adzs-sc589-ezlite.conf contains:</span></span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span><span><br>
</span></span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span><span><br>
</span></span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span><span></span></span></p>
<div><span style=3D"font-family:Consolas,Courier,monospace">#@TYPE: Machine=
</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">#@NAME: adzs-sc=
589-ezlite</span></div>
<div><br>
</div>
<div><span style=3D"font-family:Consolas,Courier,monospace">#@DESCRIPTION: =
Machine configuration for adzs-sc589-ezlite systems</span></div>
<div><br>
</div>
<div><br>
</div>
<div><span style=3D"font-family:Consolas,Courier,monospace">PREFERRED_PROVI=
DER_virtual/kernel ?=3D &quot;linux-yocto&quot;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">PREFERRED_VERSI=
ON_linux-yocto ?=3D &quot;4.12%&quot;</span></div>
<div><br>
</div>
<div><br>
</div>
<div><span style=3D"font-family:Consolas,Courier,monospace">require conf/ma=
chine/include/qemu.inc</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">require conf/ma=
chine/include/tune-arm926ejs.inc</span></div>
<div><br>
</div>
<div><br>
</div>
<div><span style=3D"font-family:Consolas,Courier,monospace">KERNEL_IMAGETYP=
E =3D &quot;uImage&quot;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">KERNEL_EXTRA_AR=
GS &#43;=3D &quot;LOADADDR=3Dc2008000&quot;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">KERNEL_DEVICETR=
EE =3D &quot;sc589-ezkit.dts&quot;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">SERIAL_CONSOLE =
=3D &quot;115200 ttyAMA0&quot;</span></div>
<div><br>
</div>
<p></p>
<p style=3D"margin-top:0; margin-bottom:0"><span><span></span></span></p>
<div><br>
</div>
<div>and my&nbsp;<span>meta-adzs-sc589-ezlite/recipes-kernel/linux/linux-yo=
cto_4.12.bbappend</span></div>
<div><span><br>
</span></div>
<p></p>
<p style=3D"margin-top:0; margin-bottom:0"><span><span></span></span></p>
<div><span style=3D"font-family:Consolas,Courier,monospace">FILESEXTRAPATHS=
_prepend :=3D &quot;${THISDIR}/files:&quot;</span></div>
<div><br>
</div>
<div><span style=3D"font-family:Consolas,Courier,monospace">PR :=3D &quot;$=
{PR}.1&quot;</span></div>
<div><br>
</div>
<div><span style=3D"font-family:Consolas,Courier,monospace">COMPATIBLE_MACH=
INE_adzs-sc589-ezlite =3D &quot;adzs-sc589-ezlite&quot;</span></div>
<div><br>
</div>
<div><br>
</div>
<div><span style=3D"font-family:Consolas,Courier,monospace">KERNEL_FEATURES=
_append_adzs-sc589-ezlite &#43;=3D &quot; cfg/smp.scc&quot;</span></div>
<div><br>
</div>
<div><span style=3D"font-family:Consolas,Courier,monospace">SRC_URI &#43;=
=3D &quot;file://adzs-sc589-ezlite.scc \</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; file://adzs-sc589-ezlite.cfg \</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; file://adzs-sc589-ezlite-standard.scc \</span></=
div>
<div><span style=3D"font-family:Consolas,Courier,monospace">&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; file://adzs-sc589-ezlite-user-config.cfg \</span=
></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; file://adzs-sc589-ezlite-user-features.scc \</sp=
an></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; file://adzs-sc589-ezlite-user-patches.scc \</spa=
n></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; file://sc589-ezkit.dts \</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; file://sc58x.dtsi \</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;&quot;</span></div>
<div><br>
</div>
<div><span style=3D"font-family:Consolas,Courier,monospace"># replace these=
 SRCREVs with the real commit ids once you've had</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace"># the appropria=
te changes committed to the upstream linux-yocto repo</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">SRCREV_machine_=
pn-linux-yocto_adzs-sc589-ezlite ?=3D &quot;${AUTOREV}&quot;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">SRCREV_meta_pn-=
linux-yocto_adzs-sc589-ezlite ?=3D &quot;${AUTOREV}&quot;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">#LINUX_VERSION =
=3D &quot;4.10&quot;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">#Remove the fol=
lowing line once AUTOREV is locked to a certain SRCREV</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">KERNEL_VERSION_=
SANITY_SKIP =3D &quot;1&quot;</span></div>
<div><br>
</div>
<br>
<p></p>
<p style=3D"margin-top:0; margin-bottom:0">However, when I perform a build,=
 I get:</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"></p>
<div><span style=3D"font-family:Consolas,Courier,monospace">ERROR: linux-yo=
cto-4.12.18&#43;gitAUTOINC&#43;0d0f74b803_8506961765-r0.1 do_compile: oe_ru=
nmake failed</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">ERROR: linux-yo=
cto-4.12.18&#43;gitAUTOINC&#43;0d0f74b803_8506961765-r0.1 do_compile: Funct=
ion failed: do_compile (log file is located at /home/user/work/sad-yocto/po=
ky/build/tmp/work/adzs_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18&=
#43;gitAUTOINC&#43;0d0f74b803_8506961765-r0.1/temp/log.do_compile.28883)</s=
pan></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">ERROR: Logfile =
of failure stored in: /home/user/work/sad-yocto/poky/build/tmp/work/adzs_sc=
589_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18&#43;gitAUTOINC&#43;0d0f74=
b803_8506961765-r0.1/temp/log.do_compile.28883</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">Log data follow=
s:</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">| DEBUG: Execut=
ing shell function do_compile</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">| NOTE: make -j=
 4 HOSTCC=3Dgcc&nbsp; -isystem/home/user/work/sad-yocto/poky/build/tmp/work=
/adzs_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18&#43;gitAUTOINC&#4=
3;0d0f74b803_8506961765-r0.1/recipe-sysroot-native/usr/include
 -O2 -pipe -L/home/user/work/sad-yocto/poky/build/tmp/work/adzs_sc589_ezlit=
e-poky-linux-gnueabi/linux-yocto/4.12.18&#43;gitAUTOINC&#43;0d0f74b803_8506=
961765-r0.1/recipe-sysroot-native/usr/lib -L/home/user/work/sad-yocto/poky/=
build/tmp/work/adzs_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18&#43=
;gitAUTOINC&#43;0d0f74b803_8506961765-r0.1/recipe-sysroot-native/lib
 -Wl,-rpath-link,/home/user/work/sad-yocto/poky/build/tmp/work/adzs_sc589_e=
zlite-poky-linux-gnueabi/linux-yocto/4.12.18&#43;gitAUTOINC&#43;0d0f74b803_=
8506961765-r0.1/recipe-sysroot-native/usr/lib -Wl,-rpath-link,/home/user/wo=
rk/sad-yocto/poky/build/tmp/work/adzs_sc589_ezlite-poky-linux-gnueabi/linux=
-yocto/4.12.18&#43;gitAUTOINC&#43;0d0f74b803_8506961765-r0.1/recipe-sysroot=
-native/lib
 -Wl,-rpath,/home/user/work/sad-yocto/poky/build/tmp/work/adzs_sc589_ezlite=
-poky-linux-gnueabi/linux-yocto/4.12.18&#43;gitAUTOINC&#43;0d0f74b803_85069=
61765-r0.1/recipe-sysroot-native/usr/lib -Wl,-rpath,/home/user/work/sad-yoc=
to/poky/build/tmp/work/adzs_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.1=
2.18&#43;gitAUTOINC&#43;0d0f74b803_8506961765-r0.1/recipe-sysroot-native/li=
b
 -Wl,-O1 HOSTCPP=3Dgcc&nbsp; -E uImage CC=3Darm-poky-linux-gnueabi-gcc&nbsp=
; -mno-thumb-interwork -marm -fuse-ld=3Dbfd -ffile-prefix-map=3D/home/user/=
work/sad-yocto/poky/build/tmp/work-shared/adzs-sc589-ezlite/kernel-source=
=3D/kernel-source/&nbsp; LD=3Darm-poky-linux-gnueabi-ld.bfd&nbsp;
 &nbsp;LOADADDR=3Dc2008000</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|&nbsp; &nbsp;C=
HK&nbsp; &nbsp; &nbsp;include/config/kernel.release</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|&nbsp; &nbsp;U=
sing /home/user/work/sad-yocto/poky/build/tmp/work-shared/adzs-sc589-ezlite=
/kernel-source as source for kernel</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|&nbsp; &nbsp;G=
EN&nbsp; &nbsp; &nbsp;./Makefile</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|&nbsp; &nbsp;C=
HK&nbsp; &nbsp; &nbsp;include/generated/uapi/linux/version.h</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|&nbsp; &nbsp;C=
HK&nbsp; &nbsp; &nbsp;include/generated/utsrelease.h</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|&nbsp; &nbsp;C=
HK&nbsp; &nbsp; &nbsp;include/generated/timeconst.h</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|&nbsp; &nbsp;C=
HK&nbsp; &nbsp; &nbsp;include/generated/bounds.h</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|&nbsp; &nbsp;C=
HK&nbsp; &nbsp; &nbsp;include/generated/asm-offsets.h</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|&nbsp; &nbsp;C=
ALL&nbsp; &nbsp; /home/user/work/sad-yocto/poky/build/tmp/work-shared/adzs-=
sc589-ezlite/kernel-source/scripts/checksyscalls.sh</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|&nbsp; &nbsp;C=
HK&nbsp; &nbsp; &nbsp;scripts/mod/devicetable-offsets.h</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|&nbsp; &nbsp;C=
HK&nbsp; &nbsp; &nbsp;include/generated/compile.h</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|&nbsp; &nbsp;C=
HK&nbsp; &nbsp; &nbsp;kernel/config_data.h</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|&nbsp; &nbsp;K=
ernel: arch/arm/boot/Image is ready</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|&nbsp; &nbsp;K=
ernel: arch/arm/boot/zImage is ready</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">|&nbsp; &nbsp;K=
ernel: arch/arm/boot/uImage is ready</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">| NOTE: make -j=
 4 HOSTCC=3Dgcc&nbsp; -isystem/home/user/work/sad-yocto/poky/build/tmp/work=
/adzs_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18&#43;gitAUTOINC&#4=
3;0d0f74b803_8506961765-r0.1/recipe-sysroot-native/usr/include
 -O2 -pipe -L/home/user/work/sad-yocto/poky/build/tmp/work/adzs_sc589_ezlit=
e-poky-linux-gnueabi/linux-yocto/4.12.18&#43;gitAUTOINC&#43;0d0f74b803_8506=
961765-r0.1/recipe-sysroot-native/usr/lib -L/home/user/work/sad-yocto/poky/=
build/tmp/work/adzs_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18&#43=
;gitAUTOINC&#43;0d0f74b803_8506961765-r0.1/recipe-sysroot-native/lib
 -Wl,-rpath-link,/home/user/work/sad-yocto/poky/build/tmp/work/adzs_sc589_e=
zlite-poky-linux-gnueabi/linux-yocto/4.12.18&#43;gitAUTOINC&#43;0d0f74b803_=
8506961765-r0.1/recipe-sysroot-native/usr/lib -Wl,-rpath-link,/home/user/wo=
rk/sad-yocto/poky/build/tmp/work/adzs_sc589_ezlite-poky-linux-gnueabi/linux=
-yocto/4.12.18&#43;gitAUTOINC&#43;0d0f74b803_8506961765-r0.1/recipe-sysroot=
-native/lib
 -Wl,-rpath,/home/user/work/sad-yocto/poky/build/tmp/work/adzs_sc589_ezlite=
-poky-linux-gnueabi/linux-yocto/4.12.18&#43;gitAUTOINC&#43;0d0f74b803_85069=
61765-r0.1/recipe-sysroot-native/usr/lib -Wl,-rpath,/home/user/work/sad-yoc=
to/poky/build/tmp/work/adzs_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.1=
2.18&#43;gitAUTOINC&#43;0d0f74b803_8506961765-r0.1/recipe-sysroot-native/li=
b
 -Wl,-O1 HOSTCPP=3Dgcc&nbsp; -E sc589-ezkit.dts</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">| make[2]: *** =
No rule to make target `sc589-ezkit.dts'.&nbsp; Stop.</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">| make[1]: *** =
[sub-make] Error 2</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">| make: *** [__=
sub-make] Error 2</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">| ERROR: oe_run=
make failed</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">| WARNING: exit=
 code 1 from a shell command.</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">| ERROR: Functi=
on failed: do_compile (log file is located at /home/user/work/sad-yocto/pok=
y/build/tmp/work/adzs_sc589_ezlite-poky-linux-gnueabi/linux-yocto/4.12.18&#=
43;gitAUTOINC&#43;0d0f74b803_8506961765-r0.1/temp/log.do_compile.28883)</sp=
an></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">ERROR: Task (/h=
ome/user/work/sad-yocto/poky/meta/recipes-kernel/linux/linux-yocto_4.12.bb:=
do_compile) failed with exit code '1'</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">NOTE: Tasks Sum=
mary: Attempted 2444 tasks of which 2443 didn't need to be rerun and 1 fail=
ed.</span></div>
<div><br>
</div>
<br>
<p></p>
<p style=3D"margin-top:0; margin-bottom:0">What is the common practice for =
adding .dts/.dtsi files to a bsp in order to generate a .dtb file during th=
e build?</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Peter.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
</div>
</div>
</div>
</div>
This communication, including any attached documentation, is intended only =
for the person or entity to which it is addressed, and may contain confiden=
tial, personal, and/or privileged information. Any unauthorized disclosure,=
 copying, or taking action on the
 contents is strictly prohibited. If you have received this message in erro=
r, please contact us immediately so we may correct our records. Please then=
 delete or destroy the original transmission and any subsequent reply. Than=
k you.
</body>
</html>

--_000_MWHPR13MB1584687F1F31126DF1FCA1CA9EE10MWHPR13MB1584namp_--
