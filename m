Return-Path: <B19537@freescale.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe006.messaging.microsoft.com [213.199.154.209])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C9A9E01430
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 02:34:29 -0800 (PST)
Received: from mail89-am1-R.bigfish.com (10.3.201.237) by
	AM1EHSOBE010.bigfish.com (10.3.204.30) with Microsoft SMTP Server id
	14.1.225.23; Thu, 6 Dec 2012 10:34:27 +0000
Received: from mail89-am1 (localhost [127.0.0.1])	by mail89-am1-R.bigfish.com
	(Postfix) with ESMTP id 523241E0365	for <yocto@yoctoproject.org>;
	Thu,  6 Dec 2012 10:34:27 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 1
X-BigFish: VS1(zzzz1de0h1202h1d1ah1d2ahzzz2dh2a8h668h839h8e2h8e3h944hd25hf0ah1220h1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh15d0h162dh1631hbe9i1155h)
Received: from mail89-am1 (localhost.localdomain [127.0.0.1]) by mail89-am1
	(MessageSwitch) id 1354790064389195_5756;
	Thu,  6 Dec 2012 10:34:24 +0000 (UTC)
Received: from AM1EHSMHS005.bigfish.com (unknown [10.3.201.253])	by
	mail89-am1.bigfish.com (Postfix) with ESMTP id 4B6B93E004A	for
	<yocto@yoctoproject.org>; Thu,  6 Dec 2012 10:34:24 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS005.bigfish.com
	(10.3.207.105) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 6 Dec 2012 10:22:20 +0000
Received: from 039-SN2MPN1-021.039d.mgd.msft.net ([169.254.1.190]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.02.0318.003; Thu, 6 Dec 2012 10:22:19 +0000
From: Luo Zhenhua-B19537 <B19537@freescale.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Issue of external toolchain usage in Yocto
Thread-Index: Ac3Tm5ESjcLY7ZxJR4m3FI2AaKnczQ==
Date: Thu, 6 Dec 2012 10:22:18 +0000
Message-ID: <CA452391058F6D4E9715FB2C29D9312A01378161@039-SN2MPN1-021.039d.mgd.msft.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.208.134]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: Issue of external toolchain usage in Yocto
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
X-List-Received-Date: Thu, 06 Dec 2012 10:34:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I tried to use CS external toolchain to build images in Yocto, I met follow=
ing issue when doing configure for package.

configure:2728: checking for powerpc-linux-gnu-gcc  -m32   -mcpu=3D8548 -ma=
bi=3Dspe -mspe -mfloat-gprs=3Ddouble --sysroot=3D/home/yocto/poky/build_bsc=
9131rdb_release/tmp/sysroots/bsc9131rdb-tcbootstrap option to accept ISO C8=
9
configure:2802: powerpc-linux-gnu-gcc  -m32   -mcpu=3D8548 -mabi=3Dspe -msp=
e -mfloat-gprs=3Ddouble --sysroot=3D/home/yocto/poky/build_bsc9131rdb_relea=
se/tmp/sysroots/bsc9131rdb-tcbootstrap  -c -isystem/opt/freescale/usr/local=
/gcc-4.5.55-eglibc-2.11.55/powerpc-linux-gnu/powerpc-fsl-linux-gnuspe/inclu=
de -I/home/yocto/poky/build_bsc9131rdb_release/tmp/sysroots/bsc9131rdb -O2 =
-pipe -g -feliminate-unused-debug-types  conftest.c >&5
conftest.c:9:19: fatal error: stdio.h: No such file or directory

Firstly I run above compile command manually, it failed as following:=20
$ /opt/freescale/usr/local/gcc-4.5.55-eglibc-2.11.55/powerpc-linux-gnu/bin/=
powerpc-linux-gnu-gcc -m32 -mcpu=3D8548 -mabi=3Dspe -mspe -mfloat-gprs=3Ddo=
uble --sysroot=3D/home/yocto/poky/build_bsc9131rdb_release/tmp/sysroots/bsc=
9131rdb-tcbootstrap -c -isystem/opt/freescale/usr/local/gcc-4.5.55-eglibc-2=
.11.55/powerpc-linux-gnu/powerpc-fsl-linux-gnuspe/include  -I/home/yocto/po=
ky/build_bsc9131rdb_release/tmp/sysroots/bsc9131rdb  -O2 -pipe -g -felimina=
te-unused-debug-types conftest.c
conftest.c:10:19: fatal error: stdio.h: No such file or directory
compilation terminated.

Secondly I removed --sysroot flag, the build process passed.=20
$ /opt/freescale/usr/local/gcc-4.5.55-eglibc-2.11.55/powerpc-linux-gnu/bin/=
powerpc-linux-gnu-gcc -m32 -mcpu=3D8548 -mabi=3Dspe -mspe -mfloat-gprs=3Ddo=
uble -c -isystem/opt/freescale/usr/local/gcc-4.5.55-eglibc-2.11.55/powerpc-=
linux-gnu/powerpc-fsl-linux-gnuspe/include  -I/home/yocto/poky/build_bsc913=
1rdb_release/tmp/sysroots/bsc9131rdb  -O2 -pipe -g -feliminate-unused-debug=
-types conftest.c

I also used the toolchain built by Yocto, the same issue happened.

I did following change in meta/conf/distro/include/tcmode-external-csl.inc,=
 is there anything missing to use external toolchain in Yocto?
-EXTERNAL_TOOLCHAIN ?=3D "/usr/local/csl/${TARGET_ARCH}"
+EXTERNAL_TOOLCHAIN ?=3D "/opt/freescale/usr/local/gcc-4.5.55-eglibc-2.11.5=
5/powerpc-linux-gnu"

Content of my contest.c:
#define PACKAGE_NAME "module-init-tools"
#define PACKAGE_TARNAME "module-init-tools"
#define PACKAGE_VERSION "3.16"
#define PACKAGE_STRING "module-init-tools 3.16"
#define PACKAGE_BUGREPORT ""
#define PACKAGE_URL ""
#define PACKAGE "module-init-tools"
#define VERSION "3.16"

#include <stdio.h>

int main ()
{
  ;
  return 0;
}


Best Regards,

Zhenhua




