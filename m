Return-Path: <lm.chew@free2move.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6B5EE00B9E; Thu, 15 Jun 2017 13:06:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.56 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0056.outbound.protection.outlook.com [104.47.2.56])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CE1BE00B99
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 13:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=free2moveholding.onmicrosoft.com; s=selector1-free2move-se;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=ylBrxpU3hf5ei7SyhOSNOVEFrj70vgO3JdZPQaehUhY=;
	b=JJYJCrO3Og0YIhftrdC5/KPqGlNMPwu4qSoMb9+IKfCXxcoziNJDdYzG4T196W0c3zoCOukkFn99yma/zSBUynwbrsEynCUwR4Xlk5asNsSgkHwTKWVLJgxAjPhjEzxPXyQEx+mKW/dXdL0L31rkQ7/1mCiY7lThfRFmXgJU4eQ=
Received: from HE1PR0101MB1609.eurprd01.prod.exchangelabs.com (10.166.118.143)
	by HE1PR0101MB1609.eurprd01.prod.exchangelabs.com (10.166.118.143)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1157.12;
	Thu, 15 Jun 2017 14:34:43 +0000
Received: from HE1PR0101MB1609.eurprd01.prod.exchangelabs.com
	([fe80::c518:b688:cc35:d08b]) by
	HE1PR0101MB1609.eurprd01.prod.exchangelabs.com
	([fe80::c518:b688:cc35:d08b%14]) with mapi id 15.01.1157.021;
	Thu, 15 Jun 2017 14:34:43 +0000
From: Lm Chew <lm.chew@free2move.se>
To: Gary Thomas <gary@mlbassoc.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Failed to build gdb
Thread-Index: AQHS5ad6OzQBoNl9E0egwpiWdjBn7KIl9pcAgAAE2E4=
Date: Thu, 15 Jun 2017 14:34:42 +0000
Message-ID: <HE1PR0101MB16094A3230D5744371389A7EC3C00@HE1PR0101MB1609.eurprd01.prod.exchangelabs.com>
References: <HE1PR0101MB16096D927B28B01A891DDBABC3C00@HE1PR0101MB1609.eurprd01.prod.exchangelabs.com>,
	<83c9671a-1f16-41b3-bb4b-584b56ba176d@mlbassoc.com>
In-Reply-To: <83c9671a-1f16-41b3-bb4b-584b56ba176d@mlbassoc.com>
Accept-Language: en-MY, en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mlbassoc.com; dkim=none (message not signed)
	header.d=none; mlbassoc.com;
	dmarc=none action=none header.from=free2move.se; 
x-originating-ip: [2a01:111:e400:7a2e:cafe::67]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1PR0101MB1609;
	7:g0Gcwo5Pkzbz+LK89BvasH8QARYnhxz0CnX1ejw/HQsfBn4sTTF1I26lnE7IcX47srcIbZyXFJ39FucH+WQhaCwiLefT7Vs4fHBGpaMpAeC10xRxxBn02k2CddTVhzONEaqLwLnG3ejZNFAi2NJaO88SqiFTsU0X4HYkD/0VPp4rl/CVUCJWdmc2NUUVxQJV9Qg57PylvBLIoHbTZK1O2hzNiVGqE8yW7JcBpd4I3uSt4aNQdJ0iUkw7vss8vAAYfEHHYNavSqozhCHbpfoNBUeiv4h00Zb/hL4V8WOqHfawRP/oHYVW7oCSJI7sPaXZ79IC5uE1Q76+qDi/YuCjuw==
x-ms-traffictypediagnostic: HE1PR0101MB1609:
x-ms-office365-filtering-correlation-id: 1fa9ed32-4aa0-4d7a-d338-08d4b3fba9c8
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(201703131423075);
	SRVR:HE1PR0101MB1609; 
x-microsoft-antispam-prvs: <HE1PR0101MB1609687934E197BAC72D9AB6C3C00@HE1PR0101MB1609.eurprd01.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(158342451672863);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(5005006)(8121501046)(93006095)(93001095)(10201501046)(3002001)(100000703101)(100105400095)(6041248)(20161123564025)(2016111802025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123562025)(20161123558100)(20161123560025)(20161123555025)(6072148)(6043046)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:HE1PR0101MB1609; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HE1PR0101MB1609; 
x-forefront-prvs: 0339F89554
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39410400002)(39830400002)(39450400003)(39400400002)(377454003)(377424004)(24454002)(2906002)(74316002)(2950100002)(478600001)(966005)(7906003)(2501003)(86362001)(575784001)(7736002)(7696004)(5250100002)(2900100001)(5660300001)(6116002)(229853002)(102836003)(54356999)(76176999)(33656002)(38730400002)(6246003)(6306002)(6506006)(54896002)(8676002)(25786009)(9686003)(8936002)(74482002)(53546009)(55016002)(189998001)(81166006)(6436002)(53946003)(606005)(53936002)(3660700001)(14454004)(236005)(3280700002)(99286003)(50986999);
	DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0101MB1609;
	H:HE1PR0101MB1609.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: free2move.se
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2017 14:34:42.9943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8e7c9a07-0b12-4786-9e6b-9e1f7e817f55
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0101MB1609
Subject: Re: Failed to build gdb
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
X-List-Received-Date: Thu, 15 Jun 2017 20:06:58 -0000
Content-Language: en-MY
Content-Type: multipart/alternative;
	boundary="_000_HE1PR0101MB16094A3230D5744371389A7EC3C00HE1PR0101MB1609_"

--_000_HE1PR0101MB16094A3230D5744371389A7EC3C00HE1PR0101MB1609_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

HI Gary,


I am doing a clean build using the Pyro branch.


The only modification i did is local.conf.

MACHINE ??=3D "raspberrypi-cm"

INCOMPATIBLE_LICENSE =3D "GPLv3 LGPLv3 AGPL-3.0"
INCOMPATIBLE_LICENSE_pn-gdb =3D ""


and bblayers.conf:


BBLAYERS ?=3D " \
  /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/poky/meta \
  /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/poky/meta-poky \
  /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/poky/meta-yocto-bsp =
\
  /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/poky/meta-gplv2 \
  /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/poky/meta-openembedd=
ed/meta-oe \
  /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/poky/meta-raspberryp=
i \
  "


Here is my configuration.


Build Configuration:
BB_VERSION        =3D "1.34.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "universal-4.9"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "raspberrypi-cm"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "2.3"
TUNE_FEATURES     =3D "arm armv6 vfp arm1176jzfs callconvention-hard"
TARGET_FPU        =3D "hard"
meta
meta-poky
meta-yocto-bsp    =3D "pyro:5bb92a3166ce0983bbef9df9db5110bd6e567eca"
meta-gplv2        =3D "pyro:de001bd6bfcec943d274b649c62be6848cc9c3e6"
meta-oe           =3D "pyro:5e82995148a2844c6f483ae5ddd1438d87ea9fb7"
meta-raspberrypi  =3D "pyro:31a813c06954fed9423fabd9f21b5dd24ebce09e"


