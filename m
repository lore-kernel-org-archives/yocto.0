Return-Path: <Yang.Shi@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0069FE011D1
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 14:20:21 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q2QLKLZU016668
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 26 Mar 2012 14:20:21 -0700 (PDT)
Received: from localhost.localdomain (147.11.152.86) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Mon, 26 Mar 2012 14:20:22 -0700
From: Yang Shi <yang.shi@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 26 Mar 2012 14:19:18 -0700
Message-ID: <1332796758-9702-3-git-send-email-yang.shi@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <1332796758-9702-1-git-send-email-yang.shi@windriver.com>
References: <1332796758-9702-1-git-send-email-yang.shi@windriver.com>
MIME-Version: 1.0
Cc: dvhart@linux.intel.com
Subject: [PATCH 2/2] sato: Remove questioned ISO image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 26 Mar 2012 21:20:22 -0000
Content-Type: text/plain

[YOCTO #1487]

For the liveCD image, interactive bootup is needed, but psplash prevents from
booting interactively. In such case ISO image is not usable, so remove ISO image
and the corresponding link and throw error info to warn outside to enable
unionfs in kenrel.

Signed-off-by: Yang Shi <yang.shi@windriver.com>
---
 meta/recipes-sato/images/core-image-sato.bb |   16 ++++++++++++++++
 1 files changed, 16 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-sato/images/core-image-sato.bb b/meta/recipes-sato/images/core-image-sato.bb
index 11c3318..10e2239 100644
--- a/meta/recipes-sato/images/core-image-sato.bb
+++ b/meta/recipes-sato/images/core-image-sato.bb
@@ -9,3 +9,19 @@ IMAGE_FEATURES += "apps-console-core ${SATO_IMAGE_FEATURES}"
 LICENSE = "MIT"
 
 inherit core-image
+
+LIVE = "${@base_contains('IMAGE_FSTYPES', 'live', 'yes', 'no', d)}"
+
+do_check_unionfs() {
+        if [ "${NOISO}" = "1" ]; then
+                return
+        fi
+
+        if [ "${LIVE}" = "yes" ] && ! grep -q "CONFIG_UNION_FS=y" ${STAGING_KERNEL_DIR}/.config; then
+                rm -f ${DEPLOY_DIR_IMAGE}/${IMAGE_LINK_NAME}.iso
+                rm -f ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.iso
+                bbfatal "Building LIVE CD without UNION FS enabled in kernel"
+        fi
+}
+
+addtask check_unionfs before do_build after do_bootimg
-- 
1.7.5.4


