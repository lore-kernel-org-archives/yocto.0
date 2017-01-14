Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD152E008F2; Sat, 14 Jan 2017 11:05:43 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B2DFE0079A
	for <yocto@yoctoproject.org>; Sat, 14 Jan 2017 11:05:40 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 14 Jan 2017 11:05:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,229,1477983600"; d="scan'208";a="1083026107"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga001.jf.intel.com with ESMTP; 14 Jan 2017 11:05:38 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Sat, 14 Jan 2017 11:01:52 -0800
Message-Id: <1484420513-18100-7-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484420513-18100-1-git-send-email-juro.bystricky@intel.com>
References: <1484420513-18100-1-git-send-email-juro.bystricky@intel.com>
Cc: jurobystricky@hotmail.com
Subject: [meta-zephyr][PATCH 6/7] arduino-101-sss: New MACHINE
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
X-List-Received-Date: Sat, 14 Jan 2017 19:05:44 -0000

Added support for Zephyr arduino_101_sss board (ARC core).
The support requires ARC toolchain.

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 conf/machine/arduino-101-sss.conf | 18 ++++++++++++++++++
 conf/machine/include/tune-arc.inc | 34 ++++++++++++++++++++++++++++++++++
 2 files changed, 52 insertions(+)
 create mode 100644 conf/machine/arduino-101-sss.conf
 create mode 100644 conf/machine/include/tune-arc.inc

diff --git a/conf/machine/arduino-101-sss.conf b/conf/machine/arduino-101-sss.conf
new file mode 100644
index 0000000..cab5a3f
--- /dev/null
+++ b/conf/machine/arduino-101-sss.conf
@@ -0,0 +1,18 @@
+#@TYPE: Machine
+#@NAME: arduino-101-sss
+
+#@DESCRIPTION: Machine configuration for Arduino 101 Board (ARC Core).
+
+TUNE_FEATURES ="arc quark-se no-sdata no-delete-null-pointer-checks"
+
+require conf/machine/include/tune-arc.inc
+PACKAGE_EXTRA_ARCHS_tune-arc = "arc"
+
+PREFERRED_VERSION_gcc-cross-${TARGET_ARCH} = "6.x.arc"
+PREFERRED_VERSION_gcc-cross-canadian-${TRANSLATED_TARGET_ARCH} = "6.x.arc"
+PREFERRED_VERSION_libgcc = "6.x.arc"
+
+PREFERRED_VERSION_binutils-cross-${TARGET_ARCH} = "2.26+gitarc"
+PREFERRED_VERSION_binutils-cross-canadian-${TRANSLATED_TARGET_ARCH} = "2.26+gitarc"
+
+TARGET_LINK_HASH_STYLE = ""
diff --git a/conf/machine/include/tune-arc.inc b/conf/machine/include/tune-arc.inc
new file mode 100644
index 0000000..56ddd3b
--- /dev/null
+++ b/conf/machine/include/tune-arc.inc
@@ -0,0 +1,34 @@
+DEFAULTTUNE ?= "arc"
+
+TUNE_ARCH = "arc"
+TUNE_PKGARCH = "arc"
+TUNE_FEATURES_tune-arc = "littleendian"
+TUNE_CCARGS = ""
+
+TUNEVALID[littleendian] = "Little endian mode"
+
+TUNEVALID[quark-se] = "Intel Quark SE support (ARC core)"
+TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'quark-se', ' -mcpu=quarkse_em', '', d)}"
+AVAILTUNES += "quark-se"
+
+TUNEVALID[nodata] = "ARC mo-sdata"
+TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'no-sdata', ' -mno-sdata', '', d)}"
+AVAILTUNES += "no-sdata"
+
+TUNEVALID[nodata] = "ARC no-delete-null-pointer-checks"
+TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'no-delete-null-pointer-checks', ' -fno-delete-null-pointer-checks', '', d)}"
+AVAILTUNES += "no-delete-null-pointer-checks"
+
+def arc_siteinfo_setfunc(archinfo, osinfo, targetinfo, d):
+	archinfo['arc'] = "endian-little bit-32 "
+	osinfo['linux'] = "common-linux common-glibc"
+	targetinfo['arc-linux'] = "arc-linux"
+	return archinfo, osinfo, targetinfo
+
+SITEINFO_EXTRA_DATAFUNCS = "arc_siteinfo_setfunc"
+
+def arc_machdata_setfunc(machdata, d):
+    machdata["elf"] = { "arc" : (195,    0,    0,  True,  32), }
+    return machdata
+
+PACKAGEQA_EXTRA_MACHDEFFUNCS = "arc_machdata_setfunc"
-- 
2.7.4


