Return-Path: <fabien.lahoudere@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14881E00C5B; Fri, 16 Nov 2018 07:23:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
X-Greylist: delayed 316 seconds by postgrey-1.32 at yocto-www;
	Fri, 16 Nov 2018 07:23:29 PST
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09C37E00901
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2018 07:23:29 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id 7C00326056D
From: Fabien Lahoudere <fabien.lahoudere@collabora.com>
To: yocto@yoctoproject.org
Date: Fri, 16 Nov 2018 16:18:05 +0100
Message-Id: <1542381485-27805-1-git-send-email-fabien.lahoudere@collabora.com>
X-Mailer: git-send-email 1.8.3.1
X-Mailman-Approved-At: Fri, 16 Nov 2018 07:28:16 -0800
Cc: Fabien Lahoudere <fabien.lahoudere@collabora.com>
Subject: [meta-raspberrypi][PATCH] CAN: Add Pican2 support
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
X-List-Received-Date: Fri, 16 Nov 2018 15:23:31 -0000

In order to make Pican 2 work, we :
- add mcp2515.dto to the overlay list
- add a variable to enable it in local.conf
- create a udev rule to mount interface

http://skpang.co.uk/catalog/pican2-canbus-board-for-raspberry-pi-23-p-1475.html

Signed-off-by: Fabien Lahoudere <fabien.lahoudere@collabora.com>
---
 docs/extra-build-config.md                 | 9 +++++++++
 recipes-bsp/bootfiles/rpi-config_git.bb    | 6 ++++++
 recipes-core/udev/udev-rules-rpi.bb        | 6 +++++-
 recipes-core/udev/udev-rules-rpi/can.rules | 1 +
 4 files changed, 21 insertions(+), 1 deletion(-)
 create mode 100644 recipes-core/udev/udev-rules-rpi/can.rules

diff --git a/docs/extra-build-config.md b/docs/extra-build-config.md
index 732c102..4376462 100644
--- a/docs/extra-build-config.md
+++ b/docs/extra-build-config.md
@@ -246,6 +246,15 @@ When using device tree kernels, set this variable to enable the 802.15.4 hat:
 
 See: <https://openlabs.co/OSHW/Raspberry-Pi-802.15.4-radio>
 
+## Enable CAN with Pican2
+
+In order to use Pican2 CAN module, set the following variables:
+
+	ENABLE_SPI_BUS = "1"
+	ENABLE_CAN = "1"
+
+See: <http://skpang.co.uk/catalog/pican2-canbus-board-for-raspberry-pi-23-p-1475.html>
+
 ## Manual additions to config.txt
 
 The `RPI_EXTRA_CONFIG` variable can be used to manually add additional lines to
diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index d92b8e4..d0d1fba 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -183,6 +183,12 @@ do_deploy() {
         echo "dtoverlay=at86rf233,speed=3000000" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
     fi
 
+    # ENABLE CAN
+    if [ "${ENABLE_CAN}" = "1" ]; then
+        echo "# Enable CAN" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "dtoverlay=mcp2515-can0,oscillator=16000000,interrupt=25" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
+
     # Append extra config if the user has provided any
     echo "${RPI_EXTRA_CONFIG}" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
 }
diff --git a/recipes-core/udev/udev-rules-rpi.bb b/recipes-core/udev/udev-rules-rpi.bb
index edef0db..42cfcdd 100644
--- a/recipes-core/udev/udev-rules-rpi.bb
+++ b/recipes-core/udev/udev-rules-rpi.bb
@@ -2,7 +2,10 @@ DESCRIPTION = "udev rules for Raspberry Pi Boards"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
 
-SRC_URI = " file://99-com.rules"
+SRC_URI = " \
+	file://99-com.rules \
+	file://can.rules \
+	"
 
 S = "${WORKDIR}"
 
@@ -11,4 +14,5 @@ INHIBIT_DEFAULT_DEPS = "1"
 do_install () {
     install -d ${D}${sysconfdir}/udev/rules.d
     install -m 0644 ${WORKDIR}/99-com.rules ${D}${sysconfdir}/udev/rules.d/
+    install -m 0644 ${WORKDIR}/can.rules ${D}${sysconfdir}/udev/rules.d/
 }
diff --git a/recipes-core/udev/udev-rules-rpi/can.rules b/recipes-core/udev/udev-rules-rpi/can.rules
new file mode 100644
index 0000000..a47d57d
--- /dev/null
+++ b/recipes-core/udev/udev-rules-rpi/can.rules
@@ -0,0 +1 @@
+SUBSYSTEM=="net", DEVPATH=="/devices/platform/soc/3f204000.spi/spi_master/spi0/spi0.0/net/can0", RUN+="/sbin/ip link set can0 up type can bitrate 500000"
-- 
1.8.3.1


