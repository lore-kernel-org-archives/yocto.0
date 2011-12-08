Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B35CAE011B0
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 16:31:31 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Dec 2011 16:31:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="84104104"
Received: from unknown (HELO localhost) ([10.255.12.239])
	by orsmga001.jf.intel.com with ESMTP; 07 Dec 2011 16:31:31 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, Tom Zanussi <tom.zanussi@intel.com>
Date: Wed,  7 Dec 2011 16:31:32 -0800
Message-Id: <5003358f2647f937b57e97c1655e39bf08d85fb0.1323303673.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1323303673.git.dvhart@linux.intel.com>
References: <cover.1323303673.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1323303673.git.dvhart@linux.intel.com>
References: <cover.1323303673.git.dvhart@linux.intel.com>
Subject: [PATCH 4/7] fri2: include linux-firmware for iwlwifi in images
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
X-List-Received-Date: Thu, 08 Dec 2011 00:31:31 -0000

Include the firmware package for the iwlwifi card for task-base based images
using the MACHINE_EXTRA_RRECOMMENDS variable. This will exclude the firmware
from being installed in core-image-minimal, but it doesn't have the tooling
required to connect over wifi anyway.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-fri2/conf/machine/fri2-noemgd.conf |    2 ++
 meta-fri2/conf/machine/fri2.conf        |    1 +
 2 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta-fri2/conf/machine/fri2-noemgd.conf b/meta-fri2/conf/machine/fri2-noemgd.conf
index 3ac60c2..7e99486 100644
--- a/meta-fri2/conf/machine/fri2-noemgd.conf
+++ b/meta-fri2/conf/machine/fri2-noemgd.conf
@@ -8,6 +8,7 @@ include conf/machine/include/tune-atom.inc
 include conf/machine/include/ia32-base.inc
 
 MACHINE_FEATURES += "wifi 3g"
+MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2a-5"
 
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
@@ -19,3 +20,4 @@ SERIAL_CONSOLE = "115200 ttyS0"
 APPEND += "console=ttyS0,115200 console=tty0"
 
 APPEND += "video=vesafb vga=0x318"
+
diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index ae69742..72d7a48 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -8,6 +8,7 @@ include conf/machine/include/tune-atom.inc
 include conf/machine/include/ia32-base.inc
 
 MACHINE_FEATURES += "wifi 3g"
+MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2a-5"
 
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
-- 
1.7.6.4


