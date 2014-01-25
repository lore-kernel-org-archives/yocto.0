Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f181.google.com (mail-ea0-f181.google.com
	[209.85.215.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFBEAE002A7
	for <yocto@yoctoproject.org>; Sat, 25 Jan 2014 02:57:18 -0800 (PST)
Received: by mail-ea0-f181.google.com with SMTP id m10so1434731eaj.12
	for <yocto@yoctoproject.org>; Sat, 25 Jan 2014 02:57:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=1ufbejqjvZaGoIPDBQDztRo+GhhR6wIlDUVZCpOyz68=;
	b=jqVLenTsOkivw1oDfdIsVRkSMAa9agpvox+O/+dk3ag3XmhkvCK2cqMdtelCV4sbQT
	4lQKCfWZwuc+OBWE6VUQ5SpTV5OxWivbfVqVfvCn69uVgYbR9I+WBKKc0i/p32Tu8gZG
	ZNtFEUmksX9kS4Kdq92QmDsdxPs2S2Oh0//tJ2dNVCxk9JnUEEEbUcpuqB5qkTBjVpMR
	89/rx1NvTZncmy95rFQk6MRPLVzGvNI+QYlM60OuUW91JGZz5iYBqfBsFD1LxkagX2Sj
	Lm5cch+rjOsQvh79ZAjQ8hF7vAv5McUeXwC7+U6RPNw7jVdi1108ifeTkYyyTtqvQZgK
	8uzw==
X-Gm-Message-State: ALoCoQnpaQ/wCEyqwb9nSbmAeDSzS7LIVZw+fVzXvhz0LTbmarqy6ENPxhZIzDLm047udgEvtaFq
X-Received: by 10.14.113.199 with SMTP id a47mr17039263eeh.41.1390647437571;
	Sat, 25 Jan 2014 02:57:17 -0800 (PST)
Received: from localhost.localdomain (5-13-179-54.residential.rdsnet.ro.
	[5.13.179.54])
	by mx.google.com with ESMTPSA id 4sm14600656eed.14.2014.01.25.02.57.16
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 25 Jan 2014 02:57:16 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sat, 25 Jan 2014 12:56:54 +0200
Message-Id: <1390647421-4818-3-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1390647421-4818-1-git-send-email-andrei@gherzan.ro>
References: <1390647421-4818-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/9] rpi-config: Use deploy as it should be used
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
X-List-Received-Date: Sat, 25 Jan 2014 10:57:21 -0000

Change-Id: I6c7782f3f46adeae74e22991bb9203dafa2e1c78
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bcm/bootfiles/rpi-config_git.bb | 87 +++++++++++++++++----------------
 1 file changed, 46 insertions(+), 41 deletions(-)

diff --git a/recipes-bcm/bootfiles/rpi-config_git.bb b/recipes-bcm/bootfiles/rpi-config_git.bb
index 66a8fa8..9b5c1e6 100644
--- a/recipes-bcm/bootfiles/rpi-config_git.bb
+++ b/recipes-bcm/bootfiles/rpi-config_git.bb
@@ -15,49 +15,54 @@ S = "${WORKDIR}/git"
 
 PR = "r4"
 
-addtask deploy before do_package after do_install
+inherit deploy
 
 do_deploy() {
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
-
-	# Video camera support
-	if [ -n "${VIDEO_CAMERA}" ]; then
-		echo "# Enable video camera" >>${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt
-		echo "start_x=1" >>${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/config.txt
-	fi
+    install -d ${DEPLOYDIR}/bcm2835-bootfiles
+
+    cp ${S}/config.txt ${DEPLOYDIR}/bcm2835-bootfiles/
+
+    if [ -n "${KEY_DECODE_MPG2}" ]; then
+        sed -i '/#decode_MPG2/ c\decode_MPG2=${KEY_DECODE_MPG2}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
+    if [ -n "${KEY_DECODE_WVC1}" ]; then
+        sed -i '/#decode_WVC1/ c\decode_MVC1=${KEY_DECODE_WVC1}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
+    if [ -n "${DISABLE_OVERSCAN}" ]; then
+        sed -i '/#disable_overscan/ c\disable_overscan=${DISABLE_OVERSCAN}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
+    if [ -n "${ARM_FREQ}" ]; then
+        sed -i '/#arm_freq/ c\arm_freq=${ARM_FREQ}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
+    if [ -n "${CORE_FREQ}" ]; then
+        sed -i '/#core_freq/ c\core_freq=${CORE_FREQ}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
+    if [ -n "${SDRAM_FREQ}" ]; then
+        sed -i '/#sdram_freq/ c\sdram_freq=${SDRAM_FREQ}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
+    if [ -n "${OVER_VOLTAGE}" ]; then
+        sed -i '/#over_voltage/ c\over_voltage=${OVER_VOLTAGE}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
+
+    # GPU memory
+    if [ -n "${GPU_MEM}" ]; then
+        sed -i '/#gpu_mem=/ c\gpu_mem=${GPU_MEM}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
+    if [ -n "${GPU_MEM_256}" ]; then
+        sed -i '/#gpu_mem_256/ c\gpu_mem_256=${GPU_MEM_256}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
+    if [ -n "${GPU_MEM_512}" ]; then
+        sed -i '/#gpu_mem_512/ c\gpu_mem_512=${GPU_MEM_512}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
+
+    # Video camera support
+    if [ -n "${VIDEO_CAMERA}" ]; then
+        echo "# Enable video camera" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "start_x=1" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
 }
 
+addtask deploy before do_package after do_install
+do_deploy[dirs] += "${DEPLOYDIR}/bcm2835-bootfiles"
+
 PACKAGE_ARCH = "${MACHINE_ARCH}"
-- 
1.8.1.4


