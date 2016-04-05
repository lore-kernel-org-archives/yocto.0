Return-Path: <martin@spotwise.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFB81E00AE4; Tue,  5 Apr 2016 00:09:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.201.84.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sender163-mail.zoho.com (sender163-mail.zoho.com
	[74.201.84.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F51AE0090C
	for <yocto@yoctoproject.org>; Tue,  5 Apr 2016 00:09:00 -0700 (PDT)
Received: from [10.1.1.92] (c-d1b2e055.17-2-64736c10.cust.bredbandsbolaget.se
	[85.224.178.209]) by mx.zohomail.com
	with SMTPS id 1459840139406545.5378621253595;
	Tue, 5 Apr 2016 00:08:59 -0700 (PDT)
From: Martin Bergek <martin@spotwise.com>
Message-Id: <B537844D-A7F2-4BF1-872B-A57826208F30@spotwise.com>
Date: Tue, 5 Apr 2016 09:08:54 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
X-Zoho-Virus-Status: 1
Subject: [meta-raspberrypi][PATCH] Change serial console for Raspberry Pi 3
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
X-List-Received-Date: Tue, 05 Apr 2016 07:09:04 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

With the Raspberry Pi 3 the serial ports ttyS0 and ttyAMA0 have been =
switched around. This causes an issue with the serial console that has =
previously been set to ttyAMA0, causing the boot process to halt. I have =
a 100% failure rate when booting a Raspberry Pi 3 image built using the =
master branch of meta-raspberrypi. After a lot of testing it appears =
that the system fails to boot whenever the kernel command line specifies =
a console - regardless of whether it is ttyAMA0 or ttyS0.

This patch changes the serial console and kernel command line to use =
default values, allowing the raspberrypi3 machine configuration to =
assign different values and to remove the kernel console. Now I get the =
console output to the screen but at least it boots. Not sure if this is =
an acceptable way of doing it but it fixed my problem.

This patch has been verified on both the 4.1 and 4.4 kernel. It has also =
been tested with the raspberrypi2 machine configuration.

Signed-off-by: Martin Bergek <martin at spotwise.com>
---
conf/machine/include/rpi-base.inc          | 2 +-
conf/machine/raspberrypi3.conf             | 4 ++++
recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
3 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/conf/machine/include/rpi-base.inc =
b/conf/machine/include/rpi-base.inc
index 792150e..5d6280b 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -7,7 +7,7 @@ include conf/machine/include/soc-family.inc

IMAGE_FSTYPES ?=3D "tar.bz2 ext3 rpi-sdimg"

-SERIAL_CONSOLE =3D "115200 ttyAMA0"
+SERIAL_CONSOLE ?=3D "115200 ttyAMA0"

XSERVER =3D " \
    xserver-xorg \
diff --git a/conf/machine/raspberrypi3.conf =
b/conf/machine/raspberrypi3.conf
index 1b73f2f..2c76dc2 100644
--- a/conf/machine/raspberrypi3.conf
+++ b/conf/machine/raspberrypi3.conf
@@ -6,4 +6,8 @@ MACHINEOVERRIDES =3D "raspberrypi2:${MACHINE}"

MACHINE_EXTRA_RRECOMMENDS +=3D "linux-firmware-brcm43430"

+# Change serial console due to swapped ttyAMA0 and ttyS0 on the =
Raspberry Pi 3
+SERIAL_CONSOLE =3D "115200 ttyS0"
+CMDLINE =3D "dwc_otg.lpm_enable=3D0 root=3D/dev/mmcblk0p2 =
rootfstype=3Dext4 rootwait"
+
include conf/machine/raspberrypi2.conf
diff --git a/recipes-kernel/linux/linux-raspberrypi.inc =
b/recipes-kernel/linux/linux-raspberrypi.inc
index 24e7fe2..a3fe61a 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -20,7 +20,7 @@ KERNEL_DEFCONFIG_raspberrypi ?=3D "bcmrpi_defconfig"
KERNEL_DEFCONFIG_raspberrypi2 ?=3D "bcm2709_defconfig"

# CMDLINE for raspberrypi
-CMDLINE =3D "dwc_otg.lpm_enable=3D0 console=3DttyAMA0,115200 =
root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rootwait"
+CMDLINE ?=3D "dwc_otg.lpm_enable=3D0 console=3DttyAMA0,115200 =
root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rootwait"

# Add the kernel debugger over console kernel command line option if =
enabled
CMDLINE_append =3D ' ${@base_conditional("ENABLE_KGDB", "1", =
"kgdboc=3DttyAMA0,115200", "", d)}'
--=20
2.5.0




