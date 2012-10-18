Return-Path: <evadeflow@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E689E01275
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 10:24:49 -0700 (PDT)
Received: by mail-oa0-f48.google.com with SMTP id h2so10908291oag.35
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 10:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:content-transfer-encoding;
	bh=J+VRn99tDeyT9NDYgeeb5RL4uHlfS0fPLEzR7H41IhU=;
	b=kWF8DCiCePcShTn7MXggD2iZS8xDySK0RaTfYeRqXEPdOwM8xLl2cVSHt95xn99rFI
	aiXsfPrq4FolRnil7SkrxYJS1N9z2drJbNe61mLRRaXCeorcjVcGxisDIeNXE0h81wya
	z5pGT9s4qaspnkPxeJz57Z4FA3FRn/di8ljf45iYLpWVvoOLSC+rTfwNUVFzvAyaGnTH
	qWzwDuLwFMCvncRdOeWz1ikRtyVj6RNaTtyjENs8ifp0njpl0us9uSOvLGYvPCfKyd/k
	tbVPfPfwkaXhovL5/v2+4t2OcMj6xdNPJURsZaEP6k+/Kx1iREQJ9P9NrEunTiyGLJve
	Snzw==
MIME-Version: 1.0
Received: by 10.60.171.114 with SMTP id at18mr18785081oec.24.1350581086331;
	Thu, 18 Oct 2012 10:24:46 -0700 (PDT)
Received: by 10.76.167.165 with HTTP; Thu, 18 Oct 2012 10:24:46 -0700 (PDT)
Date: Thu, 18 Oct 2012 13:24:46 -0400
Message-ID: <CAMAb8ZPoHRy0nE3BEo+_eP8Z5T_ED0E5SSSrRsRC5cmReYnH3w@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: yocto@yoctoproject.org
Subject: Machine conf for Tegra?
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
X-List-Received-Date: Thu, 18 Oct 2012 17:24:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I need to make a root filesystem for a Tegra2 T20-based system, and
would like to build it with some more aggressive optimizations than
qemuarm provides. I've read through the BSP Developer's Guide, but I'm
not sure how to 'translate' it for my situation, since I don't need to
build a kernel. I just want the cross toolchain and root fs.

I began by creating a folder hierarchy that looks like this:

poky% tree -L 3 meta-tegra
meta-tegra
=E2=94=94=E2=94=80=E2=94=80 conf
    =E2=94=94=E2=94=80=E2=94=80 machine
        =E2=94=94=E2=94=80=E2=94=80 t20-sku13.conf

where I simply copied the contents of qemuarm.conf into t20-sku13.conf:


#@TYPE: Machine
#@NAME: arm_versatile_926ejs
#@DESCRIPTION: arm_versatile_926ejs

require conf/machine/include/qemu.inc
require conf/machine/include/tune-arm926ejs.inc
#require conf/machine/include/tune-arm1136jf-s.inc

KERNEL_IMAGETYPE =3D "zImage"

SERIAL_CONSOLE =3D "115200 ttyAMA0"

I could use some help understanding how to tune this for my system. It
seems I probably ought not to include qemu.inc, but should do this
instead(?):

DEFAULTTUNE =3D "cortexa9"
require conf/machine/include/tune-cortexa9.inc


But I'm not sure whether this is optimal. Here are some details on the
target system:

~ # uname -a
Linux localhost 2.6.36.2-WR3.0.2ax_standard #1 SMP PREEMPT Wed Oct 19 21:58=
:54
EEST 2011 armv7l armv7l armv7l GNU/Linux ODBP D1.0.1 (10.11.2011)

~ # cat /proc/cpuinfo
Processor       : ARMv7 Processor rev 0 (v7l)
processor       : 0
BogoMIPS        : 1795.68

Features        : swp half thumb fastmult vfp edsp vfpv3 vfpv3d16
CPU implementer : 0x41
CPU architecture: 7
CPU variant     : 0x1
CPU part        : 0xc09
CPU revision    : 0

Hardware        : Tegra P852 SKU13
Revision        : 0000

Googling around, it seems that, ideally, I'd want to get
'-mfpu=3Dvfpv3-d16' in my build options:

  - http://wiki.debian.org/ArmHardFloatPort/VfpComparison#FPU
  - http://www.mail-archive.com/openembedded-core@lists.openembedded.org/ms=
g09497.html

Any advice on how to make this happen, or other suggestions for how to
best support building a root fs for a Tegra2 T20? (Maybe implementing a
'half-baked' layer is overkill for my needs?)

