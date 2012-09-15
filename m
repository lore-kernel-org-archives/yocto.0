Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E423FE0142C
	for <yocto@yoctoproject.org>; Sat, 15 Sep 2012 13:17:45 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Sep 2012 13:17:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,428,1344236400"; d="scan'208";a="222555597"
Received: from unknown (HELO localhost) ([10.255.13.77])
	by fmsmga001.fm.intel.com with ESMTP; 15 Sep 2012 13:17:11 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Sat, 15 Sep 2012 15:17:06 -0500
Message-Id: <cdf9c835b60041bf144e262bf62fe895a53897e6.1347739624.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <2231d3800e94e39a6cc77473c6654cb221e7e55b.1347739624.git.tom.zanussi@intel.com>
References: <2231d3800e94e39a6cc77473c6654cb221e7e55b.1347739624.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1347739624.git.tom.zanussi@intel.com>
References: <cover.1347739624.git.tom.zanussi@intel.com>
Subject: [PATCH 3/4] meta-intel: have fri2 and sys940x prefer emgd-1.10
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
X-List-Received-Date: Sat, 15 Sep 2012 20:17:46 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

fri2 and sys940x need to use emgd-1.10 instead of the newer 1.14.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-fri2/conf/machine/fri2.conf       | 1 +
 meta-sys940x/conf/machine/sys940x.conf | 1 +
 2 files changed, 2 insertions(+)

diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index bf7754f..39fb698 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -25,6 +25,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
 PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
 PREFERRED_VERSION_mesa-dri ?= "7.11"
 PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
+PREFERRED_VERSION_emgd-driver-bin ?= "1.10"
 
 # Syslinux does not know about the 64MHz uart clock and it does not detect the
 # serial device by number. Use the IO port directly and divide the baud down to
diff --git a/meta-sys940x/conf/machine/sys940x.conf b/meta-sys940x/conf/machine/sys940x.conf
index f71bb3a..46c4315 100644
--- a/meta-sys940x/conf/machine/sys940x.conf
+++ b/meta-sys940x/conf/machine/sys940x.conf
@@ -21,6 +21,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
 PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
 PREFERRED_VERSION_mesa-dri ?= "7.11"
 PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
+PREFERRED_VERSION_emgd-driver-bin ?= "1.10"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 APPEND += "console=ttyS0,115200 console=tty0"
-- 
1.7.11.4


