Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF5ABE0154D
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 11:01:38 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Apr 2013 10:59:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,402,1363158000"; d="scan'208";a="311864291"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.13.159])
	by orsmga002.jf.intel.com with ESMTP; 03 Apr 2013 11:01:37 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  3 Apr 2013 19:01:23 +0100
Message-Id: <558da5e0b3fce8b1591a171dcd4387da4df6c964.1365011998.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1365011998.git.paul.eggleton@linux.intel.com>
References: <cover.1365011998.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1365011998.git.paul.eggleton@linux.intel.com>
References: <cover.1365011998.git.paul.eggleton@linux.intel.com>
Cc: Scott Rifenbark <srifenbark@gmail.com>
Subject: [yocto-docs][PATCH 3/5] ref-manual: add preamble to buildhistory section on top-level contents
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
X-List-Received-Date: Wed, 03 Apr 2013 18:01:39 -0000

Add a paragraph to the top of the section on buildhistory mentioning the
metadata-revs file and the top-level directories.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/ref-manual/usingpoky.xml |    8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/documentation/ref-manual/usingpoky.xml b/documentation/ref-manual/usingpoky.xml
index 101411c..25a2259 100644
--- a/documentation/ref-manual/usingpoky.xml
+++ b/documentation/ref-manual/usingpoky.xml
@@ -503,6 +503,14 @@
             <imagedata fileref="figures/buildhistory.png" align="center" width="6in" depth="4in" />
         </para>
 
+        <para>At the top level, there is a <filename>metadata-revs</filename> file
+            listing the revisions of the repositories for the layers enabled
+            when the build was produced. The rest of the data is split into separate
+            <filename>packages</filename>, <filename>images</filename> and
+            <filename>sdk</filename> directories, the contents of which are
+            described below.
+        </para>
+
         <section id='build-history-package-information'>
             <title>Build History Package Information</title>
 
-- 
1.7.10.4


