Return-Path: <mheard@x4b.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9B7FE00CE7; Sun,  1 Jul 2018 20:04:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 371 seconds by postgrey-1.32 at yocto-www;
	Sun, 01 Jul 2018 20:04:19 PDT
Received: from mail.x3b.org (mail.x3b.org [95.85.20.4])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85255E00B74
	for <yocto@yoctoproject.org>; Sun,  1 Jul 2018 20:04:19 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.x3b.org (Postfix) with ESMTP id 4482E9A7A4
	for <yocto@yoctoproject.org>; Sun,  1 Jul 2018 22:55:22 -0400 (EDT)
Received: from mail.x3b.org ([127.0.0.1])
	by localhost (mail.x3b.org [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id Kwz4awkm4HTZ for <yocto@yoctoproject.org>;
	Sun,  1 Jul 2018 22:55:21 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.x3b.org (Postfix) with ESMTP id 621CE9A7A6
	for <yocto@yoctoproject.org>; Sun,  1 Jul 2018 22:55:21 -0400 (EDT)
X-Virus-Scanned: amavisd-new at mail.x3b.org
Received: from mail.x3b.org ([127.0.0.1])
	by localhost (mail.x3b.org [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id Z1-u6qJFut2Q for <yocto@yoctoproject.org>;
	Sun,  1 Jul 2018 22:55:21 -0400 (EDT)
Received: from mail-yb0-f181.google.com (mail-yb0-f181.google.com
	[209.85.213.181])
	by mail.x3b.org (Postfix) with ESMTPSA id E5D5F9A7A4
	for <yocto@yoctoproject.org>; Sun,  1 Jul 2018 22:55:20 -0400 (EDT)
Received: by mail-yb0-f181.google.com with SMTP id s1-v6so4587415ybk.3
	for <yocto@yoctoproject.org>; Sun, 01 Jul 2018 19:58:06 -0700 (PDT)
X-Gm-Message-State: APt69E21yZ3RbreB55OQIPX2l0iB5kg/AquedcPedpviQbv+1tQqo+iJ
	VCQpqCEhgALVjJxCjcabLaaEk6oIKi7bKudM5Wc=
X-Google-Smtp-Source: ADUXVKJ0jb/2Kl+d6x+8frQs95FMflcBRZOpod1gO04glr8wOoE0rQzrEw44NY6wSbbylwBf6EgUaDHxXbokcSBn6Ok=
X-Received: by 2002:a25:b402:: with SMTP id
	n2-v6mr11855184ybj.517.1530500279445; 
	Sun, 01 Jul 2018 19:57:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:bd84:0:0:0:0:0 with HTTP;
	Sun, 1 Jul 2018 19:57:38 -0700 (PDT)
From: Mathew Heard <mheard@x4b.net>
Date: Mon, 2 Jul 2018 12:57:38 +1000
X-Gmail-Original-Message-ID: <CALFfGYYWnx82jW=ioYjThM6hL0u2q8051Hv91mQ2nED0-ZLZHg@mail.gmail.com>
Message-ID: <CALFfGYYWnx82jW=ioYjThM6hL0u2q8051Hv91mQ2nED0-ZLZHg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Kernel Crash when moving from Pyro to Rocko (or master): change in kernel compile process or flags?
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
X-List-Received-Date: Mon, 02 Jul 2018 03:04:20 -0000
Content-Type: multipart/alternative; boundary="0000000000007c2f4b056ffb5d3b"

--0000000000007c2f4b056ffb5d3b
Content-Type: text/plain; charset="UTF-8"

Hi,

We too are experiencing this crash when attempting to upgrade from
Pyro to Rocko.

Has anyone been able to work out the cause, or can someone look into
it? I can supply any debug information needed (just let me know).

Regards,
Mathew


> Hi,
> I am experiencing a Kernel crash when moving my system from Yocto 2.3 (Pyro) to Rocko or Master.
> Target system is an ARMv7 (NXP Layerscape LS1021a, built on Cortex-A7).
> This is what I did:
> 1) switched poky version
> 2) re-built same image in a new, blank directory
> Results:
> Root-FS works fine, the kernel crashes with an undefined instruction oops.
> Just exchanging the kernel zImage with the one compiled with Pyro (same recipe), my system works fine again.
> What I tried so far:
> 1) checked and compared the kernel configs generated: 100% identical
> 2) switched gcc back to the version used in Pyro (6.3) instead of 7.2: kernel still crashes, same oops, no changes. So it's not related to GCC 7.2
> 3) checked on different boards: same issue for the same board type, but the switch to rocko worked fine for a system based on Cortex-A9.
> I am using separate tmp directories and am not sharing sstate. I always started builds in blank build directories.
> The error is reproducible (100%)
> It was also present with all of the various snapshots of the master branch I tried
> What I suspect: there are some changes in the ways that gcc is called from pyro to rocko. Maybe one of the switches, or features, etc
> Before deep-diving into the trial and error phase of reproducing the CFLAGS, etc:
> Is anyone experiencing the same issues?
> * What exactly has changed in the way the kernel build is called (methods, compile/link flags, etc) between pyro and rocko? *
> * Is there a way to (easily) disable some of the features to test which one causes the issue? *
> * Any suspicions about what could cause this? *
> Pls. find a log of the crash below, and an excerpt of my kernel recipe and machine configuration.
> Thanks in advance for your help,
> Best regards,
> Michael
> -------------
> VFS: Mounted root (ext4 filesystem) on device 179:1.
> devtmpfs: mounted
> Freeing unused kernel memory: 2048K
> Internal error: Oops - undefined instruction: 0 [#1] SMP THUMB2
> Modules linked in:
> CPU: 1 PID: 1 Comm: init Not tainted 4.14.2-avnet-nxp #2
> Hardware name: Freescale LS1021A
> task: bf0a0000 task.stack: bf09a000
> PC is at ret_fast_syscall+0x2/0x52
> LR is at SyS_brk+0x109/0x128
> pc : [<80205fc2>]    lr : [<802c513d>]    psr: 60000013
> sp : bf09bfa8  ip : 70c5387d  fp : 00001000
> r10: 00000000  r9 : bf09a000  r8 : 802061a4
> r7 : 0000002d  r6 : 76f71bac  r5 : 00010034  r4 : 00000009
> r3 : 000273c8  r2 : ffff0001  r1 : 00000000  r0 : 00028000
> Flags: nZCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none
> Control: 70c5387d  Table: be7d1000  DAC: fffbfff3
> Process init (pid: 1, stack limit = 0xbf09a210)
> Stack: (0xbf09bfa8 to 0xbf09c000)
> bfa0:                   00000009 00010034 00000000 7ee86fea 00000000 00000001
> bfc0: 00000009 00010034 76f71bac 0000002d 00000000 00000001 00000001 00001000
> bfe0: 7ee86f14 7ee86e4c 76f87a58 76f88e88 60000010 00000000 00000000 00000000
> Code: 20012000 0000bd08 00000000 b6720000 (2008f8d9)
> ---[ end trace 7bab6dceda641aab ]---
> Kernel panic - not syncing: Attempted to kill init! exitcode=0x0000000b
> CPU0: stopping
> CPU: 0 PID: 0 Comm: swapper/0 Tainted: G      D         4.14.2-avnet-nxp #2
> Hardware name: Freescale LS1021A
> [<8020bbe9>] (unwind_backtrace) from [<80208e77>] (show_stack+0xb/0xc)
> [<80208e77>] (show_stack) from [<8066af19>] (dump_stack+0x69/0x78)
> [<8066af19>] (dump_stack) from [<8020b1d5>] (handle_IPI+0x261/0x274)
> [<8020b1d5>] (handle_IPI) from [<802012b1>] (gic_handle_irq+0x61/0x64)
> [<802012b1>] (gic_handle_irq) from [<8067d953>] (__irq_svc+0x53/0x7c)
> Exception stack(0x80e01f38 to 0x80e01f80)
> 1f20:                                                       00000000 000027d0
> 1f40: 3eb79000 80212641 ffffe000 80e03cd0 80e03c74 80e7f3ab 8096e480 80e03c40
> 1f60: 80e8ce00 80c42a30 01400000 80e01f88 80206a3d 80206a3e 40000033 ffffffff
> [<8067d953>] (__irq_svc) from [<80206a3e>] (arch_cpu_idle+0x22/0x24)
> [<80206a3e>] (arch_cpu_idle) from [<802405bf>] (do_idle+0x9f/0xe4)
> [<802405bf>] (do_idle) from [<802407bb>] (cpu_startup_entry+0x13/0x14)
> [<802407bb>] (cpu_startup_entry) from [<80c00a05>] (start_kernel+0x305/0x310)
> ---[ end Kernel panic - not syncing: Attempted to kill init! exitcode=0x0000000b
> -----------------------
> Excerpt from linux_xxx.bb:
> ----
> DEPENDS_kernel-base   += "kernel-devicetree"
> LINUX_VERSION           = "4.14-stable"
> S = "${WORKDIR}/git"
> PR = "r1"
> SRCREV = "8292fd8d726105abc01dae26d0a2cddcf53d4e0f"
> PV     = "4.14.2"
> SRC_URI = " \
>     git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git;branch=master;protocol=git;nobranch=1 \
> "
> SRC_URI_append_ls1021a   = " file://defconfig "
> SRC_URI_append_ls1021a   = " file://pcie.cfg file://caam.cfg file://usb.cfg file://bt.cfg "
> ----
> Excerpt from machine.conf
> ---
> SOC_FAMILY = "ls1021a"
> TARGET_ARCH = "arm"
> DEFAULTTUNE = "cortexa7hf-neon-vfpv4"
> IMAGE_INSTALL_append = " kernel-modules kernel-devicetree kernel-image"
> KERNEL_IMAGETYPE = "zImage"
> KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
> EXTRA_IMAGEDEPENDS += "virtual/bootloader"
> ----
>

--0000000000007c2f4b056ffb5d3b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">

<pre style=3D"white-space:pre-wrap;color:rgb(0,0,0);text-decoration-style:i=
nitial;text-decoration-color:initial"><div>Hi,</div><div><br></div><div>We =
too are experiencing this crash when attempting to upgrade from Pyro to Roc=
ko.</div><div><br></div><div>Has anyone been able to work out the cause, or=
 can someone look into it? I can supply any debug information needed (just =
let me know).</div><div><br></div><div>Regards,</div><div>Mathew</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>I am e=
xperiencing a Kernel crash when moving my system from Yocto 2.3 (Pyro) to R=
ocko or Master.<br>Target system is an ARMv7 (NXP Layerscape LS1021a, built=
 on Cortex-A7).<br>This is what I did:<br>1) switched poky version<br>2) re=
