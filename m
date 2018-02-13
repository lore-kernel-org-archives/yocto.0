Return-Path: <mns@gomspace.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED96EE00DA9; Tue, 13 Feb 2018 10:26:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.94 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0094.outbound.protection.outlook.com [104.47.2.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EE19E00DA9
	for <yocto@yoctoproject.org>; Tue, 13 Feb 2018 10:26:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gomspace.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=g6bBQHutr0mD2leGW56CwkPfhojhevjt2EdrHneyN2Q=;
	b=SfkqjtAbSLew05rgmzPrJkqtIAWT9F3EPPxv9PVzJkqQgmveqPQYzfTpUH9YeChy81fJqr3bD7VlVRDwfylPajyiWVNCE8rcTsyij8jOvdCXLfEIk/GKhk9jgRvWLOFW9QRpXLMitFyT5TwUYDJl5f5JAUwIP0Y5Rz70dFB6WcM=
Received: from HE1PR0402MB3323.eurprd04.prod.outlook.com (10.167.125.20) by
	HE1PR0402MB3545.eurprd04.prod.outlook.com (10.167.126.26) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.485.10; Tue, 13 Feb 2018 18:26:01 +0000
Received: from HE1PR0402MB3323.eurprd04.prod.outlook.com
	([fe80::d1bb:e9d3:e167:2327]) by
	HE1PR0402MB3323.eurprd04.prod.outlook.com
	([fe80::d1bb:e9d3:e167:2327%13]) with mapi id 15.20.0485.015;
	Tue, 13 Feb 2018 18:26:01 +0000
From: Martin Siegumfeldt <mns@gomspace.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Exposure of Shared Library Functionality through eSDK - missing
	include file
Thread-Index: AQHTpMueFre2+9FoMUyynWbKoyJ1K6OipQ5R
Date: Tue, 13 Feb 2018 18:26:00 +0000
Message-ID: <HE1PR0402MB3323245FE7E08A8588D644C0C4F60@HE1PR0402MB3323.eurprd04.prod.outlook.com>
References: <HE1PR0402MB33238D94BBF5ADBFE8914634C4F60@HE1PR0402MB3323.eurprd04.prod.outlook.com>
In-Reply-To: <HE1PR0402MB33238D94BBF5ADBFE8914634C4F60@HE1PR0402MB3323.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mns@gomspace.com; 
x-originating-ip: [85.191.189.52]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1PR0402MB3545;
	7:Dqidlm55/6TIt9GAWqpzrJpQaQb7miJcDu3s+XmCF4y3h2pIF1Czn7XtuLd5/f+A1d85Vrr892mhpD/ww+v2EFi3iBXzab4+usyr/AhgqC5D8IH10D4tJrc8/B9S+sg1DYGSqo9hhKl40bcO+wJUFYFvUKmykc89pN0/frYA6nT3qzkH047IuVty1Ef5m/52bU4d0uDbW8v+9IOs5YNfe53VFIsVuxq4wk5xwE9hYQGTnl22VTDcDCYNLWAlLTcN
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 8adfefb8-e1f7-4498-c008-08d5730f3bfe
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4604075)(3008032)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603307)(7153060)(7193020);
	SRVR:HE1PR0402MB3545; 
x-ms-traffictypediagnostic: HE1PR0402MB3545:
x-microsoft-antispam-prvs: <HE1PR0402MB35452A57E71C261519BB270FC4F60@HE1PR0402MB3545.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(5005006)(8121501046)(3002001)(3231101)(2400082)(944501161)(93006095)(93001095)(10201501046)(6041288)(2016111802025)(20161123558120)(20161123562045)(20161123564045)(20161123560045)(6072148)(6043046)(201708071742011);
	SRVR:HE1PR0402MB3545; BCL:0; PCL:0; RULEID:;
	SRVR:HE1PR0402MB3545; 
