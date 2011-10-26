Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A196E013C4
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2011 16:25:47 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 26 Oct 2011 16:25:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,412,1315206000"; d="scan'208";a="30495917"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.157])
	by AZSMGA002.ch.intel.com with ESMTP; 26 Oct 2011 16:25:46 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org
Date: Wed, 26 Oct 2011 16:25:28 -0700
Message-Id: <ffec4328985c28f45a095aa9a593cf37f0e3ab74.1319666230.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <54e92a5053f2c19bd9705066004a68fb6e40234d.1319666230.git.kishore.k.bodke@intel.com>
References: <54e92a5053f2c19bd9705066004a68fb6e40234d.1319666230.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1319666230.git.kishore.k.bodke@intel.com>
References: <cover.1319666230.git.kishore.k.bodke@intel.com>
Subject: [PATCH 4/7] add enable-dga to the xserver to get rid of DGAInit startup error
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
X-List-Received-Date: Wed, 26 Oct 2011 23:25:47 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xorg-xserver/xserver-xorg_1.11.1.bbappend      |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)
 create mode 100644 meta-romley/recipes-graphics/xorg-xserver/xserver-xorg_1.11.1.bbappend

diff --git a/meta-romley/recipes-graphics/xorg-xserver/xserver-xorg_1.11.1.bbappend b/meta-romley/recipes-graphics/xorg-xserver/xserver-xorg_1.11.1.bbappend
new file mode 100644
index 0000000..b2808ef
--- /dev/null
+++ b/meta-romley/recipes-graphics/xorg-xserver/xserver-xorg_1.11.1.bbappend
@@ -0,0 +1 @@
+EXTRA_OECONF += "--enable-dga"
-- 
1.7.5.4


