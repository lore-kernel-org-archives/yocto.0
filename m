Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4F35E00B93; Mon, 12 Dec 2016 04:01:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 666FFE00B2B
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 04:01:31 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga101.jf.intel.com with ESMTP; 12 Dec 2016 04:01:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,336,1477983600"; d="scan'208";a="201603186"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga004.fm.intel.com with ESMTP; 12 Dec 2016 04:01:30 -0800
Received: from ed.fi.intel.com (ed.fi.intel.com [10.237.72.179])
	by linux.intel.com (Postfix) with ESMTP id 435426A4006;
	Mon, 12 Dec 2016 04:00:43 -0800 (PST)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 12 Dec 2016 14:01:20 +0200
Message-Id: <1481544080-3515-1-git-send-email-ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.6.6
In-Reply-To: <5dcc694b-0fa1-058c-c7a9-7eb5bd4075e0@mender.io>
References: <5dcc694b-0fa1-058c-c7a9-7eb5bd4075e0@mender.io>
Cc: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH v2] ref-manual: New WKS_FILE variable glossary entry.
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
X-List-Received-Date: Mon, 12 Dec 2016 12:01:33 -0000

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 documentation/ref-manual/ref-variables.xml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index 4e003cd..9c03364 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -15548,6 +15548,20 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             </glossdef>
         </glossentry>
 
+        <glossentry id='var-WKS_FILE'><glossterm>WKS_FILE</glossterm>
+            <info>
+               WKS_FILE[doc] = "Specifies the name of the wic kickstart file."
+            </info>
+            <glossdef>
+                <para role="glossdeffirst">
+                    Specifies the location of the wic kickstart file that is
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
2.6.6


