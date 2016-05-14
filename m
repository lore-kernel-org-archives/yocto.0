Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 294B2E00D4E; Fri, 13 May 2016 23:47:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	UPPERCASE_50_75 autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 UPPERCASE_50_75 message body is 50-75% uppercase
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70D25E00D42
	for <yocto@yoctoproject.org>; Fri, 13 May 2016 23:47:45 -0700 (PDT)
Received: from localhost.localdomain (111-250-208-151.dynamic.hinet.net
	[111.250.208.151])
	by msfrf2611.sfr.fr (SMTP Server) with ESMTP id B0A3A1C00109C;
	Sat, 14 May 2016 08:47:44 +0200 (CEST)
Received: from localhost.localdomain (111-250-208-151.dynamic.hinet.net
	[111.250.208.151])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2611.sfr.fr (SMTP Server) with ESMTPSA;
	Sat, 14 May 2016 08:47:43 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Sat, 14 May 2016 14:47:27 +0800
Message-Id: <1463208447-48369-2-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1463208447-48369-1-git-send-email-herve.jourdain@neuf.fr>
References: <1463208447-48369-1-git-send-email-herve.jourdain@neuf.fr>
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [PATCH 1/1] Support for .dtbo files for dtb overlays
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
X-List-Received-Date: Sat, 14 May 2016 06:47:48 -0000

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 meta/recipes-kernel/linux/linux-dtb.inc | 66 +++++++++++++++++----------------
 1 file changed, 35 insertions(+), 31 deletions(-)

