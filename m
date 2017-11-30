Return-Path: <Michael.Roeder@avnet.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1C0DE00C97; Thu, 30 Nov 2017 12:59:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [193.34.102.164 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 901 seconds by postgrey-1.32 at yocto-www;
	Thu, 30 Nov 2017 12:59:34 PST
Received: from smtpemea2.avnet.com (smtpemea2.avnet.com [193.34.102.164])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 607D7E00B48
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 12:59:34 -0800 (PST)
Received: from DEPOIY0MX08HT01.emea.avnet.com (Not Verified[172.23.125.187])
	by smtpemea2.avnet.com with Trustwave SEG (v8, 0, 4,
	10434) (using TLS: TLSv1, AES256-SHA)
	id <B5a206db00001>; Thu, 30 Nov 2017 21:44:32 +0100
Received: from depoiy0mx08mbx4.emea.avnet.com ([fe80::b03e:9daf:4e7a:9f5b]) by
	DEPOIY0MX08HT01.emea.avnet.com ([fe80::396f:dba1:ed9a:af9d%12]) with
	mapi id 14.03.0361.001; Thu, 30 Nov 2017 21:44:32 +0100
From: "Roeder, Michael (Avnet Silica)" <Michael.Roeder@avnet.eu>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Kernel Crash when moving from Pyro to Rocko (or master):
	change in kernel compile process or flags?
Thread-Index: AdNqG8Oqr1j+qlxOTOa/ryzjsSENgA==
Date: Thu, 30 Nov 2017 20:44:31 +0000
Message-ID: <F845364119BAFA4C992B3CB245C60ADC28C797A0@depoiy0mx08mbx4.emea.avnet.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.23.125.44]
MIME-Version: 1.0
Subject: Kernel Crash when moving from Pyro to Rocko (or master): change in kernel compile process or flags?
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
X-List-Received-Date: Thu, 30 Nov 2017 20:59:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
I am experiencing a Kernel crash when moving my system from Yocto 2.3 (Pyro=
) to Rocko or Master.
Target system is an ARMv7 (NXP Layerscape LS1021a, built on Cortex-A7).
This is what I did:
1) switched poky version
2) re-built same image in a new, blank directory

Results:
Root-FS works fine, the kernel crashes with an undefined instruction oops.
Just exchanging the kernel zImage with the one compiled with Pyro (same rec=
ipe), my system works fine again.

What I tried so far:
1) checked and compared the kernel configs generated: 100% identical
2) switched gcc back to the version used in Pyro (6.3) instead of 7.2: kern=
el still crashes, same oops, no changes. So it's not related to GCC 7.2
3) checked on different boards: same issue for the same board type, but the=
 switch to rocko worked fine for a system based on Cortex-A9.

I am using separate tmp directories and am not sharing sstate. I always sta=
rted builds in blank build directories.
The error is reproducible (100%)
It was also present with all of the various snapshots of the master branch =
I tried

What I suspect: there are some changes in the ways that gcc is called from =
pyro to rocko. Maybe one of the switches, or features, etc
Before deep-diving into the trial and error phase of reproducing the CFLAGS=
, etc:
Is anyone experiencing the same issues?
* What exactly has changed in the way the kernel build is called (methods, =
compile/link flags, etc) between pyro and rocko? *
* Is there a way to (easily) disable some of the features to test which one=
 causes the issue? *
* Any suspicions about what could cause this? *

Pls. find a log of the crash below, and an excerpt of my kernel recipe and =
machine configuration.

Thanks in advance for your help,
Best regards,
Michael

