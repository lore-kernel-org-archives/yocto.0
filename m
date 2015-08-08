Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDDC1E00707; Sat,  8 Aug 2015 09:03:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B307EE00343
	for <yocto@yoctoproject.org>; Sat,  8 Aug 2015 09:03:16 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 08 Aug 2015 09:02:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,634,1432623600"; d="scan'208";a="744751660"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.145])
	by orsmga001.jf.intel.com with ESMTP; 08 Aug 2015 09:02:57 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Sat,  8 Aug 2015 08:58:57 -0700
Message-Id: <1439049537-18646-1-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-mingw][PATCH] additional license: ZPL
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
X-List-Received-Date: Sat, 08 Aug 2015 16:03:20 -0000

mingw runtime and mingw headers are licensed under ZPL
license (Zope Public License). ZPL license is GPL compatible.
This patch puts the ZPL license into meta-mingw/files/additional-licenses
in order to  eliminate mingw warnings:

WARNING: nativesdk-mingw-w64-headers: No generic license file exists for: ZPL in any provider
WARNING: nativesdk-mingw-w64-runtime: No generic license file exists for: ZPL in any provider

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 conf/layer.conf               |  1 +
 files/additional-licenses/ZPL | 43 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 44 insertions(+)
 create mode 100644 files/additional-licenses/ZPL

diff --git a/conf/layer.conf b/conf/layer.conf
index a32fa82..7a4c142 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -7,3 +7,4 @@ BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend"
 BBFILE_COLLECTIONS += "meta-mingw"
 BBFILE_PATTERN_meta-mingw := "^${LAYERDIR}/"
 BBFILE_PRIORITY_meta-mingw = "8"
+LICENSE_PATH += "${LAYERDIR}/files/additional-licenses"
diff --git a/files/additional-licenses/ZPL b/files/additional-licenses/ZPL
new file mode 100644
index 0000000..28fa951
--- /dev/null
+++ b/files/additional-licenses/ZPL
@@ -0,0 +1,43 @@
+With exception of certain parts that are prominently marked as being
+in the Public Domain, BSD, or LGPL this Software is provided under the
+Zope Public License (ZPL) Version 2.1.
+
+Copyright (c) 2009 - 2013 by the mingw-w64 project
+
+See the AUTHORS file for the list of contributors to the mingw-w64 project.
+
+This license has been certified as open source. It has also been designated
+as GPL compatible by the Free Software Foundation (FSF).
+
+Redistribution and use in source and binary forms, with or without
+modification, are permitted provided that the following conditions are met:
+
+   1. Redistributions in source code must retain the accompanying copyright
+      notice, this list of conditions, and the following disclaimer.
+   2. Redistributions in binary form must reproduce the accompanying
+      copyright notice, this list of conditions, and the following disclaimer
+      in the documentation and/or other materials provided with the
+      distribution.
+   3. Names of the copyright holders must not be used to endorse or promote
+      products derived from this software without prior written permission
+      from the copyright holders.
+   4. The right to distribute this software or to use it for any purpose does
+      not give you the right to use Servicemarks (sm) or Trademarks (tm) of
+      the copyright holders.  Use of them is covered by separate agreement
+      with the copyright holders.
+   5. If any files are modified, you must cause the modified files to carry
+      prominent notices stating that you changed the files and the date of
+      any change.
+
+Disclaimer
+
+THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS ``AS IS'' AND ANY EXPRESSED
+OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
+OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO
+EVENT SHALL THE COPYRIGHT HOLDERS BE LIABLE FOR ANY DIRECT, INDIRECT,
+INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
+LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, 
+OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
+LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
+NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
+EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
-- 
1.9.1


