Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A29DE01244
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 08:31:12 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Aug 2011 08:31:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,270,1312182000"; d="scan'208";a="43313497"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.18.129])
	by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2011 08:31:11 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2011 16:30:47 +0100
Message-Id: <d91869195c644800a9547c613160be2d43edca30.1314113115.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 14/14] documentation: clarify specifying a specific package with -e
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
X-List-Received-Date: Tue, 23 Aug 2011 15:31:12 -0000

The -b option is not required to show the environment used to build a
specific package; usually the best practice is to specify the package
name alone.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/usingpoky.xml |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/usingpoky.xml b/documentation/poky-ref-manual/usingpoky.xml
index 0eb9928..91ec14b 100644
--- a/documentation/poky-ref-manual/usingpoky.xml
+++ b/documentation/poky-ref-manual/usingpoky.xml
@@ -324,7 +324,8 @@
         <para>
             The "-e" option dumps the resulting environment for
             either the configuration (no package specified) or for a
-            specific package when specified with the "-b" option.
+            specific package when specified; or "-b recipename" to
+            show the environment from parsing a single recipe file only.
         </para>
     </section>
     
-- 
1.7.4.1


