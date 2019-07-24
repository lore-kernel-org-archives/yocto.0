Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3FBEE00D53; Wed, 24 Jul 2019 03:11:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BA9BE00D36
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 03:11:49 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x6OABmHL005924
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 24 Jul 2019 03:11:48 -0700 (PDT)
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.468.0; Wed, 24 Jul 2019 03:11:47 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>, <anuj.mittal@intel.com>
Date: Wed, 24 Jul 2019 18:11:18 +0800
Message-ID: <1563963079-20347-2-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563963079-20347-1-git-send-email-hongxu.jia@windriver.com>
References: <1563963079-20347-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-intel][PATCH 2/3] intel-mediasdk: check for "opengl" feature
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
X-List-Received-Date: Wed, 24 Jul 2019 10:11:50 -0000
Content-Type: text/plain

Since comit [a78c420 libva: check for "opengl" feature] applied in oe-core,
and intel-mediasdk depends on libva, it should check for "opengl"
feature too.

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-multimedia/mediasdk/intel-mediasdk_19.2.0.bb | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-multimedia/mediasdk/intel-mediasdk_19.2.0.bb b/recipes-multimedia/mediasdk/intel-mediasdk_19.2.0.bb
index 1e2c70f..ffbd915 100644
--- a/recipes-multimedia/mediasdk/intel-mediasdk_19.2.0.bb
+++ b/recipes-multimedia/mediasdk/intel-mediasdk_19.2.0.bb
@@ -11,6 +11,9 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=3cb331af679cd8f968bf799a9c55b46e"
 # Only for 64 bit until media-driver issues aren't fixed
 COMPATIBLE_HOST = '(x86_64).*-linux'
 
+inherit distro_features_check
+REQUIRED_DISTRO_FEATURES = "opengl"
+
 DEPENDS += "libdrm libva intel-media-driver"
 
 PACKAGECONFIG ??= "${@bb.utils.contains("DISTRO_FEATURES", "x11", "dri3", "", d)} \
-- 
2.7.4


