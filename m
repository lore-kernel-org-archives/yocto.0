Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B422E00723
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 15:13:25 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 May 2012 15:13:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="160634564"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by fmsmga002.fm.intel.com with ESMTP; 01 May 2012 15:13:25 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, Tom Zanussi <tom.zanussi@intel.com>
Date: Tue,  1 May 2012 15:12:45 -0700
Message-Id: <ff5735683d1bb8a81cebea32c4e365a74091a003.1335909082.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1335909082.git.dvhart@linux.intel.com>
References: <cover.1335909082.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1335909082.git.dvhart@linux.intel.com>
References: <cover.1335909082.git.dvhart@linux.intel.com>
Subject: [PATCH 1/7] fri2: Prefer linux-yocto 3.2
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
X-List-Received-Date: Tue, 01 May 2012 22:13:25 -0000

Update the Fish River Island II BSPs to build using linux-yocto_3.2
by default.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-fri2/conf/machine/fri2-noemgd.conf |    3 +++
 meta-fri2/conf/machine/fri2.conf        |    3 +++
 2 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/meta-fri2/conf/machine/fri2-noemgd.conf b/meta-fri2/conf/machine/fri2-noemgd.conf
index 9ba5753..31c890a 100644
--- a/meta-fri2/conf/machine/fri2-noemgd.conf
+++ b/meta-fri2/conf/machine/fri2-noemgd.conf
@@ -10,6 +10,9 @@ require conf/machine/include/ia32-base.inc
 MACHINE_FEATURES += "wifi 3g pcbios efi"
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2a-5"
 
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+PREFERRED_VERSION_linux-yocto = "3.2%"
+
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
            ${XSERVER_IA32_VESA} \
diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index 1cd6a3e..4924ca2 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -10,6 +10,9 @@ require conf/machine/include/ia32-base.inc
 MACHINE_FEATURES += "wifi 3g pcbios efi"
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2a-5"
 
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+PREFERRED_VERSION_linux-yocto = "3.2%"
+
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
            ${XSERVER_IA32_EMGD} \
-- 
1.7.7.6


