Return-Path: <Iain.Worlock@bluechiip.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 910ADE00E34; Thu, 15 Feb 2018 21:19:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.117.65 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 936 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 Feb 2018 21:19:36 PST
Received: from AUS01-SY3-obe.outbound.protection.outlook.com
	(mail-sy3aus01on0065.outbound.protection.outlook.com [104.47.117.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FE25E00D99
	for <yocto@yoctoproject.org>; Thu, 15 Feb 2018 21:19:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bluechiip.onmicrosoft.com; s=selector1-bluechiip-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=RXUd4ubnD/aQ5Xn5QzRebZL+PUGJQm27NvLf3lt8pP8=;
	b=ci0nWIhfKsiEnAxTLNUTD10CLsep/nQSb3/JCcaa2SN8ZhRSx+7CaI6hGBxDcFDxEQDgiwkQm2AGhtg3LdrnmeV6exWq5zaAPtp3CB0mzVNlpMqLmn5V6ZUMMOs4N81lSEq7ftoCzasf41TFN+bJVFC8rucHlXXfJlgosXHJcJs=
Received: from MEAPR01MB2872.ausprd01.prod.outlook.com (52.134.200.13) by
	MEAPR01MB2485.ausprd01.prod.outlook.com (52.134.197.12) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.485.10; Fri, 16 Feb 2018 05:03:48 +0000
Received: from MEAPR01MB2872.ausprd01.prod.outlook.com
	([fe80::a447:e6bd:a184:1f0b]) by
	MEAPR01MB2872.ausprd01.prod.outlook.com
	([fe80::a447:e6bd:a184:1f0b%13]) with mapi id 15.20.0485.020;
	Fri, 16 Feb 2018 05:03:48 +0000
From: Iain Worlock <Iain.Worlock@bluechiip.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-qt5] UnicodeDecodeError suddenly appeared
Thread-Index: AQHTpuOHP0vIE8r1UkiE/AA073QTbg==
Date: Fri, 16 Feb 2018 05:03:48 +0000
Message-ID: <D6ACB162.28E3%iain.worlock@bluechiip.com>
Accept-Language: en-AU, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Iain.Worlock@bluechiip.com; 
x-originating-ip: [203.17.42.144]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MEAPR01MB2485;
	7:SsR+0aDTYbmfQ+k4M7J5YvGiHN7sbpuJwqfS1OkS3Hf6TnoUdHSW5sZ50+yy5HFBZ3guSNhlEsNZROW9HOY/f6orhxwxKXWydopyvGI8Cib+kJ1H/18cfgFeKmO5E/dZQifH1kqmOWCLxkdZUvNO+2oQEecmNjDChOVbVmoxSdhbwmH43rXxAXLIgRpdGa5loqNo8tEJMnVqxwiZzB0mgg22v0MNdc3k7UPbwNZzLN181EhJzcqgPk88Z7/mDm02
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 62847fae-507a-40e7-6a58-08d574faaa12
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(5600026)(4604075)(3008032)(2017052603307)(7153060)(7193020);
	SRVR:MEAPR01MB2485; 
x-ms-traffictypediagnostic: MEAPR01MB2485:
x-microsoft-antispam-prvs: <MEAPR01MB248503D37F8C44AA94C50F6E90CB0@MEAPR01MB2485.ausprd01.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(5005006)(8121501046)(3231101)(2400082)(944501161)(10201501046)(93006095)(93001095)(3002001)(6041288)(20161123562045)(20161123558120)(20161123560045)(20161123564045)(2016111802025)(6043046)(6072148)(201708071742011);
	SRVR:MEAPR01MB2485; BCL:0; PCL:0; RULEID:; SRVR:MEAPR01MB2485; 
x-forefront-prvs: 0585417D7B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(366004)(39380400002)(346002)(376002)(39830400003)(396003)(199004)(189003)(2351001)(66066001)(99286004)(106356001)(8936002)(36756003)(53936002)(575784001)(86362001)(6512007)(8676002)(3660700001)(81156014)(6916009)(14454004)(3280700002)(1730700003)(81166006)(54896002)(97736004)(6436002)(105586002)(6506007)(7736002)(186003)(5250100002)(2501003)(26005)(478600001)(68736007)(72206003)(59450400001)(25786009)(102836004)(6486002)(1857600001)(3846002)(6116002)(5660300001)(5640700003)(2906002)(2900100001)(316002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MEAPR01MB2485;
	H:MEAPR01MB2872.ausprd01.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: bluechiip.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: fufX6ons50K34+9G/Ff+gOmrw5D6P2c+0400K1DOP4OA9LfkfN45ETijPpfbrQopxXzAmgImuzoX2g5I3FRONg==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: bluechiip.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62847fae-507a-40e7-6a58-08d574faaa12
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2018 05:03:48.2241 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 34fdffe6-c5ae-485a-9f02-abb3d8b4d895
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MEAPR01MB2485
X-Mailman-Approved-At: Tue, 20 Feb 2018 08:19:05 -0800
Subject: [meta-qt5] UnicodeDecodeError suddenly appeared
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
X-List-Received-Date: Fri, 16 Feb 2018 05:19:39 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D6ACB16228E3iainworlockbluechiipcom_"

--_000_D6ACB16228E3iainworlockbluechiipcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Bit of a strange one here, this exact configuration used to build just fine=
, but now fails. I have no custom bbappends in my qt5 layers, so it should =
really just be a vanilla build from meta-qt5.

Failure looks like this:

$ bitbake meta-toolchain-qt5
NOTE: Started PRServer with DBfile: /media/parallels/build/cache/prserv.sql=
ite3, IP: 127.0.0.1, PORT: 38360, PID: 18679
Loading cache: 100% |######################################################=
###########################################################################=
##################| ETA:  00:00:00
Loaded 2898 entries from dependency cache.
Parsing recipes: 100% |####################################################=
###########################################################################=
##################| Time: 00:00:01
Parsing of 2362 .bb files complete (2359 cached, 3 parsed). 2900 targets, 1=
56 skipped, 9 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        =3D "1.26.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Ubuntu-14.04"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "overo"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.8"
TUNE_FEATURES     =3D "arm armv7a vfp neon callconvention-hard cortexa8"
TARGET_FPU        =3D "vfp-neon"
meta
meta-yocto        =3D "(nobranch):83aa565d93aacae484976562ef1ae8dbbb6b2bc0"
meta-gnome
meta-oe
meta-xfce
meta-systemd
meta-networking
meta-multimedia
meta-python       =3D "(nobranch):10d3c8f85280a0bf867a8e4f84bcda81c290d28e"
meta-gumstix      =3D "(nobranch):68e4b5771aef2d11fcf04bb8759fecd409de1ac3"
meta-gumstix-extras =3D "(nobranch):0ee78d47ff3082000e9e087b1ec0d56df13457d=
9"
meta-bluechiip    =3D "HHR-STREAM4:a60b5fb37479e2ff1348ab100c0f3735713a730c=
"
meta-ros          =3D "(nobranch):d465a23c0a96e651419d46b29ab7c0c3663da314"
meta-ti           =3D "(nobranch):03cb3ff15f3b8535ca409ce682f44ec1b81da0c3"
meta-java         =3D "(nobranch):66c97ae7461f4c1a13917131787bb76dc34e6b6f"
meta-qt5          =3D "(nobranch):90919b9d86988e7da01fa2c0a07246b5b5600a5d"

NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Unable to install packages. Command '/media/parallels/build/tmp/sysr=
oots/x86_64-linux/usr/bin/smart --quiet --data-dir=3D/media/parallels/build=
/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/meta-toolchain-qt5/1.0-r0/=
sdk/image/opt/poky/1.8/sysroots/cortexa8hf-vfp-neon-poky-linux-gnueabi/var/=
lib/smart install -y packagegroup-core-standalone-sdk-target-dbg@all packag=
egroup-core-standalone-sdk-target@all packagegroup-qt5-toolchain-target@all=
' returned 1:
Traceback (most recent call last):
  File "/media/parallels/build/tmp/sysroots/x86_64-linux/usr/lib/python2.7/=
site-packages/smart/backends/rpm/pm.py", line 358, in __call__
    self._process_rpmout()
  File "/media/parallels/build/tmp/sysroots/x86_64-linux/usr/lib/python2.7/=
site-packages/smart/backends/rpm/pm.py", line 343, in _process_rpmout
    output =3D self.rpmout.read()
  File "/media/parallels/build/tmp/sysroots/x86_64-linux/usr/lib/python2.7/=
codecs.py", line 474, in read
    newchars, decodedbytes =3D self.decode(data, self.errors)
UnicodeDecodeError: 'ascii' codec can't decode byte 0xc3 in position 4948: =
ordinal not in range(128)

ERROR: Function failed: do_populate_sdk
ERROR: Logfile of failure stored in: /media/parallels/build/tmp/work/cortex=
a8hf-vfp-neon-poky-linux-gnueabi/meta-toolchain-qt5/1.0-r0/temp/log.do_popu=
late_sdk.18850
ERROR: Task 7 (/home/parallels/yocto/poky/meta-qt5/recipes-qt/meta/meta-too=
lchain-qt5.bb, do_populate_sdk) failed with exit code '1'
NOTE: Tasks Summary: Attempted 4705 tasks of which 4704 didn't need to be r=
erun and 1 failed.
No currently running tasks (4704 of 4706)


(A bit more verbosity on the exact point of failure...)

$ bitbake -v -c populate_sdk meta-toolchain-qt5
<snip>
NOTE: Executing '/media/parallels/build/tmp/sysroots/x86_64-linux/usr/bin/c=
reaterepo --dbpath /media/parallels/build/tmp/work/cortexa8hf-vfp-neon-poky=
-linux-gnueabi/meta-toolchain-qt5/1.0-r0/rpmdb/cortexa8hf_vfp_neon --update=
 -q /media/parallels/build/tmp/deploy/rpm/cortexa8hf_vfp_neon' ...
NOTE: Executing '/media/parallels/build/tmp/sysroots/x86_64-linux/usr/bin/c=
reaterepo --dbpath /media/parallels/build/tmp/work/cortexa8hf-vfp-neon-poky=
-linux-gnueabi/meta-toolchain-qt5/1.0-r0/rpmdb/x86_64_nativesdk --update -q=
 /media/parallels/build/tmp/deploy/rpm/x86_64_nativesdk' ...
NOTE: Installing the following packages: packagegroup-core-standalone-sdk-t=
arget-dbg packagegroup-core-standalone-sdk-target packagegroup-qt5-toolchai=
n-target
NOTE: to be installed: packagegroup-core-standalone-sdk-target-dbg@all pack=
agegroup-core-standalone-sdk-target@all packagegroup-qt5-toolchain-target@a=
ll
NOTE: /media/parallels/build/tmp/sysroots/x86_64-linux/usr/bin/smart --quie=
t --data-dir=3D/media/parallels/build/tmp/work/cortexa8hf-vfp-neon-poky-lin=
ux-gnueabi/meta-toolchain-qt5/1.0-r0/sdk/image/opt/poky/1.8/sysroots/cortex=
a8hf-vfp-neon-poky-linux-gnueabi/var/lib/smart install -y packagegroup-core=
-standalone-sdk-target-dbg@all packagegroup-core-standalone-sdk-target@all =
packagegroup-qt5-toolchain-target@all
ERROR: Unable to install packages. Command '/media/parallels/build/tmp/sysr=
oots/x86_64-linux/usr/bin/smart --quiet --data-dir=3D/media/parallels/build=
/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/meta-toolchain-qt5/1.0-r0/=
sdk/image/opt/poky/1.8/sysroots/cortexa8hf-vfp-neon-poky-linux-gnueabi/var/=
lib/smart install -y packagegroup-core-standalone-sdk-target-dbg@all packag=
egroup-core-standalone-sdk-target@all packagegroup-qt5-toolchain-target@all=
' returned 1:
Output from udev-cache-182-r9.0.0@cortexa8hf_vfp_neon:
 Removing any system startup links for udev-cache ...
 Adding system startup for /media/parallels/build/tmp/work/cortexa8hf-vfp-n=
eon-poky-linux-gnueabi/meta-toolchain-qt5/1.0-r0/sdk/image/opt/poky/1.8/sys=
roots/cortexa8hf-vfp-neon-poky-linux-gnueabi/etc/init.d/udev-cache.
Traceback (most recent call last):
  File "/media/parallels/build/tmp/sysroots/x86_64-linux/usr/lib/python2.7/=
site-packages/smart/backends/rpm/pm.py", line 358, in __call__
    self._process_rpmout()
  File "/media/parallels/build/tmp/sysroots/x86_64-linux/usr/lib/python2.7/=
site-packages/smart/backends/rpm/pm.py", line 343, in _process_rpmout
    output =3D self.rpmout.read()
  File "/media/parallels/build/tmp/sysroots/x86_64-linux/usr/lib/python2.7/=
codecs.py", line 474, in read
    newchars, decodedbytes =3D self.decode(data, self.errors)
UnicodeDecodeError: 'ascii' codec can't decode byte 0xc3 in position 4948: =
ordinal not in range(128)

ERROR: Function failed: do_populate_sdk
ERROR: Logfile of failure stored in: /media/parallels/build/tmp/work/cortex=
a8hf-vfp-neon-poky-linux-gnueabi/meta-toolchain-qt5/1.0-r0/temp/log.do_popu=
late_sdk.344
ERROR: Task 6 (/home/parallels/yocto/poky/meta-qt5/recipes-qt/meta/meta-too=
lchain-qt5.bb, do_populate_sdk) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3582 tasks of which 3581 didn't need to be r=
erun and 1 failed.


My reading of this is that the package manager expected only ascii characte=
rs in the packages packagegroup-core-standalone-sdk-target-dbg packagegroup=
-core-standalone-sdk-target & packagegroup-qt5-toolchain-target and encount=
ered an out-of-range value (195 / 0xc3). Presumably smart is expecting the =
wrong encoding. If this is correct, how can an alternate encoding be specif=
ied for the installation of these packages & how could I determine what the=
 correct encoding should be?

I am a little surprised that this has suddenly become an issue as my build =
is pointing at exactly the same sources as its previous, working state - it=
 could be something else entirely. The only other thing that occurs to me i=
s that I did run an apt-get update between the build working and this failu=
re, so it's entirely possible that the version of one of the build tools ma=
y have changed.

Any advice on how to proceed would be most gratefully received, please let =
me know if I can provide any more data...

--_000_D6ACB16228E3iainworlockbluechiipcom_
Content-Type: text/html; charset="us-ascii"
Content-ID: <EA4AA8CAF95D0342AB0B91A3F011A1C0@ausprd01.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-lin=
e-break: after-white-space; color: rgb(0, 0, 0); font-size: 14px; font-fami=
ly: Calibri, sans-serif;">
<div>
<p style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px; font-stretch: i=
nherit; font-size: 15px; line-height: inherit; font-family: Arial, 'Helveti=
ca Neue', Helvetica, sans-serif; vertical-align: baseline; box-sizing: inhe=
rit; clear: both; color: rgb(36, 39, 41); orphans: 2; widows: 2; background=
-color: rgb(255, 255, 255);">
Bit of a strange one here, this exact configuration used to build just fine=
, but now fails. I have no custom bbappends in my qt5 layers, so it should =
really just be a vanilla build from meta-qt5.</p>
<p style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px; font-stretch: i=
nherit; font-size: 15px; line-height: inherit; font-family: Arial, 'Helveti=
ca Neue', Helvetica, sans-serif; vertical-align: baseline; box-sizing: inhe=
rit; clear: both; color: rgb(36, 39, 41); orphans: 2; widows: 2; background=
-color: rgb(255, 255, 255);">
Failure looks like this:</p>
<pre style=3D"margin-top: 0px; padding: 5px; border: 0px; font-stretch: inh=
erit; font-size: 13px; line-height: inherit; font-family: Consolas, Menlo, =
Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono', 'Bitstream=
 Vera Sans Mono', 'Courier New', monospace, sans-serif; vertical-align: bas=
eline; box-sizing: inherit; width: auto; max-height: 600px; overflow: auto;=
 background-color: rgb(239, 240, 241); word-wrap: normal; color: rgb(36, 39=
, 41); orphans: 2; widows: 2;"><code style=3D"margin: 0px; padding: 0px; bo=
rder: 0px; font-style: inherit; font-variant: inherit; font-stretch: inheri=
t; line-height: inherit; font-family: Consolas, Menlo, Monaco, 'Lucida Cons=
ole', 'Liberation Mono', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono', 'C=
ourier New', monospace, sans-serif; vertical-align: baseline; box-sizing: i=
nherit; white-space: inherit;">$ bitbake meta-toolchain-qt5
NOTE: Started PRServer with DBfile: /media/parallels/build/cache/prserv.sql=
ite3, IP: 127.0.0.1, PORT: 38360, PID: 18679
Loading cache: 100% |######################################################=
###########################################################################=
##################| ETA:  00:00:00
Loaded 2898 entries from dependency cache.
Parsing recipes: 100% |####################################################=
###########################################################################=
##################| Time: 00:00:01
Parsing of 2362 .bb files complete (2359 cached, 3 parsed). 2900 targets, 1=
56 skipped, 9 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        =3D &quot;1.26.0&quot;
BUILD_SYS         =3D &quot;x86_64-linux&quot;
NATIVELSBSTRING   =3D &quot;Ubuntu-14.04&quot;
TARGET_SYS        =3D &quot;arm-poky-linux-gnueabi&quot;
MACHINE           =3D &quot;overo&quot;
DISTRO            =3D &quot;poky&quot;
DISTRO_VERSION    =3D &quot;1.8&quot;
TUNE_FEATURES     =3D &quot;arm armv7a vfp neon callconvention-hard cortexa=
8&quot;
TARGET_FPU        =3D &quot;vfp-neon&quot;
meta             =20
meta-yocto        =3D &quot;(nobranch):83aa565d93aacae484976562ef1ae8dbbb6b=
2bc0&quot;
meta-gnome       =20
meta-oe          =20
meta-xfce        =20
meta-systemd     =20
meta-networking  =20
meta-multimedia  =20
meta-python       =3D &quot;(nobranch):10d3c8f85280a0bf867a8e4f84bcda81c290=
d28e&quot;
meta-gumstix      =3D &quot;(nobranch):68e4b5771aef2d11fcf04bb8759fecd409de=
1ac3&quot;
meta-gumstix-extras =3D &quot;(nobranch):0ee78d47ff3082000e9e087b1ec0d56df1=
3457d9&quot;
meta-bluechiip    =3D &quot;HHR-STREAM4:a60b5fb37479e2ff1348ab100c0f3735713=
a730c&quot;
meta-ros          =3D &quot;(nobranch):d465a23c0a96e651419d46b29ab7c0c3663d=
a314&quot;
meta-ti           =3D &quot;(nobranch):03cb3ff15f3b8535ca409ce682f44ec1b81d=
a0c3&quot;
meta-java         =3D &quot;(nobranch):66c97ae7461f4c1a13917131787bb76dc34e=
6b6f&quot;
meta-qt5          =3D &quot;(nobranch):90919b9d86988e7da01fa2c0a07246b5b560=
0a5d&quot;

NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Unable to install packages. Command '/media/parallels/build/tmp/sysr=
oots/x86_64-linux/usr/bin/smart --quiet --data-dir=3D/media/parallels/build=
/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/meta-toolchain-qt5/1.0-r0/=
sdk/image/opt/poky/1.8/sysroots/cortexa8hf-vfp-neon-poky-linux-gnueabi/var/=
lib/smart install -y packagegroup-core-standalone-sdk-target-dbg@all packag=
egroup-core-standalone-sdk-target@all packagegroup-qt5-toolchain-target@all=
' returned 1:
Traceback (most recent call last):
  File &quot;/media/parallels/build/tmp/sysroots/x86_64-linux/usr/lib/pytho=
n2.7/site-packages/smart/backends/rpm/pm.py&quot;, line 358, in __call__
    self._process_rpmout()
  File &quot;/media/parallels/build/tmp/sysroots/x86_64-linux/usr/lib/pytho=
n2.7/site-packages/smart/backends/rpm/pm.py&quot;, line 343, in _process_rp=
mout
    output =3D self.rpmout.read()
  File &quot;/media/parallels/build/tmp/sysroots/x86_64-linux/usr/lib/pytho=
n2.7/codecs.py&quot;, line 474, in read
    newchars, decodedbytes =3D self.decode(data, self.errors)
UnicodeDecodeError: 'ascii' codec can't decode byte 0xc3 in position 4948: =
ordinal not in range(128)

ERROR: Function failed: do_populate_sdk
ERROR: Logfile of failure stored in: /media/parallels/build/tmp/work/cortex=
a8hf-vfp-neon-poky-linux-gnueabi/meta-toolchain-qt5/1.0-r0/temp/log.do_popu=
late_sdk.18850
ERROR: Task 7 (/home/parallels/yocto/poky/meta-qt5/recipes-qt/meta/meta-too=
lchain-qt5.bb, do_populate_sdk) failed with exit code '1'
NOTE: Tasks Summary: Attempted 4705 tasks of which 4704 didn't need to be r=
erun and 1 failed.
No currently running tasks (4704 of 4706)
</code></pre>
<p style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px; font-stretch: i=
nherit; font-size: 15px; line-height: inherit; font-family: Arial, 'Helveti=
ca Neue', Helvetica, sans-serif; vertical-align: baseline; box-sizing: inhe=
rit; clear: both; color: rgb(36, 39, 41); orphans: 2; widows: 2; background=
-color: rgb(255, 255, 255);">
(A bit more verbosity on the exact point of failure...)</p>
<pre style=3D"margin-top: 0px; padding: 5px; border: 0px; font-stretch: inh=
erit; font-size: 13px; line-height: inherit; font-family: Consolas, Menlo, =
Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono', 'Bitstream=
 Vera Sans Mono', 'Courier New', monospace, sans-serif; vertical-align: bas=
eline; box-sizing: inherit; width: auto; max-height: 600px; overflow: auto;=
 background-color: rgb(239, 240, 241); word-wrap: normal; color: rgb(36, 39=
, 41); orphans: 2; widows: 2;"><code style=3D"margin: 0px; padding: 0px; bo=
rder: 0px; font-style: inherit; font-variant: inherit; font-stretch: inheri=
t; line-height: inherit; font-family: Consolas, Menlo, Monaco, 'Lucida Cons=
ole', 'Liberation Mono', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono', 'C=
ourier New', monospace, sans-serif; vertical-align: baseline; box-sizing: i=
nherit; white-space: inherit;">$ bitbake -v -c populate_sdk meta-toolchain-=
qt5
&lt;snip&gt;
NOTE: Executing '/media/parallels/build/tmp/sysroots/x86_64-linux/usr/bin/c=
reaterepo --dbpath /media/parallels/build/tmp/work/cortexa8hf-vfp-neon-poky=
-linux-gnueabi/meta-toolchain-qt5/1.0-r0/rpmdb/cortexa8hf_vfp_neon --update=
 -q /media/parallels/build/tmp/deploy/rpm/cortexa8hf_vfp_neon' ...
NOTE: Executing '/media/parallels/build/tmp/sysroots/x86_64-linux/usr/bin/c=
reaterepo --dbpath /media/parallels/build/tmp/work/cortexa8hf-vfp-neon-poky=
-linux-gnueabi/meta-toolchain-qt5/1.0-r0/rpmdb/x86_64_nativesdk --update -q=
 /media/parallels/build/tmp/deploy/rpm/x86_64_nativesdk' ...
NOTE: Installing the following packages: packagegroup-core-standalone-sdk-t=
arget-dbg packagegroup-core-standalone-sdk-target packagegroup-qt5-toolchai=
n-target
NOTE: to be installed: packagegroup-core-standalone-sdk-target-dbg@all pack=
agegroup-core-standalone-sdk-target@all packagegroup-qt5-toolchain-target@a=
ll
NOTE: /media/parallels/build/tmp/sysroots/x86_64-linux/usr/bin/smart --quie=
t --data-dir=3D/media/parallels/build/tmp/work/cortexa8hf-vfp-neon-poky-lin=
ux-gnueabi/meta-toolchain-qt5/1.0-r0/sdk/image/opt/poky/1.8/sysroots/cortex=
a8hf-vfp-neon-poky-linux-gnueabi/var/lib/smart install -y packagegroup-core=
-standalone-sdk-target-dbg@all packagegroup-core-standalone-sdk-target@all =
packagegroup-qt5-toolchain-target@all
ERROR: Unable to install packages. Command '/media/parallels/build/tmp/sysr=
oots/x86_64-linux/usr/bin/smart --quiet --data-dir=3D/media/parallels/build=
/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/meta-toolchain-qt5/1.0-r0/=
sdk/image/opt/poky/1.8/sysroots/cortexa8hf-vfp-neon-poky-linux-gnueabi/var/=
lib/smart install -y packagegroup-core-standalone-sdk-target-dbg@all packag=
egroup-core-standalone-sdk-target@all packagegroup-qt5-toolchain-target@all=
' returned 1:
Output from udev-cache-182-r9.0.0@cortexa8hf_vfp_neon:
 Removing any system startup links for udev-cache ...
 Adding system startup for /media/parallels/build/tmp/work/cortexa8hf-vfp-n=
eon-poky-linux-gnueabi/meta-toolchain-qt5/1.0-r0/sdk/image/opt/poky/1.8/sys=
roots/cortexa8hf-vfp-neon-poky-linux-gnueabi/etc/init.d/udev-cache.
Traceback (most recent call last):
  File &quot;/media/parallels/build/tmp/sysroots/x86_64-linux/usr/lib/pytho=
n2.7/site-packages/smart/backends/rpm/pm.py&quot;, line 358, in __call__
    self._process_rpmout()
  File &quot;/media/parallels/build/tmp/sysroots/x86_64-linux/usr/lib/pytho=
n2.7/site-packages/smart/backends/rpm/pm.py&quot;, line 343, in _process_rp=
mout
    output =3D self.rpmout.read()
  File &quot;/media/parallels/build/tmp/sysroots/x86_64-linux/usr/lib/pytho=
n2.7/codecs.py&quot;, line 474, in read
    newchars, decodedbytes =3D self.decode(data, self.errors)
UnicodeDecodeError: 'ascii' codec can't decode byte 0xc3 in position 4948: =
ordinal not in range(128)

ERROR: Function failed: do_populate_sdk
ERROR: Logfile of failure stored in: /media/parallels/build/tmp/work/cortex=
a8hf-vfp-neon-poky-linux-gnueabi/meta-toolchain-qt5/1.0-r0/temp/log.do_popu=
late_sdk.344
ERROR: Task 6 (/home/parallels/yocto/poky/meta-qt5/recipes-qt/meta/meta-too=
lchain-qt5.bb, do_populate_sdk) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3582 tasks of which 3581 didn't need to be r=
erun and 1 failed.
</code></pre>
<p style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px; font-stretch: i=
nherit; font-size: 15px; line-height: inherit; font-family: Arial, 'Helveti=
ca Neue', Helvetica, sans-serif; vertical-align: baseline; box-sizing: inhe=
rit; clear: both; color: rgb(36, 39, 41); orphans: 2; widows: 2; background=
-color: rgb(255, 255, 255);">
My reading of this is that the package manager expected only ascii characte=
rs in the packages packagegroup-core-standalone-sdk-target-dbg packagegroup=
-core-standalone-sdk-target &amp; packagegroup-qt5-toolchain-target and enc=
ountered an out-of-range value (195
 / 0xc3). Presumably smart is expecting the wrong encoding. If this is corr=
ect, how can an alternate encoding be specified for the installation of the=
se packages &amp; how could I determine what the correct encoding should be=
?</p>
<p style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px; font-stretch: i=
nherit; font-size: 15px; line-height: inherit; font-family: Arial, 'Helveti=
ca Neue', Helvetica, sans-serif; vertical-align: baseline; box-sizing: inhe=
rit; clear: both; color: rgb(36, 39, 41); orphans: 2; widows: 2; background=
-color: rgb(255, 255, 255);">
I am a little surprised that this has suddenly become an issue as my build =
is pointing at exactly the same sources as its previous, working state - it=
 could be something else entirely. The only other thing that occurs to me i=
s that I did run an apt-get update
 between the build working and this failure, so it's entirely possible that=
 the version of one of the build tools may have changed.</p>
<p style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px; font-stretch: i=
nherit; font-size: 15px; line-height: inherit; font-family: Arial, 'Helveti=
ca Neue', Helvetica, sans-serif; vertical-align: baseline; box-sizing: inhe=
rit; clear: both; color: rgb(36, 39, 41); orphans: 2; widows: 2; background=
-color: rgb(255, 255, 255);">
Any advice on how to proceed would be most gratefully received, please let =
me know if I can provide any more data...</p>
</div>
</body>
</html>

--_000_D6ACB16228E3iainworlockbluechiipcom_--
