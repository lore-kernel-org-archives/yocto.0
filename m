Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f171.google.com (mail-ea0-f171.google.com
	[209.85.215.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAC69E002F9
	for <yocto@yoctoproject.org>; Sat, 25 Jan 2014 02:57:17 -0800 (PST)
Received: by mail-ea0-f171.google.com with SMTP id f15so851651eak.2
	for <yocto@yoctoproject.org>; Sat, 25 Jan 2014 02:57:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=KazyQYA9grdMpDF4nJu/6o42rWAwYc6e3gpD2YjTSR4=;
	b=hgvX5PBXjwdckmHBC4X/btfoT/69LJ6mo15ejhP2O0+aejlGdgVvWeTRlUZtMeiTpE
	qYwE97L0Tp2ko5m/jOP/8tMMTZrH9PANEKSl2PfzN+Onz5fTZWNdTzLcdtQ/QA9CL2gh
	LOBrJioWolSjrs2D/Mk4cRVJ9KmVAb+u9zHSs/KSQ1Em6l6ngGVnXuWqpT8HXOZKBmqi
	Y+ReslIenFDUYycro9bFU4t9UzCucmZpGLgKGvmkuEublALxj4XnLktCVDOA1sA45UYm
	x6EY90L6Gq7rVuvzwx0ZTsRxvDOSWO/FiOGsfKX0e9gh+4vJVcWHrwzUC8WwFqdlnHFQ
	42Fg==
X-Gm-Message-State: ALoCoQmkbR7BCjRwPVbbC5SKVnUeZBohgEpLFhI1gLsYRePO84df9w9i5hskTfGPj/6yxBYGztN0
X-Received: by 10.14.126.1 with SMTP id a1mr12941385eei.81.1390647436315;
	Sat, 25 Jan 2014 02:57:16 -0800 (PST)
Received: from localhost.localdomain (5-13-179-54.residential.rdsnet.ro.
	[5.13.179.54])
	by mx.google.com with ESMTPSA id 4sm14600656eed.14.2014.01.25.02.57.15
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 25 Jan 2014 02:57:15 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sat, 25 Jan 2014 12:56:53 +0200
Message-Id: <1390647421-4818-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1390647421-4818-1-git-send-email-andrei@gherzan.ro>
References: <1390647421-4818-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 1/9] bcm2835-bootfiles: Use deploy as it should be used
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

Change-Id: Ia90f01e037286647fdfafdd54ccb47c1ad9cbab2
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bcm/bootfiles/bcm2835-bootfiles.bb | 34 ++++++++++++++++++------------
 1 file changed, 20 insertions(+), 14 deletions(-)

diff --git a/recipes-bcm/bootfiles/bcm2835-bootfiles.bb b/recipes-bcm/bootfiles/bcm2835-bootfiles.bb
index 36cbcf5..9751f95 100644
--- a/recipes-bcm/bootfiles/bcm2835-bootfiles.bb
+++ b/recipes-bcm/bootfiles/bcm2835-bootfiles.bb
@@ -3,6 +3,8 @@ LICENSE = "Proprietary"
 
 LIC_FILES_CHKSUM = "file://LICENCE.broadcom;md5=e86e693d19572ee64cc8b17fb062faa9"
 
+inherit deploy
+
 include ../common/firmware.inc
 
 RDEPENDS_${PN} = "rpi-config"
@@ -13,21 +15,25 @@ S = "${RPIFW_S}/boot"
 
 PR = "r3"
 
-addtask deploy before do_package after do_install
-
 do_deploy() {
-	install -d ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles
-	for i in *.elf ; do
-		cp $i ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles
-	done
-	for i in *.dat ; do
-		cp $i ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles
-	done
-	for i in *.bin ; do
-		cp $i ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles
-	done
-	# Add stamp in deploy directory
-	touch ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/${PN}-${PV}.stamp
+    install -d ${DEPLOYDIR}/${PN}
+
+    for i in ${S}/*.elf ; do
+        cp $i ${DEPLOYDIR}/${PN}
+    done
+    for i in ${S}/*.dat ; do
+        cp $i ${DEPLOYDIR}/${PN}
+    done
+    for i in ${S}/*.bin ; do
+        cp $i ${DEPLOYDIR}/${PN}
+    done
+
+    # Add stamp in deploy directory
+    touch ${DEPLOYDIR}/${PN}/${PN}-${PV}.stamp
 }
 
+addtask deploy before do_package after do_install
+do_deploy[dirs] += "${DEPLOYDIR}/${PN}"
+
 PACKAGE_ARCH = "${MACHINE_ARCH}"
+
-- 
1.8.1.4


