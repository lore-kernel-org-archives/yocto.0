Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ECE6E013D1
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 12:52:53 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 23 May 2012 12:52:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="103456312"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by AZSMGA002.ch.intel.com with ESMTP; 23 May 2012 12:52:52 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 23 May 2012 14:52:44 -0500
Message-Id: <c6fed9874c280d5e891937f67f55752852865265.1337801535.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337801535.git.tom.zanussi@intel.com>
References: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337801535.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337801535.git.tom.zanussi@intel.com>
References: <cover.1337801535.git.tom.zanussi@intel.com>
Subject: [PATCH 17/20] meta-crownbay: use gst-va-intel and va-intel and gst-va-mixvideo
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
X-List-Received-Date: Wed, 23 May 2012 19:52:53 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Have crownbay use gst-va-intel and va-intel so we can easily test and
make use of the video acceleration capabilities of this machine.

Also have it use the gst-va-mixvideo so the emgd mixvideo components
get selected.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay.conf |    6 +++++-
 1 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 0d432ca..a39d037 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -9,6 +9,8 @@ PREFERRED_VERSION_linux-yocto ?= "3.2%"
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
 
+MACHINE_FEATURES += "gst-va-mixvideo"
+
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
            ${XSERVER_IA32_EMGD} \
@@ -20,4 +22,6 @@ PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
 
 APPEND += "video=vesafb vga=0x318"
 
-MACHINE_EXTRA_RRECOMMENDS += "gst-va-intel"
+VA_FEATURES ?= "gst-va-intel va-intel"
+
+MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES}"
-- 
1.7.0.4


