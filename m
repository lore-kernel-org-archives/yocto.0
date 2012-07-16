Return-Path: <B29882@freescale.com>
Received: from db3outboundpool.messaging.microsoft.com
	(db3ehsobe004.messaging.microsoft.com [213.199.154.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D30FCE00283
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 15:11:05 -0700 (PDT)
Received: from mail59-db3-R.bigfish.com (10.3.81.231) by
	DB3EHSOBE003.bigfish.com (10.3.84.23) with Microsoft SMTP Server id
	14.1.225.23; Mon, 16 Jul 2012 22:11:05 +0000
Received: from mail59-db3 (localhost [127.0.0.1])	by mail59-db3-R.bigfish.com
	(Postfix) with ESMTP id 942951C024E;
	Mon, 16 Jul 2012 22:11:04 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3h946hf0ah107ahbe9i)
Received: from mail59-db3 (localhost.localdomain [127.0.0.1]) by mail59-db3
	(MessageSwitch) id 1342476662194941_12429;
	Mon, 16 Jul 2012 22:11:02 +0000 (UTC)
Received: from DB3EHSMHS001.bigfish.com (unknown [10.3.81.239])	by
	mail59-db3.bigfish.com (Postfix) with ESMTP id 23C9E3000C1;
	Mon, 16 Jul 2012 22:11:02 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS001.bigfish.com
	(10.3.87.101) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 16 Jul 2012 22:11:02 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.109]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0298.005; Mon, 16 Jul 2012 17:11:00 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "Serban, Laurentiu" <laurentiu.serban@intel.com>
Thread-Topic: [yocto] 1.1.2 Full Pass consolidated Test Report
Thread-Index: AQHNY5/hbr5cKoixskGHFMBAm7dmyA==
Date: Mon, 16 Jul 2012 22:10:59 +0000
Message-ID: <CAEsOVNdtHsAaJX9NdtiWSa70aRcK+Q+dvUgV7FWXu_tEkSEQYg@mail.gmail.com>
References: <E16513A01CAAFF40B65178C63CE45EEC19154E26@IRSMSX102.ger.corp.intel.com>
In-Reply-To: <E16513A01CAAFF40B65178C63CE45EEC19154E26@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 1.1.2 Full Pass consolidated Test Report
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 16 Jul 2012 22:11:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <8D498A37EA0E7A45ADCA1D8958766CED@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

Comment on 1.1.2 - I'm seeing the following issue on a CentOS 5.8 box
- do you do any QA tests on such a distribution?

| DEBUG: Staging files from
/home/mattsm/git/poky/build-edison-old/tmp/work/ppc603e-poky-linux/eglibc-l=
ocale-2.13-r16/pkgdata
to /home/mattsm/git/poky/build-edison-old/tmp/pkgdata/ppc603e-poky-linux
| DEBUG: Staging files from
/home/mattsm/git/poky/build-edison-old/tmp/work/ppc603e-poky-linux/eglibc-l=
ocale-2.13-r16/pkgdata
to /home/mattsm/git/poky/build-edison-old/tmp/pkgdata/ppc603e-poky-linux
| DEBUG: Staging files from
/home/mattsm/git/poky/build-edison-old/tmp/work/ppc603e-poky-linux/eglibc-l=
ocale-2.13-r16/shlibs
to /home/mattsm/git/poky/build-edison-old/tmp/sysroots/mpc8315e-rdb/shlibs
| DEBUG: Preparing tree
/home/mattsm/git/poky/build-edison-old/tmp/work/ppc603e-poky-linux/eglibc-l=
ocale-2.13-r16/pkgdata
for packaging at
/home/mattsm/git/poky/build-edison-old/tmp/work/ppc603e-poky-linux/eglibc-l=
ocale-2.13-r16/sstate-build-package/pkgdata
| DEBUG: Preparing tree
/home/mattsm/git/poky/build-edison-old/tmp/work/ppc603e-poky-linux/eglibc-l=
ocale-2.13-r16/shlibs
for packaging at
/home/mattsm/git/poky/build-edison-old/tmp/work/ppc603e-poky-linux/eglibc-l=
ocale-2.13-r16/sstate-build-package/shlibs
| /home/mattsm/git/poky/build-edison-old/tmp/work/ppc603e-poky-linux/eglibc=
-locale-2.13-r16/temp/run.sstate_create_package.16637:
line 83:  7735 Segmentation fault      rm -rf
/home/mattsm/git/poky/build-edison-old/tmp/work/ppc603e-poky-linux/eglibc-l=
ocale-2.13-r16/sstate-build-package/
| ERROR: Function 'sstate_create_package' failed (see
/home/mattsm/git/poky/build-edison-old/tmp/work/ppc603e-poky-linux/eglibc-l=
ocale-2.13-r16/temp/log.do_package.16637
for further information)
NOTE: package eglibc-locale-2.13-r16: task do_package: Failed
ERROR: Task 9 (/home/mattsm/git/poky/meta/recipes-core/eglibc/eglibc-locale=
_2.13.bb,
do_package) failed with exit code '1'
ERROR: '/home/mattsm/git/poky/meta/recipes-core/eglibc/eglibc-locale_2.13.b=
b'
failed

