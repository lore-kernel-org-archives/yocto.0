Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20191E0027E
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2012 08:40:53 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Oct 2012 08:38:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,554,1344236400"; d="scan'208";a="231286257"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.50])
	by fmsmga001.fm.intel.com with ESMTP; 08 Oct 2012 08:38:29 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <scott.m.rifenbark@intel.com>,
	yocto@yoctoproject.org
Date: Mon,  8 Oct 2012 16:38:15 +0100
Message-Id: <00b87202a25e40628d62f268a24ae1cd8cf663e6.1349710561.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349710561.git.paul.eggleton@linux.intel.com>
References: <cover.1349710561.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1349710561.git.paul.eggleton@linux.intel.com>
References: <cover.1349710561.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 09/11] documentation: poky-ref-manual: remove references to ipkg
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
X-List-Received-Date: Mon, 08 Oct 2012 15:41:07 -0000

We haven't supported ipkg for some time now - it was replaced by opkg
(whilst still using the ipk package format).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/faq.xml           |    2 +-
 documentation/poky-ref-manual/ref-variables.xml |    4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/documentation/poky-ref-manual/faq.xml b/documentation/poky-ref-manual/faq.xml
index 943d22a..945c7f1 100644
--- a/documentation/poky-ref-manual/faq.xml
+++ b/documentation/poky-ref-manual/faq.xml
@@ -166,7 +166,7 @@
         <answer>
             <para>
                 The OpenEmbedded build system can build packages in various formats such as
-                <filename>ipk</filename> for <filename>ipkg</filename>/<filename>opkg</filename>, 
+                <filename>ipk</filename> for <filename>opkg</filename>, 
                 Debian package (<filename>.deb</filename>), or RPM. 
                 The packages can then be upgraded using the package tools on the device, much like 
                 on a desktop distribution such as Ubuntu or Fedora.
diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index ccdb0e8..dd858d3 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -114,8 +114,8 @@
             <glossdef>
                 <para>
                     A list of packages not to install despite being recommended by a recipe.
-                    Support for this variable exists only for images that use the 
-                    <filename>ipkg</filename> packaging system.
+                    Support for this variable exists only when using the 
+                    <filename>ipk</filename> packaging backend.
                 </para>
             </glossdef>
         </glossentry>
-- 
1.7.9.5


