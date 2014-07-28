Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6CB0E006B5; Mon, 28 Jul 2014 10:34:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [207.46.163.236 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 871 seconds by postgrey-1.32 at yocto-www;
	Mon, 28 Jul 2014 10:34:46 PDT
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2lp0236.outbound.protection.outlook.com [207.46.163.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B941EE00547
	for <yocto@yoctoproject.org>; Mon, 28 Jul 2014 10:34:46 -0700 (PDT)
Received: from BY2PR02CA005.namprd02.prod.outlook.com (10.255.247.25) by
	BY2PR02MB266.namprd02.prod.outlook.com (10.242.236.143) with Microsoft
	SMTP Server (TLS) id 15.0.995.14; Mon, 28 Jul 2014 17:20:13 +0000
Received: from BN1AFFO11FD035.protection.gbl (2a01:111:f400:7c10::159) by
	BY2PR02CA005.outlook.office365.com (2a01:111:e400:2c16::25) with
	Microsoft SMTP Server (TLS) id 15.0.995.14 via Frontend Transport;
	Mon, 28 Jul 2014 17:20:12 +0000
Received: from mail.sierrawireless.com (208.81.121.44) by
	BN1AFFO11FD035.mail.protection.outlook.com (10.58.52.159) with
	Microsoft SMTP Server (TLS) id 15.0.990.10 via Frontend Transport;
	Mon, 28 Jul 2014 17:20:12 +0000
Received: from [192.168.3.163] (184.71.143.26) by
	CARMD-EXCHHUB01.sierrawireless.local (10.0.6.2) with Microsoft SMTP
	Server (TLS) id 8.3.348.2; Mon, 28 Jul 2014 10:20:11 -0700
From: Darcy Watkins <darcy.watkins@inmotiontechnology.com>
To: yocto <yocto@yoctoproject.org>
Date: Mon, 28 Jul 2014 10:20:10 -0700
Message-ID: <1406568010.2490.20.camel@kihei.inmotion.gotdns.com>
MIME-Version: 1.0
X-Mailer: Evolution 2.28.3 (2.28.3-30.el6) 
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:208.81.121.44; CTRY:CA; IPV:NLI; IPV:NLI;
	EFV:NLI; SFV:NSPM;
	SFS:(6009001)(438002)(199002)(189002)(87286001)(4396001)(50226001)(74662001)(74502001)(104166001)(83072002)(103116003)(102836001)(88136002)(87936001)(50466002)(92726001)(229853001)(33646002)(107886001)(110136001)(99396002)(93916002)(104016003)(85852003)(92566001)(89996001)(106466001)(50986999)(107046002)(46102001)(95666004)(81542001)(31966008)(23676002)(76482001)(62966002)(19580395003)(77156001)(21056001)(44976005)(77982001)(79102001)(83322001)(81342001)(80022001)(85306003)(64706001)(6806004)(47776003)(20776003)(42882001);
	DIR:OUT; SFP:; SCL:1; SRVR:BY2PR02MB266;
	H:mail.sierrawireless.com; FPR:; MLV:sfv;
	PTR:spf.sierrawireless.com,carmdsmtp.sierrawireless.com; A:1;
	MX:1; LANG:en; 
X-Microsoft-Antispam: BCL:0;PCL:0;RULEID:
X-Forefront-PRVS: 0286D7B531
Received-SPF: Pass (protection.outlook.com: domain of sierrawireless.com
	designates 208.81.121.44 as permitted sender)
	receiver=protection.outlook.com; client-ip=208.81.121.44;
	helo=mail.sierrawireless.com;
Authentication-Results: spf=pass (sender IP is 208.81.121.44)
	smtp.mailfrom=dwatkins@sierrawireless.com; 
X-OriginatorOrg: SierraWirelessInc.onmicrosoft.com
Subject: binutils-native 2.24 build broken
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
X-List-Received-Date: Mon, 28 Jul 2014 17:34:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I encounter the following while building based on 'daisy':

| gcc  -DHAVE_CONFIG_H -I. -I/home/dwatkins/workspace/epsilon/daisy_MG-os_t=
est2/build/tmp/work/i686-linux/binutils-native/2.24-r0/binutils-2.24/ld  -I=
. -I/home/dwatkins/workspace/epsilon/daisy_MG-os_test2/build/tmp/work/i686-=
linux/binutils-native/2.24-r0/binutils-2.24/ld -I../bfd -I/home/dwatkins/wo=
rkspace/epsilon/daisy_MG-os_test2/build/tmp/work/i686-linux/binutils-native=
/2.24-r0/binutils-2.24/ld/../bfd -I/home/dwatkins/workspace/epsilon/daisy_M=
G-os_test2/build/tmp/work/i686-linux/binutils-native/2.24-r0/binutils-2.24/=
ld/../include  -isystem/home/dwatkins/workspace/epsilon/daisy_MG-os_test2/b=
uild/tmp/sysroots/i686-linux/usr/include -O2 -pipe -DENABLE_PLUGINS -DLOCAL=
EDIR=3D"\"/home/dwatkins/workspace/epsilon/daisy_MG-os_test2/build/tmp/sysr=
oots/i686-linux/usr/share/locale\"" -isystem/home/dwatkins/workspace/epsilo=
n/daisy_MG-os_test2/build/tmp/sysroots/i686-linux/usr/include -W -Wall -Wst=
rict-prototypes -Wmissing-prototypes -Wshadow -Werror -isystem/home/dwatkin=
s/workspace/epsilon/daisy_MG-os_test2/build/tmp/sysroots/i686-linux/usr/inc=
lude -O2 -pipe -c eavr25.c
| gcc  -DHAVE_CONFIG_H -I. -I/home/dwatkins/workspace/epsilon/daisy_MG-os_t=
est2/build/tmp/work/i686-linux/binutils-native/2.24-r0/binutils-2.24/ld  -I=
. -I/home/dwatkins/workspace/epsilon/daisy_MG-os_test2/build/tmp/work/i686-=
linux/binutils-native/2.24-r0/binutils-2.24/ld -I../bfd -I/home/dwatkins/wo=
rkspace/epsilon/daisy_MG-os_test2/build/tmp/work/i686-linux/binutils-native=
/2.24-r0/binutils-2.24/ld/../bfd -I/home/dwatkins/workspace/epsilon/daisy_M=
G-os_test2/build/tmp/work/i686-linux/binutils-native/2.24-r0/binutils-2.24/=
ld/../include  -isystem/home/dwatkins/workspace/epsilon/daisy_MG-os_test2/b=
uild/tmp/sysroots/i686-linux/usr/include -O2 -pipe -DENABLE_PLUGINS -DLOCAL=
EDIR=3D"\"/home/dwatkins/workspace/epsilon/daisy_MG-os_test2/build/tmp/sysr=
oots/i686-linux/usr/share/locale\"" -isystem/home/dwatkins/workspace/epsilo=
n/daisy_MG-os_test2/build/tmp/sysroots/i686-linux/usr/include -W -Wall -Wst=
rict-prototypes -Wmissing-prototypes -Wshadow -Werror -isystem/home/dwatkin=
s/workspace/epsilon/daisy_MG-os_test2/build/tmp/sysroots/i686-linux/usr/inc=
lude -O2 -pipe -c eavr3.c
| cc1: warnings being treated as errors
| eavr2.c: In function 'avr_elf_avr2_before_allocation':
| eavr2.c:1200: error: 'ehdr_start_save$type' may be used uninitialized in =
this function
| eavr2.c:1200: note: 'ehdr_start_save$type' was declared here
| make[4]: *** [eavr2.o] Error 1
| make[4]: *** Waiting for unfinished jobs....
| cc1: warnings being treated as errors
| eavr1.c: In function 'avr_elf_avr1_before_allocation':
| eavr1.c:1200: error: 'ehdr_start_save$type' may be used uninitialized in =
this function
| eavr1.c:1200: note: 'ehdr_start_save$type' was declared here
| make[4]: *** [eavr1.o] Error 1
| cc1: warnings being treated as errors
| eavr25.c: In function 'avr_elf_avr25_before_allocation':
| eavr25.c:1200: error: 'ehdr_start_save$type' may be used uninitialized in=
 this function
| eavr25.c:1200: note: 'ehdr_start_save$type' was declared here
| make[4]: *** [eavr25.o] Error 1
| cc1: warnings being treated as errors
| eavr3.c: In function 'avr_elf_avr3_before_allocation':
| eavr3.c:1200: error: 'ehdr_start_save$type' may be used uninitialized in =
this function
| eavr3.c:1200: note: 'ehdr_start_save$type' was declared here
| make[4]: *** [eavr3.o] Error 1
| make[4]: Leaving directory `/home/dwatkins/workspace/epsilon/daisy_MG-os_=
test2/build/tmp/work/i686-linux/binutils-native/2.24-r0/binutils-2.24/build=
.i686-linux.i686-linux/ld'
| make[3]: *** [all-recursive] Error 1
| make[3]: Leaving directory `/home/dwatkins/workspace/epsilon/daisy_MG-os_=
test2/build/tmp/work/i686-linux/binutils-native/2.24-r0/binutils-2.24/build=
.i686-linux.i686-linux/ld'
| make[2]: *** [all] Error 2
| make[2]: Leaving directory `/home/dwatkins/workspace/epsilon/daisy_MG-os_=
test2/build/tmp/work/i686-linux/binutils-native/2.24-r0/binutils-2.24/build=
.i686-linux.i686-linux/ld'
| make[1]: *** [all-ld] Error 2
| make[1]: Leaving directory `/home/dwatkins/workspace/epsilon/daisy_MG-os_=
test2/build/tmp/work/i686-linux/binutils-native/2.24-r0/binutils-2.24/build=
.i686-linux.i686-linux'
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| WARNING: /home/dwatkins/workspace/epsilon/daisy_MG-os_test2/build/tmp/wor=
k/i686-linux/binutils-native/2.24-r0/temp/run.do_compile.11497:1 exit 1 fro=
m
|   exit 1
| ERROR: Function failed: do_compile (log file is located at /home/dwatkins=
/workspace/epsilon/daisy_MG-os_test2/build/tmp/work/i686-linux/binutils-nat=
ive/2.24-r0/temp/log.do_compile.11497)
ERROR: Task 780 (virtual:native:/home/dwatkins/workspace/epsilon/daisy_MG-o=
s_test2/sources/poky/meta/recipes-devtools/binutils/binutils_2.24.bb, do_co=
mpile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2208 tasks of which 2150 didn't need to be r=
erun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  virtual:native:/home/dwatkins/workspace/epsilon/daisy_MG-os_test2/sources=
/poky/meta/recipes-devtools/binutils/binutils_2.24.bb, do_compile
Summary: There were 9 WARNING messages shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.


I use a layout much like Freescale Community BSP project that uses
'repo' to pull together the layers based on a manifest.

I noticed this when a syncup triggered the toolchain to rebuild.

Since I hadn't had anything trigger toolchain to rebuild since July 17,
I tried 'git checkout' all my layers, oe layers and yocto layers to
specific hashes to get back to the state I had in July 17.  I blew away
the sstate-cache, cache and tmp and rebuilt from scratch.  Same thing.

Are there floating git references related to the toolchain that could
have updated independent of the meta data that could still go forward of
Jul 17?

In any case, it appears that my 64bit Fedora machine at home is not
affected by this, but my 32bit CentOS 6 machine at work is affected by
it.

Anyone know what happened?




--=20

Regards,

Darcy

---

Darcy Watkins
Staff Engineer, Firmware
In Motion Technology, a
Sierra Wireless company
350-625 Agnes St. New Westminster, BC
Canada, V3M 5Y4
[P1]