-built same image in a new, blank directory
Results:<br>Root-FS works fine, the kernel crashes with an undefined instru=
ction oops.<br>Just exchanging the kernel zImage with the one compiled with=
 Pyro (same recipe), my system works fine again.
What I tried so far:<br>1) checked and compared the kernel configs generate=
d: 100% identical<br>2) switched gcc back to the version used in Pyro (6.3)=
 instead of 7.2: kernel still crashes, same oops, no changes. So it&#39;s n=
ot related to GCC 7.2<br>3) checked on different boards: same issue for the=
 same board type, but the switch to rocko worked fine for a system based on=
 Cortex-A9.
I am using separate tmp directories and am not sharing sstate. I always sta=
rted builds in blank build directories.<br>The error is reproducible (100%)=
<br>It was also present with all of the various snapshots of the master bra=
nch I tried
What I suspect: there are some changes in the ways that gcc is called from =
pyro to rocko. Maybe one of the switches, or features, etc<br>Before deep-d=
iving into the trial and error phase of reproducing the CFLAGS, etc:<br>Is =
anyone experiencing the same issues?<br>* What exactly has changed in the w=
ay the kernel build is called (methods, compile/link flags, etc) between py=
ro and rocko? *<br>* Is there a way to (easily) disable some of the feature=
s to test which one causes the issue? *<br>* Any suspicions about what coul=
d cause this? *
Pls. find a log of the crash below, and an excerpt of my kernel recipe and =
machine configuration.
Thanks in advance for your help,<br>Best regards,<br>Michael
-------------<br>VFS: Mounted root (ext4 filesystem) on device 179:1.<br>de=
vtmpfs: mounted<br>Freeing unused kernel memory: 2048K<br>Internal error: O=
ops - undefined instruction: 0 [#1] SMP THUMB2<br>Modules linked in:<br>CPU=
: 1 PID: 1 Comm: init Not tainted 4.14.2-avnet-nxp #2<br>Hardware name: Fre=
escale LS1021A<br>task: bf0a0000 task.stack: bf09a000<br>PC is at ret_fast_=
syscall+0x2/0x52<br>LR is at SyS_brk+0x109/0x128<br>pc : [&lt;80205fc2&gt;]=
    lr : [&lt;802c513d&gt;]    psr: 60000013<br>sp : bf09bfa8  ip : 70c5387=
d  fp : 00001000<br>r10: 00000000  r9 : bf09a000  r8 : 802061a4<br>r7 : 000=
0002d  r6 : 76f71bac  r5 : 00010034  r4 : 00000009<br>r3 : 000273c8  r2 : f=
fff0001  r1 : 00000000  r0 : 00028000<br>Flags: nZCv  IRQs on  FIQs on  Mod=
e SVC_32  ISA ARM  Segment none<br>Control: 70c5387d  Table: be7d1000  DAC:=
 fffbfff3<br>Process init (pid: 1, stack limit =3D 0xbf09a210)<br>Stack: (0=
xbf09bfa8 to 0xbf09c000)<br>bfa0:                   00000009 00010034 00000=
000 7ee86fea 00000000 00000001<br>bfc0: 00000009 00010034 76f71bac 0000002d=
 00000000 00000001 00000001 00001000<br>bfe0: 7ee86f14 7ee86e4c 76f87a58 76=
f88e88 60000010 00000000 00000000 00000000<br>Code: 20012000 0000bd08 00000=
000 b6720000 (2008f8d9)<br>---[ end trace 7bab6dceda641aab ]---<br>Kernel p=
anic - not syncing: Attempted to kill init! exitcode=3D0x0000000b
CPU0: stopping<br>CPU: 0 PID: 0 Comm: swapper/0 Tainted: G      D         4=
.14.2-avnet-nxp #2<br>Hardware name: Freescale LS1021A<br>[&lt;8020bbe9&gt;=
] (unwind_backtrace) from [&lt;80208e77&gt;] (show_stack+0xb/0xc)<br>[&lt;8=
0208e77&gt;] (show_stack) from [&lt;8066af19&gt;] (dump_stack+0x69/0x78)<br=
>[&lt;8066af19&gt;] (dump_stack) from [&lt;8020b1d5&gt;] (handle_IPI+0x261/=
0x274)<br>[&lt;8020b1d5&gt;] (handle_IPI) from [&lt;802012b1&gt;] (gic_hand=
le_irq+0x61/0x64)<br>[&lt;802012b1&gt;] (gic_handle_irq) from [&lt;8067d953=
&gt;] (__irq_svc+0x53/0x7c)<br>Exception stack(0x80e01f38 to 0x80e01f80)<br=
>1f20:                                                       00000000 00002=
7d0<br>1f40: 3eb79000 80212641 ffffe000 80e03cd0 80e03c74 80e7f3ab 8096e480=
 80e03c40<br>1f60: 80e8ce00 80c42a30 01400000 80e01f88 80206a3d 80206a3e 40=
