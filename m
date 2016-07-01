Return-Path: <tmatsuzawa@uievolution.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E14DE00F04; Thu, 30 Jun 2016 18:16:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 899 seconds by postgrey-1.32 at yocto-www;
	Thu, 30 Jun 2016 18:16:14 PDT
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0054.outbound.protection.outlook.com [104.47.38.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7875FE00EFB
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2016 18:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-uievolution-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=INFfkppWXtoP0Fa+gIvSNc5+v8mOgNS6Wl78jF3xFVA=;
	b=rtXgp/9Ha3u0P2k1VESb3Su4Yt5/K7wU0uMQwhB6fH6bSPS9H3bdNGgG8ygUSaI1+M2hzqzrT2m8MoitdUZW8xEemWKxwIfm2VQgn1QY6raJCgjmBZvEcb4UXm5sYEOQgcZKitPGAkFL9bK4PRd5dg8rubLlKtKlfkvxrY1GEUk=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1595.prod.exchangelabs.com (10.163.139.139) with Microsoft
	SMTP Server (TLS) id 15.1.523.12; Fri, 1 Jul 2016 01:01:14 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0523.024; Fri, 1 Jul 2016 01:01:14 +0000
From: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: ICECC build failures?
Thread-Index: AQHR0zQQ9w4VZhvuCkOEYF0Vkz5wtA==
Date: Fri, 1 Jul 2016 01:01:13 +0000
Message-ID: <CY1PR0101MB15945556E27A16104116E87FD7250@CY1PR0101MB1594.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@uievolution.com; 
x-originating-ip: [132.245.44.5]
x-ms-office365-filtering-correlation-id: 2e49707b-4b35-4bfc-614b-08d3a14b3345
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1595;
	6:mnqvq5oSaQMsPudCnDuPHVISofT+1zSZ2MMjWSqxqAb4aPU+vQqulP566LQ04c0NrF+xZ3KHdtSHI3+UpViSbbl2LUq0oN8+l28KjPK0vY2PBRSBj6uaDMtqdy2xGNlGJm221l97sNHcAHB/LEMsoUpWpDmXXEydeHLhqeUTvycL98n41csgSNT+vh0V49ks0nDuUBL7FM8sSlw6l3Ip1CaGTVrdIo7b6K1d+YQNt9wO8pnt7JfCTKkNqwJT3PFyYSv94Nt4bYcPFhelFMvAj96VuyGO/OYh9nbrKT6b9XM3irv4vnNFO0ibtBSuGh+H;
	5:uoyt8LyhodDKqW/m30QfcdAFqe6e7+nSWkk8k6I9fQsTzMjLMg6sAF6/YwIJjnVgrk+tJoyt1m51W5gPICbN3ZEVWkbN8lY3mVjqa2eqx9uJ/kvysR4ge6TkJPocdE5CLDbvHAaQL0sCFgwy6jIxwQ==;
	24:lqNohttWZDViVeEuSOtAwNG/JVgSAqWBlTGAWxa6sh/1VRng7BT7Z46iDXbdp7+fMuIhpg2i8T+NBW/bt6BVT1Im7UQ6r8V195JK/dFq19A=;
	7:GPZy8gbOQTrQe29csWg1iFxGg0n3oxQu/lFCIBQNJx7aZeL5MTc2kMIjQxUdm4Ccj5rzw1T2iLoRpJb5hQ0B7+u0RdbzVlztZDZ/rWyM3pBD78SIz5/vGEWuCfPj1gsTfz+HPR+lKzDmKnBO0YSwhUS8Z0uPwrefLuRUC4hGLO3LSainy7pyaQku94KirD4cDam/TdpNdLskH+J7UnUsEEU7aliXfFVPFuRqgSfF5I55CoXI/Q2ONqMyd+HWCsxgrnOraBixSXV75A/Z/2h/Zg==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0101MB1595;
x-microsoft-antispam-prvs: <CY1PR0101MB15950B7922FEC107C12BDAF3D7250@CY1PR0101MB1595.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(2401047)(5005006)(8121501046)(10201501046)(3002001);
	SRVR:CY1PR0101MB1595; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1595; 
x-forefront-prvs: 0990C54589
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(199003)(189002)(106116001)(101416001)(11100500001)(66066001)(7696003)(8936002)(7846002)(3480700004)(5003600100003)(7736002)(2900100001)(229853001)(106356001)(105586002)(86362001)(2501003)(9686002)(122556002)(450100001)(5002640100001)(19580395003)(3660700001)(77096005)(2351001)(87936001)(81166006)(8676002)(1730700003)(3280700002)(81156014)(305945005)(10400500002)(107886002)(586003)(50986999)(68736007)(54356999)(5640700001)(33656002)(97736004)(6116002)(2906002)(3846002)(110136002)(102836003)(189998001)(92566002)(74316002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1595;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: uievolution.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: uievolution.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2016 01:01:13.7209 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1595
Subject: ICECC build failures?
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
X-List-Received-Date: Fri, 01 Jul 2016 01:16:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Yocto.

Recently I am trying icecc with bitbake and amd halfway satisfied.
Good to see batch of my compilation jobs consumed by my build machines on i=
cemon
is not bad.

However, I can see my builds fail in certain condition eveytime and
wonder if it is a known issue and a workaround exists?

Symptom is the follows.

1) Using x86_64 build host and build machies.=A0 All of them are running
Ubutnu 16.04.
2) My image is based on Fido (18.0).
3) I am just doing INHERIT +=3D "icecc" and the jobs are shared with
build machines correctly.
4) x86 (genericx86) build is OK with and without icecee.
5) imx (sabre6qauto) build is OK without icecc, but NG (fails) with icecc.

