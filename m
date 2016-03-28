Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB829E00BE9; Mon, 28 Mar 2016 10:32:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90B42E0079A
	for <yocto@yoctoproject.org>; Mon, 28 Mar 2016 10:32:40 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 28 Mar 2016 10:32:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,407,1455004800"; d="scan'208";a="920361901"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.90])
	by orsmga001.jf.intel.com with ESMTP; 28 Mar 2016 10:32:39 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 28 Mar 2016 11:33:18 -0600
Message-Id: <1459186398-4446-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Subject: [PATCH][rrs] tools/rrs_distros.py: Fix distro_check.create_distro_packages_list call
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
X-List-Received-Date: Mon, 28 Mar 2016 17:32:45 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Now create_distro_packages_list requires d to be passed, this change was
done to enable proxy support into create_distro_packages_list function.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 rrs/tools/rrs_distros.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/rrs/tools/rrs_distros.py b/rrs/tools/rrs_distros.py
index 9dd564a..46c1058 100755
--- a/rrs/tools/rrs_distros.py
+++ b/rrs/tools/rrs_distros.py
@@ -106,7 +106,7 @@ if __name__=="__main__":
 
         from oe import distro_check
         logger.debug("Downloading distro's package information ...")
-        distro_check.create_distro_packages_list(fetchdir)
+        distro_check.create_distro_packages_list(fetchdir, d)
         pkglst_dir = os.path.join(fetchdir, "package_lists")
 
         RecipeDistro.objects.filter(recipe__layerbranch = layerbranch).delete()
-- 
2.1.4