000033 ffffffff<br>[&lt;8067d953&gt;] (__irq_svc) from [&lt;80206a3e&gt;] (=
arch_cpu_idle+0x22/0x24)<br>[&lt;80206a3e&gt;] (arch_cpu_idle) from [&lt;80=
2405bf&gt;] (do_idle+0x9f/0xe4)<br>[&lt;802405bf&gt;] (do_idle) from [&lt;8=
02407bb&gt;] (cpu_startup_entry+0x13/0x14)<br>[&lt;802407bb&gt;] (cpu_start=
up_entry) from [&lt;80c00a05&gt;] (start_kernel+0x305/0x310)<br>---[ end Ke=
rnel panic - not syncing: Attempted to kill init! exitcode=3D0x0000000b<br>=
-----------------------
Excerpt from <a href=3D"http://linux_xxx.bb">linux_xxx.bb</a>:<br>----<br>D=
EPENDS_kernel-base   +=3D &quot;kernel-devicetree&quot;
LINUX_VERSION           =3D &quot;4.14-stable&quot;<br>S =3D &quot;${WORKDI=
R}/git&quot;<br>PR =3D &quot;r1&quot;<br>SRCREV =3D &quot;8292fd8d726105abc=
01dae26d0a2cddcf53d4e0f&quot;<br>PV     =3D &quot;4.14.2&quot;<br>SRC_URI =
=3D &quot; \<br>    <a>git://git.kernel.org/pub/scm/linux/kernel/git/stable=
/linux-stable.git;branch=3Dmaster;protocol=3Dgit;nobranch=3D1</a> \<br>&quo=
t;<br>SRC_URI_append_ls1021a   =3D &quot; <a>file://defconfig</a> &quot;<br=
>SRC_URI_append_ls1021a   =3D &quot; <a>file://pcie.cfg</a> <a>file://caam.=
cfg</a> <a>file://usb.cfg</a> <a>file://bt.cfg</a> &quot;<br>----
Excerpt from machine.conf<br>---<br>SOC_FAMILY =3D &quot;ls1021a&quot;<br>T=
ARGET_ARCH =3D &quot;arm&quot;<br>DEFAULTTUNE =3D &quot;cortexa7hf-neon-vfp=
v4&quot;<br>IMAGE_INSTALL_append =3D &quot; kernel-modules kernel-devicetre=
e kernel-image&quot;<br>KERNEL_IMAGETYPE =3D &quot;zImage&quot;
KERNEL_EXTRA_ARGS +=3D &quot;LOADADDR=3D${UBOOT_ENTRYPOINT}&quot;<br>EXTRA_=
IMAGEDEPENDS +=3D &quot;virtual/bootloader&quot;<br>----<br class=3D"gmail-=
Apple-interchange-newline"></blockquote></pre>

<br></div>

--0000000000007c2f4b056ffb5d3b--
