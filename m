Return-Path: <sergeimir@emcraft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C803CE0098A; Tue, 21 Jun 2016 07:19:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ocean.emcraft.com (ocean.emcraft.com [185.75.190.205])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 392E9E00990
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 07:19:00 -0700 (PDT)
Received: from sergmir.emcraft.com ([172.17.0.19] helo=sergmir.localdomain)
	by ocean.emcraft.com with esmtps (TLSv1:AES256-SHA:256) (Exim 4.76)
	(envelope-from <sergeimir@emcraft.com>)
	id 1bFLRL-00033m-DF; Tue, 21 Jun 2016 16:10:03 +0300
From: Sergei Miroshnichenko <sergeimir@emcraft.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Ross Burton <ross.burton@intel.com>
Date: Tue, 21 Jun 2016 16:09:37 +0300
Message-Id: <1466514577-32217-2-git-send-email-sergeimir@emcraft.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1466514577-32217-1-git-send-email-sergeimir@emcraft.com>
References: <1466514577-32217-1-git-send-email-sergeimir@emcraft.com>
Cc: yocto@yoctoproject.org, Roger Meier <r.meier@siemens.com>,
	Sergei Miroshnichenko <sergeimir@emcraft.com>,
	Denk@yoctoproject.org, Wolfgang@yoctoproject.org
Subject: [license][PATCH 2/2] ref-manual: Add description for SPDX license operators
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
X-List-Received-Date: Tue, 21 Jun 2016 14:19:08 -0000

Add examples of "OR", "AND" and "WITH" operators usage.

Reference:
https://spdx.org/sites/spdx/files/SPDX-2.0.pdf Appendix IV: SPDX License Expression

Signed-off-by: Sergei Miroshnichenko <sergeimir@emcraft.com>
---
 documentation/ref-manual/ref-variables.xml | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index d55bccd..5892530 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -7106,12 +7106,17 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                     <itemizedlist>
                         <listitem><para>Do not use spaces within individual
                             license names.</para></listitem>
-                        <listitem><para>Separate license names using
-                            | (pipe) when there is a choice between licenses.
+                        <listitem><para>Separate license names using the
+                            | (pipe) or "OR" operators when there is a choice
+                            between licenses.
                             </para></listitem>
-                        <listitem><para>Separate license names using
-                            &amp; (ampersand) when multiple licenses exist
-                            that cover different parts of the source.
+                        <listitem><para>Separate license names using the
+                            &amp; (ampersand) or "AND" operators when multiple
+                            licenses exist that cover different parts of the source.
+                            </para></listitem>
+                        <listitem><para>Separate license and exception names using the
+                            "WITH" operator when a set of license terms apply except
+                            under special circumstances.
                             </para></listitem>
                         <listitem><para>You can use spaces between license
                             names.</para></listitem>
@@ -7132,6 +7137,12 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
      LICENSE = "LGPLv2.1 | GPLv3"
      LICENSE = "MPL-1 &amp; LGPLv2.1"
      LICENSE = "GPLv2+"
+     LICENSE = "LGPL-2.1 OR MIT"
+     LICENSE = "LGPL-2.1 OR MIT OR BSD-3-Clause"
+     LICENSE = "LGPL-2.1 AND MIT"
+     LICENSE = "LGPL-2.1 AND MIT AND BSD-2-Clause"
+     LICENSE = "GPL-2.0+ WITH Bison-exception-2.2"
+     LICENSE = "MIT AND (LGPL-2.1+ AND BSD-3-Clause)"
                     </literallayout>
                     The first example is from the recipes for Qt, which the user
                     may choose to distribute under either the LGPL version
-- 
2.1.0


