Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E4E5E01385
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 07:35:18 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Sep 2012 07:35:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,374,1344236400"; d="scan'208";a="218100755"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.155])
	by fmsmga002.fm.intel.com with ESMTP; 05 Sep 2012 07:35:17 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Sep 2012 15:35:00 +0100
Message-Id: <0aef086dbe02400ee6d845354296902dd53d1c07.1346854096.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1346854096.git.paul.eggleton@linux.intel.com>
References: <cover.1346854096.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1346854096.git.paul.eggleton@linux.intel.com>
References: <cover.1346854096.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 02/12] documentation/poky-ref-manual: fix for rename of task to packagegroup
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
X-List-Received-Date: Wed, 05 Sep 2012 14:35:18 -0000

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-bitbake.xml   |    2 +-
 documentation/poky-ref-manual/ref-variables.xml |    8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-bitbake.xml b/documentation/poky-ref-manual/ref-bitbake.xml
index 330d72e..ff8db59 100644
--- a/documentation/poky-ref-manual/ref-bitbake.xml
+++ b/documentation/poky-ref-manual/ref-bitbake.xml
@@ -124,7 +124,7 @@
             Once a provider is selected, BitBake resolves all the dependencies for  
             the target. 
             In the case of <filename>core-image-sato</filename>, it would lead to 
-            <filename>task-base.bb</filename>,  
+            <filename>packagegroup-base.bb</filename>,  
             which in turn leads to packages like <filename>Contacts</filename>, 
             <filename>Dates</filename> and <filename>BusyBox</filename>.
             These packages in turn depend on <filename>eglibc</filename> and the toolchain.
diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index 362ece4..b1e3cd3 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -1311,7 +1311,7 @@ recipes-graphics/xorg-font/xorg-font-common.inc:INC_PR = "r2"
                     The build process depends on these packages being present.
                     Furthermore, because this is a "machine essential" variable, the list of 
                     packages are essential for the machine to boot.
-                    The impact of this variable affects images based on <filename>task-core-boot</filename>,
+                    The impact of this variable affects images based on <filename>packagegroup-core-boot</filename>,
                     including the <filename>core-image-minimal</filename> image.
                 </para>
                 <para>
@@ -1341,7 +1341,7 @@ recipes-graphics/xorg-font/xorg-font-common.inc:INC_PR = "r2"
                     The build process does not depend on these packages being present.
                     Furthermore, because this is a "machine essential" variable, the list of 
                     packages are essential for the machine to boot.
-                    The impact of this variable affects images based on <filename>task-core-boot</filename>,
+                    The impact of this variable affects images based on <filename>packagegroup-core-boot</filename>,
                     including the <filename>core-image-minimal</filename> image.
                 </para>
                 <para>
@@ -1388,7 +1388,7 @@ recipes-graphics/xorg-font/xorg-font-common.inc:INC_PR = "r2"
                     Even though these packages are not essential for the machine to boot,  
                     the build process depends on them being present.
                     The impact of this variable affects all images based on
-                    <filename>task-base</filename>, which does not include the 
+                    <filename>packagegroup-base</filename>, which does not include the 
                     <filename>core-image-minimal</filename> or <filename>core-image-basic</filename> 
                     images.
                 </para>
@@ -1425,7 +1425,7 @@ recipes-graphics/xorg-font/xorg-font-common.inc:INC_PR = "r2"
                     The package being built has no build dependency on the list of packages 
                     with this variable.  
                     The impact of this variable affects only images based on 
-                    <filename>task-base</filename>, which does not include the 
+                    <filename>packagegroup-base</filename>, which does not include the 
                     <filename>core-image-minimal</filename> or <filename>core-image-basic</filename> 
                     images.
                 </para>
-- 
1.7.9.5


