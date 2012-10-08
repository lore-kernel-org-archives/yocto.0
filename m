Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35686E01346
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2012 08:40:29 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Oct 2012 08:38:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,554,1344236400"; d="scan'208";a="231286236"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.50])
	by fmsmga001.fm.intel.com with ESMTP; 08 Oct 2012 08:38:26 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <scott.m.rifenbark@intel.com>,
	yocto@yoctoproject.org
Date: Mon,  8 Oct 2012 16:38:12 +0100
Message-Id: <5644889e3429758f391721047ea13afeb465f377.1349710561.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349710561.git.paul.eggleton@linux.intel.com>
References: <cover.1349710561.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1349710561.git.paul.eggleton@linux.intel.com>
References: <cover.1349710561.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 06/11] documentation: poky-ref-manual: extend DISTRO description
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
X-List-Received-Date: Mon, 08 Oct 2012 15:40:32 -0000

Extend the description of the DISTRO variable so that it mentions that
this points to a .conf file under conf/distro and mentions what happens
if the value is left blank.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-variables.xml |   11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index 0bb3094..ba81f96 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -448,7 +448,16 @@
 
         <glossentry id='var-DISTRO'><glossterm>DISTRO</glossterm>
             <glossdef>
-                <para>The short name of the distribution.</para>
+                <para>
+                    The short name of the distribution. This corresponds to a file with the
+                    extension .conf located in a <filename>conf/distro</filename> directory
+                    within the metadata that contains the distribution configuration. The
+                    value must not contain spaces, and is typically all lower-case.
+                </para>
+                <para>
+                    If blank, a set of default configuration will be used, which is specified
+                    within <filename>meta/conf/distro/defaultsetup.conf</filename>.
+                </para>
             </glossdef>
         </glossentry>
 
-- 
1.7.9.5


