Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B95C1E013F7
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2012 08:40:20 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Oct 2012 08:38:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,554,1344236400"; d="scan'208";a="231286229"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.50])
	by fmsmga001.fm.intel.com with ESMTP; 08 Oct 2012 08:38:25 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <scott.m.rifenbark@intel.com>,
	yocto@yoctoproject.org
Date: Mon,  8 Oct 2012 16:38:11 +0100
Message-Id: <2f55873956678cf259ac42dacdbe5f916afce6c0.1349710561.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349710561.git.paul.eggleton@linux.intel.com>
References: <cover.1349710561.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1349710561.git.paul.eggleton@linux.intel.com>
References: <cover.1349710561.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 05/11] documentation: poky-ref-manual: add PACKAGECONFIG variable
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
X-List-Received-Date: Mon, 08 Oct 2012 15:40:29 -0000

Add a description of the PACKAGECONFIG variable to the variable
glossary.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-variables.xml |   31 +++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index fa2bc7f..0bb3094 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -1577,6 +1577,37 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             </glossdef>
         </glossentry>
 
+        <glossentry id='var-PACKAGECONFIG'><glossterm>PACKAGECONFIG</glossterm>
+            <glossdef>
+                <para>
+                    Provides a means of enabling or disabling features of a recipe
+                    on a per-recipe basis. The <filename>PACKAGECONFIG</filename>
+                    variable itself specifies a space-separated list of the features
+                    to enable, whilst the named flags set on the variable specify
+                    for each feature the additional build dependencies 
+                    (<filename><link linkend='var-DEPENDS'>DEPENDS</link></filename>)
+                    that should be added if the feature is enabled, and any extra arguments
+                    that should be added to the configure script argument list
+                    (<filename><link linkend='var-EXTRA_OECONF'>EXTRA_OECONF</link></filename>)
+                    if the feature is enabled or disabled.
+                </para>
+                <para>
+                    For example, the following taken from the <filename>librsvg</filename>
+                    recipe will add <filename>--with-croco</filename> to the
+                    configure script arguments and <filename>libcroco</filename> to
+                    <filename><link linkend='var-DEPENDS'>DEPENDS</link></filename>
+                    by default; however, if "croco" is removed from <filename>PACKAGECONFIG</filename>
+                    (for example, by using a bbappend in another layer) then
+                    <filename>--without-croco</filename> will be added to the configure
+                    script arguments instead:
+                    <literallayout class='monospaced'>
+     PACKAGECONFIG ??= "croco"
+     PACKAGECONFIG[croco] = "--with-croco,--without-croco,libcroco"
+                    </literallayout>
+                </para>
+            </glossdef>
+        </glossentry>
+
         <glossentry id='var-PACKAGES'><glossterm>PACKAGES</glossterm>
             <glossdef>
                 <para>The list of packages to be created from the recipe.
-- 
1.7.9.5


