Return-Path: <Yang.Shi@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E63C4E0059A
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 15:17:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q39MH7I8011508
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 9 Apr 2012 15:17:07 -0700 (PDT)
Received: from localhost.localdomain (147.11.152.86) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Mon, 9 Apr 2012 15:17:07 -0700
From: Yang Shi <yang.shi@windriver.com>
To: <yocto@yoctoproject.org>, <dvhart@linux.intel.com>,
	<bruce.ashfield@windriver.com>
Date: Mon, 9 Apr 2012 15:15:54 -0700
Message-ID: <1334009754-3012-3-git-send-email-yang.shi@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <1334009754-3012-1-git-send-email-yang.shi@windriver.com>
References: <1334009754-3012-1-git-send-email-yang.shi@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 2/2] sato: Throw warning when building ISO image without unionfs enabled
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
X-List-Received-Date: Mon, 09 Apr 2012 22:17:08 -0000
Content-Type: text/plain

[YOCTO #1487]

For the liveCD image, interactive bootup is needed, but psplash prevents from
booting interactively. In such case ISO image is not usable, so throw warning
info when building ISO image without unionfs enabled in kernel.

Signed-off-by: Yang Shi <yang.shi@windriver.com>
---
 meta/recipes-sato/images/core-image-sato.bb |   14 ++++++++++++++
 1 files changed, 14 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-sato/images/core-image-sato.bb b/meta/recipes-sato/images/core-image-sato.bb
index 11c3318..871b227 100644
--- a/meta/recipes-sato/images/core-image-sato.bb
+++ b/meta/recipes-sato/images/core-image-sato.bb
@@ -9,3 +9,17 @@ IMAGE_FEATURES += "apps-console-core ${SATO_IMAGE_FEATURES}"
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
+                bbwarn "Building LIVE CD without UNION FS enabled in kernel"
+        fi
+}
+
+addtask check_unionfs before do_build after do_bootimg
-- 
1.7.5.4