The following is the failure log.
It says relocation record error during linkage.=A0 I googled for a while
and learned similar error could be seen if there is binutils (libtool)
version mistmatch.

Maybe a) the host-provided native toolchain and b) yocto-provided
native/cross toolchain have version mismatch?=A0 But I do not see this
error when I am not using icecc.=A0 I just think if it is OK without
icecc, the same should be expected even if I use icecc (it just runs
the same toolchain on different PCs?)

=3D=3D=3D=3D
| x86_64-pokysdk-linux-libtool: link: x86_64-pokysdk-linux-gcc
--sysroot=3D/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokys=
dk-linux
-shared=A0 =A0.libs/conf.o .libs/confmisc.o .libs/input.o .libs/output.o
.libs/async.o .libs/error.o .libs/dlmisc.o .libs/socket.o
.libs/shmarea.o .libs/userfile.o .libs/names.o=A0 =A0-Wl,--whole-archive
control/.libs/libcontrol.a mixer/.libs/libmixer.a pcm/.libs/libpcm.a
timer/.libs/libtimer.a rawmidi/.libs/librawmidi.a
hwdep/.libs/libhwdep.a seq/.libs/libseq.a ucm/.libs/libucm.a
alisp/.libs/libalisp.a -Wl,--no-whole-archive
-L/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokysdk-linux/o=
pt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/usr/lib
-L/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokysdk-linux/o=
pt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/lib
-lm -ldl -lpthread -lrt
--sysroot=3D/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokys=
dk-linux
-O2 -Wl,--version-script=3DVersions -Wl,--no-undefined -Wl,-rpath-link
-Wl,/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokysdk-linux=
/opt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/usr/lib
-Wl,-rpath -Wl,/opt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/usr=
/lib
-Wl,-O1 -Wl,-rpath-link
-Wl,/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokysdk-linux=
/opt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/lib
-Wl,-rpath -Wl,/opt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/lib
-Wl,-O1=A0 =A0-Wl,-soname -Wl,libasound.so.2 -o .libs/libasound.so.2.0.0
| /mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-linux/usr/libexec/x86_64-=
pokysdk-linux/gcc/x86_64-pokysdk-linux/4.9.2/ld:
.libs/conf.o: relocation R_X86_64_32 against `.rodata.str1.1' can not
be used when making a shared object; recompile with -fPIC
| .libs/conf.o: error adding symbols: Bad value
| collect2: error: ld returned 1 exit status
| Makefile:484: recipe for target 'libasound.la' failed
| make[2]: *** [libasound.la] Error 1
| make[2]: Leaving directory
'/mnt/ssd2/yocto/dev/tmp/imx-wk1/work/x86_64-nativesdk-pokysdk-linux/native=
sdk-alsa-lib/1.0.28-r0/build/src'
| Makefile:538: recipe for target 'all-recursive' failed
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory
'/mnt/ssd2/yocto/dev/tmp/imx-wk1/work/x86_64-nativesdk-pokysdk-linux/native=
sdk-alsa-lib/1.0.28-r0/build/src'
| Makefile:399: recipe for target 'all-recursive' failed
| make: *** [all-recursive] Error 1
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/mnt/ssd2/yocto/dev/tmp/imx-wk1/work/x86_64-nativesdk-pokysdk-linux/natives=
dk-alsa-lib/1.0.28-r0/temp/log.do_compile.31561)
=3D=3D=3D=3D




