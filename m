Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E281E00F75; Fri, 22 Apr 2016 07:46:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, LOTS_OF_MONEY, NORMAL_HTTP_TO_IP,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* 0.0 NORMAL_HTTP_TO_IP URI: URI host has a public dotted-decimal IPv4
	*      address
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 LOTS_OF_MONEY Huge... sums of money
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E217E00DA1
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 07:46:28 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id u206so30541845wme.1
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 07:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=YDEaQhBnign3oTZ3jogiUYB3jbIbvUfpmF9VCQXgmTM=;
	b=LXrS7i9m7xcw4b9efODAkiGCHIJ0OBx/fN54pnBOHRw78R2jyLjZsXDWwCiiwq7Rqc
	a2JW24ZVnKhHLUsh4bXqoxHdFtobvufNqElxXeaQY96uPPU0h82TrTuyJtzmtq0sNNmk
	E9meAsFSoeOVFO08YuAGu/mbHoSlEDvXaBMfzZ9cn1xd7NQQqC9M34LdIVZqbqxfG4pV
	qF1oBFmiea6iQzSC3q14cwyhLq5BfXBfQ/wSlcnY020FFq1jRszgwiv+krOqPlKOEL95
	8pBCo/3t4omQkERsmTaDmp4h8fsm2NnBFNslxNh5uPN6doKKGZ9zS7kG5NLFPSzsBFqa
	4SFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=YDEaQhBnign3oTZ3jogiUYB3jbIbvUfpmF9VCQXgmTM=;
	b=HrUoEtV3uIpWVgvy2dU/pMSbaxdSGpHB0Wc+Cft1Qp3iivy2riBt45YvXF1ZSGS4/L
	uoBMtK5+cTtXzPJecfHzbFqyz77oySdAAMjYRe98XRDfQYbin1o3gtpNvSZ3ppAdd2oQ
	OTPz38tEZbKghsa1u9X1vqRSZx3dIFc9Eo+rAeguN5aNJPRgez+GnIuRq2pGBHrQVA5f
	3YmZu0ev7jkvHtimgRm0cauGNfFE8nLcDqSF/G6C7GefrslrVnPbAosoteuXVGWVS99P
	UwsmcXyuQ1/qa7h3OrTAKW9FjzcmGrpQOSpXoKJWqVfzOg+CJYkefebl3r1EaM2L575I
	isuw==
X-Gm-Message-State: AOPr4FUArydxIsmH5DanyMkMvtk2sZVp1kvp/neo2UGH1T30Jp2JOW0soJk/L9/mj2BfDw==
X-Received: by 10.28.31.22 with SMTP id f22mr4303357wmf.103.1461336387122;
	Fri, 22 Apr 2016 07:46:27 -0700 (PDT)
