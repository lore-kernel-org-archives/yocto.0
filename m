Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 059D7E00D0E; Wed, 12 Oct 2016 13:47:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D24C3E00C38
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 13:47:45 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 12 Oct 2016 13:47:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,485,1473145200"; d="scan'208";a="1043871629"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.27.109])
	by orsmga001.jf.intel.com with ESMTP; 12 Oct 2016 13:47:43 -0700
From: Joshua Lock <joshua.g.lock@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 12 Oct 2016 21:47:40 +0100
Message-Id: <1476305260-11089-1-git-send-email-joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: srifenbark@gmail.com
Subject: [PATCH] ref-manual: remove reference to RM_OLD_IMAGE
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
X-List-Received-Date: Wed, 12 Oct 2016 20:47:49 -0000

RM_OLD_IMAGE has been removed as it's now the default behaviour.

Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
---
 documentation/ref-manual/ref-variables.xml | 22 ----------------------
 1 file changed, 22 deletions(-)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index fc36af4..bd2ec6d 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -10208,28 +10208,6 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             </glossdef>
         </glossentry>
 
-        <glossentry id='var-RM_OLD_IMAGE'><glossterm>RM_OLD_IMAGE</glossterm>
-            <info>
-                RM_OLD_IMAGE[doc] = "Reclaims disk space by removing previously built versions of the same image from the images directory pointed to by the DEPLOY_DIR variable."
-            </info>
-            <glossdef>
-                <para role="glossdeffirst">
-<!--                <para role="glossdeffirst"><imagedata fileref="figures/define-generic.png" /> -->
-                    Reclaims disk space by removing previously built
-                    versions of the same image from the
-                    <filename>images</filename> directory pointed to by the
-                    <link linkend='var-DEPLOY_DIR'><filename>DEPLOY_DIR</filename></link>
-                    variable.
-                </para>
-
-                <para>
-                    Set this variable to "1" in your
-                    <filename>local.conf</filename> file to remove these
-                    images.
-                </para>
-            </glossdef>
-        </glossentry>
-
         <glossentry id='var-RM_WORK_EXCLUDE'><glossterm>RM_WORK_EXCLUDE</glossterm>
             <info>
                 RM_WORK_EXCLUDE[doc] = "With rm_work enabled, this variable specifies a list of packages whose work directories should not be removed."
-- 
2.7.4