x-forefront-prvs: 0582641F53
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39840400004)(366004)(396003)(39380400002)(346002)(376002)(199004)(189003)(26005)(229853002)(102836004)(68736007)(25786009)(186003)(3660700001)(8936002)(3280700002)(2900100001)(5890100001)(54896002)(1730700003)(55016002)(97736004)(81166006)(8676002)(5250100002)(3846002)(6246003)(2501003)(2906002)(9686003)(6116002)(81156014)(53936002)(6436002)(5640700003)(19627405001)(53546011)(105586002)(14454004)(6916009)(86362001)(76176011)(6606003)(74316002)(316002)(7736002)(2950100002)(478600001)(6506007)(33656002)(99286004)(106356001)(59450400001)(5660300001)(2351001)(7696005)(2940100002)(66066001)(42262002)(19627235001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR0402MB3545;
	H:HE1PR0402MB3323.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: gomspace.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: LMQyllgyTL4ksqhE343jQ2KzfUB4TSyGlaaDgFVBnqlLmcgCzguSXI+MclRr2deSSIVoePAd+IXBMgVI9/yDow==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: gomspace.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8adfefb8-e1f7-4498-c008-08d5730f3bfe
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2018 18:26:00.9172 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91ed1e54-6d8b-4599-84d8-65fe75fda3d1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0402MB3545
Subject: Re: Exposure of Shared Library Functionality through eSDK - missing include file
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
X-List-Received-Date: Tue, 13 Feb 2018 18:26:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HE1PR0402MB3323245FE7E08A8588D644C0C4F60HE1PR0402MB3323_"

--_000_HE1PR0402MB3323245FE7E08A8588D644C0C4F60HE1PR0402MB3323_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

After a bit of further study, it turns out that adding the explicit depende=
ncy to the recipe:


DEPENDS =3D "libisl"


resolves the issue.


Br,

Martin

________________________________
From: Martin Siegumfeldt
Sent: Tuesday, February 13, 2018 2:10:48 PM
To: yocto@yoctoproject.org
Subject: Exposure of Shared Library Functionality through eSDK - missing in=
clude file

Hi,

We are implementing certain logic within a shared library and aims at expos=
ing this through the extensible SDK, unfortunately without success so far. =
The library and it's associated header file is successfully added to the im=
age and appears also present from the eSDK:

martin@dell:~/gomspace_sdk$ find . -name libgsisl.so
./tmp/sysroots/nanomind-ultra-zu6eg-zcu102/usr/lib/libgsisl.so
./tmp/work/aarch64-gomspace-linux/libisl/develop-r0/sysroot-destdir/usr/lib=
/libgsisl.so
./tmp/sysroots-components/aarch64/libisl/usr/lib/libgsisl.so
martin@dell:~/gomspace_sdk$ find . -name isl.h
./tmp/sysroots/nanomind-ultra-zu6eg-zcu102/usr/include/gs/isl/isl.h
./tmp/work/aarch64-gomspace-linux/libisl/develop-r0/sysroot-destdir/usr/inc=
lude/gs/isl/isl.h
./tmp/sysroots-components/aarch64/libisl/usr/include/gs/isl/isl.h
martin@dell:~/gomspace_sdk$

For testing, I have implemented a small application, built through CMake:

martin@dell:~/work/xsllibtest$ cat CMakeLists.txt
add_executable (xsllibtest xsllibtest.c)
target_link_libraries (xsllibtest gsisl)

with the library- and test application build natively the library call work=
s on my host machine, however the cross-compilation fails to find the heade=
r file:

martin@dell:~/gomspace_sdk$ devtool add xsllibtest ~/work/xsllibtest/
NOTE: Starting bitbake server...
NOTE: Starting bitbake server...
NOTE: Starting bitbake server...
NOTE: Recipe /home/martin/gomspace_sdk/workspace/recipes/xsllibtest/xsllibt=
est.bb has been automatically created; further editing may be required to m=
ake it fully functional
martin@dell:~/gomspace_sdk$ cat workspace/recipes/xsllibtest/xsllibtest.bb
# Recipe created by recipetool
# This is the basis of a recipe and may need further editing in order to be=
 fully functional.
# (Feel free to remove these comments when editing.)

# Unable to find any files that looked like license statements. Check the a=
ccompanying
# documentation and source headers and set LICENSE and LIC_FILES_CHKSUM acc=
ordingly.
#
# NOTE: LICENSE is being set to "CLOSED" to allow you to at least start bui=
lding - if
# this is not accurate with respect to the licensing of the software being =
built (it
# will not be in most cases) you must specify the correct value before usin=
g this
# recipe for anything other than initial testing/development!
LICENSE =3D "CLOSED"
LIC_FILES_CHKSUM =3D ""

# No information for SRC_URI yet (only an external source tree was specifie=
d)
SRC_URI =3D ""

inherit cmake

# Specify any options you want to pass to cmake using EXTRA_OECMAKE:
EXTRA_OECMAKE =3D ""

martin@dell:~/gomspace_sdk$ cat workspace/appends/xsllibtest.bbappend
inherit externalsrc
EXTERNALSRC =3D "/home/martin/work/xsllibtest"


during the compilation:
.
.
.
Log data follows:
| DEBUG: Executing python function externalsrc_compile_prefunc
| NOTE: xsllibtest: compiling from external source tree /home/martin/work/x=
sllibtest
| DEBUG: Python function externalsrc_compile_prefunc finished
| DEBUG: Executing shell function do_compile
| NOTE: VERBOSE=3D1 cmake --build /home/martin/gomspace_sdk/tmp/work/aarch6=
4-gomspace-linux/xsllibtest/1.0-r0/xsllibtest-1.0/ -- -j 8
| /home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/xsllibtest/1.0-=
r0/recipe-sysroot-native/usr/bin/cmake -H/home/martin/work/xsllibtest -B/ho=
me/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/xsllibtest/1.0-r0/xs=
llibtest-1.0 --check-build-system CMakeFiles/Makefile.cmake 0
| /home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/xsllibtest/1.0-=
r0/recipe-sysroot-native/usr/bin/cmake -E cmake_progress_start /home/martin=
/gomspace_sdk/tmp/work/aarch64-gomspace-linux/xsllibtest/1.0-r0/xsllibtest-=
1.0/CMakeFiles /home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/xs=
llibtest/1.0-r0/xsllibtest-1.0/CMakeFiles/progress.mar
ks
| make -f CMakeFiles/Makefile2 all
| make[1]: Entering directory '/home/martin/gomspace_sdk/tmp/work/aarch64-g=
omspace-linux/xsllibtest/1.0-r0/xsllibtest-1.0'
| make -f CMakeFiles/xsllibtest.dir/build.make CMakeFiles/xsllibtest.dir/de=
pend
| make[2]: Entering directory '/home/martin/gomspace_sdk/tmp/work/aarch64-g=
omspace-linux/xsllibtest/1.0-r0/xsllibtest-1.0'
| cd /home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/xsllibtest/1=
.0-r0/xsllibtest-1.0 && /home/martin/gomspace_sdk/tmp/work/aarch64-gomspace=
-linux/xsllibtest/1.0-r0/recipe-sysroot-native/usr/bin/cmake -E cmake_depen=
ds "Unix Makefiles" /home/martin/work/xsllibtest /home/martin/work/xsllibte=
st /home/martin/gomspace_sdk/tmp/work/aarch64-gomspace
-linux/xsllibtest/1.0-r0/xsllibtest-1.0 /home/martin/gomspace_sdk/tmp/work/=
aarch64-gomspace-linux/xsllibtest/1.0-r0/xsllibtest-1.0 /home/martin/gomspa=
ce_sdk/tmp/work/aarch64-gomspace-linux/xsllibtest/1.0-r0/xsllibtest-1.0/CMa=
keFiles/xsllibtest.dir/DependInfo.cmake --color=3D
| Dependee "/home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/xslli=
btest/1.0-r0/xsllibtest-1.0/CMakeFiles/xsllibtest.dir/DependInfo.cmake" is =
newer than depender "/home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-li=
nux/xsllibtest/1.0-r0/xsllibtest-1.0/CMakeFiles/xsllibtest.dir/depend.inter=
nal".
| Dependee "/home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/xslli=
btest/1.0-r0/xsllibtest-1.0/CMakeFiles/CMakeDirectoryInformation.cmake" is =
newer than depender "/home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-li=
nux/xsllibtest/1.0-r0/xsllibtest-1.0/CMakeFiles/xsllibtest.dir/depend.inter=
nal".
| Scanning dependencies of target xsllibtest
| make[2]: Leaving directory '/home/martin/gomspace_sdk/tmp/work/aarch64-go=
mspace-linux/xsllibtest/1.0-r0/xsllibtest-1.0'
| make -f CMakeFiles/xsllibtest.dir/build.make CMakeFiles/xsllibtest.dir/bu=
ild
| make[2]: Entering directory '/home/martin/gomspace_sdk/tmp/work/aarch64-g=
omspace-linux/xsllibtest/1.0-r0/xsllibtest-1.0'
| [ 50%] Building C object CMakeFiles/xsllibtest.dir/xsllibtest.c.o
| /home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/xsllibtest/1.0-=
r0/recipe-sysroot-native/usr/bin/aarch64-gomspace-linux/aarch64-gomspace-li=
nux-gcc   --sysroot=3D/home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-l=
inux/xsllibtest/1.0-r0/recipe-sysroot  -O2 -pipe -g -feliminate-unused-debu=
g-types -fdebug-prefix-map=3D/home/martin/gomspace_sdk/tmp/work/aarch64-gom=
space-linux/xsllibtest/1.0-r0=3D/usr/src/debug/xsllibtest/1.0-r0 -fdebug-pr=
efix-map=3D/home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/xsllib=
test/1.0-r0/recipe-sysroot-native=3D -fdebug-prefix-map=3D/home/martin/goms=
pace_sdk/tmp/work/aarch64-gomspace-linux/xsllibtest/1.0-r0/recipe-sysroot=
=3D    --sysroot=3D/home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linu=
x/xsllibtest/1.0-r0/recipe-sysroot   -o CMakeFiles/xsllibtest.dir/xsllibtes=
t.c.o   -c /home/martin/work/xsllibtest/xsllibtest.c
| /home/martin/work/xsllibtest/xsllibtest.c:1:10: fatal error: gs/isl/isl.h=
: No such file or directory
|  #include <gs/isl/isl.h>
|           ^~~~~~~~~~~~~~
| compilation terminated.
| make[2]: *** [CMakeFiles/xsllibtest.dir/build.make:66: CMakeFiles/xsllibt=
est.dir/xsllibtest.c.o] Error 1
| make[2]: Leaving directory '/home/martin/gomspace_sdk/tmp/work/aarch64-go=
mspace-linux/xsllibtest/1.0-r0/xsllibtest-1.0'
| make[1]: *** [CMakeFiles/Makefile2:71: CMakeFiles/xsllibtest.dir/all] Err=
or 2
| make[1]: Leaving directory '/home/martin/gomspace_sdk/tmp/work/aarch64-go=
mspace-linux/xsllibtest/1.0-r0/xsllibtest-1.0'
| make: *** [Makefile:87: all] Error 2
| WARNING: exit code 2 from a shell command.
| ERROR: Function failed: do_compile (log file is located at /home/martin/g=
omspace_sdk/tmp/work/aarch64-gomspace-linux/xsllibtest/1.0-r0/temp/log.do_c=
ompile.17008)
ERROR: Task (/home/martin/gomspace_sdk/workspace/recipes/xsllibtest/xsllibt=
est.bb:do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 464 tasks of which 460 didn't need to be rer=
un and 1 failed.

Since the header file resides with the standard '/usr/include' location I a=
ssume no explicit include path configuration is needed (I have tried settin=
g this explicitly from CMakeLists.txt with the same outcome).

Am I missing something obvious here? Configure/compilation log files attach=
ed....

Thanks,
Martin

--_000_HE1PR0402MB3323245FE7E08A8588D644C0C4F60HE1PR0402MB3323_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">After a bit of further study, it =
turns out that&nbsp;<span style=3D"font-family: Calibri, Helvetica, sans-se=
rif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, =
NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, Emo=
jiSymbols; font-size: 16px;">adding
 the explicit dependency to the recipe:</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><span>DEPENDS =3D &quot;libisl&qu=
ot;</span><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><span><br>
</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span>resolves the issue.</span><=
/p>
<p style=3D"margin-top:0;margin-bottom:0"><span><br>
</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span>Br,</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span>Martin</span></p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Martin Siegumfeldt<br=
>
<b>Sent:</b> Tuesday, February 13, 2018 2:10:48 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Exposure of Shared Library Functionality through eSDK - mis=
sing include file</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Hi,<br>
<br>
We are implementing certain logic within a shared library and aims at expos=
ing this through the extensible SDK, unfortunately without success so far. =
The library and it's associated header file&nbsp;is successfully&nbsp;added=
 to the image and appears also present from
 the eSDK:<br>
<br>
martin@dell:~/gomspace_sdk$ find . -name libgsisl.so&nbsp;<br>
./tmp/sysroots/nanomind-ultra-zu6eg-zcu102/usr/lib/libgsisl.so&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p;<br>
./tmp/work/aarch64-gomspace-linux/libisl/develop-r0/sysroot-destdir/usr/lib=
/libgsisl.so&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&nbsp;<br>
./tmp/sysroots-components/aarch64/libisl/usr/lib/libgsisl.so&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;<br>
martin@dell:~/gomspace_sdk$ find . -name isl.h&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br>
./tmp/sysroots/nanomind-ultra-zu6eg-zcu102/usr/include/gs/isl/isl.h&nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br>
./tmp/work/aarch64-gomspace-linux/libisl/develop-r0/sysroot-destdir/usr/inc=
lude/gs/isl/isl.h&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;<br>
./tmp/sysroots-components/aarch64/libisl/usr/include/gs/isl/isl.h&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br=
>
martin@dell:~/gomspace_sdk$&nbsp;<br>
<br>
For testing, I have implemented a small application, built through CMake:<b=
r>
<br>
martin@dell:~/work/xsllibtest$ cat CMakeLists.txt <br>
add_executable (xsllibtest xsllibtest.c)<br>
target_link_libraries (xsllibtest gsisl)<br>
<br>
with the library- and test application build natively the library call work=
s on my host machine, however the cross-compilation fails to find the heade=
r file:<br>
<br>
martin@dell:~/gomspace_sdk$ devtool add xsllibtest ~/work/xsllibtest/<br>
NOTE: Starting bitbake server...<br>
NOTE: Starting bitbake server...<br>
NOTE: Starting bitbake server...<br>
NOTE: Recipe /home/martin/gomspace_sdk/workspace/recipes/xsllibtest/xsllibt=
est.bb has been automatically created; further editing may be required to m=
ake it fully functional<br>
martin@dell:~/gomspace_sdk$ cat workspace/recipes/xsllibtest/xsllibtest.bb =
<br>
# Recipe created by recipetool<br>
# This is the basis of a recipe and may need further editing in order to be=
 fully functional.<br>
# (Feel free to remove these comments when editing.)<br>
<br>
# Unable to find any files that looked like license statements. Check the a=
ccompanying<br>
# documentation and source headers and set LICENSE and LIC_FILES_CHKSUM acc=
ordingly.<br>
#<br>
# NOTE: LICENSE is being set to &quot;CLOSED&quot; to allow you to at least=
 start building - if<br>
# this is not accurate with respect to the licensing of the software being =
built (it<br>
# will not be in most cases) you must specify the correct value before usin=
g this<br>
# recipe for anything other than initial testing/development!<br>
LICENSE =3D &quot;CLOSED&quot;<br>
LIC_FILES_CHKSUM =3D &quot;&quot;<br>
<br>
# No information for SRC_URI yet (only an external source tree was specifie=
d)<br>
SRC_URI =3D &quot;&quot;<br>
<br>
inherit cmake<br>
<br>
# Specify any options you want to pass to cmake using EXTRA_OECMAKE:<br>
EXTRA_OECMAKE =3D &quot;&quot;<br>
<br>
martin@dell:~/gomspace_sdk$ cat workspace/appends/xsllibtest.bbappend <br>
inherit externalsrc<br>
EXTERNALSRC =3D &quot;/home/martin/work/xsllibtest&quot;<br>
<br>
<br>
during the compilation:<br>
.<br>
.<br>
.<br>
Log data follows:<br>
| DEBUG: Executing python function externalsrc_compile_prefunc<br>
| NOTE: xsllibtest: compiling from external source tree /home/martin/work/x=
sllibtest<br>
| DEBUG: Python function externalsrc_compile_prefunc finished<br>
| DEBUG: Executing shell function do_compile<br>
| NOTE: VERBOSE=3D1 cmake --build /home/martin/gomspace_sdk/tmp/work/aarch6=
4-gomspace-linux/xsllibtest/1.0-r0/xsllibtest-1.0/ -- -j 8<br>
| /home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/xsllibtest/1.0-=
r0/recipe-sysroot-native/usr/bin/cmake -H/home/martin/work/xsllibtest -B/ho=
me/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/xsllibtest/1.0-r0/xs=
llibtest-1.0 --check-build-system
 CMakeFiles/Makefile.cmake 0<br>
| /home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/xsllibtest/1.0-=
r0/recipe-sysroot-native/usr/bin/cmake -E cmake_progress_start /home/martin=
/gomspace_sdk/tmp/work/aarch64-gomspace-linux/xsllibtest/1.0-r0/xsllibtest-=
1.0/CMakeFiles /home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/xs=
llibtest/1.0-r0/xsllibtest-1.0/CMakeFiles/progress.mar<br>
ks<br>
| make -f CMakeFiles/Makefile2 all<br>
| make[1]: Entering directory '/home/martin/gomspace_sdk/tmp/work/aarch64-g=
omspace-linux/xsllibtest/1.0-r0/xsllibtest-1.0'<br>
| make -f CMakeFiles/xsllibtest.dir/build.make CMakeFiles/xsllibtest.dir/de=
pend<br>
| make[2]: Entering directory '/home/martin/gomspace_sdk/tmp/work/aarch64-g=
omspace-linux/xsllibtest/1.0-r0/xsllibtest-1.0'<br>
| cd /home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/xsllibtest/1=
.0-r0/xsllibtest-1.0 &amp;&amp; /home/martin/gomspace_sdk/tmp/work/aarch64-=
gomspace-linux/xsllibtest/1.0-r0/recipe-sysroot-native/usr/bin/cmake -E cma=
ke_depends &quot;Unix Makefiles&quot; /home/martin/work/xsllibtest
 /home/martin/work/xsllibtest /home/martin/gomspace_sdk/tmp/work/aarch64-go=
mspace<br>
-linux/xsllibtest/1.0-r0/xsllibtest-1.0 /home/martin/gomspace_sdk/tmp/work/=
aarch64-gomspace-linux/xsllibtest/1.0-r0/xsllibtest-1.0 /home/martin/gomspa=
ce_sdk/tmp/work/aarch64-gomspace-linux/xsllibtest/1.0-r0/xsllibtest-1.0/CMa=
keFiles/xsllibtest.dir/DependInfo.cmake
 --color=3D<br>
| Dependee &quot;/home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/=
xsllibtest/1.0-r0/xsllibtest-1.0/CMakeFiles/xsllibtest.dir/DependInfo.cmake=
&quot; is newer than depender &quot;/home/martin/gomspace_sdk/tmp/work/aarc=
h64-gomspace-linux/xsllibtest/1.0-r0/xsllibtest-1.0/CMakeFiles/xsllibtest.d=
ir/depend.internal&quot;.<br>
| Dependee &quot;/home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/=
xsllibtest/1.0-r0/xsllibtest-1.0/CMakeFiles/CMakeDirectoryInformation.cmake=
&quot; is newer than depender &quot;/home/martin/gomspace_sdk/tmp/work/aarc=
h64-gomspace-linux/xsllibtest/1.0-r0/xsllibtest-1.0/CMakeFiles/xsllibtest.d=
ir/depend.internal&quot;.<br>
| Scanning dependencies of target xsllibtest<br>
| make[2]: Leaving directory '/home/martin/gomspace_sdk/tmp/work/aarch64-go=
mspace-linux/xsllibtest/1.0-r0/xsllibtest-1.0'<br>
| make -f CMakeFiles/xsllibtest.dir/build.make CMakeFiles/xsllibtest.dir/bu=
ild<br>
| make[2]: Entering directory '/home/martin/gomspace_sdk/tmp/work/aarch64-g=
omspace-linux/xsllibtest/1.0-r0/xsllibtest-1.0'<br>
| [ 50%] Building C object CMakeFiles/xsllibtest.dir/xsllibtest.c.o<br>
| /home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/xsllibtest/1.0-=
r0/recipe-sysroot-native/usr/bin/aarch64-gomspace-linux/aarch64-gomspace-li=
nux-gcc&nbsp;&nbsp; --sysroot=3D/home/martin/gomspace_sdk/tmp/work/aarch64-=
gomspace-linux/xsllibtest/1.0-r0/recipe-sysroot&nbsp;
 -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/mar=
tin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/xsllibtest/1.0-r0=3D/usr/s=
rc/debug/xsllibtest/1.0-r0 -fdebug-prefix-map=3D/home/martin/gomspace_sdk/t=
mp/work/aarch64-gomspace-linux/xsllibtest/1.0-r0/recipe-sysroot-native=3D
 -fdebug-prefix-map=3D/home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-l=
inux/xsllibtest/1.0-r0/recipe-sysroot=3D&nbsp;&nbsp;&nbsp; --sysroot=3D/hom=
e/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/xsllibtest/1.0-r0/rec=
ipe-sysroot&nbsp;&nbsp; -o CMakeFiles/xsllibtest.dir/xsllibtest.c.o&nbsp;&n=
bsp;
 -c /home/martin/work/xsllibtest/xsllibtest.c<br>
| /home/martin/work/xsllibtest/xsllibtest.c:1:10: fatal error: gs/isl/isl.h=
: No such file or directory<br>
|&nbsp; #include &lt;gs/isl/isl.h&gt;<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~~~~~=
~<br>
| compilation terminated.<br>
| make[2]: *** [CMakeFiles/xsllibtest.dir/build.make:66: CMakeFiles/xsllibt=
est.dir/xsllibtest.c.o] Error 1<br>
| make[2]: Leaving directory '/home/martin/gomspace_sdk/tmp/work/aarch64-go=
mspace-linux/xsllibtest/1.0-r0/xsllibtest-1.0'<br>
| make[1]: *** [CMakeFiles/Makefile2:71: CMakeFiles/xsllibtest.dir/all] Err=
or 2<br>
| make[1]: Leaving directory '/home/martin/gomspace_sdk/tmp/work/aarch64-go=
mspace-linux/xsllibtest/1.0-r0/xsllibtest-1.0'<br>
| make: *** [Makefile:87: all] Error 2<br>
| WARNING: exit code 2 from a shell command.<br>
| ERROR: Function failed: do_compile (log file is located at /home/martin/g=
omspace_sdk/tmp/work/aarch64-gomspace-linux/xsllibtest/1.0-r0/temp/log.do_c=
ompile.17008)<br>
ERROR: Task (/home/martin/gomspace_sdk/workspace/recipes/xsllibtest/xsllibt=
est.bb:do_compile) failed with exit code '1'<br>
NOTE: Tasks Summary: Attempted 464 tasks of which 460 didn't need to be rer=
un and 1 failed.<br>
<br>
Since the header file resides with the standard '/usr/include' location I a=
ssume no explicit include path configuration is needed (I have tried settin=
g this explicitly from CMakeLists.txt with the same outcome).<br>
<br>
Am I missing something obvious here? Configure/compilation log files attach=
ed....<br>
<br>
Thanks,<br>
Martin</div>
</span></font></div>
</body>
</html>

--_000_HE1PR0402MB3323245FE7E08A8588D644C0C4F60HE1PR0402MB3323_--
