Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B52D4E002A5
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 21:37:33 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 24 Aug 2012 21:37:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,309,1344236400"; d="scan'208";a="211122709"
Received: from unknown (HELO localhost) ([10.255.12.244])
	by fmsmga001.fm.intel.com with ESMTP; 24 Aug 2012 21:37:26 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 24 Aug 2012 23:36:46 -0500
Message-Id: <9c34be0b58af7852792ee61eb68b2c717d0887b2.1345868069.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <a4c4b0f81b4facca97c9183e7df3664030464e92.1345868069.git.tom.zanussi@intel.com>
References: <a4c4b0f81b4facca97c9183e7df3664030464e92.1345868069.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1345868069.git.tom.zanussi@intel.com>
References: <cover.1345868069.git.tom.zanussi@intel.com>
Subject: [PATCH 3/4] meta-intel.inc: have appropriate BSPs use it
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
X-List-Received-Date: Sat, 25 Aug 2012 04:37:33 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

ia32-base.inc no longer contains everything these BSPs need - some of
what was in that file is now in meta-intel.inc, so we need to include
that too.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay.conf | 1 +
 meta-fri2/conf/machine/fri2.conf         | 1 +
 meta-romley/conf/machine/romley.conf     | 1 +
 meta-sys940x/conf/machine/sys940x.conf   | 1 +
 4 files changed, 4 insertions(+)

diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 7d5e597..dba735a 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -8,6 +8,7 @@ PREFERRED_VERSION_linux-yocto ?= "3.4%"
 
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
+require conf/machine/include/meta-intel.inc
 
 MACHINE_FEATURES += "gst-va-mixvideo"
 
diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index f90deb3..a928f0f 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -6,6 +6,7 @@
 
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
+require conf/machine/include/meta-intel.inc
 
 VA_FEATURES ?= "gst-va-intel va-intel"
 
diff --git a/meta-romley/conf/machine/romley.conf b/meta-romley/conf/machine/romley.conf
index f7cfa18..ab4d3c0 100644
--- a/meta-romley/conf/machine/romley.conf
+++ b/meta-romley/conf/machine/romley.conf
@@ -9,6 +9,7 @@ PREFERRED_VERSION_linux-yocto ?= "3.2%"
 
 require conf/machine/include/tune-x86_64.inc
 require conf/machine/include/ia32-base.inc
+require conf/machine/include/meta-intel.inc
 
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
diff --git a/meta-sys940x/conf/machine/sys940x.conf b/meta-sys940x/conf/machine/sys940x.conf
index 18f769d..9db2b2a 100644
--- a/meta-sys940x/conf/machine/sys940x.conf
+++ b/meta-sys940x/conf/machine/sys940x.conf
@@ -6,6 +6,7 @@
 
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
+require conf/machine/include/meta-intel.inc
 
 # Add "pcbios" if you have a non-efi version of the firmware
 MACHINE_FEATURES += "efi pcbios gst-va-mixvideo"
-- 
1.7.11.4