Best Regards,

Chew

________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Gary Thomas <gary@mlbassoc.com>
Sent: Thursday, 15 June, 2017 10:09:06 PM
To: yocto@yoctoproject.org
Subject: Re: [yocto] Failed to build gdb

On 2017-06-15 09:19, Lm Chew wrote:
> Hi,
>
>
> I am running on the latest poky branch, targeting raspberry pi.
>
>
> I have added the following line to the local.config to remove any package=
 with license newer than GPLv2, with exception
> the gdb for development purpose:
>
> INCOMPATIBLE_LICENSE =3D "GPLv3 LGPLv3 AGPL-3.0"
> INCOMPATIBLE_LICENSE_pn-gdb =3D ""
>
>
> When i run the following command to build gdb I get the error shown below=
.
>
> $ bitbake gdb
>
>
> How can i resolve this issue?
>
>
> Best Regards,
>
> Chew
>
>
> ERROR: gdb-7.12.1-r0 do_compile: oe_runmake failed
> ERROR: gdb-7.12.1-r0 do_compile: Function failed: do_compile (log file is=
 located at
> /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bui=
ld-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/temp/=
log.do_compile.11637)
> ERROR: Logfile of failure stored in:
> /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bui=
ld-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/temp/=
log.do_compile.11637
> Log data follows:
> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32', '=
common-linux', 'common-glibc', 'arm-linux',
> 'arm-linux-gnueabi', 'common']
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 8 SUBDIRS=3Dintl mmalloc libiberty opcodes bfd sim gdb et=
c utils
> | make[1]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi'
> | make[1]: Nothing to be done for 'all-target'.
> | make[2]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/intl'
> | make[2]: Nothing to be done for 'all'.
> | make[2]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/intl'
> | make[2]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/libiberty'
> | make[2]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/etc'
> | make[2]: Nothing to be done for 'all'.
> | make[2]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/etc'
> | make[2]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/readline'
> | make[2]: Nothing to be done for 'all'.
> | make[2]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/readline'
> | make[3]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/libiberty/testsuite'
> | make[3]: Nothing to be done for 'all'.
> | make[3]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/libiberty/testsuite'
> | make[2]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/libiberty'
> | make[2]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/zlib'
> | true "AR_FLAGS=3Drc" "CC_FOR_BUILD=3Dgcc " "CFLAGS=3D-O2 -pipe -g -feli=
minate-unused-debug-types
> -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test=
/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueab=
i/gdb/7.12.1-r0=3D/usr/src/debug/gdb/7.12.1-r0
> -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test=
/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueab=
i/gdb/7.12.1-r0/recipe-sysroot-native=3D
> -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test=
/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueab=
i/gdb/7.12.1-r0/recipe-sysroot=3D
> " "CXXFLAGS=3D-O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test=
/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueab=
i/gdb/7.12.1-r0=3D/usr/src/debug/gdb/7.12.1-r0
> -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test=
/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueab=
i/gdb/7.12.1-r0/recipe-sysroot-native=3D
> -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test=
/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueab=
i/gdb/7.12.1-r0/recipe-sysroot=3D
>   -fvisibility-inlines-hidden"
> "CFLAGS_FOR_BUILD=3D-isystem/media/chewlm86/ext_data_drive/yocto-celebes-=
c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux=
-gnueabi/gdb/7.12.1-r0/recipe-sysroot-native/usr/include
> -O2 -pipe" "CFLAGS_FOR_TARGET=3D-O2 -pipe -g -feliminate-unused-debug-typ=
es
> -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test=
/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueab=
i/gdb/7.12.1-r0=3D/usr/src/debug/gdb/7.12.1-r0
> -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test=
/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueab=
i/gdb/7.12.1-r0/recipe-sysroot-native=3D
> -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test=
/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueab=
i/gdb/7.12.1-r0/recipe-sysroot=3D
> " "INSTALL=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-c=
elebes-c4/build-cm1-c4/tmp/hosttools/install -c"
> "INSTALL_DATA=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yoct=
o-celebes-c4/build-cm1-c4/tmp/hosttools/install
> -c -m 644"
> "INSTALL_PROGRAM=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/y=
octo-celebes-c4/build-cm1-c4/tmp/hosttools/install -c"
> "INSTALL_SCRIPT=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yo=
cto-celebes-c4/build-cm1-c4/tmp/hosttools/install
> -c" "LDFLAGS=3D-static-libstdc++ -static-libgcc -Wl,-O1 -Wl,--hash-style=
=3Dgnu -Wl,--as-needed" "LIBCFLAGS=3D-O2 -pipe -g
> -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test=
/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueab=
i/gdb/7.12.1-r0=3D/usr/src/debug/gdb/7.12.1-r0
> -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test=
/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueab=
i/gdb/7.12.1-r0/recipe-sysroot-native=3D
> -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test=
/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueab=
i/gdb/7.12.1-r0/recipe-sysroot=3D
> " "LIBCFLAGS_FOR_TARGET=3D-O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test=
/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueab=
i/gdb/7.12.1-r0=3D/usr/src/debug/gdb/7.12.1-r0
> -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test=
/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueab=
i/gdb/7.12.1-r0/recipe-sysroot-native=3D
> -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test=
/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueab=
i/gdb/7.12.1-r0/recipe-sysroot=3D
> " "MAKE=3Dmake" "MAKEINFO=3Dmakeinfo --split-size=3D5000000 --split-size=
=3D5000000 " "PICFLAG=3D" "PICFLAG_FOR_TARGET=3D"
> "SHELL=3D/bin/bash" "EXPECT=3Dexpect" "RUNTEST=3Druntest" "RUNTESTFLAGS=
=3D" "exec_prefix=3D/usr" "infodir=3D/usr/share/info"
> "libdir=3D/usr/lib" "prefix=3D/usr" "tooldir=3D/usr/arm-poky-linux-gnueab=
i" "AR=3Darm-poky-linux-gnueabi-ar"
> "AS=3Darm-poky-linux-gnueabi-as " "CC=3Darm-poky-linux-gnueabi-gcc  -marc=
h=3Darmv6 -mfpu=3Dvfp  -mfloat-abi=3Dhard
> -mtune=3Darm1176jzf-s -mfpu=3Dvfp
> --sysroot=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-ce=
lebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.1=
2.1-r0/recipe-sysroot"
> "CXX=3Darm-poky-linux-gnueabi-g++  -march=3Darmv6 -mfpu=3Dvfp  -mfloat-ab=
i=3Dhard -mtune=3Darm1176jzf-s -mfpu=3Dvfp
> --sysroot=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-ce=
lebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.1=
2.1-r0/recipe-sysroot"
> "LD=3Darm-poky-linux-gnueabi-ld
> --sysroot=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-ce=
lebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.1=
2.1-r0/recipe-sysroot
> " "LIBCFLAGS=3D-O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test=
/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueab=
i/gdb/7.12.1-r0=3D/usr/src/debug/gdb/7.12.1-r0
> -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test=
/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueab=
i/gdb/7.12.1-r0/recipe-sysroot-native=3D
> -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test=
/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueab=
i/gdb/7.12.1-r0/recipe-sysroot=3D
> " "NM=3Darm-poky-linux-gnueabi-nm" "PICFLAG=3D" "RANLIB=3Darm-poky-linux-=
gnueabi-ranlib" "DESTDIR=3D" DO=3Dall multi-do # make
> | make[2]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/zlib'
> | make[2]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/bfd'
> | Making info in doc
> | make[3]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/bfd/doc'
> | make[2]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/libdecnumber'
> | make[2]: Nothing to be done for 'all'.
> | make[2]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/libdecnumber'
> | make[3]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/bfd/doc'
> | Making info in po
> | make[3]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/bfd/po'
> | make[3]: Nothing to be done for 'info'.
> | make[3]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/bfd/po'
> | make[3]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/bfd'
> | make[3]: Nothing to be done for 'info-am'.
> | make[3]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/bfd'
> | make  all-recursive
> | make[3]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/bfd'
> | Making all in doc
> | make[4]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/bfd/doc'
> | make[4]: Nothing to be done for 'all'.
> | make[4]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/bfd/doc'
> | Making all in po
> | make[4]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/bfd/po'
> | make[4]: Nothing to be done for 'all'.
> | make[4]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/bfd/po'
> | make[4]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/bfd'
> | make[4]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/bfd'
> | make[3]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/bfd'
> | make[2]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/bfd'
> | make[2]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/opcodes'
> | make  all-recursive
> | make[3]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/opcodes'
> | Making all in .
> | make[4]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/opcodes'
> | make[4]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/opcodes'
> | Making all in po
> | make[4]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/opcodes/po'
> | make[4]: Nothing to be done for 'all'.
> | make[4]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/opcodes/po'
> | make[3]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/opcodes'
> | make[2]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/opcodes'
> | make[2]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/gdb'
> | CONFIG_HEADERS=3Dconfig.h:config.in \
> |   CONFIG_COMMANDS=3D"default depdir" \
> |   CONFIG_FILES=3D \
> |   CONFIG_LINKS=3D \
> |   /bin/bash config.status
> | config.status: creating config.h
> | config.status: config.h is unchanged
> | config.status: executing default commands
> | config.status: executing depdir commands
> | make[3]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/gdb'
> | make[4]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/gdb/build-gnulib'
> | make[5]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/gdb/build-gnulib'
> | make[6]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/gdb/build-gnulib/import'
> | make  all-recursive
> | make[7]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/gdb/build-gnulib/import'
> | make[8]: Entering directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/gdb/build-gnulib/import'
> | make[8]: Nothing to be done for 'all-am'.
> | make[8]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/gdb/build-gnulib/import'
> | make[7]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/gdb/build-gnulib/import'
> | ERROR: oe_runmake failed
> | make[6]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/gdb/build-gnulib/import'
> | make[5]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/gdb/build-gnulib'
> | make[4]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/gdb/build-gnulib'
> | make[3]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/gdb'
> | rm -f gdb
> | arm-poky-linux-gnueabi-g++  -march=3Darmv6 -mfpu=3Dvfp  -mfloat-abi=3Dh=
ard -mtune=3Darm1176jzf-s -mfpu=3Dvfp
> --sysroot=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-ce=
lebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.1=
2.1-r0/recipe-sysroot
> -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test=
/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueab=
i/gdb/7.12.1-r0=3D/usr/src/debug/gdb/7.12.1-r0
> -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test=
/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueab=
i/gdb/7.12.1-r0/recipe-sysroot-native=3D
> -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test=
/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueab=
i/gdb/7.12.1-r0/recipe-sysroot=3D
>   -fvisibility-inlines-hidden   -static-libstdc++ -static-libgcc -Wl,-O1 =
-Wl,--hash-style=3Dgnu -Wl,--as-needed   \
> | -o gdb gdb.o arm.o arm-linux.o arm-get-next-pcs.o arm-tdep.o arm-linux-=
tdep.o glibc-tdep.o solib-svr4.o symfile-mem.o
> linux-tdep.o linux-record.o ser-base.o ser-unix.o ser-pipe.o ser-tcp.o in=
f-ptrace.o fork-child.o arm-linux-nat.o
> aarch32-linux-nat.o proc-service.o linux-thread-db.o linux-nat.o linux-os=
data.o linux-fork.o linux-procfs.o
> linux-ptrace.o linux-waitpid.o linux-personality.o linux-namespaces.o rem=
ote.o dcache.o tracepoint.o ax-general.o
> ax-gdb.o remote-fileio.o remote-notif.o ctf.o tracefile.o tracefile-tfile=
.o  cli-dump.o cli-decode.o cli-script.o
> cli-cmds.o cli-setshow.o cli-logging.o cli-interp.o cli-utils.o mi-out.o =
mi-console.o mi-cmds.o mi-cmd-catch.o
> mi-cmd-env.o mi-cmd-var.o mi-cmd-break.o mi-cmd-stack.o mi-cmd-file.o mi-=
cmd-disas.o mi-symbol-cmds.o mi-cmd-target.o
> mi-cmd-info.o mi-interp.o mi-main.o mi-parse.o mi-getopt.o python.o guile=
.o elfread.o stap-probe.o dtrace-probe.o
> posix-hdep.o posix-strerror.o c-exp.o cp-name-parser.o ada-exp.o jv-exp.o=
 d-exp.o f-exp.o go-exp.o m2-exp.o p-exp.o