On Fri, Jul 13, 2012 at 3:52 PM, Serban, Laurentiu
<laurentiu.serban@intel.com> wrote:
>
> Hello,
>
> Here are the results for the full pass testing on 1.1.2 release.
>
>
>
> Issues:
>
> Crownbay image was copied to the wrong folder which we didn=92t find and =
had no response from anybody, so all cases on crownbay are blocked. LTP on =
sugarbay is still running.
>
>                 FRI2 sato image was not created so FRI2 tests were blocke=
d.
>
>
>
> Summary:
>
> There were 5 open bugs, three of them  were for core build system , they =
are lib64 sato image build failed due to non-existent tasks, core-image-sat=
o ipk build failed due to dependency of lib32-ofono and mklibs-native faile=
d to compile fedora17 64bit.  one issue for ADT, qemu launch failed due to =
not finding GLIBC_2.14, reported as bug 2748 and another is Ioatdma error f=
ound in dmesg log on Jasperforest. All these 5 bugs are also in Yocto 1.2  =
test cycle. For build performance, one qemux86 sato build on a Core i7 mach=
ine takes 115 minutes.
>
> For non-intel platforms there is a new bug found for build image with PAM=
 support, reported as bug 2743. This issue has been fixed in master branch =
but the patches aren't merged into edison.
>
>
>
> Commit information
>
> --------------------------------
>
> Tree/Branch: poky/edison
>
> Poky Commit: 8886aee5b9741c05886994967d9ecf420331c600
>
>
>
>
>
>
>
> Critical bugs, more than 50% test cases are blocked
>
>
>
> Only Normal, Minor or Enhancement bugs, or less than 10% test cases faile=
d
>
>
>
> Normal, Major and Critical bugs, and more than 10% test cases failed
>
>
>
>
>
> Test Result Summary
>
> Component
>
> Target
>
> Status
>
> Comments
>
> BSP
>
> Beagleboard
>
> GOOD
>
> Everything runs well
>
> Routerstationpro
>
> GOOD
>
> Everything runs well
>
> Mpc8315e-rdb
>
> GOOD
>
> Everything runs well
>
> eMenlow
>
> GOOD
>
> Vnc server issue (2700)
>
> Blacksand
>
> GOOD
>
> syslog is not started by default in background on bsps
>
> Crownbay-emgd
>
> BLOCK
>
> No image
>
> Sugarbay
>
> GOOD
>
> Everything runs well
>
> FRI2-sato-sdk
>
> BLOCK
>
> No image
>
> HuronRiver-sato-sdk
>
> GOOD
>
> Everything runs well
>
> Jasperforest-lsb
>
> GOOD
>
> Bug 2742 =96 system dmesg log check issue
>
> QEMU
>
> qemuarm
>
> GOOD
>
> Everything runs well
>
> qemuppc
>
> GOOD
>
> Everything runs well
>
> qemumips
>
> GOOD
>
> Everything runs well
>
> qemux86
>
> BUGGY
>
> Zypper issue (2694)
>
> qemux86-64
>
> BUGGY
>
> Zypper issue (2694)
>
> Core build system
>
>
>
> BUGGY
>
> Build image with PAM support failed.
>
> Multilib issues (2744, 2747), mklibs compile failure (2746)
>
> HOB
>
>
>
> GOOD
>
> Everything runs well
>
> Compliance
>
> GOOD
>
> LTP result: https://wiki.pokylinux.org/wiki/LTP_result
> POSIX result: https://wiki.pokylinux.org/wiki/Posix_result
>
> Stress
>
> GOOD
>
> Everything runs well
>
> Distribution Support
>
> GOOD
>
> beecrypt-native failed to compile on Fedora17(final) 64bit
>
> ADT
>
>
>
> BUGGY
>
> 2748 (qemu launch failure)
>
>
>
>
>
> Detailed Test Result for each component
>
> Target
>
> Total TCs
>
> Not Run
>
> Passed
>
> Failed
>
> Not testable (Blocked)
>
> Beagleboard Sato-SDK
>
> 40
>
> 0
>
> 40
>
> 0
>
> 0
>
> Routerstationpro Sato-SDK
>
> 33
>
> 0
>
> 33
>
> 0
>
> 0
>
> Mpc8315e-rdb Sato-SDK
>
> 36
>
> 0
>
> 36
>
> 0
>
> 0
>
> eMenlow Sato-SDK
>
> 67
>
> 0
>
> 66
>
> 1(bug 2700)
>
> 0
>
> n450 Sato-SDK
>
> 71
>
> 0
>
> 70
>
> 1 (bug 2646)
>
> 0
>
> Crownbay-Sato-SDK
>
> 67
>
> 0
>
> 0
>
> 0
>
> 67
>
> FRI2 Sato-SDK
>
> 86
>
> 0
>
> 0
>
> 0
>
> 86 (bug 2527)
>
> HuronRiver Sato-SDK
>
> 61
>
> 0
>
> 61
>
> 0
>
> 0
>
> Sugarbay Sato-SDK
>
> 68
>
> 0
>
> 68
>
> 0
>
> 0
>
> Jasperforest lsb-SDK
>
> 32
>
> 0
>
> 31
>
> 1 (2742)
>
> 0
>
> Qemuarm Sato
>
> 30
>
> 0
>
> 30
>
> 0
>
> 0
>
> Qemuarm Sato-SDK
>
> 35
>
> 0
>
> 35
>
> 0
>
> 0
>
> Qemumips Sato
>
> 30
>
> 0
>
> 30
>
> 0
>
> 0
>
> Qemumips Sato-SDK
>
> 35
>
> 0
>
> 35
>
> 0
>
> 0
>
> Qemuppc Sato
>
> 30
>
> 0
>
> 30
>
> 0
>
> 0
>
> Qemuppc Sato-SDK
>
> 35
>
> 0
>
> 35
>
> 0
>
> 0
>
> Qemux86-64 Sato
>
> 37
>
> 0
>
> 31
>
> 5 (bug 2694)
>
> 1 (2694)
>
> Qemux86-64 Sato-SDK
>
> 37
>
> 0
>
> 31
>
> 5 (bug 2694)
>
> 1 (2694)
>
> Qemux86 Sato
>
> 37
>
> 0
>
> 31
>
> 5 (bug 2694)
>
> 1 (2694)
>
> Qemux86 Sato-SDK
>
> 37
>
> 0
>
> 31
>
> 5 (bug 2694)
>
> 1 (2694)
>
> Core build system
>
> 20
>
> 0
>
> 17
>
> 3 (2746, 2744, 2747)
>
> 0
>
> HOB
>
> 26
>
> 0
>
> 26
>
> 0
>
> 0
>
> ADT
>
> 6
>
> 0
>
> 5
>
> 1 (2748)
>
> 0
>
> Total
>
> 956
>
>
>
> 839
>
> 27
>
> 90
>
>
>
>
>
> Component
>
> Bug Number
>
> Target Milestone
>
> System & Core OS
>
> System Usage
>
> Bug 2694 [QEMU-X86_64]zypper refresh fail
>
> Bug 2700 cannot reconnect to x11vnc
>
> Bug 2742 ioatdma error happened on jasperforest platform with edison bran=
ch
>
> Bug 2646 Windows switching failure
>
> Core build system
>
> Bug 2747  core-image-sato ipk build failed due to dependency of lib32-blu=
ez4/lib32-bluez4/lib32-bluez4
>
> Bug 2746 mklibs-native failed to compile fedora17-X86_64
>
> Bug 2744  lib64 sato image build failed due to nonexistant task
>
> Bug 2743 Useradd command fails after 10 retries with 1.1.2 20120630 build
>
> ADT
>
> Bug 2748 qemu cannot be started
>
>
>
>
>
> Laurentiu Serban
>
> QA Engineer
>
> Open Source Technology Center
>
> System Software Division Romania
>
> Desk: +40 31 8604742
>
> iNET: 88451042
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=


