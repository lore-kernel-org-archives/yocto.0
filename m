Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1F2AE013C7
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2011 16:25:48 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 26 Oct 2011 16:25:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,412,1315206000"; d="scan'208";a="30495921"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.157])
	by AZSMGA002.ch.intel.com with ESMTP; 26 Oct 2011 16:25:48 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org
Date: Wed, 26 Oct 2011 16:25:29 -0700
Message-Id: <fcaa77065bf817c3d8ffb0373990c1e805c2aedd.1319666230.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <54e92a5053f2c19bd9705066004a68fb6e40234d.1319666230.git.kishore.k.bodke@intel.com>
References: <54e92a5053f2c19bd9705066004a68fb6e40234d.1319666230.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1319666230.git.kishore.k.bodke@intel.com>
References: <cover.1319666230.git.kishore.k.bodke@intel.com>
Subject: [PATCH 5/7] add missing xaa module
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
X-List-Received-Date: Wed, 26 Oct 2011 23:25:48 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-romley/conf/machine/romley.conf |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta-romley/conf/machine/romley.conf b/meta-romley/conf/machine/romley.conf
index 625fa60..1035d82 100644
--- a/meta-romley/conf/machine/romley.conf
+++ b/meta-romley/conf/machine/romley.conf
@@ -26,6 +26,7 @@ XSERVER ?= "xserver-xorg \
            xserver-xorg-extension-extmod \
            xserver-xorg-extension-dbe \
            xserver-xorg-module-libint10 \
+           xserver-xorg-module-xaa \
            xf86-input-mouse \
            xf86-input-keyboard \
            xf86-input-evdev \
-- 
1.7.5.4


