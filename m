Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09EC0E00717
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 11:07:23 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Oct 2012 11:07:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,565,1344236400"; d="scan'208";a="233101482"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga002.fm.intel.com with ESMTP; 10 Oct 2012 11:07:22 -0700
From: nitin.a.kamble@intel.com
To: tom.zanussi@intel.com,
	darren.hart@intel.com,
	yocto@yoctoproject.org
Date: Wed, 10 Oct 2012 11:06:18 -0700
Message-Id: <8251d8977d16eff904f1529ca2c8dbeda4d68558.1349892258.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <0ee691e2e0857cd3f26fe535d67c214817062392.1349892258.git.nitin.a.kamble@intel.com>
References: <0ee691e2e0857cd3f26fe535d67c214817062392.1349892258.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1349892258.git.nitin.a.kamble@intel.com>
References: <cover.1349892258.git.nitin.a.kamble@intel.com>
MIME-Version: 1.0
Subject: [PATCHv3 6/6] custom-licenses dir for Intel-binary-only License
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
X-List-Received-Date: Wed, 10 Oct 2012 18:07:23 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Add a directory common/custom-licenses to store license texts of
recipes in meta-intel layer using custom licenses.

Adding Intel-binary-only license text for emgd-driver-bin recipe.

This takes care of this build warning:
WARNING: emgd-driver-bin: No generic license file exists for: Intel-binary-only in any provider

This addresses one of the issue reported in the bug:
[YOCTO #3238]

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 common/custom-licenses/Intel-binary-only |   42 ++++++++++++++++++++++++++++++
 conf/layer.conf                          |    3 ++
 2 files changed, 45 insertions(+), 0 deletions(-)
 create mode 100644 common/custom-licenses/Intel-binary-only

diff --git a/common/custom-licenses/Intel-binary-only b/common/custom-licenses/Intel-binary-only
new file mode 100644
index 0000000..5a39c93
--- /dev/null
+++ b/common/custom-licenses/Intel-binary-only
@@ -0,0 +1,42 @@
+INTEL SOFTWARE LICENSE AGREEMENT 
+
+IMPORTANT - READ BEFORE COPYING, INSTALLING OR USING.
+
+Do not use or load this software and any associated materials (collectively, the "Software") until you have carefully read the following terms and conditions.  By loading or using the Software, you agree to the terms of this Agreement.  If you do not wish to so agree, do not install or use the Software.
+
+* The Linux DRM kernel source code, when included with this Software, is not subject to the terms of this Agreement but is subject to the “GNU General Public License Version 2”, which may be obtained at the following web site: http://www.gnu.org/licenses/gpl.txt
+
+* Copyright 1999 Precision Insight, Inc., Cedar Park, Texas. (copyright may need to be changed)
+ * Copyright 2000 VA Linux Systems, Inc., Sunnyvale, California.
+ * All Rights Reserved.
+ *
+ * Permission is hereby granted, free of charge, to any person obtaining copy of this software and 
+* associated documentation files (the "Software"), to deal in the Software without restriction, including 
+* without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
+* copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to 
+* the following conditions:
+*
+* The above copyright notice and this permission notice (including the next paragraph) shall be included 
+* in all copies or substantial portions of the Software.
+*
+* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
+*  OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
+* MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
+* IN NO EVENT SHALL PRECISION INSIGHT AND/OR ITS 
+* SUPPLIERS BE LIABLE FOR ANY 
+* CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF 
+* CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH 
+* THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
+
+
+Copyright (c) 2011, Intel Corporation.
+All rights reserved.
+
+Redistribution. Redistribution and use in binary form, without modification, are permitted provided that the following conditions are met:
+
+• Redistributions must reproduce the above copyright notice and the following disclaimer in the   documentation and/or other materials provided with the distribution.
+• Neither the name of Intel Corporation nor the names of its suppliers may be used to endorse or promote products derived from this software without specific prior written permission.
+• No reverse engineering, decompilation, or disassembly of this software is permitted.
+• “Binary form” includes any format commonly used for electronic conveyance which is a reversible, bit-exact translation of binary representation to ASCII or ISO text, for example, “uuencode.”
+
+DISCLAIMER. THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
diff --git a/conf/layer.conf b/conf/layer.conf
index 190d0b2..9292fcd 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -8,3 +8,6 @@ BBFILES := "${BBFILES} ${LAYERDIR}/common/recipes-*/*/*.bb \
 BBFILE_COLLECTIONS += "intel"
 BBFILE_PATTERN_intel := "^${LAYERDIR}/"
 BBFILE_PRIORITY_intel = "5"
+
+# Additional license directories. Add your custom licenses directories this path.
+LICENSE_PATH += "${LAYERDIR}/common/custom-licenses"
-- 
1.7.3.4


