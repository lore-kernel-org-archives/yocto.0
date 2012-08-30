Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00B52E0044A
	for <yocto@yoctoproject.org>; Thu, 30 Aug 2012 14:38:12 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Aug 2012 14:38:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,342,1344236400"; d="scan'208";a="193708058"
Received: from unknown (HELO localhost) ([10.255.13.3])
	by orsmga002.jf.intel.com with ESMTP; 30 Aug 2012 14:38:11 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 30 Aug 2012 16:38:01 -0500
Message-Id: <2a7a46cad31df8c8c7559d2d55c905ac23a56b65.1346362316.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <756571750b0449335ef01279ce10609099b8a8e1.1346362316.git.tom.zanussi@intel.com>
References: <756571750b0449335ef01279ce10609099b8a8e1.1346362316.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1346362316.git.tom.zanussi@intel.com>
References: <cover.1346362316.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] meta-intel: use va-impl-intel MACHINE_FEATURE
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
X-List-Received-Date: Thu, 30 Aug 2012 21:38:13 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Explicitly specify the va-impl-intel MACHINE_FEATURE, and update the
mixvideo uses with the feature rename.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-chiefriver/conf/machine/chiefriver.conf |    1 +
 meta-crownbay/conf/machine/crownbay.conf     |    2 +-
 meta-fri2/conf/machine/fri2.conf             |    2 +-
 meta-sugarbay/conf/machine/sugarbay.conf     |    2 ++
 4 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/meta-chiefriver/conf/machine/chiefriver.conf b/meta-chiefriver/conf/machine/chiefriver.conf
index b644119..6d8d3a5 100644
--- a/meta-chiefriver/conf/machine/chiefriver.conf
+++ b/meta-chiefriver/conf/machine/chiefriver.conf
@@ -5,6 +5,7 @@
 # i.e. Ivy Bridge + Panther Point
 
 PREFERRED_VERSION_linux-yocto ?= "3.4%"
+MACHINE_FEATURES += "va-impl-intel"
 
 require conf/machine/include/tune-x86_64.inc
 require conf/machine/include/ia32-base.inc
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index dba735a..c4b7682 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -10,7 +10,7 @@ require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
 require conf/machine/include/meta-intel.inc
 
-MACHINE_FEATURES += "gst-va-mixvideo"
+MACHINE_FEATURES += "va-impl-mixvideo"
 
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index a928f0f..56408f7 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -10,7 +10,7 @@ require conf/machine/include/meta-intel.inc
 
 VA_FEATURES ?= "gst-va-intel va-intel"
 
-MACHINE_FEATURES += "wifi 3g pcbios efi gst-va-mixvideo"
+MACHINE_FEATURES += "wifi 3g pcbios efi va-impl-mixvideo"
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2a-5 ${VA_FEATURES}"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index a80c938..616c2c5 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -4,6 +4,8 @@
 #@DESCRIPTION: Machine configuration for Sugar Bay systems
 # i.e. Sandy Bridge + Cougar Point
 
+MACHINE_FEATURES += "va-impl-intel"
+
 PREFERRED_VERSION_linux-yocto ?= "3.4%"
 
 require conf/machine/include/tune-x86_64.inc
-- 
1.7.4.1


