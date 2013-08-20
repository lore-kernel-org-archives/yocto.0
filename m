Return-Path: <andrei@gherzan.ro>
Received: from mail-ee0-f46.google.com (mail-ee0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33988E01584
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:02:53 -0700 (PDT)
Received: by mail-ee0-f46.google.com with SMTP id c13so326078eek.5
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:02:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=3XOUeP+gg1hBrzZUrEwda97/X+pRF+Auyrru9tTRmzc=;
	b=fTCg2E0MuXp2fwaHeQfT+/IJjf7xwVy2TuSwZrcx+GzwfzBB3XVRq8ulHnacrtNfVA
	64ZEaPqMVKf1JThQEx1zOfQ28QXoTkLRnqxJ6jdp16cxwrBFuCHG5Qq0mx8f44Pb/67c
	eLw2cZSN/w4UqoHcmt41EsmwGpQY/ga+0cB/JAA/8CiM8oMkmGn1sXYSFGKNvV7QPF6K
	nPs1HlbyG2hSPmCkX33yMb1yyJyinhtEmnrhYi4S7RVpGYKhOjDoWnVYccCnRwV1+73W
	18sKbAR0nrVzhMdK3hZR/yr1rLM88V03phQfzTODJI0zuAVASo41XripDIi+Tl4RFVJo
	LVTg==
X-Gm-Message-State: ALoCoQk+St+52Fda7mcfME1/k3AduioO5rEQePpY6e+QtVGArUv2lSGomii3ZfrAL/wZHJz2BZqP
X-Received: by 10.14.200.130 with SMTP id z2mr3503615een.14.1377018172628;
	Tue, 20 Aug 2013 10:02:52 -0700 (PDT)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id l47sm3584186eex.15.1969.12.31.16.00.00
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 20 Aug 2013 10:02:52 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 20 Aug 2013 20:02:31 +0300
Message-Id: <1377018158-2983-4-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
References: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 04/11] rpi-config: Update to 2013-08-20 master's snapshot
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
X-List-Received-Date: Tue, 20 Aug 2013 17:02:55 -0000

Use git as package version. There is no package version for this script.

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bcm/bootfiles/rpi-config_0.1.bb |   57 -------------------------------
 recipes-bcm/bootfiles/rpi-config_git.bb |   57 +++++++++++++++++++++++++++++++
 2 files changed, 57 insertions(+), 57 deletions(-)
 delete mode 100644 recipes-bcm/bootfiles/rpi-config_0.1.bb
 create mode 100644 recipes-bcm/bootfiles/rpi-config_git.bb