> rust-exp.o version.o annotate.o addrmap.o auto-load.o auxv.o agent.o bfd-=
target.o blockframe.o breakpoint.o
> break-catch-sig.o break-catch-throw.o break-catch-syscall.o findvar.o reg=
cache.o cleanups.o charset.o continuations.o
> corelow.o disasm.o dummy-frame.o dfp.o source.o value.o eval.o valops.o v=
alarith.o valprint.o printcmd.o block.o
> symtab.o psymtab.o symfile.o symfile-debug.o symmisc.o linespec.o diction=
ary.o namespace.o location.o infcall.o infcmd.o
> infrun.o expprint.o environ.o stack.o tid-parse.o thread.o thread-fsm.o e=
xceptions.o extension.o filesystem.o
> filestuff.o inf-child.o interps.o minidebug.o main.o macrotab.o macrocmd.=
o macroexp.o macroscope.o mi-common.o
> event-loop.o event-top.o inf-loop.o completer.o gdbarch.o arch-utils.o gd=
btypes.o gdb_bfd.o gdb_obstack.o osabi.o
> copying.o memattr.o mem-break.o target.o target-dcache.o parse.o language=
.o build-id.o buildsym.o findcmd.o std-regs.o
> signals-state-save-restore.o signals.o exec.o reverse.o bcache.o objfiles=
.o observer.o minsyms.o maint.o demangle.o
> dbxread.o coffread.o coff-pe-read.o dwarf2read.o mipsread.o stabsread.o c=
orefile.o dwarf2expr.o dwarf2loc.o
> dwarf2-frame.o dwarf2-frame-tailcall.o ada-lang.o c-lang.o d-lang.o f-lan=
g.o objc-lang.o ada-tasks.o ada-varobj.o
> c-varobj.o ui-out.o cli-out.o varobj.o vec.o go-lang.o go-valprint.o go-t=
ypeprint.o jv-lang.o jv-valprint.o
> jv-typeprint.o jv-varobj.o m2-lang.o opencl-lang.o p-lang.o p-typeprint.o=
 p-valprint.o selftest.o sentinel-frame.o
