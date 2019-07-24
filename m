Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5969FE00DBD; Wed, 24 Jul 2019 03:12:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47238E00D44
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 03:12:08 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x6OABVIX023110
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 24 Jul 2019 03:11:41 -0700
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.468.0; Wed, 24 Jul 2019 03:11:20 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>, <anuj.mittal@intel.com>
Date: Wed, 24 Jul 2019 18:11:17 +0800
Message-ID: <1563963079-20347-1-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [PATCH 1/3] intel-media-driver: check for "opengl" feature
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
X-List-Received-Date: Wed, 24 Jul 2019 10:12:09 -0000
Content-Type: text/plain

Since comit [a78c420 libva: check for "opengl" feature] applied in oe-core,
and intel-media-driver depends on libva, it should check for "opengl"
feature too.

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-multimedia/libva/intel-media-driver_19.2.0.bb | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-multimedia/libva/intel-media-driver_19.2.0.bb b/recipes-multimedia/libva/intel-media-driver_19.2.0.bb
index 8656992..8084567 100644
--- a/recipes-multimedia/libva/intel-media-driver_19.2.0.bb
+++ b/recipes-multimedia/libva/intel-media-driver_19.2.0.bb
@@ -14,6 +14,9 @@ LIC_FILES_CHKSUM = "file://LICENSE.md;md5=6aab5363823095ce682b155fef0231f0 \
 # Only for 64 bit until this is resolved: https://github.com/intel/media-driver/issues/356
 COMPATIBLE_HOST = '(x86_64).*-linux'
 
+inherit distro_features_check
+REQUIRED_DISTRO_FEATURES = "opengl"
+
 DEPENDS += "libva gmmlib"
 
 SRC_URI = "git://github.com/intel/media-driver.git;protocol=https;branch=intel-media-19.2 \
-- 
2.7.4


