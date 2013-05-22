Return-Path: <paul.betafive@gmail.com>
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4444E01439
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 02:06:18 -0700 (PDT)
Received: by mail-wg0-f42.google.com with SMTP id n12so1875961wgh.3
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 02:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=hgsqMTpLX5m/AyPo/zkEts20fYC+3/P5N6YpVczLw2M=;
	b=kteO8kB1EYMLZfnsQH7mH0/1eT06U0/c06lbG88ROo/DafjbXTkth688yA3q2bgniq
	YJ7lf52kLot0ir/sD1P4pAXtpvmiIXCEuRj/qUVoZBOsQ5w2Ma+hK6xmqKE8phzoF/SY
	4WpAbxhYKtKC9udDf0pFTciM1oKjz1qWQ7Spfe9CFOdoqjafiYMB4vLE0SDQt2OrOm+8
	GG07t2k5l5/phw6BEN+Dn+nPQmeSKlRRtfiKBmiIRlHHXfIF6Arnoo3xgggX8CmxgXJ6
	bJZvb3Nqjdg9C7q/IorJYshy1dKdJ25+a1luQgHpfBLAvUIz8p83qBzgCThYJFBVRtpd
	ZtTg==
X-Received: by 10.180.189.41 with SMTP id gf9mr12554390wic.32.1369213577872;
	Wed, 22 May 2013 02:06:17 -0700 (PDT)
Received: from vesta.betafive.co.uk (94-192-12-83.zone6.bethere.co.uk.
	[94.192.12.83]) by mx.google.com with ESMTPSA id
	ca19sm27459501wib.3.2013.05.22.02.06.16 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 22 May 2013 02:06:17 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Wed, 22 May 2013 10:06:04 +0100
Message-Id: <1369213564-22220-3-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 1.8.2.2
In-Reply-To: <1369213564-22220-1-git-send-email-paul@paulbarker.me.uk>
References: <1369213564-22220-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH 2/2] bootfiles, vc-graphics: consolidate SRC_URI and S variables
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
X-List-Received-Date: Wed, 22 May 2013 09:06:19 -0000

The variables RPIFW_SRC_URI and RPIFW_S are created in the common firmware
include file so that it is easier to override the firmware source in a local or
distro config file. RPIFW_SRC_URI is used to set SRC_URI in firmware.inc as it
is common to both bootfiles and vc-graphics. RPIFW_S is used as a prefix for S
in bcm2835-bootfiles.bb and vc-graphics.inc as different subdirectories are
referenced in each recipe.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 recipes-bcm/bootfiles/bcm2835-bootfiles.bb | 6 +-----
 recipes-bcm/common/firmware.inc            | 3 +++
 recipes-bcm/vc-graphics/vc-graphics.inc    | 9 +++++----
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/recipes-bcm/bootfiles/bcm2835-bootfiles.bb b/recipes-bcm/bootfiles/bcm2835-bootfiles.bb
index 28d1639..36cbcf5 100644
--- a/recipes-bcm/bootfiles/bcm2835-bootfiles.bb
+++ b/recipes-bcm/bootfiles/bcm2835-bootfiles.bb
@@ -9,11 +9,7 @@ RDEPENDS_${PN} = "rpi-config"
 
 COMPATIBLE_MACHINE = "raspberrypi"
 
-SRC_URI = " \
-        git://github.com/raspberrypi/firmware.git;protocol=git;branch=master  \
-"
-
-S = "${WORKDIR}/git/boot"
+S = "${RPIFW_S}/boot"
 
 PR = "r3"
 
diff --git a/recipes-bcm/common/firmware.inc b/recipes-bcm/common/firmware.inc
index 166bb7b..e291832 100644
--- a/recipes-bcm/common/firmware.inc
+++ b/recipes-bcm/common/firmware.inc
@@ -1,6 +1,9 @@
 # 7/1/2013 firmware; this can be overridden from distro config
 RPIFW_SRCREV ?= "0ac68cce44d4550c251172e8524100090e8211fa"
 RPIFW_DATE ?= "20130107"
+RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
+RPIFW_S ?= "${WORKDIR}/git"
 
+SRC_URI = "${RPIFW_SRC_URI}"
 SRCREV = "${RPIFW_SRCREV}"
 PV = "${RPIFW_DATE}"
diff --git a/recipes-bcm/vc-graphics/vc-graphics.inc b/recipes-bcm/vc-graphics/vc-graphics.inc
index 28c95a1..e9575da 100644
--- a/recipes-bcm/vc-graphics/vc-graphics.inc
+++ b/recipes-bcm/vc-graphics/vc-graphics.inc
@@ -8,11 +8,12 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 include ../common/firmware.inc
 
-SRC_URI = "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master\
-           file://egl.pc \
-           file://vchiq.sh"
+SRC_URI += " \
+    file://egl.pc \
+    file://vchiq.sh \
+"
 
-S = "${WORKDIR}/git/${VCDIR}"
+S = "${RPIFW_S}/${VCDIR}"
 
 INCPR = "r1"
 
-- 
1.8.2.2


