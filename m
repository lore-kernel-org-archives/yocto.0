Return-Path: <paul.betafive@gmail.com>
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35975E0148D
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2013 05:27:17 -0700 (PDT)
Received: by mail-we0-f172.google.com with SMTP id n5so4225329wev.3
	for <yocto@yoctoproject.org>; Tue, 03 Sep 2013 05:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=hIQlAtqnSHDwtvJ4kQAPByfxiZBRwLY2Ln8Dp54mlaE=;
	b=WdwozGJdDa8SmxuTRqA1jjjqBVxB4lk9WyX1DAFoivgABE1+YGgzUVL8Wy8tgjsZmE
	NyKrbd0THAQachGRcPJWaENLrKE7oWLhxlGJwgbsG4PYUgqISGWEvsHKbNws8BBnK0Iz
	N+VeorRW80dpaXzOIwNtfLqDZYLzV7u2DenV+PqZxPKiczqGow7ScHZwuMZ9wMOeb71Z
	UwPs+2LjANmRdnfq/gbTh46AhXmP0IksETGepfXnP10pbQo65e9Vm3b//8hIZhfPMcqt
	Yv5egbkeroixTulviu6TaTg09gOIWfeu4FY5/PV8Wz6wjqSQKNRz/Rnw7lgoTlFEYczE
	QfvQ==
X-Received: by 10.195.12.170 with SMTP id er10mr27507908wjd.5.1378211235888;
	Tue, 03 Sep 2013 05:27:15 -0700 (PDT)
Received: from turn.betafive.co.uk (94-192-12-83.zone6.bethere.co.uk.
	[94.192.12.83]) by mx.google.com with ESMTPSA id
	fv10sm23338282wic.0.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 03 Sep 2013 05:27:15 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Tue,  3 Sep 2013 13:26:45 +0100
Message-Id: <1378211205-4866-2-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 1.8.4
In-Reply-To: <1378211205-4866-1-git-send-email-paul@paulbarker.me.uk>
References: <1378211205-4866-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi: Add version 3.8.13
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
X-List-Received-Date: Tue, 03 Sep 2013 12:27:19 -0000

Upstream commit d996a1b91b2bf3dc06f4f4f822a56f4496457aa1, dated 2013-08-07.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 recipes-kernel/linux/linux-raspberrypi_3.8.13.bb | 35 ++++++++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.8.13.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb b/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
new file mode 100644
index 0000000..b482939
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
@@ -0,0 +1,35 @@
+require linux.inc
+
+DESCRIPTION = "Linux kernel for the RaspberryPi board"
+COMPATIBLE_MACHINE = "raspberrypi"
+
+PR = "r6"
+PV_append = "+git${SRCREV}"
+
+SRCREV = "d996a1b91b2bf3dc06f4f4f822a56f4496457aa1"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.8.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+S = "${WORKDIR}/git"
+
+# NOTE: For now we pull in the default config from the RPi kernel GIT tree.
+KERNEL_DEFCONFIG = "bcmrpi_defconfig"
+
+# CMDLINE for raspberrypi
+CMDLINE_raspberrypi = "dwc_otg.lpm_enable=0 console=ttyAMA0,115200 kgdboc=ttyAMA0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
+
+UDEV_GE_141 ?= "1"
+
+do_configure_prepend() {
+	install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig || die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONFIG} available."
+}
+
+do_install_prepend() {
+	install -d ${D}/lib/firmware
+}
+
+do_deploy_append() {
+	# Deploy cmdline.txt
+	install -d ${DEPLOYDIR}/bcm2835-bootfiles
+	echo "${CMDLINE}" > ${DEPLOYDIR}/bcm2835-bootfiles/cmdline.txt
+}
-- 
1.8.4


