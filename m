Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D6A9E0141D
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 12:02:30 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 Aug 2012 12:02:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,747,1336374000"; d="scan'208";a="197062631"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.174])
	by fmsmga001.fm.intel.com with ESMTP; 10 Aug 2012 12:02:29 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	nitin.a.kamble@intel.com,
	tom.zanussi@intel.com
Date: Fri, 10 Aug 2012 12:02:30 -0700
Message-Id: <7c1f097be88cb26dca2fc1b43a38e5b59ed077e0.1344624483.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <10661fc3a8ea84d0f912c3ab1baa660369cb4e52.1344624483.git.kishore.k.bodke@intel.com>
References: <10661fc3a8ea84d0f912c3ab1baa660369cb4e52.1344624483.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1344624483.git.kishore.k.bodke@intel.com>
References: <cover.1344624483.git.kishore.k.bodke@intel.com>
Subject: [PATCH 2/3] [meta-intel] meta-intel:Add a MATROX MGA variable to ia32-base.inc
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
X-List-Received-Date: Fri, 10 Aug 2012 19:02:30 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Add XSERVER_IA32_MATROX_MGA variable for including
Matrox MGA graphics recipe.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 conf/machine/include/ia32-base.inc |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
index 99ac352..8dd6743 100644
--- a/conf/machine/include/ia32-base.inc
+++ b/conf/machine/include/ia32-base.inc
@@ -60,3 +60,7 @@ XSERVER_IA32_EMGD = "emgd-driver-bin \
            "
 
 XSERVER_IA32_VESA = "xf86-video-vesa"
+
+XSERVER_IA32_MATROX_MGA = "xserver-xorg-module-xaa \
+			xf86-video-mga \
+			"
-- 
1.7.9.5


