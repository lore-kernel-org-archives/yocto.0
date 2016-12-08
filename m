Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BAA7E009FA; Thu,  8 Dec 2016 04:54:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36A68E007E8
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2016 04:54:25 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga102.jf.intel.com with ESMTP; 08 Dec 2016 04:54:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,319,1477983600"; d="scan'208";a="40343926"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga005.fm.intel.com with ESMTP; 08 Dec 2016 04:54:24 -0800
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.38])
	by linux.intel.com (Postfix) with ESMTP id 1DEAF6A4080;
	Thu,  8 Dec 2016 04:53:37 -0800 (PST)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  8 Dec 2016 14:54:10 +0200
Message-Id: <1481201650-13695-1-git-send-email-ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Cc: scott.m.rifenbark@intel.com
Subject: [PATCH] ref-manual: New WKS_FILE variable glossary entry.
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
X-List-Received-Date: Thu, 08 Dec 2016 12:54:29 -0000

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 documentation/ref-manual/ref-variables.xml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index af1ed84..aa18bd6 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -15549,6 +15549,20 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             </glossdef>
         </glossentry>
 
+        <glossentry id='var-WKS_FILE'><glossterm>WKS_FILE</glossterm>
+            <info>
+               WKS_FILE[doc] = "Specifies the name of the wic kickstart file."
+            </info>
+            <glossdef>
+                <para role="glossdeffirst">
+                    Specifies the the of the wic kickstart file that is
+                    used to <ulink url='&YOCTO_DOCS_DEV_URL;#creating-wic-images-oe'>create wic partitioned image by the OpenEmbedded build system</ulink>.
+                    For details on kickstart file format, see
+                    <ulink url='&YOCTO_DOCS_DEV_URL;#openembedded-kickstart-wks-reference'>OpenEmbedded Kickstart (.wks) Reference</ulink>.
+                </para>
+            </glossdef>
+        </glossentry>
+
         <glossentry id='var-WORKDIR'><glossterm>WORKDIR</glossterm>
             <info>
                WORKDIR[doc] = "The pathname of the working directory in which the OpenEmbedded build system builds a recipe. This directory is located within the TMPDIR directory structure and changes as different packages are built."
-- 
2.1.4


