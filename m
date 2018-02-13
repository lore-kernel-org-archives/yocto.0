Return-Path: <mns@gomspace.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41E47E00DED; Tue, 13 Feb 2018 05:26:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.107 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0107.outbound.protection.outlook.com [104.47.2.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D45CEE00DAE
	for <yocto@yoctoproject.org>; Tue, 13 Feb 2018 05:26:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gomspace.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=ysuhzV5KKjpcl4bCjKKLdIW+avlXbelsGbqhRJQdXOo=;
	b=DxrKwDfJ5Ey11mkUKzd5A8GmIBmAlDBFqZIBzIEzz960O2WiagheZhrcwNtzezws7OiDFuUSNu6P1Sm7EycNQJIyxXX+JdPsUtECr4AQxWXK1PGw6TxBrjl1YV3s6751uXH2i5GZ4TkDsQORRrlgEQ8uJjBzWU6Ia9NhKfHZMJw=
Received: from HE1PR0402MB3323.eurprd04.prod.outlook.com (10.167.125.20) by
	HE1PR0402MB3403.eurprd04.prod.outlook.com (10.167.125.144) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.485.10;
	Tue, 13 Feb 2018 13:10:48 +0000
Received: from HE1PR0402MB3323.eurprd04.prod.outlook.com
	([fe80::d1bb:e9d3:e167:2327]) by
	HE1PR0402MB3323.eurprd04.prod.outlook.com
	([fe80::d1bb:e9d3:e167:2327%13]) with mapi id 15.20.0485.015;
	Tue, 13 Feb 2018 13:10:48 +0000
From: Martin Siegumfeldt <mns@gomspace.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Exposure of Shared Library Functionality through eSDK - missing
	include file
Thread-Index: AQHTpMueFre2+9FoMUyynWbKoyJ1Kw==
Date: Tue, 13 Feb 2018 13:10:48 +0000
Message-ID: <HE1PR0402MB33238D94BBF5ADBFE8914634C4F60@HE1PR0402MB3323.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mns@gomspace.com; 
x-originating-ip: [79.171.149.172]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1PR0402MB3403;
	7:5i8gqFHIAL9TBEmZxQ+e1pItXCXKHrRBJUUMe7EKOrqRFPj+gfBKsZ/28Nb7bBW+bqtvdpygj0Mpgy7z2vjZ1PyLtWCNr2fkq8CBiiJ9SCCCMLSzn3UKltDt/p7UppcLRRSHhsmx9/4FO1qiekJIlcUrxvsD/uRQ/FQd/ZtGc3mnUWMHUP5+xrKu3QsTa+2OPw78xVdsAjwP1RgwHEShQCosTq+lGYU+83QdYLM4kae2/8CcFkEQO3Vxp3UOenTG
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 0cf4b70f-ddd3-41a4-f4bc-08d572e33309
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(5600026)(4604075)(3008032)(2017052603307)(7153060)(49563074)(7193020);
	SRVR:HE1PR0402MB3403; 
x-ms-traffictypediagnostic: HE1PR0402MB3403:
x-microsoft-antispam-prvs: <HE1PR0402MB340359CB5C52A404FEF38F43C4F60@HE1PR0402MB3403.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(102415395)(6040501)(2401047)(8121501046)(5005006)(3002001)(10201501046)(3231101)(944501161)(93006095)(93001095)(6041288)(20161123560045)(2016111802025)(20161123558120)(20161123562045)(20161123564045)(6072148)(6043046)(201708071742011);
	SRVR:HE1PR0402MB3403; BCL:0; PCL:0; RULEID:;
	SRVR:HE1PR0402MB3403; 
x-forefront-prvs: 0582641F53
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39380400002)(366004)(346002)(396003)(39840400004)(376002)(189003)(199004)(7696005)(14454004)(6436002)(59450400001)(55016002)(478600001)(102836004)(53936002)(316002)(2900100001)(2501003)(68736007)(5890100001)(97736004)(9686003)(5250100002)(5640700003)(81156014)(186003)(6506007)(8676002)(8936002)(26005)(86362001)(99286004)(81166006)(25786009)(33656002)(105586002)(2906002)(2351001)(1730700003)(74316002)(5660300001)(6916009)(106356001)(3660700001)(3280700002)(7736002)(3846002)(305945005)(99936001)(66066001)(6116002)(42262002)(19627235001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR0402MB3403;
	H:HE1PR0402MB3323.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: gomspace.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: DLNwzalOqZsKssS8eukeXMeXzlEUMU1FSGhK4vY8BEwpNzd65jHFNG4DX9PW5cI49rsvGgzr9zIsJXTDWRSvGA==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: gomspace.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cf4b70f-ddd3-41a4-f4bc-08d572e33309
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2018 13:10:48.0820 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91ed1e54-6d8b-4599-84d8-65fe75fda3d1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0402MB3403
Subject: Exposure of Shared Library Functionality through eSDK - missing include file
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
X-List-Received-Date: Tue, 13 Feb 2018 13:26:10 -0000
X-Groupsio-MsgNum: 39898
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_005_HE1PR0402MB33238D94BBF5ADBFE8914634C4F60HE1PR0402MB3323_"

--_005_HE1PR0402MB33238D94BBF5ADBFE8914634C4F60HE1PR0402MB3323_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

We are implementing certain logic within a shared library and aims at expos=
ing this through the extensible SDK, unfortunately without success so far. =
The library and it's associated header file=A0is successfully=A0added to th=
e image and appears also present from the eSDK:

martin@dell:~/gomspace_sdk$ find . -name libgsisl.so=A0
./tmp/sysroots/nanomind-ultra-zu6eg-zcu102/usr/lib/libgsisl.so=A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0
./tmp/work/aarch64-gomspace-linux/libisl/develop-r0/sysroot-destdir/usr/lib=
/libgsisl.so=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0
./tmp/sysroots-components/aarch64/libisl/usr/lib/libgsisl.so=A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0
martin@dell:~/gomspace_sdk$ find . -name isl.h=A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0
./tmp/sysroots/nanomind-ultra-zu6eg-zcu102/usr/include/gs/isl/isl.h=A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0
./tmp/work/aarch64-gomspace-linux/libisl/develop-r0/sysroot-destdir/usr/inc=
lude/gs/isl/isl.h=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0
./tmp/sysroots-components/aarch64/libisl/usr/include/gs/isl/isl.h=A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0
martin@dell:~/gomspace_sdk$=A0

For testing, I have implemented a small application, built through CMake:

martin@dell:~/work/xsllibtest$ cat CMakeLists.txt=20
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
martin@dell:~/gomspace_sdk$ cat workspace/recipes/xsllibtest/xsllibtest.bb=
=20
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

martin@dell:~/gomspace_sdk$ cat workspace/appends/xsllibtest.bbappend=20
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
Martin=

--_005_HE1PR0402MB33238D94BBF5ADBFE8914634C4F60HE1PR0402MB3323_
Content-Type: application/octet-stream; name="log.do_compile"
Content-Description: log.do_compile
Content-Disposition: attachment; filename="log.do_compile"; size=4729;
	creation-date="Tue, 13 Feb 2018 13:03:17 GMT";
	modification-date="Tue, 13 Feb 2018 13:03:17 GMT"
Content-Transfer-Encoding: base64

REVCVUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gZXh0ZXJuYWxzcmNfY29tcGlsZV9wcmVm
dW5jCk5PVEU6IHhzbGxpYnRlc3Q6IGNvbXBpbGluZyBmcm9tIGV4dGVybmFsIHNvdXJjZSB0cmVl
IC9ob21lL21hcnRpbi93b3JrL3hzbGxpYnRlc3QKREVCVUc6IFB5dGhvbiBmdW5jdGlvbiBleHRl
cm5hbHNyY19jb21waWxlX3ByZWZ1bmMgZmluaXNoZWQKREVCVUc6IEV4ZWN1dGluZyBzaGVsbCBm
dW5jdGlvbiBkb19jb21waWxlCk5PVEU6IFZFUkJPU0U9MSBjbWFrZSAtLWJ1aWxkIC9ob21lL21h
cnRpbi9nb21zcGFjZV9zZGsvdG1wL3dvcmsvYWFyY2g2NC1nb21zcGFjZS1saW51eC94c2xsaWJ0
ZXN0LzEuMC1yMC94c2xsaWJ0ZXN0LTEuMC8gLS0gLWogOAovaG9tZS9tYXJ0aW4vZ29tc3BhY2Vf
c2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAtcjAvcmVj
aXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9iaW4vY21ha2UgLUgvaG9tZS9tYXJ0aW4vd29yay94c2xs
aWJ0ZXN0IC1CL2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNw
YWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3hzbGxpYnRlc3QtMS4wIC0tY2hlY2stYnVpbGQt
c3lzdGVtIENNYWtlRmlsZXMvTWFrZWZpbGUuY21ha2UgMAovaG9tZS9tYXJ0aW4vZ29tc3BhY2Vf
c2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAtcjAvcmVj
aXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9iaW4vY21ha2UgLUUgY21ha2VfcHJvZ3Jlc3Nfc3RhcnQg
L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4
L3hzbGxpYnRlc3QvMS4wLXIwL3hzbGxpYnRlc3QtMS4wL0NNYWtlRmlsZXMgL2hvbWUvbWFydGlu
L2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3Qv
MS4wLXIwL3hzbGxpYnRlc3QtMS4wL0NNYWtlRmlsZXMvcHJvZ3Jlc3MubWFya3MKbWFrZSAtZiBD
TWFrZUZpbGVzL01ha2VmaWxlMiBhbGwKbWFrZVsxXTogRW50ZXJpbmcgZGlyZWN0b3J5ICcvaG9t
ZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNs
bGlidGVzdC8xLjAtcjAveHNsbGlidGVzdC0xLjAnCm1ha2UgLWYgQ01ha2VGaWxlcy94c2xsaWJ0
ZXN0LmRpci9idWlsZC5tYWtlIENNYWtlRmlsZXMveHNsbGlidGVzdC5kaXIvZGVwZW5kCm1ha2Vb
Ml06IEVudGVyaW5nIGRpcmVjdG9yeSAnL2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29y
ay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3hzbGxpYnRlc3QtMS4w
JwpjZCAvaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2Ut
bGludXgveHNsbGlidGVzdC8xLjAtcjAveHNsbGlidGVzdC0xLjAgJiYgL2hvbWUvbWFydGluL2dv
bXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4w
LXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvYmluL2NtYWtlIC1FIGNtYWtlX2RlcGVuZHMg
IlVuaXggTWFrZWZpbGVzIiAvaG9tZS9tYXJ0aW4vd29yay94c2xsaWJ0ZXN0IC9ob21lL21hcnRp
bi93b3JrL3hzbGxpYnRlc3QgL2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJj
aDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3hzbGxpYnRlc3QtMS4wIC9ob21l
L21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL3dvcmsvYWFyY2g2NC1nb21zcGFjZS1saW51eC94c2xs
aWJ0ZXN0LzEuMC1yMC94c2xsaWJ0ZXN0LTEuMCAvaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3Rt
cC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAtcjAveHNsbGlidGVz
dC0xLjAvQ01ha2VGaWxlcy94c2xsaWJ0ZXN0LmRpci9EZXBlbmRJbmZvLmNtYWtlIC0tY29sb3I9
CkRlcGVuZGVlICIvaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29t
c3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAtcjAveHNsbGlidGVzdC0xLjAvQ01ha2VGaWxlcy94
c2xsaWJ0ZXN0LmRpci9EZXBlbmRJbmZvLmNtYWtlIiBpcyBuZXdlciB0aGFuIGRlcGVuZGVyICIv
aG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgv
eHNsbGlidGVzdC8xLjAtcjAveHNsbGlidGVzdC0xLjAvQ01ha2VGaWxlcy94c2xsaWJ0ZXN0LmRp
ci9kZXBlbmQuaW50ZXJuYWwiLgpEZXBlbmRlZSAiL2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90
bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3hzbGxpYnRl
c3QtMS4wL0NNYWtlRmlsZXMvQ01ha2VEaXJlY3RvcnlJbmZvcm1hdGlvbi5jbWFrZSIgaXMgbmV3
ZXIgdGhhbiBkZXBlbmRlciAiL2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJj
aDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3hzbGxpYnRlc3QtMS4wL0NNYWtl
RmlsZXMveHNsbGlidGVzdC5kaXIvZGVwZW5kLmludGVybmFsIi4KU2Nhbm5pbmcgZGVwZW5kZW5j
aWVzIG9mIHRhcmdldCB4c2xsaWJ0ZXN0Cm1ha2VbMl06IExlYXZpbmcgZGlyZWN0b3J5ICcvaG9t
ZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNs
bGlidGVzdC8xLjAtcjAveHNsbGlidGVzdC0xLjAnCm1ha2UgLWYgQ01ha2VGaWxlcy94c2xsaWJ0
ZXN0LmRpci9idWlsZC5tYWtlIENNYWtlRmlsZXMveHNsbGlidGVzdC5kaXIvYnVpbGQKbWFrZVsy
XTogRW50ZXJpbmcgZGlyZWN0b3J5ICcvaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3Jr
L2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAtcjAveHNsbGlidGVzdC0xLjAn
ClsgNTAlXSBCdWlsZGluZyBDIG9iamVjdCBDTWFrZUZpbGVzL3hzbGxpYnRlc3QuZGlyL3hzbGxp
YnRlc3QuYy5vCi9ob21lL21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL3dvcmsvYWFyY2g2NC1nb21z
cGFjZS1saW51eC94c2xsaWJ0ZXN0LzEuMC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2Jp
bi9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L2FhcmNoNjQtZ29tc3BhY2UtbGludXgtZ2NjICAgLS1z
eXNyb290PS9ob21lL21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL3dvcmsvYWFyY2g2NC1nb21zcGFj
ZS1saW51eC94c2xsaWJ0ZXN0LzEuMC1yMC9yZWNpcGUtc3lzcm9vdCAgLU8yIC1waXBlIC1nIC1m
ZWxpbWluYXRlLXVudXNlZC1kZWJ1Zy10eXBlcyAtZmRlYnVnLXByZWZpeC1tYXA9L2hvbWUvbWFy
dGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRl
c3QvMS4wLXIwPS91c3Ivc3JjL2RlYnVnL3hzbGxpYnRlc3QvMS4wLXIwIC1mZGVidWctcHJlZml4
LW1hcD0vaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2Ut
bGludXgveHNsbGlidGVzdC8xLjAtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlPSAtZmRlYnVnLXBy
ZWZpeC1tYXA9L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNw
YWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290PSAgICAtLXN5c3Jvb3Q9
L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4
L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290ICAgLW8gQ01ha2VGaWxlcy94c2xsaWJ0
ZXN0LmRpci94c2xsaWJ0ZXN0LmMubyAgIC1jIC9ob21lL21hcnRpbi93b3JrL3hzbGxpYnRlc3Qv
eHNsbGlidGVzdC5jCi9ob21lL21hcnRpbi93b3JrL3hzbGxpYnRlc3QveHNsbGlidGVzdC5jOjE6
MTA6IGZhdGFsIGVycm9yOiBncy9pc2wvaXNsLmg6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkK
ICNpbmNsdWRlIDxncy9pc2wvaXNsLmg+CiAgICAgICAgICBefn5+fn5+fn5+fn5+fgpjb21waWxh
dGlvbiB0ZXJtaW5hdGVkLgptYWtlWzJdOiAqKiogW0NNYWtlRmlsZXMveHNsbGlidGVzdC5kaXIv
YnVpbGQubWFrZTo2NjogQ01ha2VGaWxlcy94c2xsaWJ0ZXN0LmRpci94c2xsaWJ0ZXN0LmMub10g
RXJyb3IgMQptYWtlWzJdOiBMZWF2aW5nIGRpcmVjdG9yeSAnL2hvbWUvbWFydGluL2dvbXNwYWNl
X3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3hz
bGxpYnRlc3QtMS4wJwptYWtlWzFdOiAqKiogW0NNYWtlRmlsZXMvTWFrZWZpbGUyOjcxOiBDTWFr
ZUZpbGVzL3hzbGxpYnRlc3QuZGlyL2FsbF0gRXJyb3IgMgptYWtlWzFdOiBMZWF2aW5nIGRpcmVj
dG9yeSAnL2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNl
LWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3hzbGxpYnRlc3QtMS4wJwptYWtlOiAqKiogW01ha2Vm
aWxlOjg3OiBhbGxdIEVycm9yIDIKV0FSTklORzogZXhpdCBjb2RlIDIgZnJvbSBhIHNoZWxsIGNv
bW1hbmQuCkVSUk9SOiBGdW5jdGlvbiBmYWlsZWQ6IGRvX2NvbXBpbGUgKGxvZyBmaWxlIGlzIGxv
Y2F0ZWQgYXQgL2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNw
YWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3RlbXAvbG9nLmRvX2NvbXBpbGUuMTcwMDgpCg==

--_005_HE1PR0402MB33238D94BBF5ADBFE8914634C4F60HE1PR0402MB3323_
Content-Type: application/octet-stream; name="log.do_configure"
Content-Description: log.do_configure
Content-Disposition: attachment; filename="log.do_configure"; size=1983;
	creation-date="Tue, 13 Feb 2018 13:03:17 GMT";
	modification-date="Tue, 13 Feb 2018 13:03:17 GMT"
Content-Transfer-Encoding: base64

REVCVUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gZXh0ZXJuYWxzcmNfY29uZmlndXJlX3By
ZWZ1bmMKREVCVUc6IFB5dGhvbiBmdW5jdGlvbiBleHRlcm5hbHNyY19jb25maWd1cmVfcHJlZnVu
YyBmaW5pc2hlZApERUJVRzogRXhlY3V0aW5nIHNoZWxsIGZ1bmN0aW9uIGRvX2NvbmZpZ3VyZQot
LSBUaGUgQyBjb21waWxlciBpZGVudGlmaWNhdGlvbiBpcyBHTlUgNy4yLjAKLS0gVGhlIENYWCBj
b21waWxlciBpZGVudGlmaWNhdGlvbiBpcyBHTlUgNy4yLjAKLS0gQ2hlY2sgZm9yIHdvcmtpbmcg
QyBjb21waWxlcjogL2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdv
bXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3Iv
YmluL2FhcmNoNjQtZ29tc3BhY2UtbGludXgvYWFyY2g2NC1nb21zcGFjZS1saW51eC1nY2MKLS0g
Q2hlY2sgZm9yIHdvcmtpbmcgQyBjb21waWxlcjogL2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90
bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1z
eXNyb290LW5hdGl2ZS91c3IvYmluL2FhcmNoNjQtZ29tc3BhY2UtbGludXgvYWFyY2g2NC1nb21z
cGFjZS1saW51eC1nY2MgLS0gd29ya3MKLS0gRGV0ZWN0aW5nIEMgY29tcGlsZXIgQUJJIGluZm8K
LS0gRGV0ZWN0aW5nIEMgY29tcGlsZXIgQUJJIGluZm8gLSBkb25lCi0tIERldGVjdGluZyBDIGNv
bXBpbGUgZmVhdHVyZXMKLS0gRGV0ZWN0aW5nIEMgY29tcGlsZSBmZWF0dXJlcyAtIGRvbmUKLS0g
Q2hlY2sgZm9yIHdvcmtpbmcgQ1hYIGNvbXBpbGVyOiAvaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2Rr
L3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAtcjAvcmVjaXBl
LXN5c3Jvb3QtbmF0aXZlL3Vzci9iaW4vYWFyY2g2NC1nb21zcGFjZS1saW51eC9hYXJjaDY0LWdv
bXNwYWNlLWxpbnV4LWcrKwotLSBDaGVjayBmb3Igd29ya2luZyBDWFggY29tcGlsZXI6IC9ob21l
L21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL3dvcmsvYWFyY2g2NC1nb21zcGFjZS1saW51eC94c2xs
aWJ0ZXN0LzEuMC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2Jpbi9hYXJjaDY0LWdvbXNw
YWNlLWxpbnV4L2FhcmNoNjQtZ29tc3BhY2UtbGludXgtZysrIC0tIHdvcmtzCi0tIERldGVjdGlu
ZyBDWFggY29tcGlsZXIgQUJJIGluZm8KLS0gRGV0ZWN0aW5nIENYWCBjb21waWxlciBBQkkgaW5m
byAtIGRvbmUKLS0gRGV0ZWN0aW5nIENYWCBjb21waWxlIGZlYXR1cmVzCi0tIERldGVjdGluZyBD
WFggY29tcGlsZSBmZWF0dXJlcyAtIGRvbmUKLS0gQ29uZmlndXJpbmcgZG9uZQotLSBHZW5lcmF0
aW5nIGRvbmUKQ01ha2UgV2FybmluZzoKICBNYW51YWxseS1zcGVjaWZpZWQgdmFyaWFibGVzIHdl
cmUgbm90IHVzZWQgYnkgdGhlIHByb2plY3Q6CgogICAgQ01BS0VfSU5TVEFMTF9CSU5ESVIKICAg
IENNQUtFX0lOU1RBTExfREFUQVJPT1RESVIKICAgIENNQUtFX0lOU1RBTExfSU5DTFVERURJUgog
ICAgQ01BS0VfSU5TVEFMTF9MSUJESVIKICAgIENNQUtFX0lOU1RBTExfTElCRVhFQ0RJUgogICAg
Q01BS0VfSU5TVEFMTF9MT0NBTFNUQVRFRElSCiAgICBDTUFLRV9JTlNUQUxMX1NCSU5ESVIKICAg
IENNQUtFX0lOU1RBTExfU0hBUkVEU1RBVEVESVIKICAgIENNQUtFX0lOU1RBTExfU1lTQ09ORkRJ
UgoKCi0tIEJ1aWxkIGZpbGVzIGhhdmUgYmVlbiB3cml0dGVuIHRvOiAvaG9tZS9tYXJ0aW4vZ29t
c3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAt
cjAveHNsbGlidGVzdC0xLjAKREVCVUc6IFNoZWxsIGZ1bmN0aW9uIGRvX2NvbmZpZ3VyZSBmaW5p
c2hlZApERUJVRzogRXhlY3V0aW5nIHB5dGhvbiBmdW5jdGlvbiBkb19xYV9jb25maWd1cmUKREVC
VUc6IFB5dGhvbiBmdW5jdGlvbiBkb19xYV9jb25maWd1cmUgZmluaXNoZWQK

--_005_HE1PR0402MB33238D94BBF5ADBFE8914634C4F60HE1PR0402MB3323_
Content-Type: application/octet-stream; name="run.do_compile"
Content-Description: run.do_compile
Content-Disposition: attachment; filename="run.do_compile"; size=8649;
	creation-date="Tue, 13 Feb 2018 13:03:17 GMT";
	modification-date="Tue, 13 Feb 2018 13:03:17 GMT"
Content-Transfer-Encoding: base64

IyEvYmluL3NoCgojIEVtaXQgYSB1c2VmdWwgZGlhZ25vc3RpYyBpZiBzb21ldGhpbmcgZmFpbHM6
CmJiX2V4aXRfaGFuZGxlcigpIHsKICAgIHJldD0kPwogICAgY2FzZSAkcmV0IGluCiAgICAwKSAg
OzsKICAgICopICBjYXNlICRCQVNIX1ZFUlNJT04gaW4KICAgICAgICAiIikgZWNobyAiV0FSTklO
RzogZXhpdCBjb2RlICRyZXQgZnJvbSBhIHNoZWxsIGNvbW1hbmQuIjs7CiAgICAgICAgKikgIGVj
aG8gIldBUk5JTkc6ICR7QkFTSF9TT1VSQ0VbMF19OiR7QkFTSF9MSU5FTk9bMF19IGV4aXQgJHJl
dCBmcm9tICckQkFTSF9DT01NQU5EJyI7OwogICAgICAgIGVzYWMKICAgICAgICBleGl0ICRyZXQK
ICAgIGVzYWMKfQp0cmFwICdiYl9leGl0X2hhbmRsZXInIDAKc2V0IC1lCmV4cG9ydCBBUj0iYWFy
Y2g2NC1nb21zcGFjZS1saW51eC1hciIKZXhwb3J0IEFTPSJhYXJjaDY0LWdvbXNwYWNlLWxpbnV4
LWFzICIKZXhwb3J0IEJVSUxEX0FSPSJhciIKZXhwb3J0IEJVSUxEX0FTPSJhcyAiCmV4cG9ydCBC
VUlMRF9DQz0iZ2NjICIKZXhwb3J0IEJVSUxEX0NDTEQ9ImdjYyAiCmV4cG9ydCBCVUlMRF9DRkxB
R1M9Ii1pc3lzdGVtL2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdv
bXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3Iv
aW5jbHVkZSAtTzIgLXBpcGUiCmV4cG9ydCBCVUlMRF9DUFA9ImdjYyAgLUUiCmV4cG9ydCBCVUlM
RF9DUFBGTEFHUz0iLWlzeXN0ZW0vaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2Fh
cmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0
aXZlL3Vzci9pbmNsdWRlIgpleHBvcnQgQlVJTERfQ1hYPSJnKysgIgpleHBvcnQgQlVJTERfQ1hY
RkxBR1M9Ii1pc3lzdGVtL2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0
LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91
c3IvaW5jbHVkZSAtTzIgLXBpcGUiCmV4cG9ydCBCVUlMRF9GQz0iZ2ZvcnRyYW4gIgpleHBvcnQg
QlVJTERfTEQ9ImxkICIKZXhwb3J0IEJVSUxEX0xERkxBR1M9Ii1ML2hvbWUvbWFydGluL2dvbXNw
YWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIw
L3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvbGliIC1ML2hvbWUvbWFydGluL2dvbXNwYWNlX3Nk
ay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lw
ZS1zeXNyb290LW5hdGl2ZS9saWIgLVdsLC1ycGF0aC1saW5rLC9ob21lL21hcnRpbi9nb21zcGFj
ZV9zZGsvdG1wL3dvcmsvYWFyY2g2NC1nb21zcGFjZS1saW51eC94c2xsaWJ0ZXN0LzEuMC1yMC9y
ZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2xpYiAtV2wsLXJwYXRoLWxpbmssL2hvbWUvbWFydGlu
L2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3Qv
MS4wLXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS9saWIgLVdsLC1ycGF0aCwvaG9tZS9tYXJ0aW4v
Z29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8x
LjAtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9saWIgLVdsLC1ycGF0aCwvaG9tZS9tYXJ0
aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVz
dC8xLjAtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL2xpYiAtV2wsLU8xIgpleHBvcnQgQlVJTERf
Tk09Im5tIgpleHBvcnQgQlVJTERfUkFOTElCPSJyYW5saWIiCmV4cG9ydCBCVUlMRF9TVFJJUD0i
c3RyaXAiCmV4cG9ydCBDQz0iYWFyY2g2NC1nb21zcGFjZS1saW51eC1nY2MgIC0tc3lzcm9vdD0v
aG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgv
eHNsbGlidGVzdC8xLjAtcjAvcmVjaXBlLXN5c3Jvb3QiCmV4cG9ydCBDQ0FDSEVfRElSPSIvaG9t
ZS9tYXJ0aW4vLmNjYWNoZSIKZXhwb3J0IENDTEQ9ImFhcmNoNjQtZ29tc3BhY2UtbGludXgtZ2Nj
ICAtLXN5c3Jvb3Q9L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdv
bXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290IgpleHBvcnQgQ0ZM
QUdTPSIgLU8yIC1waXBlIC1nIC1mZWxpbWluYXRlLXVudXNlZC1kZWJ1Zy10eXBlcyAtZmRlYnVn
LXByZWZpeC1tYXA9L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdv
bXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwPS91c3Ivc3JjL2RlYnVnL3hzbGxpYnRlc3Qv
MS4wLXIwIC1mZGVidWctcHJlZml4LW1hcD0vaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93
b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAtcjAvcmVjaXBlLXN5c3Jv
b3QtbmF0aXZlPSAtZmRlYnVnLXByZWZpeC1tYXA9L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90
bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1z
eXNyb290PSAgICAtLXN5c3Jvb3Q9L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9h
YXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290Igpl
eHBvcnQgQ1BQPSJhYXJjaDY0LWdvbXNwYWNlLWxpbnV4LWdjYyAtRSAtLXN5c3Jvb3Q9L2hvbWUv
bWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxp
YnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290ICIKZXhwb3J0IENQUEZMQUdTPSIiCmV4cG9ydCBD
WFg9ImFhcmNoNjQtZ29tc3BhY2UtbGludXgtZysrICAtLXN5c3Jvb3Q9L2hvbWUvbWFydGluL2dv
bXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4w
LXIwL3JlY2lwZS1zeXNyb290IgpleHBvcnQgQ1hYRkxBR1M9IiAtTzIgLXBpcGUgLWcgLWZlbGlt
aW5hdGUtdW51c2VkLWRlYnVnLXR5cGVzIC1mZGVidWctcHJlZml4LW1hcD0vaG9tZS9tYXJ0aW4v
Z29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8x
LjAtcjA9L3Vzci9zcmMvZGVidWcveHNsbGlidGVzdC8xLjAtcjAgLWZkZWJ1Zy1wcmVmaXgtbWFw
PS9ob21lL21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL3dvcmsvYWFyY2g2NC1nb21zcGFjZS1saW51
eC94c2xsaWJ0ZXN0LzEuMC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmU9IC1mZGVidWctcHJlZml4
LW1hcD0vaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2Ut
bGludXgveHNsbGlidGVzdC8xLjAtcjAvcmVjaXBlLXN5c3Jvb3Q9ICAtZnZpc2liaWxpdHktaW5s
aW5lcy1oaWRkZW4gICAtLXN5c3Jvb3Q9L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29y
ay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290
Igp1bnNldCBESVNUUk8KZXhwb3J0IEZDPSJhYXJjaDY0LWdvbXNwYWNlLWxpbnV4LWdmb3J0cmFu
ICAtLXN5c3Jvb3Q9L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdv
bXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290IgpleHBvcnQgSE9N
RT0iL2hvbWUvbWFydGluIgpleHBvcnQgTENfQUxMPSJlbl9VUy5VVEYtOCIKZXhwb3J0IExEPSJh
YXJjaDY0LWdvbXNwYWNlLWxpbnV4LWxkIC0tc3lzcm9vdD0vaG9tZS9tYXJ0aW4vZ29tc3BhY2Vf
c2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAtcjAvcmVj
aXBlLXN5c3Jvb3QgIgpleHBvcnQgTERGTEFHUz0iLVdsLC1PMSAtV2wsLS1oYXNoLXN0eWxlPWdu
dSAtV2wsLS1hcy1uZWVkZWQiCmV4cG9ydCBMT0dOQU1FPSJtYXJ0aW4iCnVuc2V0IE1BQ0hJTkUK
ZXhwb3J0IE1BS0U9Im1ha2UiCmV4cG9ydCBOTT0iYWFyY2g2NC1nb21zcGFjZS1saW51eC1ubSIK
ZXhwb3J0IE9CSkNPUFk9ImFhcmNoNjQtZ29tc3BhY2UtbGludXgtb2JqY29weSIKZXhwb3J0IE9C
SkRVTVA9ImFhcmNoNjQtZ29tc3BhY2UtbGludXgtb2JqZHVtcCIKZXhwb3J0IFBBVEg9Ii9ob21l
L21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL3N5c3Jvb3RzLXVuaW5hdGl2ZS94ODZfNjQtbGludXgv
dXNyL2JpbjovaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL2xheWVycy9wb2t5L3NjcmlwdHM6L2hv
bWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hz
bGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvYmluL2FhcmNoNjQtZ29t
c3BhY2UtbGludXg6L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdv
bXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290L3Vzci9iaW4vY3Jv
c3NzY3JpcHRzOi9ob21lL21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL3dvcmsvYWFyY2g2NC1nb21z
cGFjZS1saW51eC94c2xsaWJ0ZXN0LzEuMC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL3Ni
aW46L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxp
bnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvYmluOi9ob21l
L21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL3dvcmsvYWFyY2g2NC1nb21zcGFjZS1saW51eC94c2xs
aWJ0ZXN0LzEuMC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvc2JpbjovaG9tZS9tYXJ0aW4vZ29t
c3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAt
cjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL2JpbjovaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL2xh
eWVycy9wb2t5L2JpdGJha2UvYmluOi9ob21lL21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL2hvc3R0
b29scyIKZXhwb3J0IFBLR19DT05GSUdfRElSPSIvaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3Rt
cC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAtcjAvcmVjaXBlLXN5
c3Jvb3QvdXNyL2xpYi9wa2djb25maWciCmV4cG9ydCBQS0dfQ09ORklHX0RJU0FCTEVfVU5JTlNU
QUxMRUQ9InllcyIKZXhwb3J0IFBLR19DT05GSUdfTElCRElSPSIvaG9tZS9tYXJ0aW4vZ29tc3Bh
Y2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAtcjAv
cmVjaXBlLXN5c3Jvb3QvdXNyL2xpYi9wa2djb25maWciCmV4cG9ydCBQS0dfQ09ORklHX1BBVEg9
Ii9ob21lL21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL3dvcmsvYWFyY2g2NC1nb21zcGFjZS1saW51
eC94c2xsaWJ0ZXN0LzEuMC1yMC9yZWNpcGUtc3lzcm9vdC91c3IvbGliL3BrZ2NvbmZpZzovaG9t
ZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNs
bGlidGVzdC8xLjAtcjAvcmVjaXBlLXN5c3Jvb3QvdXNyL3NoYXJlL3BrZ2NvbmZpZyIKZXhwb3J0
IFBLR19DT05GSUdfU1lTUk9PVF9ESVI9Ii9ob21lL21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL3dv
cmsvYWFyY2g2NC1nb21zcGFjZS1saW51eC94c2xsaWJ0ZXN0LzEuMC1yMC9yZWNpcGUtc3lzcm9v
dCIKZXhwb3J0IFBLR19DT05GSUdfU1lTVEVNX0lOQ0xVREVfUEFUSD0iL3Vzci9pbmNsdWRlIgpl
eHBvcnQgUEtHX0NPTkZJR19TWVNURU1fTElCUkFSWV9QQVRIPSIvbGliOi91c3IvbGliIgpleHBv
cnQgUFNFVURPX0RJU0FCTEVEPSIxIgpleHBvcnQgUFNFVURPX1VOTE9BRD0iMSIKZXhwb3J0IFJB
TkxJQj0iYWFyY2g2NC1nb21zcGFjZS1saW51eC1yYW5saWIiCmV4cG9ydCBSRUFERUxGPSJhYXJj
aDY0LWdvbXNwYWNlLWxpbnV4LXJlYWRlbGYiCnVuc2V0IFNIRUxMCmV4cG9ydCBTVFJJTkdTPSJh
YXJjaDY0LWdvbXNwYWNlLWxpbnV4LXN0cmluZ3MiCmV4cG9ydCBTVFJJUD0iYWFyY2g2NC1nb21z
cGFjZS1saW51eC1zdHJpcCIKdW5zZXQgVEFSR0VUX0FSQ0gKZXhwb3J0IFRBUkdFVF9DRkxBR1M9
IiAtTzIgLXBpcGUgLWcgLWZlbGltaW5hdGUtdW51c2VkLWRlYnVnLXR5cGVzIC1mZGVidWctcHJl
Zml4LW1hcD0vaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3Bh
Y2UtbGludXgveHNsbGlidGVzdC8xLjAtcjA9L3Vzci9zcmMvZGVidWcveHNsbGlidGVzdC8xLjAt
cjAgLWZkZWJ1Zy1wcmVmaXgtbWFwPS9ob21lL21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL3dvcmsv
YWFyY2g2NC1nb21zcGFjZS1saW51eC94c2xsaWJ0ZXN0LzEuMC1yMC9yZWNpcGUtc3lzcm9vdC1u
YXRpdmU9IC1mZGVidWctcHJlZml4LW1hcD0vaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93
b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAtcjAvcmVjaXBlLXN5c3Jv
b3Q9ICIKZXhwb3J0IFRBUkdFVF9DUFBGTEFHUz0iIgpleHBvcnQgVEFSR0VUX0NYWEZMQUdTPSIg
LU8yIC1waXBlIC1nIC1mZWxpbWluYXRlLXVudXNlZC1kZWJ1Zy10eXBlcyAtZmRlYnVnLXByZWZp
eC1tYXA9L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNl
LWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwPS91c3Ivc3JjL2RlYnVnL3hzbGxpYnRlc3QvMS4wLXIw
IC1mZGVidWctcHJlZml4LW1hcD0vaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2Fh
cmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0
aXZlPSAtZmRlYnVnLXByZWZpeC1tYXA9L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29y
ay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290
PSAiCmV4cG9ydCBUQVJHRVRfTERGTEFHUz0iLVdsLC1PMSAtV2wsLS1oYXNoLXN0eWxlPWdudSAt
V2wsLS1hcy1uZWVkZWQiCmV4cG9ydCBURVJNPSJzY3JlZW4tMjU2Y29sb3IiCmV4cG9ydCBVU0VS
PSJtYXJ0aW4iCmV4cG9ydCBiYXNlX2JpbmRpcj0iL2JpbiIKZXhwb3J0IGJhc2VfbGliZGlyPSIv
bGliIgpleHBvcnQgYmFzZV9wcmVmaXg9IiIKZXhwb3J0IGJhc2Vfc2JpbmRpcj0iL3NiaW4iCmV4
cG9ydCBiaW5kaXI9Ii91c3IvYmluIgpleHBvcnQgZGF0YWRpcj0iL3Vzci9zaGFyZSIKZXhwb3J0
IGRvY2Rpcj0iL3Vzci9zaGFyZS9kb2MiCmV4cG9ydCBleGVjX3ByZWZpeD0iL3VzciIKZXhwb3J0
IGluY2x1ZGVkaXI9Ii91c3IvaW5jbHVkZSIKZXhwb3J0IGluZm9kaXI9Ii91c3Ivc2hhcmUvaW5m
byIKZXhwb3J0IGxpYmRpcj0iL3Vzci9saWIiCmV4cG9ydCBsaWJleGVjZGlyPSIvdXNyL2xpYmV4
ZWMiCmV4cG9ydCBsb2NhbHN0YXRlZGlyPSIvdmFyIgpleHBvcnQgbWFuZGlyPSIvdXNyL3NoYXJl
L21hbiIKZXhwb3J0IG5vbmFyY2hfYmFzZV9saWJkaXI9Ii9saWIiCmV4cG9ydCBub25hcmNoX2xp
YmRpcj0iL3Vzci9saWIiCmV4cG9ydCBvbGRpbmNsdWRlZGlyPSIvdXNyL2luY2x1ZGUiCmV4cG9y
dCBwcmVmaXg9Ii91c3IiCmV4cG9ydCBzYmluZGlyPSIvdXNyL3NiaW4iCmV4cG9ydCBzZXJ2aWNl
ZGlyPSIvc3J2IgpleHBvcnQgc2hhcmVkc3RhdGVkaXI9Ii9jb20iCmV4cG9ydCBzeXNjb25mZGly
PSIvZXRjIgpleHBvcnQgc3lzdGVtZF9zeXN0ZW1fdW5pdGRpcj0iL2xpYi9zeXN0ZW1kL3N5c3Rl
bSIKZXhwb3J0IHN5c3RlbWRfdW5pdGRpcj0iL2xpYi9zeXN0ZW1kIgpleHBvcnQgc3lzdGVtZF91
c2VyX3VuaXRkaXI9Ii91c3IvbGliL3N5c3RlbWQvdXNlciIKCmRvX2NvbXBpbGUoKSB7CiAgICBj
bWFrZV9kb19jb21waWxlCn0KCmNtYWtlX2RvX2NvbXBpbGUoKSB7CgliYm5vdGUgVkVSQk9TRT0x
IGNtYWtlIC0tYnVpbGQgJy9ob21lL21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL3dvcmsvYWFyY2g2
NC1nb21zcGFjZS1saW51eC94c2xsaWJ0ZXN0LzEuMC1yMC94c2xsaWJ0ZXN0LTEuMC8nIC0tIC1q
IDggCglWRVJCT1NFPTEgY21ha2UgLS1idWlsZCAnL2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90
bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3hzbGxpYnRl
c3QtMS4wLycgLS0gLWogOCAKfQoKYmJub3RlKCkgewoJaWYgWyAtcCAvaG9tZS9tYXJ0aW4vZ29t
c3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAt
cjAvdGVtcC9maWZvLjE3MDA4IF0gOyB0aGVuCgkJcHJpbnRmICIlYlwwIiAiYmJub3RlICQqIiA+
IC9ob21lL21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL3dvcmsvYWFyY2g2NC1nb21zcGFjZS1saW51
eC94c2xsaWJ0ZXN0LzEuMC1yMC90ZW1wL2ZpZm8uMTcwMDgKCWVsc2UKCQllY2hvICJOT1RFOiAk
KiIKCWZpCn0KCmNkICcvaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQt
Z29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAtcjAveHNsbGlidGVzdC0xLjAvJwpkb19jb21w
aWxlCgojIGNsZWFudXAKcmV0PSQ/CnRyYXAgJycgMApleGl0ICRyZXQK

--_005_HE1PR0402MB33238D94BBF5ADBFE8914634C4F60HE1PR0402MB3323_
Content-Type: application/octet-stream; name="run.do_configure"
Content-Description: run.do_configure
Content-Disposition: attachment; filename="run.do_configure"; size=10330;
	creation-date="Tue, 13 Feb 2018 13:03:17 GMT";
	modification-date="Tue, 13 Feb 2018 13:03:17 GMT"
Content-Transfer-Encoding: base64

IyEvYmluL3NoCgojIEVtaXQgYSB1c2VmdWwgZGlhZ25vc3RpYyBpZiBzb21ldGhpbmcgZmFpbHM6
CmJiX2V4aXRfaGFuZGxlcigpIHsKICAgIHJldD0kPwogICAgY2FzZSAkcmV0IGluCiAgICAwKSAg
OzsKICAgICopICBjYXNlICRCQVNIX1ZFUlNJT04gaW4KICAgICAgICAiIikgZWNobyAiV0FSTklO
RzogZXhpdCBjb2RlICRyZXQgZnJvbSBhIHNoZWxsIGNvbW1hbmQuIjs7CiAgICAgICAgKikgIGVj
aG8gIldBUk5JTkc6ICR7QkFTSF9TT1VSQ0VbMF19OiR7QkFTSF9MSU5FTk9bMF19IGV4aXQgJHJl
dCBmcm9tICckQkFTSF9DT01NQU5EJyI7OwogICAgICAgIGVzYWMKICAgICAgICBleGl0ICRyZXQK
ICAgIGVzYWMKfQp0cmFwICdiYl9leGl0X2hhbmRsZXInIDAKc2V0IC1lCmV4cG9ydCBBUj0iYWFy
Y2g2NC1nb21zcGFjZS1saW51eC1hciIKZXhwb3J0IEFTPSJhYXJjaDY0LWdvbXNwYWNlLWxpbnV4
LWFzICIKZXhwb3J0IEJVSUxEX0FSPSJhciIKZXhwb3J0IEJVSUxEX0FTPSJhcyAiCmV4cG9ydCBC
VUlMRF9DQz0iZ2NjICIKZXhwb3J0IEJVSUxEX0NDTEQ9ImdjYyAiCmV4cG9ydCBCVUlMRF9DRkxB
R1M9Ii1pc3lzdGVtL2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdv
bXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3Iv
aW5jbHVkZSAtTzIgLXBpcGUiCmV4cG9ydCBCVUlMRF9DUFA9ImdjYyAgLUUiCmV4cG9ydCBCVUlM
RF9DUFBGTEFHUz0iLWlzeXN0ZW0vaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2Fh
cmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0
aXZlL3Vzci9pbmNsdWRlIgpleHBvcnQgQlVJTERfQ1hYPSJnKysgIgpleHBvcnQgQlVJTERfQ1hY
RkxBR1M9Ii1pc3lzdGVtL2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0
LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91
c3IvaW5jbHVkZSAtTzIgLXBpcGUiCmV4cG9ydCBCVUlMRF9GQz0iZ2ZvcnRyYW4gIgpleHBvcnQg
QlVJTERfTEQ9ImxkICIKZXhwb3J0IEJVSUxEX0xERkxBR1M9Ii1ML2hvbWUvbWFydGluL2dvbXNw
YWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIw
L3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvbGliIC1ML2hvbWUvbWFydGluL2dvbXNwYWNlX3Nk
ay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lw
ZS1zeXNyb290LW5hdGl2ZS9saWIgLVdsLC1ycGF0aC1saW5rLC9ob21lL21hcnRpbi9nb21zcGFj
ZV9zZGsvdG1wL3dvcmsvYWFyY2g2NC1nb21zcGFjZS1saW51eC94c2xsaWJ0ZXN0LzEuMC1yMC9y
ZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2xpYiAtV2wsLXJwYXRoLWxpbmssL2hvbWUvbWFydGlu
L2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3Qv
MS4wLXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS9saWIgLVdsLC1ycGF0aCwvaG9tZS9tYXJ0aW4v
Z29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8x
LjAtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9saWIgLVdsLC1ycGF0aCwvaG9tZS9tYXJ0
aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVz
dC8xLjAtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL2xpYiAtV2wsLU8xIgpleHBvcnQgQlVJTERf
Tk09Im5tIgpleHBvcnQgQlVJTERfUkFOTElCPSJyYW5saWIiCmV4cG9ydCBCVUlMRF9TVFJJUD0i
c3RyaXAiCmV4cG9ydCBDQz0iYWFyY2g2NC1nb21zcGFjZS1saW51eC1nY2MgIC0tc3lzcm9vdD0v
aG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgv
eHNsbGlidGVzdC8xLjAtcjAvcmVjaXBlLXN5c3Jvb3QiCmV4cG9ydCBDQ0FDSEVfRElSPSIvaG9t
ZS9tYXJ0aW4vLmNjYWNoZSIKZXhwb3J0IENDTEQ9ImFhcmNoNjQtZ29tc3BhY2UtbGludXgtZ2Nj
ICAtLXN5c3Jvb3Q9L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdv
bXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290IgpleHBvcnQgQ0ZM
QUdTPSIgLU8yIC1waXBlIC1nIC1mZWxpbWluYXRlLXVudXNlZC1kZWJ1Zy10eXBlcyAtZmRlYnVn
LXByZWZpeC1tYXA9L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdv
bXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwPS91c3Ivc3JjL2RlYnVnL3hzbGxpYnRlc3Qv
MS4wLXIwIC1mZGVidWctcHJlZml4LW1hcD0vaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93
b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAtcjAvcmVjaXBlLXN5c3Jv
b3QtbmF0aXZlPSAtZmRlYnVnLXByZWZpeC1tYXA9L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90
bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1z
eXNyb290PSAgICAtLXN5c3Jvb3Q9L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9h
YXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290Igpl
eHBvcnQgQ1BQPSJhYXJjaDY0LWdvbXNwYWNlLWxpbnV4LWdjYyAtRSAtLXN5c3Jvb3Q9L2hvbWUv
bWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxp
YnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290ICIKZXhwb3J0IENQUEZMQUdTPSIiCmV4cG9ydCBD
WFg9ImFhcmNoNjQtZ29tc3BhY2UtbGludXgtZysrICAtLXN5c3Jvb3Q9L2hvbWUvbWFydGluL2dv
bXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4w
LXIwL3JlY2lwZS1zeXNyb290IgpleHBvcnQgQ1hYRkxBR1M9IiAtTzIgLXBpcGUgLWcgLWZlbGlt
aW5hdGUtdW51c2VkLWRlYnVnLXR5cGVzIC1mZGVidWctcHJlZml4LW1hcD0vaG9tZS9tYXJ0aW4v
Z29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8x
LjAtcjA9L3Vzci9zcmMvZGVidWcveHNsbGlidGVzdC8xLjAtcjAgLWZkZWJ1Zy1wcmVmaXgtbWFw
PS9ob21lL21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL3dvcmsvYWFyY2g2NC1nb21zcGFjZS1saW51
eC94c2xsaWJ0ZXN0LzEuMC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmU9IC1mZGVidWctcHJlZml4
LW1hcD0vaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2Ut
bGludXgveHNsbGlidGVzdC8xLjAtcjAvcmVjaXBlLXN5c3Jvb3Q9ICAtZnZpc2liaWxpdHktaW5s
aW5lcy1oaWRkZW4gICAtLXN5c3Jvb3Q9L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29y
ay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290
Igp1bnNldCBESVNUUk8KZXhwb3J0IEZDPSJhYXJjaDY0LWdvbXNwYWNlLWxpbnV4LWdmb3J0cmFu
ICAtLXN5c3Jvb3Q9L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdv
bXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290IgpleHBvcnQgSE9N
RT0iL2hvbWUvbWFydGluIgpleHBvcnQgTENfQUxMPSJlbl9VUy5VVEYtOCIKZXhwb3J0IExEPSJh
YXJjaDY0LWdvbXNwYWNlLWxpbnV4LWxkIC0tc3lzcm9vdD0vaG9tZS9tYXJ0aW4vZ29tc3BhY2Vf
c2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAtcjAvcmVj
aXBlLXN5c3Jvb3QgIgpleHBvcnQgTERGTEFHUz0iLVdsLC1PMSAtV2wsLS1oYXNoLXN0eWxlPWdu
dSAtV2wsLS1hcy1uZWVkZWQiCmV4cG9ydCBMT0dOQU1FPSJtYXJ0aW4iCnVuc2V0IE1BQ0hJTkUK
ZXhwb3J0IE1BS0U9Im1ha2UiCmV4cG9ydCBOTT0iYWFyY2g2NC1nb21zcGFjZS1saW51eC1ubSIK
ZXhwb3J0IE9CSkNPUFk9ImFhcmNoNjQtZ29tc3BhY2UtbGludXgtb2JqY29weSIKZXhwb3J0IE9C
SkRVTVA9ImFhcmNoNjQtZ29tc3BhY2UtbGludXgtb2JqZHVtcCIKZXhwb3J0IFBBVEg9Ii9ob21l
L21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL3N5c3Jvb3RzLXVuaW5hdGl2ZS94ODZfNjQtbGludXgv
dXNyL2JpbjovaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL2xheWVycy9wb2t5L3NjcmlwdHM6L2hv
bWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hz
bGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvYmluL2FhcmNoNjQtZ29t
c3BhY2UtbGludXg6L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdv
bXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290L3Vzci9iaW4vY3Jv
c3NzY3JpcHRzOi9ob21lL21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL3dvcmsvYWFyY2g2NC1nb21z
cGFjZS1saW51eC94c2xsaWJ0ZXN0LzEuMC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL3Ni
aW46L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNlLWxp
bnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvYmluOi9ob21l
L21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL3dvcmsvYWFyY2g2NC1nb21zcGFjZS1saW51eC94c2xs
aWJ0ZXN0LzEuMC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvc2JpbjovaG9tZS9tYXJ0aW4vZ29t
c3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAt
cjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL2JpbjovaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL2xh
eWVycy9wb2t5L2JpdGJha2UvYmluOi9ob21lL21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL2hvc3R0
b29scyIKZXhwb3J0IFBLR19DT05GSUdfRElSPSIvaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3Rt
cC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAtcjAvcmVjaXBlLXN5
c3Jvb3QvdXNyL2xpYi9wa2djb25maWciCmV4cG9ydCBQS0dfQ09ORklHX0RJU0FCTEVfVU5JTlNU
QUxMRUQ9InllcyIKZXhwb3J0IFBLR19DT05GSUdfTElCRElSPSIvaG9tZS9tYXJ0aW4vZ29tc3Bh
Y2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAtcjAv
cmVjaXBlLXN5c3Jvb3QvdXNyL2xpYi9wa2djb25maWciCmV4cG9ydCBQS0dfQ09ORklHX1BBVEg9
Ii9ob21lL21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL3dvcmsvYWFyY2g2NC1nb21zcGFjZS1saW51
eC94c2xsaWJ0ZXN0LzEuMC1yMC9yZWNpcGUtc3lzcm9vdC91c3IvbGliL3BrZ2NvbmZpZzovaG9t
ZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNs
bGlidGVzdC8xLjAtcjAvcmVjaXBlLXN5c3Jvb3QvdXNyL3NoYXJlL3BrZ2NvbmZpZyIKZXhwb3J0
IFBLR19DT05GSUdfU1lTUk9PVF9ESVI9Ii9ob21lL21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL3dv
cmsvYWFyY2g2NC1nb21zcGFjZS1saW51eC94c2xsaWJ0ZXN0LzEuMC1yMC9yZWNpcGUtc3lzcm9v
dCIKZXhwb3J0IFBLR19DT05GSUdfU1lTVEVNX0lOQ0xVREVfUEFUSD0iL3Vzci9pbmNsdWRlIgpl
eHBvcnQgUEtHX0NPTkZJR19TWVNURU1fTElCUkFSWV9QQVRIPSIvbGliOi91c3IvbGliIgpleHBv
cnQgUFNFVURPX0RJU0FCTEVEPSIxIgpleHBvcnQgUFNFVURPX1VOTE9BRD0iMSIKZXhwb3J0IFJB
TkxJQj0iYWFyY2g2NC1nb21zcGFjZS1saW51eC1yYW5saWIiCmV4cG9ydCBSRUFERUxGPSJhYXJj
aDY0LWdvbXNwYWNlLWxpbnV4LXJlYWRlbGYiCnVuc2V0IFNIRUxMCmV4cG9ydCBTVFJJTkdTPSJh
YXJjaDY0LWdvbXNwYWNlLWxpbnV4LXN0cmluZ3MiCmV4cG9ydCBTVFJJUD0iYWFyY2g2NC1nb21z
cGFjZS1saW51eC1zdHJpcCIKdW5zZXQgVEFSR0VUX0FSQ0gKZXhwb3J0IFRBUkdFVF9DRkxBR1M9
IiAtTzIgLXBpcGUgLWcgLWZlbGltaW5hdGUtdW51c2VkLWRlYnVnLXR5cGVzIC1mZGVidWctcHJl
Zml4LW1hcD0vaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3Bh
Y2UtbGludXgveHNsbGlidGVzdC8xLjAtcjA9L3Vzci9zcmMvZGVidWcveHNsbGlidGVzdC8xLjAt
cjAgLWZkZWJ1Zy1wcmVmaXgtbWFwPS9ob21lL21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL3dvcmsv
YWFyY2g2NC1nb21zcGFjZS1saW51eC94c2xsaWJ0ZXN0LzEuMC1yMC9yZWNpcGUtc3lzcm9vdC1u
YXRpdmU9IC1mZGVidWctcHJlZml4LW1hcD0vaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93
b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAtcjAvcmVjaXBlLXN5c3Jv
b3Q9ICIKZXhwb3J0IFRBUkdFVF9DUFBGTEFHUz0iIgpleHBvcnQgVEFSR0VUX0NYWEZMQUdTPSIg
LU8yIC1waXBlIC1nIC1mZWxpbWluYXRlLXVudXNlZC1kZWJ1Zy10eXBlcyAtZmRlYnVnLXByZWZp
eC1tYXA9L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNl
LWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwPS91c3Ivc3JjL2RlYnVnL3hzbGxpYnRlc3QvMS4wLXIw
IC1mZGVidWctcHJlZml4LW1hcD0vaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2Fh
cmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0
aXZlPSAtZmRlYnVnLXByZWZpeC1tYXA9L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29y
ay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3JlY2lwZS1zeXNyb290
PSAiCmV4cG9ydCBUQVJHRVRfTERGTEFHUz0iLVdsLC1PMSAtV2wsLS1oYXNoLXN0eWxlPWdudSAt
V2wsLS1hcy1uZWVkZWQiCmV4cG9ydCBURVJNPSJzY3JlZW4tMjU2Y29sb3IiCmV4cG9ydCBVU0VS
PSJtYXJ0aW4iCmV4cG9ydCBiYXNlX2JpbmRpcj0iL2JpbiIKZXhwb3J0IGJhc2VfbGliZGlyPSIv
bGliIgpleHBvcnQgYmFzZV9wcmVmaXg9IiIKZXhwb3J0IGJhc2Vfc2JpbmRpcj0iL3NiaW4iCmV4
cG9ydCBiaW5kaXI9Ii91c3IvYmluIgpleHBvcnQgZGF0YWRpcj0iL3Vzci9zaGFyZSIKZXhwb3J0
IGRvY2Rpcj0iL3Vzci9zaGFyZS9kb2MiCmV4cG9ydCBleGVjX3ByZWZpeD0iL3VzciIKZXhwb3J0
IGluY2x1ZGVkaXI9Ii91c3IvaW5jbHVkZSIKZXhwb3J0IGluZm9kaXI9Ii91c3Ivc2hhcmUvaW5m
byIKZXhwb3J0IGxpYmRpcj0iL3Vzci9saWIiCmV4cG9ydCBsaWJleGVjZGlyPSIvdXNyL2xpYmV4
ZWMiCmV4cG9ydCBsb2NhbHN0YXRlZGlyPSIvdmFyIgpleHBvcnQgbWFuZGlyPSIvdXNyL3NoYXJl
L21hbiIKZXhwb3J0IG5vbmFyY2hfYmFzZV9saWJkaXI9Ii9saWIiCmV4cG9ydCBub25hcmNoX2xp
YmRpcj0iL3Vzci9saWIiCmV4cG9ydCBvbGRpbmNsdWRlZGlyPSIvdXNyL2luY2x1ZGUiCmV4cG9y
dCBwcmVmaXg9Ii91c3IiCmV4cG9ydCBzYmluZGlyPSIvdXNyL3NiaW4iCmV4cG9ydCBzZXJ2aWNl
ZGlyPSIvc3J2IgpleHBvcnQgc2hhcmVkc3RhdGVkaXI9Ii9jb20iCmV4cG9ydCBzeXNjb25mZGly
PSIvZXRjIgpleHBvcnQgc3lzdGVtZF9zeXN0ZW1fdW5pdGRpcj0iL2xpYi9zeXN0ZW1kL3N5c3Rl
bSIKZXhwb3J0IHN5c3RlbWRfdW5pdGRpcj0iL2xpYi9zeXN0ZW1kIgpleHBvcnQgc3lzdGVtZF91
c2VyX3VuaXRkaXI9Ii91c3IvbGliL3N5c3RlbWQvdXNlciIKCmRvX2NvbmZpZ3VyZSgpIHsKICAg
IGNtYWtlX2RvX2NvbmZpZ3VyZQp9CgpjbWFrZV9kb19jb25maWd1cmUoKSB7CglpZiBbICIke09F
Q01BS0VfQlVJTERQQVRIfSIgXTsgdGhlbgoJCWJibm90ZSAiY21ha2UuYmJjbGFzcyBubyBsb25n
ZXIgdXNlcyBPRUNNQUtFX0JVSUxEUEFUSC4gIFRoZSBkZWZhdWx0IGJlaGF2aW91ciBpcyBub3cg
b3V0LW9mLXRyZWUgYnVpbGRzIHdpdGggQj1XT1JLRElSL2J1aWxkLiIKCWZpCgoJaWYgWyAiL2hv
bWUvbWFydGluL3dvcmsveHNsbGlidGVzdCIgIT0gIi9ob21lL21hcnRpbi9nb21zcGFjZV9zZGsv
dG1wL3dvcmsvYWFyY2g2NC1nb21zcGFjZS1saW51eC94c2xsaWJ0ZXN0LzEuMC1yMC94c2xsaWJ0
ZXN0LTEuMC8iIF07IHRoZW4KCQlybSAtcmYgL2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAv
d29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3hzbGxpYnRlc3Qt
MS4wLwoJCW1rZGlyIC1wIC9ob21lL21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL3dvcmsvYWFyY2g2
NC1nb21zcGFjZS1saW51eC94c2xsaWJ0ZXN0LzEuMC1yMC94c2xsaWJ0ZXN0LTEuMC8KCQljZCAv
aG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgv
eHNsbGlidGVzdC8xLjAtcjAveHNsbGlidGVzdC0xLjAvCgllbHNlCgkJZmluZCAvaG9tZS9tYXJ0
aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29tc3BhY2UtbGludXgveHNsbGlidGVz
dC8xLjAtcjAveHNsbGlidGVzdC0xLjAvIC1uYW1lIENNYWtlRmlsZXMgLW9yIC1uYW1lIE1ha2Vm
aWxlIC1vciAtbmFtZSBjbWFrZV9pbnN0YWxsLmNtYWtlIC1vciAtbmFtZSBDTWFrZUNhY2hlLnR4
dCAtZGVsZXRlCglmaQoKCSMgSnVzdCBsaWtlIGF1dG90b29scyBjbWFrZSBjYW4gdXNlIGEgc2l0
ZSBmaWxlIHRvIGNhY2hlIHJlc3VsdCB0aGF0IG5lZWQgZ2VuZXJhdGVkIGJpbmFyaWVzIHRvIHJ1
bgoJaWYgWyAtZSAvaG9tZS9tYXJ0aW4vZ29tc3BhY2Vfc2RrL3RtcC93b3JrL2FhcmNoNjQtZ29t
c3BhY2UtbGludXgveHNsbGlidGVzdC8xLjAtcjAvc2l0ZS1maWxlLmNtYWtlIF0gOyB0aGVuCgkJ
b2VjbWFrZV9zaXRlZmlsZT0iLUMgL2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9h
YXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3NpdGUtZmlsZS5jbWFrZSIK
CWVsc2UKCQlvZWNtYWtlX3NpdGVmaWxlPQoJZmkKCgljbWFrZSBcCgkgICRvZWNtYWtlX3NpdGVm
aWxlIFwKCSAgL2hvbWUvbWFydGluL3dvcmsveHNsbGlidGVzdCBcCgkgIC1EQ01BS0VfSU5TVEFM
TF9QUkVGSVg6UEFUSD0vdXNyIFwKCSAgLURDTUFLRV9JTlNUQUxMX0JJTkRJUjpQQVRIPWJpbiBc
CgkgIC1EQ01BS0VfSU5TVEFMTF9TQklORElSOlBBVEg9c2JpbiBcCgkgIC1EQ01BS0VfSU5TVEFM
TF9MSUJFWEVDRElSOlBBVEg9bGliZXhlYyBcCgkgIC1EQ01BS0VfSU5TVEFMTF9TWVNDT05GRElS
OlBBVEg9L2V0YyBcCgkgIC1EQ01BS0VfSU5TVEFMTF9TSEFSRURTVEFURURJUjpQQVRIPS4uL2Nv
bSBcCgkgIC1EQ01BS0VfSU5TVEFMTF9MT0NBTFNUQVRFRElSOlBBVEg9L3ZhciBcCgkgIC1EQ01B
S0VfSU5TVEFMTF9MSUJESVI6UEFUSD1saWIgXAoJICAtRENNQUtFX0lOU1RBTExfSU5DTFVERURJ
UjpQQVRIPWluY2x1ZGUgXAoJICAtRENNQUtFX0lOU1RBTExfREFUQVJPT1RESVI6UEFUSD1zaGFy
ZSBcCgkgIC1EQ01BS0VfSU5TVEFMTF9TT19OT19FWEU9MCBcCgkgIC1EQ01BS0VfVE9PTENIQUlO
X0ZJTEU9L2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAvd29yay9hYXJjaDY0LWdvbXNwYWNl
LWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3Rvb2xjaGFpbi5jbWFrZSBcCgkgIC1EQ01BS0VfVkVS
Qk9TRV9NQUtFRklMRT0xIFwKCSAgLURDTUFLRV9OT19TWVNURU1fRlJPTV9JTVBPUlRFRD0xIFwK
CSAgICR7UEFDS0FHRUNPTkZJR19DT05GQVJHU30gXAoJICAtV25vLWRldgp9CgpiYm5vdGUoKSB7
CglpZiBbIC1wIC9ob21lL21hcnRpbi9nb21zcGFjZV9zZGsvdG1wL3dvcmsvYWFyY2g2NC1nb21z
cGFjZS1saW51eC94c2xsaWJ0ZXN0LzEuMC1yMC90ZW1wL2ZpZm8uMTY4MjMgXSA7IHRoZW4KCQlw
cmludGYgIiViXDAiICJiYm5vdGUgJCoiID4gL2hvbWUvbWFydGluL2dvbXNwYWNlX3Nkay90bXAv
d29yay9hYXJjaDY0LWdvbXNwYWNlLWxpbnV4L3hzbGxpYnRlc3QvMS4wLXIwL3RlbXAvZmlmby4x
NjgyMwoJZWxzZQoJCWVjaG8gIk5PVEU6ICQqIgoJZmkKfQoKY2QgJy9ob21lL21hcnRpbi9nb21z
cGFjZV9zZGsvdG1wL3dvcmsvYWFyY2g2NC1nb21zcGFjZS1saW51eC94c2xsaWJ0ZXN0LzEuMC1y
MC94c2xsaWJ0ZXN0LTEuMC8nCmRvX2NvbmZpZ3VyZQoKIyBjbGVhbnVwCnJldD0kPwp0cmFwICcn
IDAKZXhpdCAkcmV0Cg==

--_005_HE1PR0402MB33238D94BBF5ADBFE8914634C4F60HE1PR0402MB3323_--
