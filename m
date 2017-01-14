Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4766E0093F; Sat, 14 Jan 2017 11:05:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0DE7E006EA
	for <yocto@yoctoproject.org>; Sat, 14 Jan 2017 11:05:39 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 14 Jan 2017 11:05:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,229,1477983600"; d="scan'208";a="1083026100"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga001.jf.intel.com with ESMTP; 14 Jan 2017 11:05:38 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Sat, 14 Jan 2017 11:01:50 -0800
Message-Id: <1484420513-18100-5-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484420513-18100-1-git-send-email-juro.bystricky@intel.com>
References: <1484420513-18100-1-git-send-email-juro.bystricky@intel.com>
Cc: jurobystricky@hotmail.com
Subject: [meta-zephyr][PATCH 4/7] arduino-101: New MACHINE
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 14 Jan 2017 19:05:43 -0000

Support for Arduino-101 board, Intel MCU CPU.
This board needs IAMCU cross-compiler.

[YOCTO#10658]

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 conf/machine/arduino-101.conf       | 10 ++++++++++
 conf/machine/include/tune-iamcu.inc | 19 +++++++++++++++++++
 2 files changed, 29 insertions(+)
 create mode 100644 conf/machine/arduino-101.conf
 create mode 100644 conf/machine/include/tune-iamcu.inc

diff --git a/conf/machine/arduino-101.conf b/conf/machine/arduino-101.conf
new file mode 100644
index 0000000..543a41e
--- /dev/null
+++ b/conf/machine/arduino-101.conf
@@ -0,0 +1,10 @@
+#@TYPE: Machine
+#@NAME: arduino-101
+
+#@DESCRIPTION: Machine configuration for Arduino 101 Board.
+
+TARGET_OS_arduino-101 = "elfiamcu"
+require conf/machine/include/tune-iamcu.inc
+TUNE_PKGARCH_arduino-101 = "iamcu"
+
+TARGET_LINK_HASH_STYLE = ""
diff --git a/conf/machine/include/tune-iamcu.inc b/conf/machine/include/tune-iamcu.inc
new file mode 100644
index 0000000..59160c3
--- /dev/null
+++ b/conf/machine/include/tune-iamcu.inc
@@ -0,0 +1,19 @@
+DEFAULTTUNE ?= "iamcu"
+
+TARGET_OS_iamcu = "elfiamcu"
+TARGET_ARCH = "i586"
+
+TUNE_FEATURES_tune-iamcu = "iamcu"
+TUNE_CCARGS = "-miamcu -m32"
+TUNE_ARCH = "i586"
+TUNEVALID[iamcu] = "Intel MCU"
+
+def iamcu_siteinfo_setfunc(archinfo, osinfo, targetinfo, d):
+	archinfo['iamcu'] = "endian-little bit-32 "
+	osinfo['linux'] = "common-linux common-glibc"
+	targetinfo['iamcu-linux'] = "iamcu-linux"
+	return archinfo, osinfo, targetinfo
+
+SITEINFO_EXTRA_DATAFUNCS = "iamcu_siteinfo_setfunc"
+PACKAGE_EXTRA_ARCHS_tune-iamcu = "iamcu"
+
-- 
2.7.4


