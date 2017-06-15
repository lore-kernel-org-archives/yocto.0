Return-Path: <lm.chew@free2move.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5A65E00B8F; Thu, 15 Jun 2017 02:51:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.65 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3555 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 Jun 2017 02:50:59 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0065.outbound.protection.outlook.com [104.47.2.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6FF7E00B77
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 02:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=free2moveholding.onmicrosoft.com; s=selector1-free2move-se;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=LhZWvF7hIiQhr67RCaLPrWeK5V8w1Ne+nmQNghrKyVE=;
	b=h4SamYNhj9/oNZUHTJ+9xPA97sdQ++u6mt8WilzMppv41zfzrt6RZDys+Mz8Y2GgLTi7fBu/Ye9ebzkQa0xICHtOZqOpvEyoE5GXhxw1toxO0dWhmd38rC9gZpsunH5EK4ha53oDiwkHOf38rq3gcqUvH6AyMW6jL8sDw3YFhqs=
Received: from HE1PR0101MB1609.eurprd01.prod.exchangelabs.com (10.166.118.143)
	by HE1PR0101MB1611.eurprd01.prod.exchangelabs.com (10.166.118.145)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1157.12;
	Thu, 15 Jun 2017 07:19:18 +0000
Received: from HE1PR0101MB1609.eurprd01.prod.exchangelabs.com
	([fe80::c518:b688:cc35:d08b]) by
	HE1PR0101MB1609.eurprd01.prod.exchangelabs.com
	([fe80::c518:b688:cc35:d08b%14]) with mapi id 15.01.1157.021;
	Thu, 15 Jun 2017 07:19:18 +0000
From: Lm Chew <lm.chew@free2move.se>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Failed to build gdb
Thread-Index: AQHS5ad6OzQBoNl9E0egwpiWdjBn7A==
Date: Thu, 15 Jun 2017 07:19:18 +0000
Message-ID: <HE1PR0101MB16096D927B28B01A891DDBABC3C00@HE1PR0101MB1609.eurprd01.prod.exchangelabs.com>
Accept-Language: en-MY, en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: free2move.se; dkim=none (message not signed)
	header.d=none; free2move.se;
	dmarc=none action=none header.from=free2move.se; 
x-originating-ip: [2a01:111:e400:7a2e:cafe::70]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1PR0101MB1611;
	7:hfF4R1hEwpK/rlKtaRttEOPCl2mQ9kcnmFIMmshWVdBRhxGtV6At3psnfYb58vUICH+ArHs5j0+WfQr1HAYTnf7ElJR6+0wX3DcDH3UEjZmsJ7q5Xduslh58lIl0oGYGR9cvWCwJ44AIjcKbsEtFgrWTahZzFlc51etbiS03fOKrp9cP7WC4DLHzGEDDV3eloa0fGhmCjSAdqKHsIiQfyI3bG4QZRjtUYvypTwdtiHQQD5oHG70/Vm2MTYtpdxIxC1gXxLt+jj248oh8qVIKKxGCXzH1zqWbtmrnx+RiQSRtOIuMCjuAGtE4AukVYoIFFYY071V6W3PNvLWf6lpLcg==
x-ms-traffictypediagnostic: HE1PR0101MB1611:
x-ms-office365-filtering-correlation-id: 196ac20e-e424-43c4-fde2-08d4b3bed61a
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(201703131423075);
	SRVR:HE1PR0101MB1611; 
x-microsoft-antispam-prvs: <HE1PR0101MB161178BDC509B41119D28DF6C3C00@HE1PR0101MB1611.eurprd01.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(8121501046)(5005006)(93006095)(93001095)(3002001)(100000703101)(100105400095)(10201501046)(6041248)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123562025)(20161123560025)(2016111802025)(20161123558100)(20161123555025)(20161123564025)(6072148)(6043046)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:HE1PR0101MB1611; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HE1PR0101MB1611; 
x-forefront-prvs: 0339F89554
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39830400002)(39410400002)(39450400003)(39400400002)(2906002)(74482002)(5640700003)(54356999)(3480700004)(50986999)(25786009)(6436002)(189998001)(6116002)(102836003)(2351001)(7736002)(19627405001)(74316002)(5250100002)(14454004)(3280700002)(4326008)(3660700001)(86362001)(5660300001)(7696004)(110136004)(38730400002)(2900100001)(33656002)(8936002)(6606003)(9686003)(54896002)(53946003)(53936002)(478600001)(6916009)(2501003)(81166006)(8676002)(6506006)(1730700003)(55016002)(99286003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0101MB1611;
	H:HE1PR0101MB1609.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: free2move.se
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2017 07:19:18.0364 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8e7c9a07-0b12-4786-9e6b-9e1f7e817f55
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0101MB1611
Subject: Failed to build gdb
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
X-List-Received-Date: Thu, 15 Jun 2017 09:51:05 -0000
Content-Language: en-MY
Content-Type: multipart/alternative;
	boundary="_000_HE1PR0101MB16096D927B28B01A891DDBABC3C00HE1PR0101MB1609_"

--_000_HE1PR0101MB16096D927B28B01A891DDBABC3C00HE1PR0101MB1609_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


I am running on the latest poky branch, targeting raspberry pi.


I have added the following line to the local.config to remove any package w=
ith license newer than GPLv2, with exception the gdb for development purpos=
e:

INCOMPATIBLE_LICENSE =3D "GPLv3 LGPLv3 AGPL-3.0"
INCOMPATIBLE_LICENSE_pn-gdb =3D ""


When i run the following command to build gdb I get the error shown below.

$ bitbake gdb


How can i resolve this issue?


Best Regards,

Chew


ERROR: gdb-7.12.1-r0 do_compile: oe_runmake failed
ERROR: gdb-7.12.1-r0 do_compile: Function failed: do_compile (log file is l=
ocated at /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebe=
s-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-=
r0/temp/log.do_compile.11637)
ERROR: Logfile of failure stored in: /media/chewlm86/ext_data_drive/yocto-c=
elebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-pok=
y-linux-gnueabi/gdb/7.12.1-r0/temp/log.do_compile.11637
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32', 'co=
mmon-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Executing shell function do_compile
| NOTE: make -j 8 SUBDIRS=3Dintl mmalloc libiberty opcodes bfd sim gdb etc =
utils
| make[1]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi'
| make[1]: Nothing to be done for 'all-target'.
| make[2]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/intl'
| make[2]: Nothing to be done for 'all'.
| make[2]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/intl'
| make[2]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/libiberty'
| make[2]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/etc'
| make[2]: Nothing to be done for 'all'.
| make[2]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/etc'
| make[2]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/readline'
| make[2]: Nothing to be done for 'all'.
| make[2]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/readline'
| make[3]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/libiberty/testsuite'
| make[3]: Nothing to be done for 'all'.
| make[3]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/libiberty/testsuite'
| make[2]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/libiberty'
| make[2]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/zlib'
| true "AR_FLAGS=3Drc" "CC_FOR_BUILD=3Dgcc " "CFLAGS=3D-O2 -pipe -g -felimi=
nate-unused-debug-types -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive=
/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf=
-vfp-poky-linux-gnueabi/gdb/7.12.1-r0=3D/usr/src/debug/gdb/7.12.1-r0 -fdebu=
g-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-c=
elebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.=
12.1-r0/recipe-sysroot-native=3D -fdebug-prefix-map=3D/media/chewlm86/ext_d=
ata_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1=
176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot=3D " "CXXFLAG=
S=3D-O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/media=
/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c=
4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0=3D/usr/src/de=
bug/gdb/7.12.1-r0 -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto=
-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-p=
oky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot-native=3D -fdebug-prefix-map=
=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/reci=
pe-sysroot=3D  -fvisibility-inlines-hidden" "CFLAGS_FOR_BUILD=3D-isystem/me=
dia/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm=
1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sys=
root-native/usr/include -O2 -pipe" "CFLAGS_FOR_TARGET=3D-O2 -pipe -g -felim=
inate-unused-debug-types -fdebug-prefix-map=3D/media/chewlm86/ext_data_driv=
e/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfsh=
f-vfp-poky-linux-gnueabi/gdb/7.12.1-r0=3D/usr/src/debug/gdb/7.12.1-r0 -fdeb=
ug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-=
celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7=
.12.1-r0/recipe-sysroot-native=3D -fdebug-prefix-map=3D/media/chewlm86/ext_=
data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm=
1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot=3D " "INSTAL=
L=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/b=
uild-cm1-c4/tmp/hosttools/install -c" "INSTALL_DATA=3D/media/chewlm86/ext_d=
ata_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/hosttools=
/install -c -m 644" "INSTALL_PROGRAM=3D/media/chewlm86/ext_data_drive/yocto=
-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/hosttools/install -c" "I=
NSTALL_SCRIPT=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-=
celebes-c4/build-cm1-c4/tmp/hosttools/install -c" "LDFLAGS=3D-static-libstd=
c++ -static-libgcc -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed" "LIBCFLA=
GS=3D-O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/medi=
a/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-=
c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0=3D/usr/src/d=
ebug/gdb/7.12.1-r0 -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yoct=
o-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-=
poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot-native=3D -fdebug-prefix-ma=
p=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/b=
uild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/rec=
ipe-sysroot=3D " "LIBCFLAGS_FOR_TARGET=3D-O2 -pipe -g -feliminate-unused-de=
bug-types -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0=3D/usr/src/debug/gdb/7.12.1-r0 -fdebug-prefix-map=
=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/reci=
pe-sysroot-native=3D -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yo=
cto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vf=
p-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot=3D " "MAKE=3Dmake" "MAKEI=
NFO=3Dmakeinfo --split-size=3D5000000 --split-size=3D5000000 " "PICFLAG=3D"=
 "PICFLAG_FOR_TARGET=3D" "SHELL=3D/bin/bash" "EXPECT=3Dexpect" "RUNTEST=3Dr=
untest" "RUNTESTFLAGS=3D" "exec_prefix=3D/usr" "infodir=3D/usr/share/info" =
"libdir=3D/usr/lib" "prefix=3D/usr" "tooldir=3D/usr/arm-poky-linux-gnueabi"=
 "AR=3Darm-poky-linux-gnueabi-ar" "AS=3Darm-poky-linux-gnueabi-as " "CC=3Da=
rm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mfpu=3Dvfp  -mfloat-abi=3Dhard -=
mtune=3Darm1176jzf-s -mfpu=3Dvfp --sysroot=3D/media/chewlm86/ext_data_drive=
/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf=
-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot" "CXX=3Darm-poky-linux=
-gnueabi-g++  -march=3Darmv6 -mfpu=3Dvfp  -mfloat-abi=3Dhard -mtune=3Darm11=
76jzf-s -mfpu=3Dvfp --sysroot=3D/media/chewlm86/ext_data_drive/yocto-celebe=
s-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-lin=
ux-gnueabi/gdb/7.12.1-r0/recipe-sysroot" "LD=3Darm-poky-linux-gnueabi-ld --=
sysroot=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebe=
s-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-=
r0/recipe-sysroot " "LIBCFLAGS=3D-O2 -pipe -g -feliminate-unused-debug-type=
s -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test=
/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueab=
i/gdb/7.12.1-r0=3D/usr/src/debug/gdb/7.12.1-r0 -fdebug-prefix-map=3D/media/=
chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4=
/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot=
-native=3D -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebe=
s-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-lin=
ux-gnueabi/gdb/7.12.1-r0/recipe-sysroot=3D " "NM=3Darm-poky-linux-gnueabi-n=
m" "PICFLAG=3D" "RANLIB=3Darm-poky-linux-gnueabi-ranlib" "DESTDIR=3D" DO=3D=
all multi-do # make
| make[2]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/zlib'
| make[2]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'
| Making info in doc
| make[3]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/doc'
| make[2]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/libdecnumber'
| make[2]: Nothing to be done for 'all'.
| make[2]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/libdecnumber'
| make[3]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/doc'
| Making info in po
| make[3]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/po'
| make[3]: Nothing to be done for 'info'.
| make[3]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/po'
| make[3]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'
| make[3]: Nothing to be done for 'info-am'.
| make[3]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'
| make  all-recursive
| make[3]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'
| Making all in doc
| make[4]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/doc'
| make[4]: Nothing to be done for 'all'.
| make[4]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/doc'
| Making all in po
| make[4]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/po'
| make[4]: Nothing to be done for 'all'.
| make[4]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/po'
| make[4]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'
| make[4]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'
| make[3]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'
| make[2]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'
| make[2]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes'
| make  all-recursive
| make[3]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes'
| Making all in .
| make[4]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes'
| make[4]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes'
| Making all in po
| make[4]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes/po'
| make[4]: Nothing to be done for 'all'.
| make[4]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes/po'
| make[3]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes'
| make[2]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes'
| make[2]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb'
| CONFIG_HEADERS=3Dconfig.h:config.in \
|   CONFIG_COMMANDS=3D"default depdir" \
|   CONFIG_FILES=3D \
|   CONFIG_LINKS=3D \
|   /bin/bash config.status
| config.status: creating config.h
| config.status: config.h is unchanged
| config.status: executing default commands
| config.status: executing depdir commands
| make[3]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb'
| make[4]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib'
| make[5]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib'
| make[6]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib/impor=
t'
| make  all-recursive
| make[7]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib/impor=
t'
| make[8]: Entering directory '/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib/impor=
t'
| make[8]: Nothing to be done for 'all-am'.
| make[8]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib/import=
'
| make[7]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib/import=
'
| ERROR: oe_runmake failed
| make[6]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib/import=
'
| make[5]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib'
| make[4]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib'
| make[3]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb'
| rm -f gdb
| arm-poky-linux-gnueabi-g++  -march=3Darmv6 -mfpu=3Dvfp  -mfloat-abi=3Dhar=
d -mtune=3Darm1176jzf-s -mfpu=3Dvfp --sysroot=3D/media/chewlm86/ext_data_dr=
ive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzf=
shf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot -O2 -pipe -g -felim=
inate-unused-debug-types -fdebug-prefix-map=3D/media/chewlm86/ext_data_driv=
e/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfsh=
f-vfp-poky-linux-gnueabi/gdb/7.12.1-r0=3D/usr/src/debug/gdb/7.12.1-r0 -fdeb=
ug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-=
celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7=
.12.1-r0/recipe-sysroot-native=3D -fdebug-prefix-map=3D/media/chewlm86/ext_=
data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm=
1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot=3D  -fvisibi=
lity-inlines-hidden   -static-libstdc++ -static-libgcc -Wl,-O1 -Wl,--hash-s=
tyle=3Dgnu -Wl,--as-needed   \
| -o gdb gdb.o arm.o arm-linux.o arm-get-next-pcs.o arm-tdep.o arm-linux-td=
ep.o glibc-tdep.o solib-svr4.o symfile-mem.o linux-tdep.o linux-record.o se=
r-base.o ser-unix.o ser-pipe.o ser-tcp.o inf-ptrace.o fork-child.o arm-linu=
x-nat.o aarch32-linux-nat.o proc-service.o linux-thread-db.o linux-nat.o li=
nux-osdata.o linux-fork.o linux-procfs.o linux-ptrace.o linux-waitpid.o lin=
ux-personality.o linux-namespaces.o remote.o dcache.o tracepoint.o ax-gener=
al.o ax-gdb.o remote-fileio.o remote-notif.o ctf.o tracefile.o tracefile-tf=
ile.o  cli-dump.o cli-decode.o cli-script.o cli-cmds.o cli-setshow.o cli-lo=
gging.o cli-interp.o cli-utils.o mi-out.o mi-console.o mi-cmds.o mi-cmd-cat=
ch.o mi-cmd-env.o mi-cmd-var.o mi-cmd-break.o mi-cmd-stack.o mi-cmd-file.o =
mi-cmd-disas.o mi-symbol-cmds.o mi-cmd-target.o mi-cmd-info.o mi-interp.o m=
i-main.o mi-parse.o mi-getopt.o python.o guile.o elfread.o stap-probe.o dtr=
ace-probe.o posix-hdep.o posix-strerror.o c-exp.o cp-name-parser.o ada-exp.=
o jv-exp.o d-exp.o f-exp.o go-exp.o m2-exp.o p-exp.o rust-exp.o version.o a=
nnotate.o addrmap.o auto-load.o auxv.o agent.o bfd-target.o blockframe.o br=
eakpoint.o break-catch-sig.o break-catch-throw.o break-catch-syscall.o find=
var.o regcache.o cleanups.o charset.o continuations.o corelow.o disasm.o du=
mmy-frame.o dfp.o source.o value.o eval.o valops.o valarith.o valprint.o pr=
intcmd.o block.o symtab.o psymtab.o symfile.o symfile-debug.o symmisc.o lin=
espec.o dictionary.o namespace.o location.o infcall.o infcmd.o infrun.o exp=
print.o environ.o stack.o tid-parse.o thread.o thread-fsm.o exceptions.o ex=
tension.o filesystem.o filestuff.o inf-child.o interps.o minidebug.o main.o=
 macrotab.o macrocmd.o macroexp.o macroscope.o mi-common.o event-loop.o eve=
nt-top.o inf-loop.o completer.o gdbarch.o arch-utils.o gdbtypes.o gdb_bfd.o=
 gdb_obstack.o osabi.o copying.o memattr.o mem-break.o target.o target-dcac=
he.o parse.o language.o build-id.o buildsym.o findcmd.o std-regs.o signals-=
state-save-restore.o signals.o exec.o reverse.o bcache.o objfiles.o observe=
r.o minsyms.o maint.o demangle.o dbxread.o coffread.o coff-pe-read.o dwarf2=
read.o mipsread.o stabsread.o corefile.o dwarf2expr.o dwarf2loc.o dwarf2-fr=
ame.o dwarf2-frame-tailcall.o ada-lang.o c-lang.o d-lang.o f-lang.o objc-la=
ng.o ada-tasks.o ada-varobj.o c-varobj.o ui-out.o cli-out.o varobj.o vec.o =
go-lang.o go-valprint.o go-typeprint.o jv-lang.o jv-valprint.o jv-typeprint=
.o jv-varobj.o m2-lang.o opencl-lang.o p-lang.o p-typeprint.o p-valprint.o =
selftest.o sentinel-frame.o complaints.o typeprint.o ada-typeprint.o c-type=
print.o f-typeprint.o m2-typeprint.o ada-valprint.o c-valprint.o cp-valprin=
t.o d-valprint.o f-valprint.o m2-valprint.o ser-event.o serial.o mdebugread=
.o top.o utils.o ui-file.o user-regs.o frame.o frame-unwind.o doublest.o fr=
ame-base.o inline-frame.o gnu-v2-abi.o gnu-v3-abi.o cp-abi.o cp-support.o c=
p-namespace.o d-namespace.o reggroups.o rust-lang.o trad-frame.o tramp-fram=
e.o solib.o solib-target.o prologue-value.o memory-map.o memrange.o xml-sup=
port.o xml-syscall.o xml-utils.o target-descriptions.o target-memory.o xml-=
tdesc.o xml-builtin.o inferior.o osdata.o gdb_usleep.o record.o record-full=
.o gcore.o gdb_vecs.o jit.o progspace.o skip.o probe.o common-utils.o buffe=
r.o ptid.o gdb-dlfcn.o common-agent.o format.o registry.o btrace.o record-b=
trace.o waitstatus.o print-utils.o rsp-low.o errors.o common-debug.o debug.=
o common-exceptions.o btrace-common.o fileio.o common-regcache.o compile.o =
compile-c-symbols.o compile-c-types.o compile-object-load.o compile-object-=
run.o compile-loc2c.o compile-c-support.o inflow.o    init.o \
|   -lreadline ../opcodes/libopcodes.a ../bfd/libbfd.a -L./../zlib -lz  ../=
libiberty/libiberty.a ../libdecnumber/libdecnumber.a    -ldl -ldl -lncurses=
 -lm -ldl -lexpat    ../libiberty/libiberty.a  build-gnulib/import/libgnu.a=
  -ldl -Wl,--dynamic-list=3D../../gdb-7.12.1/gdb/proc-service.list
| completer.o: In function `gdb_display_match_list_1':
| /usr/src/debug/gdb/7.12.1-r0/gdb-7.12.1/gdb/completer.c:1862: undefined r=
eference to `_rl_completion_prefix_display_length'
| /usr/src/debug/gdb/7.12.1-r0/gdb-7.12.1/gdb/completer.c:1862: undefined r=
eference to `rl_sort_completion_matches'
| collect2: error: ld returned 1 exit status
| Makefile:1418: recipe for target 'gdb' failed
| make[2]: *** [gdb] Error 1
| make[2]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb'
| Makefile:8827: recipe for target 'all-gdb' failed
| make[1]: *** [all-gdb] Error 2
| make[1]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi'
| Makefile:850: recipe for target 'all' failed
| make: *** [all] Error 2
| ERROR: Function failed: do_compile (log file is located at /media/chewlm8=
6/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/wo=
rk/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/temp/log.do_compile.1=
1637)
ERROR: Task (/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-cel=
ebes-c4/meta/recipes-devtools/gdb/gdb_7.12.1.bb:do_compile) failed with exi=
t code '1'
NOTE: Tasks Summary: Attempted 933 tasks of which 932 didn't need to be rer=
un and 1 failed.

Summary: 1 task failed:
  /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/met=
a/recipes-devtools/gdb/gdb_7.12.1.bb:do_compile
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.




--_000_HE1PR0101MB16096D927B28B01A891DDBABC3C00HE1PR0101MB1609_
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
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p><span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, =
&quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, seri=
f, EmojiFont; font-size: 13.3333px;">Hi,</span></p>
<p><span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, =
&quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, seri=
f, EmojiFont; font-size: 13.3333px;"><br>
</span></p>
<p><span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, =
&quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, seri=
f, EmojiFont; font-size: 13.3333px;">I am running on the latest poky branch=
, targeting raspberry pi.</span></p>
<p><span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, =
&quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, seri=
f, EmojiFont; font-size: 13.3333px;"><br>
</span></p>
<p><span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, =
&quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, seri=
f, EmojiFont; font-size: 13.3333px;">I have added the following line to the=
 local.config to remove any package with license newer
 than GPLv2, with exception the gdb for development purpose:</span></p>
<p><span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, =
&quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, seri=
f, EmojiFont; font-size: 13.3333px;"></p>
<div>INCOMPATIBLE_LICENSE =3D &quot;GPLv3 LGPLv3 AGPL-3.0&quot;</div>
<div>INCOMPATIBLE_LICENSE_pn-gdb =3D &quot;&quot;</div>
</span>
<p></p>
<p><span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, =
&quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, seri=
f, EmojiFont; font-size: 13.3333px;"><br>
</span></p>
<p><span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, =
&quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, seri=
f, EmojiFont; font-size: 13.3333px;">When i run the following command to bu=
ild gdb I get the error shown below.</span></p>
<p><span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, =
&quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, seri=
f, EmojiFont; font-size: 13.3333px;"><span>$&nbsp;bitbake gdb</span><br>
</span></p>
<p><span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, =
&quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, seri=
f, EmojiFont; font-size: 13.3333px;"><br>
</span></p>
<p><span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, =
&quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, seri=
f, EmojiFont; font-size: 13.3333px;">How can i resolve this issue?</span></=
p>
<p><span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, =
&quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, seri=
f, EmojiFont; font-size: 13.3333px;"><br>
</span></p>
<p><span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, =
&quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, seri=
f, EmojiFont; font-size: 13.3333px;">Best Regards,</span></p>
<p><span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, =
&quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, seri=
f, EmojiFont; font-size: 13.3333px;">Chew</span></p>
<p><span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, =
&quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, seri=
f, EmojiFont; font-size: 13.3333px;"><br>
</span></p>
<p><span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, =
&quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, seri=
f, EmojiFont; font-size: 13.3333px;"></p>
<div>ERROR: gdb-7.12.1-r0 do_compile: oe_runmake failed</div>
<div>ERROR: gdb-7.12.1-r0 do_compile: Function failed: do_compile (log file=
 is located at /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-c=
elebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.=
12.1-r0/temp/log.do_compile.11637)</div>
<div>ERROR: Logfile of failure stored in: /media/chewlm86/ext_data_drive/yo=
cto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vf=
p-poky-linux-gnueabi/gdb/7.12.1-r0/temp/log.do_compile.11637</div>
<div>Log data follows:</div>
<div>| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32'=
, 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common=
']</div>
<div>| DEBUG: Executing shell function do_compile</div>
<div>| NOTE: make -j 8 SUBDIRS=3Dintl mmalloc libiberty opcodes bfd sim gdb=
 etc utils</div>
<div>| make[1]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi'</div>
<div>| make[1]: Nothing to be done for 'all-target'.</div>
<div>| make[2]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/intl'</div>
<div>| make[2]: Nothing to be done for 'all'.</div>
<div>| make[2]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/intl'</div>
<div>| make[2]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/libiberty'</div>
<div>| make[2]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/etc'</div>
<div>| make[2]: Nothing to be done for 'all'.</div>
<div>| make[2]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/etc'</div>
<div>| make[2]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/readline'</div>
<div>| make[2]: Nothing to be done for 'all'.</div>
<div>| make[2]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/readline'</div>
<div>| make[3]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/libiberty/testsui=
te'</div>
<div>| make[3]: Nothing to be done for 'all'.</div>
<div>| make[3]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/libiberty/testsuit=
e'</div>
<div>| make[2]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/libiberty'</div>
<div>| make[2]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/zlib'</div>
<div>| true &quot;AR_FLAGS=3Drc&quot; &quot;CC_FOR_BUILD=3Dgcc &quot; &quot=
;CFLAGS=3D-O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D=
/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build=
-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0=3D/usr/=
src/debug/gdb/7.12.1-r0
 -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/=
yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi=
/gdb/7.12.1-r0/recipe-sysroot-native=3D -fdebug-prefix-map=3D/media/chewlm8=
6/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/wo=
rk/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot=3D
 &quot; &quot;CXXFLAGS=3D-O2 -pipe -g -feliminate-unused-debug-types -fdebu=
g-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-c=
elebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.=
12.1-r0=3D/usr/src/debug/gdb/7.12.1-r0 -fdebug-prefix-map=3D/media/chewlm86=
/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/wor=
k/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot-native=
=3D
 -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/=
yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi=
/gdb/7.12.1-r0/recipe-sysroot=3D &nbsp;-fvisibility-inlines-hidden&quot; &q=
uot;CFLAGS_FOR_BUILD=3D-isystem/media/chewlm86/ext_data_drive/yocto-celebes=
-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gdb/7.12.1-r0/recipe-sysroot-native/usr/include
 -O2 -pipe&quot; &quot;CFLAGS_FOR_TARGET=3D-O2 -pipe -g -feliminate-unused-=
debug-types -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celeb=
es-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-li=
nux-gnueabi/gdb/7.12.1-r0=3D/usr/src/debug/gdb/7.12.1-r0
 -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/=
yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi=
/gdb/7.12.1-r0/recipe-sysroot-native=3D -fdebug-prefix-map=3D/media/chewlm8=
6/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/wo=
rk/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot=3D
 &quot; &quot;INSTALL=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/tes=
t/yocto-celebes-c4/build-cm1-c4/tmp/hosttools/install -c&quot; &quot;INSTAL=
L_DATA=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes=
-c4/build-cm1-c4/tmp/hosttools/install -c -m 644&quot; &quot;INSTALL_PROGRA=
M=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/b=
uild-cm1-c4/tmp/hosttools/install
 -c&quot; &quot;INSTALL_SCRIPT=3D/media/chewlm86/ext_data_drive/yocto-celeb=
es-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/hosttools/install -c&quot; &qu=
ot;LDFLAGS=3D-static-libstdc&#43;&#43; -static-libgcc -Wl,-O1 -Wl,--hash-st=
yle=3Dgnu -Wl,--as-needed&quot; &quot;LIBCFLAGS=3D-O2 -pipe -g -feliminate-=
unused-debug-types
 -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/=
yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi=
/gdb/7.12.1-r0=3D/usr/src/debug/gdb/7.12.1-r0 -fdebug-prefix-map=3D/media/c=
hewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/=
tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot-=
native=3D
 -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/=
yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi=
/gdb/7.12.1-r0/recipe-sysroot=3D &quot; &quot;LIBCFLAGS_FOR_TARGET=3D-O2 -p=
ipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/media/chewlm86/=
ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work=
/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0=3D/usr/src/debug/gdb/7.=
12.1-r0
 -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/=
yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi=
/gdb/7.12.1-r0/recipe-sysroot-native=3D -fdebug-prefix-map=3D/media/chewlm8=
6/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/wo=
rk/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot=3D
 &quot; &quot;MAKE=3Dmake&quot; &quot;MAKEINFO=3Dmakeinfo --split-size=3D50=
00000 --split-size=3D5000000 &quot; &quot;PICFLAG=3D&quot; &quot;PICFLAG_FO=
R_TARGET=3D&quot; &quot;SHELL=3D/bin/bash&quot; &quot;EXPECT=3Dexpect&quot;=
 &quot;RUNTEST=3Druntest&quot; &quot;RUNTESTFLAGS=3D&quot; &quot;exec_prefi=
x=3D/usr&quot; &quot;infodir=3D/usr/share/info&quot; &quot;libdir=3D/usr/li=
b&quot; &quot;prefix=3D/usr&quot; &quot;tooldir=3D/usr/arm-poky-linux-gnuea=
bi&quot;
 &quot;AR=3Darm-poky-linux-gnueabi-ar&quot; &quot;AS=3Darm-poky-linux-gnuea=
bi-as &quot; &quot;CC=3Darm-poky-linux-gnueabi-gcc &nbsp;-march=3Darmv6 -mf=
pu=3Dvfp &nbsp;-mfloat-abi=3Dhard -mtune=3Darm1176jzf-s -mfpu=3Dvfp --sysro=
ot=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/=
build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/re=
cipe-sysroot&quot;
 &quot;CXX=3Darm-poky-linux-gnueabi-g&#43;&#43; &nbsp;-march=3Darmv6 -mfpu=
=3Dvfp &nbsp;-mfloat-abi=3Dhard -mtune=3Darm1176jzf-s -mfpu=3Dvfp --sysroot=
=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/reci=
pe-sysroot&quot;
 &quot;LD=3Darm-poky-linux-gnueabi-ld --sysroot=3D/media/chewlm86/ext_data_=
drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176j=
zfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot &quot; &quot;LIBC=
FLAGS=3D-O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/m=
edia/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-c=
m1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0=3D/usr/sr=
c/debug/gdb/7.12.1-r0
 -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/=
yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi=
/gdb/7.12.1-r0/recipe-sysroot-native=3D -fdebug-prefix-map=3D/media/chewlm8=
6/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/wo=
rk/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot=3D
 &quot; &quot;NM=3Darm-poky-linux-gnueabi-nm&quot; &quot;PICFLAG=3D&quot; &=
quot;RANLIB=3Darm-poky-linux-gnueabi-ranlib&quot; &quot;DESTDIR=3D&quot; DO=
=3Dall multi-do # make</div>
<div>| make[2]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/zlib'</div>
<div>| make[2]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'</div>
<div>| Making info in doc</div>
<div>| make[3]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/doc'</div>
<div>| make[2]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/libdecnumber'</di=
v>
<div>| make[2]: Nothing to be done for 'all'.</div>
<div>| make[2]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/libdecnumber'</div=
>
<div>| make[3]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/doc'</div>
<div>| Making info in po</div>
<div>| make[3]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/po'</div>
<div>| make[3]: Nothing to be done for 'info'.</div>
<div>| make[3]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/po'</div>
<div>| make[3]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'</div>
<div>| make[3]: Nothing to be done for 'info-am'.</div>
<div>| make[3]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'</div>
<div>| make &nbsp;all-recursive</div>
<div>| make[3]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'</div>
<div>| Making all in doc</div>
<div>| make[4]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/doc'</div>
<div>| make[4]: Nothing to be done for 'all'.</div>
<div>| make[4]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/doc'</div>
<div>| Making all in po</div>
<div>| make[4]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/po'</div>
<div>| make[4]: Nothing to be done for 'all'.</div>
<div>| make[4]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd/po'</div>
<div>| make[4]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'</div>
<div>| make[4]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'</div>
<div>| make[3]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'</div>
<div>| make[2]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/bfd'</div>
<div>| make[2]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes'</div>
<div>| make &nbsp;all-recursive</div>
<div>| make[3]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes'</div>
<div>| Making all in .</div>
<div>| make[4]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes'</div>
<div>| make[4]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes'</div>
<div>| Making all in po</div>
<div>| make[4]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes/po'</div>
<div>| make[4]: Nothing to be done for 'all'.</div>
<div>| make[4]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes/po'</div>
<div>| make[3]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes'</div>
<div>| make[2]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/opcodes'</div>
<div>| make[2]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb'</div>
<div>| CONFIG_HEADERS=3Dconfig.h:config.in \</div>
<div>| &nbsp; CONFIG_COMMANDS=3D&quot;default depdir&quot; \</div>
<div>| &nbsp; CONFIG_FILES=3D \</div>
<div>| &nbsp; CONFIG_LINKS=3D \</div>
<div>| &nbsp; /bin/bash config.status</div>
<div>| config.status: creating config.h</div>
<div>| config.status: config.h is unchanged</div>
<div>| config.status: executing default commands</div>
<div>| config.status: executing depdir commands</div>
<div>| make[3]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb'</div>
<div>| make[4]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib'=
</div>
<div>| make[5]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib'=
</div>
<div>| make[6]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib/=
import'</div>
<div>| make &nbsp;all-recursive</div>
<div>| make[7]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib/=
import'</div>
<div>| make[8]: Entering directory '/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib/=
import'</div>
<div>| make[8]: Nothing to be done for 'all-am'.</div>
<div>| make[8]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib/i=
mport'</div>
<div>| make[7]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib/i=
mport'</div>
<div>| ERROR: oe_runmake failed</div>
<div>| make[6]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib/i=
mport'</div>
<div>| make[5]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib'<=
/div>
<div>| make[4]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb/build-gnulib'<=
/div>
<div>| make[3]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb'</div>
<div>| rm -f gdb</div>
<div>| arm-poky-linux-gnueabi-g&#43;&#43; &nbsp;-march=3Darmv6 -mfpu=3Dvfp =
&nbsp;-mfloat-abi=3Dhard -mtune=3Darm1176jzf-s -mfpu=3Dvfp --sysroot=3D/med=
ia/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1=
-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysr=
oot
 -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/media/ch=
ewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/t=
mp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0=3D/usr/src/debug=
/gdb/7.12.1-r0 -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-ce=
lebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky=
-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot-native=3D
 -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/=
yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi=
/gdb/7.12.1-r0/recipe-sysroot=3D &nbsp;-fvisibility-inlines-hidden &nbsp; -=
static-libstdc&#43;&#43; -static-libgcc -Wl,-O1 -Wl,--hash-style=3Dgnu
 -Wl,--as-needed &nbsp; \</div>
<div>| <span class=3D"Apple-tab-span" style=3D"white-space:pre"></span>-o g=
db gdb.o arm.o arm-linux.o arm-get-next-pcs.o arm-tdep.o arm-linux-tdep.o g=
libc-tdep.o solib-svr4.o symfile-mem.o linux-tdep.o linux-record.o ser-base=
.o ser-unix.o ser-pipe.o ser-tcp.o inf-ptrace.o
 fork-child.o arm-linux-nat.o aarch32-linux-nat.o proc-service.o linux-thre=
ad-db.o linux-nat.o linux-osdata.o linux-fork.o linux-procfs.o linux-ptrace=
.o linux-waitpid.o linux-personality.o linux-namespaces.o remote.o dcache.o=
 tracepoint.o ax-general.o ax-gdb.o
 remote-fileio.o remote-notif.o ctf.o tracefile.o tracefile-tfile.o &nbsp;c=
li-dump.o cli-decode.o cli-script.o cli-cmds.o cli-setshow.o cli-logging.o =
cli-interp.o cli-utils.o mi-out.o mi-console.o mi-cmds.o mi-cmd-catch.o mi-=
cmd-env.o mi-cmd-var.o mi-cmd-break.o
 mi-cmd-stack.o mi-cmd-file.o mi-cmd-disas.o mi-symbol-cmds.o mi-cmd-target=
.o mi-cmd-info.o mi-interp.o mi-main.o mi-parse.o mi-getopt.o python.o guil=
e.o elfread.o stap-probe.o dtrace-probe.o posix-hdep.o posix-strerror.o c-e=
xp.o cp-name-parser.o ada-exp.o
 jv-exp.o d-exp.o f-exp.o go-exp.o m2-exp.o p-exp.o rust-exp.o version.o an=
notate.o addrmap.o auto-load.o auxv.o agent.o bfd-target.o blockframe.o bre=
akpoint.o break-catch-sig.o break-catch-throw.o break-catch-syscall.o findv=
ar.o regcache.o cleanups.o charset.o
 continuations.o corelow.o disasm.o dummy-frame.o dfp.o source.o value.o ev=
al.o valops.o valarith.o valprint.o printcmd.o block.o symtab.o psymtab.o s=
ymfile.o symfile-debug.o symmisc.o linespec.o dictionary.o namespace.o loca=
tion.o infcall.o infcmd.o infrun.o
 expprint.o environ.o stack.o tid-parse.o thread.o thread-fsm.o exceptions.=
o extension.o filesystem.o filestuff.o inf-child.o interps.o minidebug.o ma=
in.o macrotab.o macrocmd.o macroexp.o macroscope.o mi-common.o event-loop.o=
 event-top.o inf-loop.o completer.o
 gdbarch.o arch-utils.o gdbtypes.o gdb_bfd.o gdb_obstack.o osabi.o copying.=
o memattr.o mem-break.o target.o target-dcache.o parse.o language.o build-i=
d.o buildsym.o findcmd.o std-regs.o signals-state-save-restore.o signals.o =
exec.o reverse.o bcache.o objfiles.o
 observer.o minsyms.o maint.o demangle.o dbxread.o coffread.o coff-pe-read.=
o dwarf2read.o mipsread.o stabsread.o corefile.o dwarf2expr.o dwarf2loc.o d=
warf2-frame.o dwarf2-frame-tailcall.o ada-lang.o c-lang.o d-lang.o f-lang.o=
 objc-lang.o ada-tasks.o ada-varobj.o
 c-varobj.o ui-out.o cli-out.o varobj.o vec.o go-lang.o go-valprint.o go-ty=
peprint.o jv-lang.o jv-valprint.o jv-typeprint.o jv-varobj.o m2-lang.o open=
cl-lang.o p-lang.o p-typeprint.o p-valprint.o selftest.o sentinel-frame.o c=
omplaints.o typeprint.o ada-typeprint.o
 c-typeprint.o f-typeprint.o m2-typeprint.o ada-valprint.o c-valprint.o cp-=
valprint.o d-valprint.o f-valprint.o m2-valprint.o ser-event.o serial.o mde=
bugread.o top.o utils.o ui-file.o user-regs.o frame.o frame-unwind.o double=
st.o frame-base.o inline-frame.o
 gnu-v2-abi.o gnu-v3-abi.o cp-abi.o cp-support.o cp-namespace.o d-namespace=
.o reggroups.o rust-lang.o trad-frame.o tramp-frame.o solib.o solib-target.=
o prologue-value.o memory-map.o memrange.o xml-support.o xml-syscall.o xml-=
utils.o target-descriptions.o target-memory.o
 xml-tdesc.o xml-builtin.o inferior.o osdata.o gdb_usleep.o record.o record=
-full.o gcore.o gdb_vecs.o jit.o progspace.o skip.o probe.o common-utils.o =
buffer.o ptid.o gdb-dlfcn.o common-agent.o format.o registry.o btrace.o rec=
ord-btrace.o waitstatus.o print-utils.o
 rsp-low.o errors.o common-debug.o debug.o common-exceptions.o btrace-commo=
n.o fileio.o common-regcache.o compile.o compile-c-symbols.o compile-c-type=
s.o compile-object-load.o compile-object-run.o compile-loc2c.o compile-c-su=
pport.o inflow.o &nbsp; &nbsp;init.o \</div>
<div>| <span class=3D"Apple-tab-span" style=3D"white-space:pre"></span>&nbs=
p; -lreadline ../opcodes/libopcodes.a ../bfd/libbfd.a -L./../zlib -lz &nbsp=
;../libiberty/libiberty.a ../libdecnumber/libdecnumber.a &nbsp; &nbsp;-ldl =
-ldl -lncurses -lm -ldl -lexpat &nbsp; &nbsp;../libiberty/libiberty.a
 &nbsp;build-gnulib/import/libgnu.a &nbsp;-ldl -Wl,--dynamic-list=3D../../g=
db-7.12.1/gdb/proc-service.list</div>
<div>| completer.o: In function `gdb_display_match_list_1':</div>
<div>| /usr/src/debug/gdb/7.12.1-r0/gdb-7.12.1/gdb/completer.c:1862: undefi=
ned reference to `_rl_completion_prefix_display_length'</div>
<div>| /usr/src/debug/gdb/7.12.1-r0/gdb-7.12.1/gdb/completer.c:1862: undefi=
ned reference to `rl_sort_completion_matches'</div>
<div>| collect2: error: ld returned 1 exit status</div>
<div>| Makefile:1418: recipe for target 'gdb' failed</div>
<div>| make[2]: *** [gdb] Error 1</div>
<div>| make[2]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi/gdb'</div>
<div>| Makefile:8827: recipe for target 'all-gdb' failed</div>
<div>| make[1]: *** [all-gdb] Error 2</div>
<div>| make[1]: Leaving directory '/media/chewlm86/ext_data_drive/yocto-cel=
ebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/gdb/7.12.1-r0/build-arm-poky-linux-gnueabi'</div>
<div>| Makefile:850: recipe for target 'all' failed</div>
<div>| make: *** [all] Error 2</div>
<div>| ERROR: Function failed: do_compile (log file is located at /media/ch=
ewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/build-cm1-c4/t=
mp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/temp/log.do_comp=
ile.11637)</div>
<div>ERROR: Task (/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yoct=
o-celebes-c4/meta/recipes-devtools/gdb/gdb_7.12.1.bb:do_compile) failed wit=
h exit code '1'</div>
<div>NOTE: Tasks Summary: Attempted 933 tasks of which 932 didn't need to b=
e rerun and 1 failed.</div>
<div><br>
</div>
<div>Summary: 1 task failed:</div>
<div>&nbsp; /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-cele=
bes-c4/meta/recipes-devtools/gdb/gdb_7.12.1.bb:do_compile</div>
<div>Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.</div>
<div><br>
</div>
&nbsp;</span><br>
<p></p>
<p><span style=3D"color: rgb(33, 33, 33); font-family: wf_segoe-ui_normal, =
&quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif, seri=
f, EmojiFont; font-size: 13.3333px;"><br>
</span></p>
</div>
</body>
</html>

--_000_HE1PR0101MB16096D927B28B01A891DDBABC3C00HE1PR0101MB1609_--
