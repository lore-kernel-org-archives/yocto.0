Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA776E00D12; Wed,  8 Jun 2016 06:21:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CD00E00CF4
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 06:20:58 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 08 Jun 2016 06:20:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,439,1459839600"; d="scan'208";a="824133758"
Received: from mshirsix-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.147.125])
	by orsmga003.jf.intel.com with ESMTP; 08 Jun 2016 06:20:54 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  9 Jun 2016 01:19:59 +1200
Message-Id: <28adbfa63438539a940e0e561a9bbc17752617e0.1465391621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <cover.1465391621.git.paul.eggleton@linux.intel.com>
References: <cover.1465391621.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1465391621.git.paul.eggleton@linux.intel.com>
References: <cover.1465391621.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH v2 06/15] bulkchange: drop temp paths in multi-patch tarball
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
X-List-Received-Date: Wed, 08 Jun 2016 13:21:09 -0000

We were getting temporary paths appearing in the tarball that gets
created to allow you to download the patches for a bulk change operation
that crosses multiple layers - we don't need those.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/bulkchange.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/layerindex/bulkchange.py b/layerindex/bulkchange.py
index c569b61..08d6d78 100644
--- a/layerindex/bulkchange.py
+++ b/layerindex/bulkchange.py
@@ -70,7 +70,7 @@ def generate_patches(tinfoil, fetchdir, changeset, outputdir):
         tar = tarfile.open(None, "w:gz", tmptarfile)
         for patch in patches:
             patchfn = os.path.join(tmpoutdir, patch)
-            tar.add(patchfn)
+            tar.add(patchfn, arcname=patch)
         tar.close()
         ret = tmptarname
     elif len(patches) == 1:
-- 
2.5.5