-------------
VFS: Mounted root (ext4 filesystem) on device 179:1.
devtmpfs: mounted
Freeing unused kernel memory: 2048K
Internal error: Oops - undefined instruction: 0 [#1] SMP THUMB2
Modules linked in:
CPU: 1 PID: 1 Comm: init Not tainted 4.14.2-avnet-nxp #2
Hardware name: Freescale LS1021A
task: bf0a0000 task.stack: bf09a000
PC is at ret_fast_syscall+0x2/0x52
LR is at SyS_brk+0x109/0x128
pc : [<80205fc2>]    lr : [<802c513d>]    psr: 60000013
sp : bf09bfa8  ip : 70c5387d  fp : 00001000
r10: 00000000  r9 : bf09a000  r8 : 802061a4
r7 : 0000002d  r6 : 76f71bac  r5 : 00010034  r4 : 00000009
r3 : 000273c8  r2 : ffff0001  r1 : 00000000  r0 : 00028000
Flags: nZCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none
Control: 70c5387d  Table: be7d1000  DAC: fffbfff3
Process init (pid: 1, stack limit =3D 0xbf09a210)
Stack: (0xbf09bfa8 to 0xbf09c000)
bfa0:                   00000009 00010034 00000000 7ee86fea 00000000 000000=
01
bfc0: 00000009 00010034 76f71bac 0000002d 00000000 00000001 00000001 000010=
00
bfe0: 7ee86f14 7ee86e4c 76f87a58 76f88e88 60000010 00000000 00000000 000000=
00
Code: 20012000 0000bd08 00000000 b6720000 (2008f8d9)
---[ end trace 7bab6dceda641aab ]---
Kernel panic - not syncing: Attempted to kill init! exitcode=3D0x0000000b

CPU0: stopping
CPU: 0 PID: 0 Comm: swapper/0 Tainted: G      D         4.14.2-avnet-nxp #2
Hardware name: Freescale LS1021A
[<8020bbe9>] (unwind_backtrace) from [<80208e77>] (show_stack+0xb/0xc)
[<80208e77>] (show_stack) from [<8066af19>] (dump_stack+0x69/0x78)
[<8066af19>] (dump_stack) from [<8020b1d5>] (handle_IPI+0x261/0x274)
[<8020b1d5>] (handle_IPI) from [<802012b1>] (gic_handle_irq+0x61/0x64)
[<802012b1>] (gic_handle_irq) from [<8067d953>] (__irq_svc+0x53/0x7c)
Exception stack(0x80e01f38 to 0x80e01f80)
1f20:                                                       00000000 000027=
d0
1f40: 3eb79000 80212641 ffffe000 80e03cd0 80e03c74 80e7f3ab 8096e480 80e03c=
40
1f60: 80e8ce00 80c42a30 01400000 80e01f88 80206a3d 80206a3e 40000033 ffffff=
ff
[<8067d953>] (__irq_svc) from [<80206a3e>] (arch_cpu_idle+0x22/0x24)
[<80206a3e>] (arch_cpu_idle) from [<802405bf>] (do_idle+0x9f/0xe4)
[<802405bf>] (do_idle) from [<802407bb>] (cpu_startup_entry+0x13/0x14)
[<802407bb>] (cpu_startup_entry) from [<80c00a05>] (start_kernel+0x305/0x31=
0)
---[ end Kernel panic - not syncing: Attempted to kill init! exitcode=3D0x0=
000000b
-----------------------

Excerpt from linux_xxx.bb:
----
DEPENDS_kernel-base   +=3D "kernel-devicetree"

LINUX_VERSION           =3D "4.14-stable"
S =3D "${WORKDIR}/git"
PR =3D "r1"
SRCREV =3D "8292fd8d726105abc01dae26d0a2cddcf53d4e0f"
PV     =3D "4.14.2"
SRC_URI =3D " \
    git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git;b=
ranch=3Dmaster;protocol=3Dgit;nobranch=3D1 \
"
SRC_URI_append_ls1021a   =3D " file://defconfig "
SRC_URI_append_ls1021a   =3D " file://pcie.cfg file://caam.cfg file://usb.c=
fg file://bt.cfg "
----

Excerpt from machine.conf
---
SOC_FAMILY =3D "ls1021a"
TARGET_ARCH =3D "arm"
DEFAULTTUNE =3D "cortexa7hf-neon-vfpv4"
IMAGE_INSTALL_append =3D " kernel-modules kernel-devicetree kernel-image"
KERNEL_IMAGETYPE =3D "zImage"

KERNEL_EXTRA_ARGS +=3D "LOADADDR=3D${UBOOT_ENTRYPOINT}"
EXTRA_IMAGEDEPENDS +=3D "virtual/bootloader"
----

