Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25E2BE013DB
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 21:53:39 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 14 Jun 2012 21:53:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="153524258"
Received: from unknown (HELO localhost) ([10.255.12.51])
	by orsmga001.jf.intel.com with ESMTP; 14 Jun 2012 21:53:38 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 14 Jun 2012 23:53:31 -0500
Message-Id: <1f5f00447342f047d114d93ea81dc7f53b01df0a.1339735796.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1339735796.git.tom.zanussi@intel.com>
References: <cover.1339735796.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2] meta-emenlow: add 1.10.2 cairo recipe
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
X-List-Received-Date: Fri, 15 Jun 2012 04:53:39 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The emenlow graphics stack doesn't work with the cairo_1.12.2 library
upgrade; this adds the old 1.10.2 recipe from poky locally to the
emenlow layer in order to get it working again.

Fixes [YOCTO #2507]

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-graphics/cairo/cairo_1.10.2.bb         |   39 ++++++++++++++++++++
 1 files changed, 39 insertions(+), 0 deletions(-)
 create mode 100644 meta-emenlow/recipes-graphics/cairo/cairo_1.10.2.bb

diff --git a/meta-emenlow/recipes-graphics/cairo/cairo_1.10.2.bb b/meta-emenlow/recipes-graphics/cairo/cairo_1.10.2.bb
new file mode 100644
index 0000000..c832417
--- /dev/null
+++ b/meta-emenlow/recipes-graphics/cairo/cairo_1.10.2.bb
@@ -0,0 +1,39 @@
+require recipes-graphics/cairo/cairo.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=e73e999e0c72b5ac9012424fa157ad77"
+
+PR = "r0"
+
+SRC_URI = "http://cairographics.org/releases/cairo-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "f101a9e88b783337b20b2e26dfd26d5f"
+SRC_URI[sha256sum] = "32018c7998358eebc2ad578ff8d8559d34fc80252095f110a572ed23d989fc41"
+
+PACKAGES =+ "cairo-gobject cairo-script-interpreter cairo-perf-utils"
+
+SUMMARY_${PN} = "The Cairo 2D vector graphics library"
+DESCRIPTION_${PN} = "Cairo is a multi-platform library providing anti-aliased \
+vector-based rendering for multiple target backends. Paths consist \
+of line segments and cubic splines and can be rendered at any width \
+with various join and cap styles. All colors may be specified with \
+optional translucence (opacity/alpha) and combined using the \
+extended Porter/Duff compositing algebra as found in the X Render \
+Extension."
+
+SUMMARY_cairo-gobject = "The Cairo library GObject wrapper library"
+DESCRIPTION_cairo-gobject = "A GObject wrapper library for the Cairo API."
+
+SUMMARY_cairo-script-interpreter = "The Cairo library script interpreter"
+DESCRIPTION_cairo-script-interpreter = "The Cairo script interpreter implements \
+CairoScript.  CairoScript is used by tracing utilities to enable the ability \
+to replay rendering."
+
+DESCRIPTION_cairo-perf-utils = "The Cairo library performance utilities"
+
+FILES_${PN} = "${libdir}/libcairo.so.*"
+FILES_${PN}-dev += "${libdir}/cairo/*.la ${libdir}/cairo/*.so"
+FILES_${PN}-dbg += "${libdir}/cairo/.debug"
+FILES_${PN}-staticdev += "${libdir}/cairo/*.a"
+FILES_cairo-gobject = "${libdir}/libcairo-gobject.so.*"
+FILES_cairo-script-interpreter = "${libdir}/libcairo-script-interpreter.so.*"
+FILES_cairo-perf-utils = "${bindir}/cairo-trace ${libdir}/cairo/libcairo-trace.so.*"
-- 
1.7.0.4


