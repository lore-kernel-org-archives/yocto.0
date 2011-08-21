Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8D35E011CA
	for <yocto@yoctoproject.org>; Sun, 21 Aug 2011 08:27:28 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Aug 2011 08:27:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="39972334"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by orsmga002.jf.intel.com with ESMTP; 21 Aug 2011 08:27:27 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Sun, 21 Aug 2011 10:27:54 -0500
Message-Id: <b6e1f4f124bf1b1c404a77345614f0839ff5429d.1313940067.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <91a3b4ea053df14c926d64067b76edfc008c5ce5.1313940067.git.tom.zanussi@intel.com>
References: <91a3b4ea053df14c926d64067b76edfc008c5ce5.1313940067.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1313940067.git.tom.zanussi@intel.com>
References: <cover.1313940067.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] meta-intel: update SRCREVs
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
X-List-Received-Date: Sun, 21 Aug 2011 15:27:28 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update linux-yocto_3.0 kernel SRCREVS for fishriver, fri2,
jasperforest, and sugarbay.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 7e40fb1..1d1c0b6 100644
--- a/meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -2,5 +2,5 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_fishriver = "fishriver"
 KMACHINE_fishriver  = "yocto/standard/fishriver"
 
-SRCREV_machine_pn-linux-yocto_fishriver ?= "5c13f6d2e5d49d3cddd57619efb0c615074f6aae"
-SRCREV_meta_pn-linux-yocto_fishriver ?= "9da70812ecddee0f7eeb11675f29497cb997275e"
+SRCREV_machine_pn-linux-yocto_fishriver ?= "5746120ee0afefd1e28400bea4b74f285bd5e59a"
+SRCREV_meta_pn-linux-yocto_fishriver ?= "d588bdafc0d9b4d2386144b7d76a1d379e2d16c0"
diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 98c056f..739e799 100644
--- a/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -2,5 +2,5 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_fri2 = "fri2"
 KMACHINE_fri2  = "yocto/standard/fri2"
 
-SRCREV_machine_pn-linux-yocto_fri2 ?= "9ebb9cf2527250fceee7ccd9c6d3e01c00724bf9"
-SRCREV_meta_pn-linux-yocto_fri2 ?= "9da70812ecddee0f7eeb11675f29497cb997275e"
+SRCREV_machine_pn-linux-yocto_fri2 ?= "493b09ef2c7124f977421a40955750743a5293d3"
+SRCREV_meta_pn-linux-yocto_fri2 ?= "d588bdafc0d9b4d2386144b7d76a1d379e2d16c0"
diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.0.bbappend
index d351b37..715d30d 100644
--- a/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -4,5 +4,5 @@ COMPATIBLE_MACHINE_jasperforest = "jasperforest"
 
 KMACHINE_jasperforest  = "yocto/standard/common-pc-64/jasperforest"
 
-SRCREV_machine_pn-linux-yocto_jasperforest ?= "48f6aaacf668d06aa9aba82501f31b3eff08df8d"
-SRCREV_meta_pn-linux-yocto_jasperforest ?= "9da70812ecddee0f7eeb11675f29497cb997275e"
+SRCREV_machine_pn-linux-yocto_jasperforest ?= "bc7f933525ebc267cc8d9a66ce03626bbe14537b"
+SRCREV_meta_pn-linux-yocto_jasperforest ?= "d588bdafc0d9b4d2386144b7d76a1d379e2d16c0"
diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 52920f6..b8c2da3 100644
--- a/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -3,5 +3,5 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_sugarbay = "sugarbay"
 KMACHINE_sugarbay  = "yocto/standard/common-pc-64/sugarbay"
 
-SRCREV_machine_pn-linux-yocto_sugarbay ?= "b0430dab0b3af4a12fe057cecc63ce98f9419ce1"
-SRCREV_meta_pn-linux-yocto_sugarbay ?= "9da70812ecddee0f7eeb11675f29497cb997275e"
+SRCREV_machine_pn-linux-yocto_sugarbay ?= "6f4f262873ffe7d4bde8f974af1c62fbfc07f17f"
+SRCREV_meta_pn-linux-yocto_sugarbay ?= "d588bdafc0d9b4d2386144b7d76a1d379e2d16c0"
-- 
1.7.0.4