> complaints.o typeprint.o ada-typeprint.o c-typeprint.o f-typeprint.o m2-t=
ypeprint.o ada-valprint.o c-valprint.o
> cp-valprint.o d-valprint.o f-valprint.o m2-valprint.o ser-event.o serial.=
o mdebugread.o top.o utils.o ui-file.o
> user-regs.o frame.o frame-unwind.o doublest.o frame-base.o inline-frame.o=
 gnu-v2-abi.o gnu-v3-abi.o cp-abi.o
> cp-support.o cp-namespace.o d-namespace.o reggroups.o rust-lang.o trad-fr=
ame.o tramp-frame.o solib.o solib-target.o
> prologue-value.o memory-map.o memrange.o xml-support.o xml-syscall.o xml-=
utils.o target-descriptions.o target-memory.o
> xml-tdesc.o xml-builtin.o inferior.o osdata.o gdb_usleep.o record.o recor=
d-full.o gcore.o gdb_vecs.o jit.o progspace.o
> skip.o probe.o common-utils.o buffer.o ptid.o gdb-dlfcn.o common-agent.o =
format.o registry.o btrace.o record-btrace.o
> waitstatus.o print-utils.o rsp-low.o errors.o common-debug.o debug.o comm=
on-exceptions.o btrace-common.o fileio.o
> common-regcache.o compile.o compile-c-symbols.o compile-c-types.o compile=
-object-load.o compile-object-run.o
> compile-loc2c.o compile-c-support.o inflow.o    init.o \
> |   -lreadline ../opcodes/libopcodes.a ../bfd/libbfd.a -L./../zlib -lz  .=
./libiberty/libiberty.a
> ../libdecnumber/libdecnumber.a    -ldl -ldl -lncurses -lm -ldl -lexpat   =
 ../libiberty/libiberty.a