diff --git a/recipes-bcm/bootfiles/rpi-config_0.1.bb b/recipes-bcm/bootfiles/rpi-config_0.1.bb
deleted file mode 100644
index a8938dc..0000000
--- a/recipes-bcm/bootfiles/rpi-config_0.1.bb
+++ /dev/null
@@ -1,57 +0,0 @@
-DESCRIPTION = "Commented config.txt file for the Raspberry Pi. \
-               The Raspberry Pi config.txt file is read by the GPU before \
-               the ARM core is initialised. It can be used to set various \
-               system configuration parameters."
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
-
-COMPATIBLE_MACHINE = "raspberrypi"
-
-SRCREV = "62bf3e9db62f547eb1a2a352dde957d2f94bd216"
-SRC_URI = "git://github.com/Evilpaul/RPi-config.git;protocol=git;branch=master \
-          "
-
-S = "${WORKDIR}/git"
-
-PR = "r3"
-
-addtask deploy before do_package after do_install
-
-do_deploy() {
-	install -d ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles
-	cp config.txt ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/
-	if [ -n "${KEY_DECODE_MPG2}" ]; then
-		sed -i '/#decode_MPG2/ c\decode_MPG2=${KEY_DECODE_MPG2}' ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt
-	fi
-	if [ -n "${KEY_DECODE_WVC1}" ]; then
-		sed -i '/#decode_WVC1/ c\decode_MVC1=${KEY_DECODE_WVC1}' ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt
-	fi
-	if [ -n "${DISABLE_OVERSCAN}" ]; then
-		sed -i '/#disable_overscan/ c\disable_overscan=${DISABLE_OVERSCAN}' ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt
-	fi
-	if [ -n "${ARM_FREQ}" ]; then
-		sed -i '/#arm_freq/ c\arm_freq=${ARM_FREQ}' ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt
-	fi
-	if [ -n "${CORE_FREQ}" ]; then
-		sed -i '/#core_freq/ c\core_freq=${CORE_FREQ}' ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt
-	fi
-	if [ -n "${SDRAM_FREQ}" ]; then
-		sed -i '/#sdram_freq/ c\sdram_freq=${SDRAM_FREQ}' ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt
-	fi
-	if [ -n "${OVER_VOLTAGE}" ]; then
-		sed -i '/#over_voltage/ c\over_voltage=${OVER_VOLTAGE}' ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt
-	fi
-
-	# GPU memory
-	if [ -n "${GPU_MEM}" ]; then
-		sed -i '/#gpu_mem=/ c\gpu_mem=${GPU_MEM}' ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt
-	fi
-	if [ -n "${GPU_MEM_256}" ]; then
-		sed -i '/#gpu_mem_256/ c\gpu_mem_256=${GPU_MEM_256}' ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt
-	fi
-	if [ -n "${GPU_MEM_512}" ]; then
-		sed -i '/#gpu_mem_512/ c\gpu_mem_512=${GPU_MEM_512}' ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt
-	fi
-}
-
-PACKAGE_ARCH = "${MACHINE_ARCH}"
diff --git a/recipes-bcm/bootfiles/rpi-config_git.bb b/recipes-bcm/bootfiles/rpi-config_git.bb
new file mode 100644
index 0000000..4328070
--- /dev/null
+++ b/recipes-bcm/bootfiles/rpi-config_git.bb
@@ -0,0 +1,57 @@
+DESCRIPTION = "Commented config.txt file for the Raspberry Pi. \
+               The Raspberry Pi config.txt file is read by the GPU before \
+               the ARM core is initialised. It can be used to set various \
+               system configuration parameters."
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+COMPATIBLE_MACHINE = "raspberrypi"
+
+SRCREV = "5d2ca5f9bcb1b239c051e20c05a233fd79cf09d5"
+SRC_URI = "git://github.com/Evilpaul/RPi-config.git;protocol=git;branch=master \
+          "
+
+S = "${WORKDIR}/git"
+
+PR = "r4"
+
+addtask deploy before do_package after do_install
+
+do_deploy() {
+	install -d ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles
+	cp config.txt ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/
+	if [ -n "${KEY_DECODE_MPG2}" ]; then
+		sed -i '/#decode_MPG2/ c\decode_MPG2=${KEY_DECODE_MPG2}' ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt
+	fi
+	if [ -n "${KEY_DECODE_WVC1}" ]; then
+		sed -i '/#decode_WVC1/ c\decode_MVC1=${KEY_DECODE_WVC1}' ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt
+	fi
+	if [ -n "${DISABLE_OVERSCAN}" ]; then
+		sed -i '/#disable_overscan/ c\disable_overscan=${DISABLE_OVERSCAN}' ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt
+	fi
+	if [ -n "${ARM_FREQ}" ]; then
+		sed -i '/#arm_freq/ c\arm_freq=${ARM_FREQ}' ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt
+	fi
+	if [ -n "${CORE_FREQ}" ]; then
+		sed -i '/#core_freq/ c\core_freq=${CORE_FREQ}' ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt
+	fi
+	if [ -n "${SDRAM_FREQ}" ]; then
+		sed -i '/#sdram_freq/ c\sdram_freq=${SDRAM_FREQ}' ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt
+	fi
+	if [ -n "${OVER_VOLTAGE}" ]; then
+		sed -i '/#over_voltage/ c\over_voltage=${OVER_VOLTAGE}' ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt
+	fi
+
+	# GPU memory
+	if [ -n "${GPU_MEM}" ]; then
+		sed -i '/#gpu_mem=/ c\gpu_mem=${GPU_MEM}' ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt
+	fi
+	if [ -n "${GPU_MEM_256}" ]; then
+		sed -i '/#gpu_mem_256/ c\gpu_mem_256=${GPU_MEM_256}' ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt
+	fi
+	if [ -n "${GPU_MEM_512}" ]; then
+		sed -i '/#gpu_mem_512/ c\gpu_mem_512=${GPU_MEM_512}' ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt
+	fi
+}
+
+PACKAGE_ARCH = "${MACHINE_ARCH}"
-- 
1.7.9.5


