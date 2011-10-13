Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78F45E01395
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 22:07:50 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 12 Oct 2011 22:07:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,338,1315206000"; d="scan'208";a="77607080"
Received: from unknown (HELO localhost) ([10.255.14.245])
	by fmsmga002.fm.intel.com with ESMTP; 12 Oct 2011 22:07:49 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 13 Oct 2011 00:07:23 -0500
Message-Id: <f9825d64e7c2eecbd54f6c014025c6ba6ea2a116.1318481569.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <57876222731972088b7d40943f78e960efc2562a.1318481569.git.tom.zanussi@intel.com>
References: <57876222731972088b7d40943f78e960efc2562a.1318481569.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1318481569.git.tom.zanussi@intel.com>
References: <cover.1318481569.git.tom.zanussi@intel.com>
Subject: [PATCH 10/10] meta-n450: xserver-xorg renaming updates
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
X-List-Received-Date: Thu, 13 Oct 2011 05:07:50 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update n450 to reflect the new xserver-xorg naming.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-n450/conf/machine/n450.conf |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-n450/conf/machine/n450.conf b/meta-n450/conf/machine/n450.conf
index 79970d1..ed9850a 100644
--- a/meta-n450/conf/machine/n450.conf
+++ b/meta-n450/conf/machine/n450.conf
@@ -15,9 +15,9 @@ PREFERRED_VERSION_linux-yocto = "3.0%"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
-PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
-PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-dri-lite"
-XSERVER ?= "xserver-xf86-dri-lite \
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
            xf86-input-mouse \
            xf86-input-keyboard \
            xf86-input-evdev \
-- 
1.7.0.4


