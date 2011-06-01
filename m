Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 748674C8086F
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2011 14:58:19 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 01 Jun 2011 12:58:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,305,1304319600"; d="scan'208";a="12142358"
Received: from unknown (HELO localhost) ([10.255.13.85])
	by fmsmga001.fm.intel.com with ESMTP; 01 Jun 2011 12:58:18 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  1 Jun 2011 14:56:00 -0500
Message-Id: <17615bac703c32f25a70a35648395c0d3230e10c.1306958045.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <5b509a5e7bc0fc37844d684ef3fb870d45e1b3ef.1306958045.git.tom.zanussi@intel.com>
References: <5b509a5e7bc0fc37844d684ef3fb870d45e1b3ef.1306958045.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306958045.git.tom.zanussi@intel.com>
References: <cover.1306958045.git.tom.zanussi@intel.com>
Subject: [PATCH 4/6] meta-crownbay: update crownbay.conf
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
X-List-Received-Date: Wed, 01 Jun 2011 19:58:19 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update to reflect new graphics recipes.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay.conf |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 48742be..e35334d 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -17,18 +17,18 @@ PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
-PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-emgd"
-PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-emgd"
-XSERVER ?= "xserver-xf86-emgd \
-           xserver-xf86-emgd-bin \
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
+PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-dri-lite"
+XSERVER ?= "xserver-xf86-dri-lite \
+           emgd-driver-bin \
            xf86-input-mouse \
            xf86-input-keyboard \
            xf86-input-evdev \
            xf86-input-synaptics \
            xf86-video-vesa"
 
-PREFERRED_VERSION_xserver-xf86-emgd ?= "1.7.99.2"
-PREFERRED_VERSION_xserver-xf86-emgd-bin ?= "1.7.99.2"
+PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.9.3"
+PREFERRED_VERSION_emgd-driver-bin ?= "1.6"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 
-- 
1.7.0.4


