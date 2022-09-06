Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78504C6FA83
	for <webhook@archiver.kernel.org>; Tue,  6 Sep 2022 13:16:25 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web12.3895.1662470174968323997
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Sep 2022 06:16:15 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6B48E139F;
	Tue,  6 Sep 2022 06:16:20 -0700 (PDT)
Received: from e125920.arm.com (unknown [10.57.88.42])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4EDA33F7B4;
	Tue,  6 Sep 2022 06:16:13 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: diego.sueiro@arm.com,
	Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 1/5] Cleanup README.txt files
Date: Tue,  6 Sep 2022 14:16:58 +0100
Message-Id: <20220906131702.310027-1-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Sep 2022 13:16:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57987

From: Peter Hoyes <Peter.Hoyes@arm.com>

The README.txt files at the root and in meta-zephyr-core are identical,
so replace the copy inside meta-zephyr-core with "See ../README.txt" to
remove the need to keep two files in sync.

Add a similar README.txt to meta-zephyr-bsp.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 meta-zephyr-bsp/README.txt  |   1 +
 meta-zephyr-core/README.txt | 120 +-----------------------------------
 2 files changed, 2 insertions(+), 119 deletions(-)
 create mode 100644 meta-zephyr-bsp/README.txt

diff --git a/meta-zephyr-bsp/README.txt b/meta-zephyr-bsp/README.txt
new file mode 100644
index 0000000..2644ed0
--- /dev/null
+++ b/meta-zephyr-bsp/README.txt
@@ -0,0 +1 @@
+See ../README.txt
diff --git a/meta-zephyr-core/README.txt b/meta-zephyr-core/README.txt
index 5a0ccc7..2644ed0 100644
--- a/meta-zephyr-core/README.txt
+++ b/meta-zephyr-core/README.txt
@@ -1,119 +1 @@
-Building Zephyr Images via bitbake recipes
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
-
-More detailed and up-to-date information can be found here:
-
-https://wiki.yoctoproject.org/wiki/TipsAndTricks/BuildingZephyrImages
-
-Prerequisites:
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
-
-This layer depends on:
-    Yocto distro (master)
-        git://git.yoctoproject.org/poky
-    Python layer (meta-openembedded/meta-python)
-        git://git.openembedded.org/meta-openembedded
-
-Modify local conf by adding:
-    DISTRO=3D"zephyr"
-
-Add "meta-openembedded/meta-oe" to BBLAYERS
-Add "meta-openembedded/meta-python" to BBLAYERS
-Add "meta-zephyr" to BBLAYERS
-
-Building and Running Zephyr Samples
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
-
-You can build Zephyr samples. There are several sample recipes.
-For example, to build the Zephyr "philosophers" sample:
-   =20
-    $ MACHINE=3Dqemu-x86 bitbake zephyr-philosophers
-   =20
-You can then run the created "philosophers" image in qemu:
-
-    $ runqemu qemu-x86
-   =20
-The same sample, for ARM image:
-
-    $ MACHINE=3Dqemu-cortex-m3 bitbake zephyr-philosophers
-    $ runqemu qemu-cortex-m3
-   =20
-The same sample, for Nios2 image:
-
-    $ MACHINE=3Dqemu-nios2 bitbake zephyr-philosophers
-    $ runqemu qemu-nios2
-
-Flashing
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
-
-You can flash Zephyr samples to boards. Currently, the following MACHINE=
s
-are supported:
- * DFU:
-  - arduino-101-sss
-  - arduino-101
-  - arduino-101-ble
- * pyocd:
-  - 96b-nitrogen
-
-To flash the example you built with command e.g.
-
-    $ MACHINE=3D96b-nitrogen bitbake zephyr-philosophers
-
-call similar command with explicit flash_usb command:
-
-    $ MACHINE=3D96b-nitrogen bitbake zephyr-philosophers -c flash_usb
-
-dfu-util and/or pyocd need to be installed in your system. If you observ=
e
-permission errors or the flashing process seem to hang, follow those ins=
tructions:
-https://github.com/pyocd/pyOCD/tree/master/udev
-
-By default, pyocd tries to flash all the attached probes. This behaviour=
 can be
-customised by defining the PYOCD_FLASH_IDS variable as a space-separated=
 list
-of IDs. Once that is set, the tool will only try to program these IDs. Y=
ou can
-query for the IDs by running `pyocd list` on your host while having the =
probes
-attached. Besides setting this variable through the build's configuratio=
n or
-metadata, you can also inject its value from command line with something=
 like:
-
-    $ PYOCD_FLASH_IDS=3D'<ID1> <ID2> <ID3>' BB_ENV_EXTRAWHITE=3D"$BB_ENV=
_EXTRAWHITE PYOCD_FLASH_IDS" bitbake <TARGET> -c flash_usb
-
-Building and Running Zephyr Tests
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
-Presently only toolchains for ARM, x86, IAMCU and Nios2 are supported.
-(For ARM we use CortexM3 toolchain)
-
-To run Zephyr Test using Yocto Image Tests, ensure following in local.co=
nf:
-
-    INHERIT +=3D "testimage"
-
-You can build and test an individual existing Zephyr test.
-This is done by appending the actual test name to the "zephyr-kernel-tes=
t",
-for example:
-
-    $ MACHINE=3Dqemu-x86 bitbake zephyr-kernel-test-sleep
-    $ MACHINE=3Dqemu-x86 bitbake zephyr-kernel-test-sleep -c testimage
-
-You can also build and run all Zephyr existing tests (as listed in the f=
ile
-zephyr-kernel-test.inc). For example:
-
-    $ MACHINE=3Dqemu-x86 bitbake zephyr-kernel-test-all
-    $ MACHINE=3Dqemu-x86 bitbake zephyr-kernel-test-all -c testimage
-or=20
-    $ MACHINE=3Dqemu-cortex-m3 bitbake zephyr-kernel-test-all
-    $ MACHINE=3Dqemu-cortex-m3 bitbake zephyr-kernel-test-all -c testima=
ge
-or=20
-    $ MACHINE=3Dqemu-nios2 bitbake zephyr-kernel-test-all
-    $ MACHINE=3Dqemu-nios2 bitbake zephyr-kernel-test-all -c testimage
-       =20
-
-Contributing
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
-
-Patches for meta-zephyr should be sent to the yocto@lists.yoctoproject.o=
rg
-mailing list.  See https://lists.yoctoproject.org/g/yocto for subscripti=
on
-details and the list archive.  Please add [meta-zephyr] to the subject s=
o
-the patches are identifable.
-
-Git can be configured to send mails appropriately when using git send-em=
ail:
-
-$ git config --local sendemail.to yocto@lists.yoctoproject.org
-$ git config --local format.subjectPrefix meta-zephyr][PATCH
+See ../README.txt
--=20
2.25.1