Received: from localhost.localdomain
	([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id m14sm3750574wmc.4.2016.04.22.07.46.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 22 Apr 2016 07:46:25 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 22 Apr 2016 16:46:14 +0200
Message-Id: <1461336375-19194-4-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.8.0
In-Reply-To: <1461336375-19194-1-git-send-email-andrei@gherzan.ro>
References: <1461336375-19194-1-git-send-email-andrei@gherzan.ro>
Cc: toolmmy <toolmmy@gmail.com>
Subject: [meta-raspberrypi][PATCH 4/5] bluez5: Add bluez5 support for brcm43438 on raspberrypi3.
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
X-List-Received-Date: Fri, 22 Apr 2016 14:46:33 -0000

From: toolmmy <toolmmy@gmail.com>

This patch adds the bluetooth support for the brcm43438 module on the raspberrypi3 by
deploying the modules firmware and changing the targeting firmware path. In addition
the brcm43438.service adds the automatically attaching (hciattach) for systemd environments.
The following steps can be used to manually configure the brcm43438:

root@raspberrypi3:~# hciattach /dev/ttyAMA0 bcm43xx-3wire
bcm43xx_init
Flash firmware /lib/firmware/brcm/BCM43430A1.hcd
Set Controller UART speed to 3000000 bit/s
Device setup complete
root@raspberrypi3:~# hciconfig
hci0:   Type: BR/EDR  Bus: UART
        BD Address: B8:27:EB:6C:85:BE  ACL MTU: 1021:8  SCO MTU: 64:1
        DOWN
        RX bytes:983 acl:0 sco:0 events:33 errors:0
        TX bytes:887 acl:0 sco:0 commands:33 errors:0

root@raspberrypi3:~# /usr/lib/bluez5/bluetooth/bluetoothd -e -n -E
root@raspberrypi3:~# bluetoothctl
[NEW] Controller B8:27:EB:6C:85:BE raspberrypi3 [default]
[bluetooth]# power on
[CHG] Controller B8:27:EB:6C:85:BE Class: 0x400000
Changing power on succeeded
[CHG] Controller B8:27:EB:6C:85:BE Powered: yes
[bluetooth]# scan on
Discovery started
[CHG] Controller B8:27:EB:6C:85:BE Discovering: yes
[NEW] Device 00:1C:05:FF:F9:F8 Nonin3230_501585326

NOTE: SERIAL_CONSOLE must configured to ttyS0 instead of ttyAMA0 (used by the brcm43438). See pending patch from Martin Bergek

Signed-off-by: Tom Doehring <toolmmy@gmail.com>
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 .../0001-bcm43xx-Add-bcm43xx-3wire-variant.patch   |  26 +++++++++++++++
 ...-UART-speed-must-be-reset-after-the-firmw.patch |  37 +++++++++++++++++++++
 ...003-Increase-firmware-load-timeout-to-30s.patch |  25 ++++++++++++++
 ...-Move-the-43xx-firmware-into-lib-firmware.patch |  25 ++++++++++++++
 recipes-connectivity/bluez5/bluez5/BCM43430A1.hcd  | Bin 0 -> 35976 bytes
 .../bluez5/bluez5/brcm43438.service                |  12 +++++++
 recipes-connectivity/bluez5/bluez5_%.bbappend      |  26 +++++++++++++++
 7 files changed, 151 insertions(+)
 create mode 100644 recipes-connectivity/bluez5/bluez5/0001-bcm43xx-Add-bcm43xx-3wire-variant.patch
 create mode 100644 recipes-connectivity/bluez5/bluez5/0002-bcm43xx-The-UART-speed-must-be-reset-after-the-firmw.patch
 create mode 100644 recipes-connectivity/bluez5/bluez5/0003-Increase-firmware-load-timeout-to-30s.patch
 create mode 100644 recipes-connectivity/bluez5/bluez5/0004-Move-the-43xx-firmware-into-lib-firmware.patch
 create mode 100644 recipes-connectivity/bluez5/bluez5/BCM43430A1.hcd
 create mode 100644 recipes-connectivity/bluez5/bluez5/brcm43438.service
 create mode 100644 recipes-connectivity/bluez5/bluez5_%.bbappend

diff --git a/recipes-connectivity/bluez5/bluez5/0001-bcm43xx-Add-bcm43xx-3wire-variant.patch b/recipes-connectivity/bluez5/bluez5/0001-bcm43xx-Add-bcm43xx-3wire-variant.patch
new file mode 100644
index 0000000..3bc02c4
--- /dev/null
+++ b/recipes-connectivity/bluez5/bluez5/0001-bcm43xx-Add-bcm43xx-3wire-variant.patch
@@ -0,0 +1,26 @@
+From b4f2b77472aeb967d3a7595e8a965785c7a37c87 Mon Sep 17 00:00:00 2001
+From: Phil Elwell <phil@raspberrypi.org>
+Date: Tue, 16 Feb 2016 16:40:46 +0000
+Subject: [PATCH 1/4] bcm43xx: Add bcm43xx-3wire variant
+
+---
+ tools/hciattach.c | 3 +++
+ 1 file changed, 3 insertions(+)
+
+diff --git a/tools/hciattach.c b/tools/hciattach.c
+index 59a76a7..5861d33 100644
+--- a/tools/hciattach.c
++++ b/tools/hciattach.c
+@@ -1144,6 +1144,9 @@ struct uart_t uart[] = {
+ 	{ "bcm43xx",    0x0000, 0x0000, HCI_UART_H4,   115200, 3000000,
+ 				FLOW_CTL, DISABLE_PM, NULL, bcm43xx, NULL  },
+ 
++	{ "bcm43xx-3wire",    0x0000, 0x0000, HCI_UART_3WIRE, 115200, 3000000,
++				0, DISABLE_PM, NULL, bcm43xx, NULL  },
++
+ 	{ "ath3k",    0x0000, 0x0000, HCI_UART_ATH3K, 115200, 115200,
+ 			FLOW_CTL, DISABLE_PM, NULL, ath3k_ps, ath3k_pm  },
+ 
+-- 
+1.9.1
+
diff --git a/recipes-connectivity/bluez5/bluez5/0002-bcm43xx-The-UART-speed-must-be-reset-after-the-firmw.patch b/recipes-connectivity/bluez5/bluez5/0002-bcm43xx-The-UART-speed-must-be-reset-after-the-firmw.patch
new file mode 100644
index 0000000..5a0a434
--- /dev/null
+++ b/recipes-connectivity/bluez5/bluez5/0002-bcm43xx-The-UART-speed-must-be-reset-after-the-firmw.patch
@@ -0,0 +1,37 @@
+From e145c9621f976063e5c573db1f2053d906f63427 Mon Sep 17 00:00:00 2001
+From: Phil Elwell <phil@raspberrypi.org>
+Date: Tue, 16 Feb 2016 16:39:09 +0000
+Subject: [PATCH 2/4] bcm43xx: The UART speed must be reset after the firmware download
+
+---
+ tools/hciattach_bcm43xx.c | 6 ++----
+ 1 file changed, 2 insertions(+), 4 deletions(-)
+
+diff --git a/tools/hciattach_bcm43xx.c b/tools/hciattach_bcm43xx.c
+index 81f38cb..0b792e0 100644
+--- a/tools/hciattach_bcm43xx.c
++++ b/tools/hciattach_bcm43xx.c
+@@ -366,11 +366,8 @@ int bcm43xx_init(int fd, int def_speed, int speed, struct termios *ti,
+ 		return -1;
+ 
+ 	if (bcm43xx_locate_patch(FIRMWARE_DIR, chip_name, fw_path)) {
+-		fprintf(stderr, "Patch not found, continue anyway\n");
++		fprintf(stderr, "Patch not found for %s, continue anyway\n", chip_name);
+ 	} else {
+-		if (bcm43xx_set_speed(fd, ti, speed))
+-			return -1;
+-
+ 		if (bcm43xx_load_firmware(fd, fw_path))
+ 			return -1;
+ 
+@@ -380,6 +377,7 @@ int bcm43xx_init(int fd, int def_speed, int speed, struct termios *ti,
+ 			return -1;
+ 		}
+ 
++		sleep(1);
+ 		if (bcm43xx_reset(fd))
+ 			return -1;
+ 	}
+-- 
+1.9.1
+
diff --git a/recipes-connectivity/bluez5/bluez5/0003-Increase-firmware-load-timeout-to-30s.patch b/recipes-connectivity/bluez5/bluez5/0003-Increase-firmware-load-timeout-to-30s.patch
new file mode 100644
index 0000000..f9f09eb
--- /dev/null
+++ b/recipes-connectivity/bluez5/bluez5/0003-Increase-firmware-load-timeout-to-30s.patch
@@ -0,0 +1,25 @@
+From d41dc2046dd08d8c95197f677e224506f5b39bdd Mon Sep 17 00:00:00 2001
+From: Phil Elwell <phil@raspberrypi.org>
+Date: Wed, 20 Jan 2016 16:00:37 +0000
+Subject: [PATCH 3/4] Increase firmware load timeout to 30s
+
+---
+ tools/hciattach.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/tools/hciattach.c b/tools/hciattach.c
+index 5861d33..4141796 100644
+--- a/tools/hciattach.c
++++ b/tools/hciattach.c
+@@ -1293,7 +1293,7 @@ int main(int argc, char *argv[])
+ {
+ 	struct uart_t *u = NULL;
+ 	int detach, printpid, raw, opt, i, n, ld, err;
+-	int to = 10;
++	int to = 30;
+ 	int init_speed = 0;
+ 	int send_break = 0;
+ 	pid_t pid;
+-- 
+1.9.1
+
diff --git a/recipes-connectivity/bluez5/bluez5/0004-Move-the-43xx-firmware-into-lib-firmware.patch b/recipes-connectivity/bluez5/bluez5/0004-Move-the-43xx-firmware-into-lib-firmware.patch
new file mode 100644
index 0000000..dadce35
--- /dev/null
+++ b/recipes-connectivity/bluez5/bluez5/0004-Move-the-43xx-firmware-into-lib-firmware.patch
@@ -0,0 +1,25 @@
+From 76681284b0ea49852041fdb97a35175089a08781 Mon Sep 17 00:00:00 2001
+From: Phil Elwell <phil@raspberrypi.org>
+Date: Tue, 23 Feb 2016 17:52:29 +0000
+Subject: [PATCH 4/4] Move the 43xx firmware into /lib/firmware
+
+---
+ tools/hciattach_bcm43xx.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/tools/hciattach_bcm43xx.c b/tools/hciattach_bcm43xx.c
+index 0b792e0..207f668 100644
+--- a/tools/hciattach_bcm43xx.c
++++ b/tools/hciattach_bcm43xx.c
+@@ -43,7 +43,7 @@
+ #include "hciattach.h"
+ 
+ #ifndef FIRMWARE_DIR
+-#define FIRMWARE_DIR "/etc/firmware"
++#define FIRMWARE_DIR "/lib/firmware"
+ #endif
+ 
+ #define FW_EXT ".hcd"
+-- 
+1.9.1
+
diff --git a/recipes-connectivity/bluez5/bluez5/BCM43430A1.hcd b/recipes-connectivity/bluez5/bluez5/BCM43430A1.hcd
new file mode 100644
index 0000000000000000000000000000000000000000..162275ac0b18c7c29ec0589e00a303867d5a998f
GIT binary patch
literal 35976
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

literal 0
HcmV?d00001

diff --git a/recipes-connectivity/bluez5/bluez5/brcm43438.service b/recipes-connectivity/bluez5/bluez5/brcm43438.service
new file mode 100644
index 0000000..d57125c
--- /dev/null
+++ b/recipes-connectivity/bluez5/bluez5/brcm43438.service
@@ -0,0 +1,12 @@
+[Unit]
+Description=Broadcom BCM43438 bluetooth HCI
+ConditionPathIsDirectory=/proc/device-tree/soc/gpio@7e200000/bt_pins
+Before=bluetooth.service
+After=dev-ttyAMA0.device
+
+[Service]
+Type=simple
+ExecStart=/usr/bin/hciattach -n /dev/ttyAMA0 bcm43xx 921600 noflow -
+
+[Install]
+WantedBy=multi-user.target
diff --git a/recipes-connectivity/bluez5/bluez5_%.bbappend b/recipes-connectivity/bluez5/bluez5_%.bbappend
new file mode 100644
index 0000000..eec52e0
--- /dev/null
+++ b/recipes-connectivity/bluez5/bluez5_%.bbappend
@@ -0,0 +1,26 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+SRC_URI_append_raspberrypi3 = " \
+    file://BCM43430A1.hcd \
+    file://0001-bcm43xx-Add-bcm43xx-3wire-variant.patch \
+    file://0002-bcm43xx-The-UART-speed-must-be-reset-after-the-firmw.patch \
+    file://0003-Increase-firmware-load-timeout-to-30s.patch \
+    file://0004-Move-the-43xx-firmware-into-lib-firmware.patch \
+    file://brcm43438.service \
+    "
+
+do_install_append_raspberrypi3() {
+    install -d ${D}/lib/firmware/brcm/
+    install -m 0644 ${WORKDIR}/BCM43430A1.hcd ${D}/lib/firmware/brcm/BCM43430A1.hcd
+
+    if ${@base_contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
+        install -d ${D}${systemd_unitdir}/system
+        install -m 0644 ${WORKDIR}/brcm43438.service ${D}${systemd_unitdir}/system
+    fi
+}
+
+FILES_${PN}_append_raspberrypi3 = " \
+    /lib/firmware/brcm/BCM43430A1.hcd \
+    "
+
+SYSTEMD_SERVICE_${PN}_raspberrypi3 += "brcm43438.service"
-- 
2.8.0


