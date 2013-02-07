Return-Path: <kazuya.nishimura@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 5611BE006EF
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2013 22:03:36 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r1763ZIs017542
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 6 Feb 2013 22:03:35 -0800 (PST)
Received: from ALA-MBB.corp.ad.wrs.com ([169.254.1.63]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.02.0318.004;
	Wed, 6 Feb 2013 22:03:33 -0800
From: "Nishimura, Kazuya" <kazuya.nishimura@windriver.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Build issue on dlt-daemon
Thread-Index: Ac4E+MzPnjZWqmpgQyG7eI9rSWMJxA==
Date: Thu, 7 Feb 2013 06:03:34 +0000
Message-ID: <11C819E15EE73E4496F190898E9A0BFE6638E336@ALA-MBB.corp.ad.wrs.com>
Accept-Language: ja-JP, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ccmail-original-to: yocto@yoctoproject.org
x-originating-ip: [147.11.60.224]
MIME-Version: 1.0
Subject: Build issue on dlt-daemon
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 07 Feb 2013 06:03:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dear dlt-daemon developer,

I came across a build error while building Excalibur image.

The exact error log is attached below.
The situation of the issue is that at first I built Excalibur image with MA=
CHINE=3Dvexpressa9, then next time, change it to MACHINE=3Ddm814x-evm and b=
uilt it, then the error happened. It seems dlt-daemon's Makefile still refe=
rred previous sysroot.
For a workaround, just clean the dlt-daemon, and rebuild again.

I am not sure this is bug or not, but please check the clean sequence of dl=
t-daemon if MACHINE value changes.

Sincerely,
Kaz Nishimura=20

--- Error log ---
| /home/knishimu/working/excalibur/genivi-baseline/build/tmp-eglibc-eglibc/=
sysroots/i686-linux/usr/bin/armv7a-vfp-neon-oe-linux-gnueabi/arm-oe-linux-g=
nueabi-gcc   -march=3Darmv7-a     -mthumb-interwork -mfloat-abi=3Dsoftfp -m=
fpu=3Dneon -mtune=3Dcortex-a9  --sysroot=3D/home/knishimu/working/excalibur=
/genivi-baseline/build/tmp-eglibc-eglibc/sysroots/vexpressa9  -O2 -g  -marc=
h=3Darmv7-a     -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=
=3Dcortex-a9  --sysroot=3D/home/knishimu/working/excalibur/genivi-baseline/=
build/tmp-eglibc-eglibc/sysroots/vexpressa9  -Wl,-O1 -Wl,--hash-style=3Dgnu=
 -Wl,--as-needed -Wl,--as-needed  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-n=
eeded -Wl,--as-needed   -o dlt-convert -rdynamic ../lib/libdlt.so.2.9.0 -lr=
t -lpthread -Wl,-rpath,/home/knishimu/working/excalibur/genivi-baseline/bui=
ld/tmp-eglibc-eglibc/work/armv7a-vfp-neon-oe-linux-gnueabi/dlt-daemon-2.9.0=
-r0/git/src/lib:
| /home/knishimu/working/excalibur/genivi-baseline/build/tmp-eglibc-eglibc/=
sysroots/vexpressa9/usr/lib/crt1.o: In function `_start':
| init.c:(.text+0x34): undefined reference to `main'
| collect2: error: ld returned 1 exit status
| make[2]: *** [src/console/dlt-convert] Error 1
---

