Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33696E014D0
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 07:35:25 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Sep 2012 07:35:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,374,1344236400"; d="scan'208";a="218100807"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.155])
	by fmsmga002.fm.intel.com with ESMTP; 05 Sep 2012 07:35:20 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Sep 2012 15:35:04 +0100
Message-Id: <f51487cc72344c710ff1d878dabed54a223a9a9a.1346854096.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1346854096.git.paul.eggleton@linux.intel.com>
References: <cover.1346854096.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1346854096.git.paul.eggleton@linux.intel.com>
References: <cover.1346854096.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 06/12] documentation/poky-ref-manual: update the default value of PACKAGES
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
X-List-Received-Date: Wed, 05 Sep 2012 14:35:25 -0000

Also add a definition for PACKAGE_BEFORE_PN since the default value of
PACKAGES now includes this.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-variables.xml |    9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index bf1cce1..531ee8a 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -1482,6 +1482,13 @@ recipes-graphics/xorg-font/xorg-font-common.inc:INC_PR = "r2"
             </glossdef>
         </glossentry>
 
+        <glossentry id='var-PACKAGE_BEFORE_PN'><glossterm>PACKAGE_BEFORE_PN</glossterm>
+            <glossdef>
+                <para>Enables easily adding packages to <filename><link linkend='var-PACKAGES'>PACKAGES</link></filename>
+                before ${PN} so that they pick up files that would normally be included in the default package.</para>
+            </glossdef>
+        </glossentry>
+
         <glossentry id='var-PACKAGE_CLASSES'><glossterm>PACKAGE_CLASSES</glossterm>
             <glossdef>
                 <para>This variable, which is set in the <filename>local.conf</filename> configuration
@@ -1512,7 +1519,7 @@ recipes-graphics/xorg-font/xorg-font-common.inc:INC_PR = "r2"
         <glossentry id='var-PACKAGES'><glossterm>PACKAGES</glossterm>
             <glossdef>
                 <para>The list of packages to be created from the recipe.
-                    The default value is "${PN}-dbg ${PN} ${PN}-doc ${PN}-dev".</para>
+                    The default value is "${PN}-dbg ${PN}-staticdev ${PN}-dev ${PN}-doc ${PN}-locale ${PACKAGE_BEFORE_PN} ${PN}".</para>
             </glossdef>
         </glossentry>
 
-- 
1.7.9.5