diff --git a/meta/recipes-kernel/linux/linux-dtb.inc b/meta/recipes-kernel/linux/linux-dtb.inc
index 651a19e..44782d8 100644
--- a/meta/recipes-kernel/linux/linux-dtb.inc
+++ b/meta/recipes-kernel/linux/linux-dtb.inc
@@ -31,44 +31,48 @@ do_compile_append() {
 }
 
 do_install_append() {
-	for DTB in ${KERNEL_DEVICETREE}; do
-		DTB=`normalize_dtb "${DTB}"`
-		DTB_BASE_NAME=`basename ${DTB} .dtb`
-		DTB_SYMLINK_NAME=`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed "s/${MACHINE}/${DTB_BASE_NAME}/g"`
-		DTB_PATH=`get_real_dtb_path_in_kernel "${DTB}"`
-		install -m 0644 ${DTB_PATH} ${D}/${KERNEL_IMAGEDEST}/devicetree-${DTB_SYMLINK_NAME}.dtb
-	done
+    for DTB in ${KERNEL_DEVICETREE}; do
+        DTB=`normalize_dtb "${DTB}"`
+        DTB_EXT=${DTB##*.}
+        DTB_BASE_NAME=`basename ${DTB} ".${DTB_EXT}"`
+        DTB_SYMLINK_NAME=`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed "s/${MACHINE}/${DTB_BASE_NAME}/g"`
+        DTB_PATH=`get_real_dtb_path_in_kernel "${DTB}"`
+        install -m 0644 ${DTB_PATH} ${D}/${KERNEL_IMAGEDEST}/devicetree-${DTB_SYMLINK_NAME}.${DTB_EXT}
+    done
 }
 
 do_deploy_append() {
-	for DTB in ${KERNEL_DEVICETREE}; do
-		DTB=`normalize_dtb "${DTB}"`
-		DTB_BASE_NAME=`basename ${DTB} .dtb`
-		DTB_NAME=`echo ${KERNEL_IMAGE_BASE_NAME} | sed "s/${MACHINE}/${DTB_BASE_NAME}/g"`
-		DTB_SYMLINK_NAME=`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed "s/${MACHINE}/${DTB_BASE_NAME}/g"`
-		DTB_PATH=`get_real_dtb_path_in_kernel "${DTB}"`
-		install -d ${DEPLOYDIR}
-		install -m 0644 ${DTB_PATH} ${DEPLOYDIR}/${DTB_NAME}.dtb
-		ln -sf ${DTB_NAME}.dtb ${DEPLOYDIR}/${DTB_SYMLINK_NAME}.dtb
-	done
+    for DTB in ${KERNEL_DEVICETREE}; do
+        DTB=`normalize_dtb "${DTB}"`
+        DTB_EXT=${DTB##*.}
+        DTB_BASE_NAME=`basename ${DTB} ".${DTB_EXT}"`
+        DTB_NAME=`echo ${KERNEL_IMAGE_BASE_NAME} | sed "s/${MACHINE}/${DTB_BASE_NAME}/g"`
+        DTB_SYMLINK_NAME=`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed "s/${MACHINE}/${DTB_BASE_NAME}/g"`
+        DTB_PATH=`get_real_dtb_path_in_kernel "${DTB}"`
+        install -d ${DEPLOYDIR}
+        install -m 0644 ${DTB_PATH} ${DEPLOYDIR}/${DTB_NAME}.${DTB_EXT}
+        ln -sf ${DTB_NAME}.${DTB_EXT} ${DEPLOYDIR}/${DTB_SYMLINK_NAME}.${DTB_EXT}
+    done
 }
 
 pkg_postinst_kernel-devicetree () {
-	cd /${KERNEL_IMAGEDEST}
-	for DTB in ${KERNEL_DEVICETREE}
-	do
-		DTB_BASE_NAME=`basename ${DTB} | awk -F "." '{print $1}'`
-		DTB_SYMLINK_NAME=`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed "s/${MACHINE}/${DTB_BASE_NAME}/g"`
-		update-alternatives --install /${KERNEL_IMAGEDEST}/${DTB_BASE_NAME}.dtb ${DTB_BASE_NAME}.dtb /boot/devicetree-${DTB_SYMLINK_NAME}.dtb ${KERNEL_PRIORITY} || true
-	done
+    cd /${KERNEL_IMAGEDEST}
+    for DTB in ${KERNEL_DEVICETREE}
+    do
+        DTB_EXT=${DTB##*.}
+        DTB_BASE_NAME=`basename ${DTB} | awk -F "." '{print $1}'`
+        DTB_SYMLINK_NAME=`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed "s/${MACHINE}/${DTB_BASE_NAME}/g"`
+        update-alternatives --install /${KERNEL_IMAGEDEST}/${DTB_BASE_NAME}.${DTB_EXT} ${DTB_BASE_NAME}.${DTB_EXT} /boot/devicetree-${DTB_SYMLINK_NAME}.${DTB_EXT} ${KERNEL_PRIORITY} || true
+    done
 }
 
 pkg_postrm_kernel-devicetree () {
-	cd /${KERNEL_IMAGEDEST}
-	for DTB in ${KERNEL_DEVICETREE}
-	do
-		DTB_BASE_NAME=`basename ${DTB} | awk -F "." '{print $1}'`
-		DTB_SYMLINK_NAME=`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed "s/${MACHINE}/${DTB_BASE_NAME}/g"`
-		update-alternatives --remove ${DTB_BASE_NAME}.dtb /boot/devicetree-${DTB_SYMLINK_NAME}.dtb ${KERNEL_PRIORITY} || true
-	done
+    cd /${KERNEL_IMAGEDEST}
+    for DTB in ${KERNEL_DEVICETREE}
+    do
+        DTB_EXT=${DTB##*.}
+        DTB_BASE_NAME=`basename ${DTB} | awk -F "." '{print $1}'`
+        DTB_SYMLINK_NAME=`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed "s/${MACHINE}/${DTB_BASE_NAME}/g"`
+        update-alternatives --remove ${DTB_BASE_NAME}.${DTB_EXT} /boot/devicetree-${DTB_SYMLINK_NAME}.${DTB_EXT} ${KERNEL_PRIORITY} || true
+    done
 }
-- 
2.7.4


