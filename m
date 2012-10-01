Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3BC4E0027E
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2012 11:05:37 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Oct 2012 11:05:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,517,1344236400"; d="scan'208";a="199303452"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.40])
	by azsmga001.ch.intel.com with ESMTP; 01 Oct 2012 11:05:33 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <scott.m.rifenbark@intel.com>,
	yocto@yoctoproject.org
Date: Mon,  1 Oct 2012 19:05:20 +0100
Message-Id: <61dc46287e15fcbc5099a6c103db6792798f3811.1349114621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349114621.git.paul.eggleton@linux.intel.com>
References: <cover.1349114621.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1349114621.git.paul.eggleton@linux.intel.com>
References: <cover.1349114621.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 01/11] documentation/poky-ref-manual: the G in GPL is "General"
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
X-List-Received-Date: Mon, 01 Oct 2012 18:05:38 -0000

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-images.xml |    4 ++--
 documentation/poky-ref-manual/usingpoky.xml  |    6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-images.xml b/documentation/poky-ref-manual/ref-images.xml
index 096f4b5..79f2409 100644
--- a/documentation/poky-ref-manual/ref-images.xml
+++ b/documentation/poky-ref-manual/ref-images.xml
@@ -12,8 +12,8 @@
     </para>
 
     <note>
-        Building an image without GNU Public License Version 3 (GPLv3) components is 
-        only supported for minimal and base images.
+        Building an image without GNU General Public License Version 3 (GPLv3) components
+        is only supported for minimal and base images.
         Furthermore, if you are going to build an image using non-GPLv3 components,
         you must make the following changes in the <filename>local.conf</filename> file
         before using the BitBake command to build the minimal or base image:
diff --git a/documentation/poky-ref-manual/usingpoky.xml b/documentation/poky-ref-manual/usingpoky.xml
index 817aa2f..18bd8b7 100644
--- a/documentation/poky-ref-manual/usingpoky.xml
+++ b/documentation/poky-ref-manual/usingpoky.xml
@@ -66,8 +66,8 @@
         </para>
 
         <note>
-            Building an image without GNU Public License Version 3 (GPLv3) components is 
-            only supported for minimal and base images.
+            Building an image without GNU General Public License Version 3 (GPLv3) components
+            is only supported for minimal and base images.
             See the "<link linkend='ref-images'>Images</link>" chapter for more information.
         </note>
     </section>
@@ -78,7 +78,7 @@
         <para>
             When building an image using GPL components, you need to maintain your original 
             settings and not switch back and forth applying different versions of the GNU
-            Public License.  
+            General Public License.  
             If you rebuild using different versions of GPL, dependency errors might occur
             due to some components not being rebuilt.
         </para>
-- 
1.7.9.5


