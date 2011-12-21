Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 451B9E01388
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 01:04:02 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Dec 2011 01:04:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="104561692"
Received: from unknown (HELO localhost) ([10.255.12.104])
	by fmsmga002.fm.intel.com with ESMTP; 21 Dec 2011 01:04:01 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Yocto Project <yocto@yoctoproject.org>, raj.khem@gmail.com,
	koen@dominion.thruhere.net, kergoth@gmail.com, elizabeth.flanagan@intel.com
Date: Wed, 21 Dec 2011 01:02:54 -0800
Message-Id: <d0dd7ed35ab41c4ddb56047ac7e5efbf9434ab11.1324456294.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1324456294.git.dvhart@linux.intel.com>
References: <cover.1324456294.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1324456294.git.dvhart@linux.intel.com>
References: <cover.1324456294.git.dvhart@linux.intel.com>
Subject: [PATCH 8/9] license: Fix manifest conditional
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
X-List-Received-Date: Wed, 21 Dec 2011 09:04:02 -0000

From: Beth Flanagan <elizabeth.flanagan@intel.com>

The manifest conditionals COPY_LIC_MANIFEST and COPY_LIC_DIRS
were returning true due to missing quotes in the bash test. This
made images larger than expected.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 meta/classes/license.bbclass |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/classes/license.bbclass b/meta/classes/license.bbclass
index 6e82bd9..d351b5a 100644
--- a/meta/classes/license.bbclass
+++ b/meta/classes/license.bbclass
@@ -110,10 +110,10 @@ license_create_manifest() {
     # if you are concerned about license compliance 
     # and delivery this should cover all your bases
 
-    if [ -n ${COPY_LIC_MANIFEST} ]; then
+    if [ -n "${COPY_LIC_MANIFEST}" ]; then
         mkdir -p ${IMAGE_ROOTFS}/usr/share/common-licenses/
         cp ${LICENSE_DIRECTORY}/${IMAGE_NAME}/license.manifest ${IMAGE_ROOTFS}/usr/share/common-licenses/license.manifest
-        if [ -n ${COPY_LIC_DIRS} ]; then
+        if [ -n "${COPY_LIC_DIRS}" ]; then
             for pkg in ${INSTALLED_PKGS}; do
                 mkdir -p ${IMAGE_ROOTFS}/usr/share/common-licenses/${pkg}
                 for lic in `ls ${LICENSE_DIRECTORY}/${pkged_pn}`; do
-- 
1.7.6.4