>   build-gnulib/import/libgnu.a  -ldl -Wl,--dynamic-list=3D../../gdb-7.12.=
1/gdb/proc-service.list
> | completer.o: In function `gdb_display_match_list_1':
> | /usr/src/debug/gdb/7.12.1-r0/gdb-7.12.1/gdb/completer.c:1862: undefined=
 reference to
> `_rl_completion_prefix_display_length'
> | /usr/src/debug/gdb/7.12.1-r0/gdb-7.12.1/gdb/completer.c:1862: undefined=
 reference to `rl_sort_completion_matches'
> | collect2: error: ld returned 1 exit status
> | Makefile:1418: recipe for target 'gdb' failed
> | make[2]: *** [gdb] Error 1
> | make[2]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi/gdb'
> | Makefile:8827: recipe for target 'all-gdb' failed
> | make[1]: *** [all-gdb] Error 2
> | make[1]: Leaving directory
> '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bu=
ild-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/buil=
d-arm-poky-linux-gnueabi'
> | Makefile:850: recipe for target 'all' failed
> | make: *** [all] Error 2
> | ERROR: Function failed: do_compile (log file is located at
> /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/bui=
ld-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/temp/=
log.do_compile.11637)
> ERROR: Task
> (/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/me=
ta/recipes-devtools/gdb/gdb_7.12.1.bb:do_compile)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 933 tasks of which 932 didn't need to be r=
erun and 1 failed.
>
> Summary: 1 task failed:
>    /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/=
meta/recipes-devtools/gdb/gdb_7.12.1.bb:do_compile
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.

I had no problem building with this configuration (up to date master):

Build Configuration:
BB_VERSION        =3D "1.34.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "universal"
TARGET_SYS        =3D "arm-my-distro-linux-gnueabi"
MACHINE           =3D "raspberrypi3"
DISTRO            =3D "my-distro"
DISTRO_VERSION    =3D "2.3+snapshot-20170615"
TUNE_FEATURES     =3D "arm armv7ve vfp thumb neon vfpv4 callconvention-hard=
 cortexa7"
TARGET_FPU        =3D "hard"
meta              =3D "master:b1d5267f0e31605b346af40778da0ac1ff298b78"
meta-raspberrypi  =3D "master:081405feaa544b5b5c55a3ac72e629f3f3869a26"

What's your configuration?

--
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

--_000_HE1PR0101MB16094A3230D5744371389A7EC3C00HE1PR0101MB1609_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
<p>HI Gary,</p>
<p><br>
</p>
<p><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,EmojiFont,=
&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&qu=
ot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:=
16px">I am doing a clean build using the Pyro branch.</span><br>
</p>
<p><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,EmojiFont,=
&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&qu=
ot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:=
16px"><br>
</span></p>
<p>The only modification i did is local.conf.</p>
<p><span>MACHINE ??=3D &quot;raspberrypi-cm&quot;</span></p>
<p><span></p>
<div>INCOMPATIBLE_LICENSE =3D &quot;GPLv3 LGPLv3 AGPL-3.0&quot;</div>
<div>INCOMPATIBLE_LICENSE_pn-gdb =3D &quot;&quot;</div>
</span>
<p></p>
<p><span><br>
</span></p>
<p><span>and&nbsp;<span>bblayers.conf:</span></span></p>
<p><span><span><br>
</span></span></p>
<p><span><span></span></span></p>
<div>BBLAYERS ?=3D &quot; \</div>
<div>&nbsp; /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/poky/meta =
\</div>
<div>&nbsp; /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/poky/meta-=
poky \</div>
<div>&nbsp; /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/poky/meta-=
yocto-bsp \</div>
<div>&nbsp; /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/poky/meta-=
gplv2 \</div>
<div>&nbsp; /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/poky/meta-=
openembedded/meta-oe \</div>
<div>&nbsp; /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/poky/meta-=
raspberrypi \</div>
<div>&nbsp; &quot;</div>
<p></p>
<p><br>
</p>
<p><span style=3D"font-size:12pt"><span style=3D"font-family:Calibri,Arial,=
Helvetica,sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI=
 Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji=
&quot;,EmojiSymbols; font-size:16px">Here is my configuration.&nbsp;</span>=
<br>
</span></p>
<p><br>
</p>
<p></p>
<div>Build Configuration:</div>
<div>BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;1.34.0&quot;</div>
<div>BUILD_SYS &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;x86_64-linux&quot;</di=
v>
<div>NATIVELSBSTRING &nbsp; =3D &quot;universal-4.9&quot;</div>
<div>TARGET_SYS &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;arm-poky-linux-gnueabi=
&quot;</div>
<div>MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;raspberrypi-cm&qu=
ot;</div>
<div>DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;poky&quot;</=
div>
<div>DISTRO_VERSION &nbsp; &nbsp;=3D &quot;2.3&quot;</div>
<div>TUNE_FEATURES &nbsp; &nbsp; =3D &quot;arm armv6 vfp arm1176jzfs callco=
nvention-hard&quot;</div>
<div>TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;hard&quot;</div>
<div>meta &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div>meta-poky &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-yocto-bsp &nbsp; &nbsp;=3D &quot;pyro:5bb92a3166ce0983bbef9df9db5=
110bd6e567eca&quot;</div>
<div>meta-gplv2 &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;pyro:de001bd6bfcec943d=
274b649c62be6848cc9c3e6&quot;</div>
<div>meta-oe &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;pyro:5e82995148a2=
844c6f483ae5ddd1438d87ea9fb7&quot;</div>
<div>meta-raspberrypi &nbsp;=3D &quot;pyro:31a813c06954fed9423fabd9f21b5dd2=
4ebce09e&quot;</div>
<div><br>
</div>
<p></p>
<p>Best Regards,</p>
<p>Chew</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> yocto-bounces@yocto=
project.org &lt;yocto-bounces@yoctoproject.org&gt; on behalf of Gary Thomas=
 &lt;gary@mlbassoc.com&gt;<br>
<b>Sent:</b> Thursday, 15 June, 2017 10:09:06 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Failed to build gdb</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On 2017-06-15 09:19, Lm Chew wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; <br>
&gt; I am running on the latest poky branch, targeting raspberry pi.<br>
&gt; <br>
&gt; <br>
&gt; I have added the following line to the local.config to remove any pack=
age with license newer than GPLv2, with exception
<br>
&gt; the gdb for development purpose:<br>
&gt; <br>
&gt; INCOMPATIBLE_LICENSE =3D &quot;GPLv3 LGPLv3 AGPL-3.0&quot;<br>
&gt; INCOMPATIBLE_LICENSE_pn-gdb =3D &quot;&quot;<br>
&gt; <br>
&gt; <br>
&gt; When i run the following command to build gdb I get the error shown be=
low.<br>
&gt; <br>
&gt; $ bitbake gdb<br>
&gt; <br>
&gt; <br>
&gt; How can i resolve this issue?<br>
&gt; <br>
&gt; <br>
&gt; Best Regards,<br>
&gt; <br>
&gt; Chew<br>
&gt; <br>
&gt; <br>
&gt; ERROR: gdb-7.12.1-r0 do_compile: oe_runmake failed<br>
&gt; ERROR: gdb-7.12.1-r0 do_compile: Function failed: do_compile (log file=
 is located at
<br>
&gt; /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/=
build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/te=
mp/log.do_compile.11637)<br>
&gt; ERROR: Logfile of failure stored in: <br>
&gt; /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/=
build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/te=
mp/log.do_compile.11637<br>
&gt; Log data follows:<br>
&gt; | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32'=
, 'common-linux', 'common-glibc', 'arm-linux',
<br>
&gt; 'arm-linux-gnueabi', 'common']<br>
&gt; | DEBUG: Executing shell function do_compile<br>
&gt; | NOTE: make -j 8 SUBDIRS=3Dintl mmalloc libiberty opcodes bfd sim gdb=
 etc utils<br>
&gt; | make[1]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi'<br>
&gt; | make[1]: Nothing to be done for 'all-target'.<br>
&gt; | make[2]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/intl'<br>
&gt; | make[2]: Nothing to be done for 'all'.<br>
&gt; | make[2]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/intl'<br>
&gt; | make[2]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/libiberty'<br>
&gt; | make[2]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/etc'<br>
&gt; | make[2]: Nothing to be done for 'all'.<br>
&gt; | make[2]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/etc'<br>
&gt; | make[2]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/readline'<br>
&gt; | make[2]: Nothing to be done for 'all'.<br>
&gt; | make[2]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/readline'<br>
&gt; | make[3]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/libiberty/testsuite'<br>
&gt; | make[3]: Nothing to be done for 'all'.<br>
&gt; | make[3]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/libiberty/testsuite'<br>
&gt; | make[2]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/libiberty'<br>
&gt; | make[2]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/zlib'<br>
&gt; | true &quot;AR_FLAGS=3Drc&quot; &quot;CC_FOR_BUILD=3Dgcc &quot; &quot=
;CFLAGS=3D-O2 -pipe -g -feliminate-unused-debug-types
<br>
&gt; -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/t=
est/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnu=
eabi/gdb/7.12.1-r0=3D/usr/src/debug/gdb/7.12.1-r0
<br>
&gt; -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/t=
est/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnu=
eabi/gdb/7.12.1-r0/recipe-sysroot-native=3D
<br>
&gt; -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/t=
est/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnu=
eabi/gdb/7.12.1-r0/recipe-sysroot=3D
<br>
&gt; &quot; &quot;CXXFLAGS=3D-O2 -pipe -g -feliminate-unused-debug-types <b=
r>
&gt; -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/t=
est/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnu=
eabi/gdb/7.12.1-r0=3D/usr/src/debug/gdb/7.12.1-r0
<br>
&gt; -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/t=
est/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnu=
eabi/gdb/7.12.1-r0/recipe-sysroot-native=3D
<br>
&gt; -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/t=
est/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnu=
eabi/gdb/7.12.1-r0/recipe-sysroot=3D
<br>
&gt;&nbsp;&nbsp; -fvisibility-inlines-hidden&quot; <br>
&gt; &quot;CFLAGS_FOR_BUILD=3D-isystem/media/chewlm86/ext_data_drive/yocto-=
celebes-c4/test/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-po=
ky-linux-gnueabi/gdb/7.12.1-r0/recipe-sysroot-native/usr/include
<br>
&gt; -O2 -pipe&quot; &quot;CFLAGS_FOR_TARGET=3D-O2 -pipe -g -feliminate-unu=
sed-debug-types <br>
&gt; -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/t=
est/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnu=
eabi/gdb/7.12.1-r0=3D/usr/src/debug/gdb/7.12.1-r0
<br>
&gt; -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/t=
est/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnu=
eabi/gdb/7.12.1-r0/recipe-sysroot-native=3D
<br>
&gt; -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/t=
est/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnu=
eabi/gdb/7.12.1-r0/recipe-sysroot=3D
<br>
&gt; &quot; &quot;INSTALL=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4=
/test/yocto-celebes-c4/build-cm1-c4/tmp/hosttools/install -c&quot;
<br>
&gt; &quot;INSTALL_DATA=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/t=
est/yocto-celebes-c4/build-cm1-c4/tmp/hosttools/install
<br>
&gt; -c -m 644&quot; <br>
&gt; &quot;INSTALL_PROGRAM=3D/media/chewlm86/ext_data_drive/yocto-celebes-c=
4/test/yocto-celebes-c4/build-cm1-c4/tmp/hosttools/install -c&quot;
<br>
&gt; &quot;INSTALL_SCRIPT=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4=
/test/yocto-celebes-c4/build-cm1-c4/tmp/hosttools/install
<br>
&gt; -c&quot; &quot;LDFLAGS=3D-static-libstdc&#43;&#43; -static-libgcc -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed&quot; &quot;LIBCFLAGS=3D-O2 -pip=
e -g
<br>
&gt; -feliminate-unused-debug-types <br>
&gt; -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/t=
est/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnu=
eabi/gdb/7.12.1-r0=3D/usr/src/debug/gdb/7.12.1-r0
<br>
&gt; -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/t=
est/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnu=
eabi/gdb/7.12.1-r0/recipe-sysroot-native=3D
<br>
&gt; -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/t=
est/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnu=
eabi/gdb/7.12.1-r0/recipe-sysroot=3D
<br>
&gt; &quot; &quot;LIBCFLAGS_FOR_TARGET=3D-O2 -pipe -g -feliminate-unused-de=
bug-types <br>
&gt; -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/t=
est/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnu=
eabi/gdb/7.12.1-r0=3D/usr/src/debug/gdb/7.12.1-r0
<br>
&gt; -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/t=
est/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnu=
eabi/gdb/7.12.1-r0/recipe-sysroot-native=3D
<br>
&gt; -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/t=
est/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnu=
eabi/gdb/7.12.1-r0/recipe-sysroot=3D
<br>
&gt; &quot; &quot;MAKE=3Dmake&quot; &quot;MAKEINFO=3Dmakeinfo --split-size=
=3D5000000 --split-size=3D5000000 &quot; &quot;PICFLAG=3D&quot; &quot;PICFL=
AG_FOR_TARGET=3D&quot;
<br>
&gt; &quot;SHELL=3D/bin/bash&quot; &quot;EXPECT=3Dexpect&quot; &quot;RUNTES=
T=3Druntest&quot; &quot;RUNTESTFLAGS=3D&quot; &quot;exec_prefix=3D/usr&quot=
; &quot;infodir=3D/usr/share/info&quot;
<br>
&gt; &quot;libdir=3D/usr/lib&quot; &quot;prefix=3D/usr&quot; &quot;tooldir=
=3D/usr/arm-poky-linux-gnueabi&quot; &quot;AR=3Darm-poky-linux-gnueabi-ar&q=
uot;
<br>
&gt; &quot;AS=3Darm-poky-linux-gnueabi-as &quot; &quot;CC=3Darm-poky-linux-=
gnueabi-gcc&nbsp; -march=3Darmv6 -mfpu=3Dvfp&nbsp; -mfloat-abi=3Dhard
<br>
&gt; -mtune=3Darm1176jzf-s -mfpu=3Dvfp <br>
&gt; --sysroot=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto=
-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/=
7.12.1-r0/recipe-sysroot&quot;
<br>
&gt; &quot;CXX=3Darm-poky-linux-gnueabi-g&#43;&#43;&nbsp; -march=3Darmv6 -m=
fpu=3Dvfp&nbsp; -mfloat-abi=3Dhard -mtune=3Darm1176jzf-s -mfpu=3Dvfp
<br>
&gt; --sysroot=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto=
-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/=
7.12.1-r0/recipe-sysroot&quot;
<br>
&gt; &quot;LD=3Darm-poky-linux-gnueabi-ld <br>
&gt; --sysroot=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto=
-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/=
7.12.1-r0/recipe-sysroot
<br>
&gt; &quot; &quot;LIBCFLAGS=3D-O2 -pipe -g -feliminate-unused-debug-types <=
br>
&gt; -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/t=
est/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnu=
eabi/gdb/7.12.1-r0=3D/usr/src/debug/gdb/7.12.1-r0
<br>
&gt; -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/t=
est/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnu=
eabi/gdb/7.12.1-r0/recipe-sysroot-native=3D
<br>
&gt; -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/t=
est/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnu=
eabi/gdb/7.12.1-r0/recipe-sysroot=3D
<br>
&gt; &quot; &quot;NM=3Darm-poky-linux-gnueabi-nm&quot; &quot;PICFLAG=3D&quo=
t; &quot;RANLIB=3Darm-poky-linux-gnueabi-ranlib&quot; &quot;DESTDIR=3D&quot=
; DO=3Dall multi-do # make<br>
&gt; | make[2]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/zlib'<br>
&gt; | make[2]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/bfd'<br>
&gt; | Making info in doc<br>
&gt; | make[3]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/bfd/doc'<br>
&gt; | make[2]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/libdecnumber'<br>
&gt; | make[2]: Nothing to be done for 'all'.<br>
&gt; | make[2]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/libdecnumber'<br>
&gt; | make[3]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/bfd/doc'<br>
&gt; | Making info in po<br>
&gt; | make[3]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/bfd/po'<br>
&gt; | make[3]: Nothing to be done for 'info'.<br>
&gt; | make[3]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/bfd/po'<br>
&gt; | make[3]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/bfd'<br>
&gt; | make[3]: Nothing to be done for 'info-am'.<br>
&gt; | make[3]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/bfd'<br>
&gt; | make&nbsp; all-recursive<br>
&gt; | make[3]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/bfd'<br>
&gt; | Making all in doc<br>
&gt; | make[4]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/bfd/doc'<br>
&gt; | make[4]: Nothing to be done for 'all'.<br>
&gt; | make[4]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/bfd/doc'<br>
&gt; | Making all in po<br>
&gt; | make[4]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/bfd/po'<br>
&gt; | make[4]: Nothing to be done for 'all'.<br>
&gt; | make[4]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/bfd/po'<br>
&gt; | make[4]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/bfd'<br>
&gt; | make[4]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/bfd'<br>
&gt; | make[3]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/bfd'<br>
&gt; | make[2]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/bfd'<br>
&gt; | make[2]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/opcodes'<br>
&gt; | make&nbsp; all-recursive<br>
&gt; | make[3]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/opcodes'<br>
&gt; | Making all in .<br>
&gt; | make[4]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/opcodes'<br>
&gt; | make[4]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/opcodes'<br>
&gt; | Making all in po<br>
&gt; | make[4]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/opcodes/po'<br>
&gt; | make[4]: Nothing to be done for 'all'.<br>
&gt; | make[4]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/opcodes/po'<br>
&gt; | make[3]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/opcodes'<br>
&gt; | make[2]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/opcodes'<br>
&gt; | make[2]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/gdb'<br>
&gt; | CONFIG_HEADERS=3Dconfig.h:config.in \<br>
&gt; |&nbsp;&nbsp; CONFIG_COMMANDS=3D&quot;default depdir&quot; \<br>
&gt; |&nbsp;&nbsp; CONFIG_FILES=3D \<br>
&gt; |&nbsp;&nbsp; CONFIG_LINKS=3D \<br>
&gt; |&nbsp;&nbsp; /bin/bash config.status<br>
&gt; | config.status: creating config.h<br>
&gt; | config.status: config.h is unchanged<br>
&gt; | config.status: executing default commands<br>
&gt; | config.status: executing depdir commands<br>
&gt; | make[3]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/gdb'<br>
&gt; | make[4]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/gdb/build-gnulib'<br>
&gt; | make[5]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/gdb/build-gnulib'<br>
&gt; | make[6]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/gdb/build-gnulib/import'<br>
&gt; | make&nbsp; all-recursive<br>
&gt; | make[7]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/gdb/build-gnulib/import'<br>
&gt; | make[8]: Entering directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/gdb/build-gnulib/import'<br>
&gt; | make[8]: Nothing to be done for 'all-am'.<br>
&gt; | make[8]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/gdb/build-gnulib/import'<br>
&gt; | make[7]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/gdb/build-gnulib/import'<br>
&gt; | ERROR: oe_runmake failed<br>
&gt; | make[6]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/gdb/build-gnulib/import'<br>
&gt; | make[5]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/gdb/build-gnulib'<br>
&gt; | make[4]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/gdb/build-gnulib'<br>
&gt; | make[3]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/gdb'<br>
&gt; | rm -f gdb<br>
&gt; | arm-poky-linux-gnueabi-g&#43;&#43;&nbsp; -march=3Darmv6 -mfpu=3Dvfp&=
nbsp; -mfloat-abi=3Dhard -mtune=3Darm1176jzf-s -mfpu=3Dvfp
<br>
&gt; --sysroot=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto=
-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/=
7.12.1-r0/recipe-sysroot
<br>
&gt; -O2 -pipe -g -feliminate-unused-debug-types <br>
&gt; -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/t=
est/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnu=
eabi/gdb/7.12.1-r0=3D/usr/src/debug/gdb/7.12.1-r0
<br>
&gt; -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/t=
est/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnu=
eabi/gdb/7.12.1-r0/recipe-sysroot-native=3D
<br>
&gt; -fdebug-prefix-map=3D/media/chewlm86/ext_data_drive/yocto-celebes-c4/t=
est/yocto-celebes-c4/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnu=
eabi/gdb/7.12.1-r0/recipe-sysroot=3D
<br>
&gt;&nbsp;&nbsp; -fvisibility-inlines-hidden&nbsp;&nbsp; -static-libstdc&#4=
3;&#43; -static-libgcc -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed&nbsp;=
&nbsp; \<br>
&gt; | -o gdb gdb.o arm.o arm-linux.o arm-get-next-pcs.o arm-tdep.o arm-lin=
ux-tdep.o glibc-tdep.o solib-svr4.o symfile-mem.o
<br>
&gt; linux-tdep.o linux-record.o ser-base.o ser-unix.o ser-pipe.o ser-tcp.o=
 inf-ptrace.o fork-child.o arm-linux-nat.o
<br>
&gt; aarch32-linux-nat.o proc-service.o linux-thread-db.o linux-nat.o linux=
-osdata.o linux-fork.o linux-procfs.o
<br>
&gt; linux-ptrace.o linux-waitpid.o linux-personality.o linux-namespaces.o =
remote.o dcache.o tracepoint.o ax-general.o
<br>
&gt; ax-gdb.o remote-fileio.o remote-notif.o ctf.o tracefile.o tracefile-tf=
ile.o&nbsp; cli-dump.o cli-decode.o cli-script.o
<br>
&gt; cli-cmds.o cli-setshow.o cli-logging.o cli-interp.o cli-utils.o mi-out=
.o mi-console.o mi-cmds.o mi-cmd-catch.o
<br>
&gt; mi-cmd-env.o mi-cmd-var.o mi-cmd-break.o mi-cmd-stack.o mi-cmd-file.o =
mi-cmd-disas.o mi-symbol-cmds.o mi-cmd-target.o
<br>
&gt; mi-cmd-info.o mi-interp.o mi-main.o mi-parse.o mi-getopt.o python.o gu=
ile.o elfread.o stap-probe.o dtrace-probe.o
<br>
&gt; posix-hdep.o posix-strerror.o c-exp.o cp-name-parser.o ada-exp.o jv-ex=
p.o d-exp.o f-exp.o go-exp.o m2-exp.o p-exp.o
<br>
&gt; rust-exp.o version.o annotate.o addrmap.o auto-load.o auxv.o agent.o b=
fd-target.o blockframe.o breakpoint.o
<br>
&gt; break-catch-sig.o break-catch-throw.o break-catch-syscall.o findvar.o =
regcache.o cleanups.o charset.o continuations.o
<br>
&gt; corelow.o disasm.o dummy-frame.o dfp.o source.o value.o eval.o valops.=
o valarith.o valprint.o printcmd.o block.o
<br>
&gt; symtab.o psymtab.o symfile.o symfile-debug.o symmisc.o linespec.o dict=
ionary.o namespace.o location.o infcall.o infcmd.o
<br>
&gt; infrun.o expprint.o environ.o stack.o tid-parse.o thread.o thread-fsm.=
o exceptions.o extension.o filesystem.o
<br>
&gt; filestuff.o inf-child.o interps.o minidebug.o main.o macrotab.o macroc=
md.o macroexp.o macroscope.o mi-common.o
<br>
&gt; event-loop.o event-top.o inf-loop.o completer.o gdbarch.o arch-utils.o=
 gdbtypes.o gdb_bfd.o gdb_obstack.o osabi.o
<br>
&gt; copying.o memattr.o mem-break.o target.o target-dcache.o parse.o langu=
age.o build-id.o buildsym.o findcmd.o std-regs.o
<br>
&gt; signals-state-save-restore.o signals.o exec.o reverse.o bcache.o objfi=
les.o observer.o minsyms.o maint.o demangle.o
<br>
&gt; dbxread.o coffread.o coff-pe-read.o dwarf2read.o mipsread.o stabsread.=
o corefile.o dwarf2expr.o dwarf2loc.o
<br>
&gt; dwarf2-frame.o dwarf2-frame-tailcall.o ada-lang.o c-lang.o d-lang.o f-=
lang.o objc-lang.o ada-tasks.o ada-varobj.o
<br>
&gt; c-varobj.o ui-out.o cli-out.o varobj.o vec.o go-lang.o go-valprint.o g=
o-typeprint.o jv-lang.o jv-valprint.o
<br>
&gt; jv-typeprint.o jv-varobj.o m2-lang.o opencl-lang.o p-lang.o p-typeprin=
t.o p-valprint.o selftest.o sentinel-frame.o
<br>
&gt; complaints.o typeprint.o ada-typeprint.o c-typeprint.o f-typeprint.o m=
2-typeprint.o ada-valprint.o c-valprint.o
<br>
&gt; cp-valprint.o d-valprint.o f-valprint.o m2-valprint.o ser-event.o seri=
al.o mdebugread.o top.o utils.o ui-file.o
<br>
&gt; user-regs.o frame.o frame-unwind.o doublest.o frame-base.o inline-fram=
e.o gnu-v2-abi.o gnu-v3-abi.o cp-abi.o
<br>
&gt; cp-support.o cp-namespace.o d-namespace.o reggroups.o rust-lang.o trad=
-frame.o tramp-frame.o solib.o solib-target.o
<br>
&gt; prologue-value.o memory-map.o memrange.o xml-support.o xml-syscall.o x=
ml-utils.o target-descriptions.o target-memory.o
<br>
&gt; xml-tdesc.o xml-builtin.o inferior.o osdata.o gdb_usleep.o record.o re=
cord-full.o gcore.o gdb_vecs.o jit.o progspace.o
<br>
&gt; skip.o probe.o common-utils.o buffer.o ptid.o gdb-dlfcn.o common-agent=
.o format.o registry.o btrace.o record-btrace.o
<br>
&gt; waitstatus.o print-utils.o rsp-low.o errors.o common-debug.o debug.o c=
ommon-exceptions.o btrace-common.o fileio.o
<br>
&gt; common-regcache.o compile.o compile-c-symbols.o compile-c-types.o comp=
ile-object-load.o compile-object-run.o
<br>
&gt; compile-loc2c.o compile-c-support.o inflow.o&nbsp;&nbsp;&nbsp; init.o =
\<br>
&gt; |&nbsp;&nbsp; -lreadline ../opcodes/libopcodes.a ../bfd/libbfd.a -L./.=
./zlib -lz&nbsp; ../libiberty/libiberty.a
<br>
&gt; ../libdecnumber/libdecnumber.a&nbsp;&nbsp;&nbsp; -ldl -ldl -lncurses -=
lm -ldl -lexpat&nbsp;&nbsp;&nbsp; ../libiberty/libiberty.a
<br>
&gt;&nbsp;&nbsp; build-gnulib/import/libgnu.a&nbsp; -ldl -Wl,--dynamic-list=
=3D../../gdb-7.12.1/gdb/proc-service.list<br>
&gt; | completer.o: In function `gdb_display_match_list_1':<br>
&gt; | /usr/src/debug/gdb/7.12.1-r0/gdb-7.12.1/gdb/completer.c:1862: undefi=
ned reference to
<br>
&gt; `_rl_completion_prefix_display_length'<br>
&gt; | /usr/src/debug/gdb/7.12.1-r0/gdb-7.12.1/gdb/completer.c:1862: undefi=
ned reference to `rl_sort_completion_matches'<br>
&gt; | collect2: error: ld returned 1 exit status<br>
&gt; | Makefile:1418: recipe for target 'gdb' failed<br>
&gt; | make[2]: *** [gdb] Error 1<br>
&gt; | make[2]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi/gdb'<br>
&gt; | Makefile:8827: recipe for target 'all-gdb' failed<br>
&gt; | make[1]: *** [all-gdb] Error 2<br>
&gt; | make[1]: Leaving directory <br>
&gt; '/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/b=
uild-arm-poky-linux-gnueabi'<br>
&gt; | Makefile:850: recipe for target 'all' failed<br>
&gt; | make: *** [all] Error 2<br>
&gt; | ERROR: Function failed: do_compile (log file is located at <br>
&gt; /media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4/=
build-cm1-c4/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gdb/7.12.1-r0/te=
mp/log.do_compile.11637)<br>
&gt; ERROR: Task <br>
&gt; (/media/chewlm86/ext_data_drive/yocto-celebes-c4/test/yocto-celebes-c4=
/meta/recipes-devtools/gdb/gdb_7.12.1.bb:do_compile)
<br>
&gt; failed with exit code '1'<br>
&gt; NOTE: Tasks Summary: Attempted 933 tasks of which 932 didn't need to b=
e rerun and 1 failed.<br>
&gt; <br>
&gt; Summary: 1 task failed:<br>
&gt;&nbsp;&nbsp;&nbsp; /media/chewlm86/ext_data_drive/yocto-celebes-c4/test=
/yocto-celebes-c4/meta/recipes-devtools/gdb/gdb_7.12.1.bb:do_compile<br>
&gt; Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.<br>
<br>
I had no problem building with this configuration (up to date master):<br>
<br>
Build Configuration:<br>
BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;1.34.0&quot;=
<br>
BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-=
linux&quot;<br>
NATIVELSBSTRING&nbsp;&nbsp; =3D &quot;universal&quot;<br>
TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;arm-my-distr=
o-linux-gnueabi&quot;<br>
MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &qu=
ot;raspberrypi3&quot;<br>
DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;my-distro&quot;<br>
DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D &quot;2.3&#43;snapshot-20170615&quot;<=
br>
TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;arm armv7ve vfp thumb neon =
vfpv4 callconvention-hard cortexa7&quot;<br>
TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;hard&quot;<b=
r>
meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; =3D &quot;master:b1d5267f0e31605b346af40778da0ac1ff298b78&quot;<br>
meta-raspberrypi&nbsp; =3D &quot;master:081405feaa544b5b5c55a3ac72e629f3f38=
69a26&quot;<br>
<br>
What's your configuration?<br>
<br>
-- <br>
------------------------------------------------------------<br>
Gary Thomas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; Consulting for the<br>
MLB Associates&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; Embedded world<br>
------------------------------------------------------------<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
yocto@yoctoproject.org<br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoc=
toproject.org/listinfo/yocto</a><br>
</div>
</span></font>
</body>
</html>

--_000_HE1PR0101MB16094A3230D5744371389A7EC3C00HE1PR0101MB1609_--
