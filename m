Return-Path: <alexandrux.palalau@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09171E00747
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 00:36:25 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 Sep 2013 00:36:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,889,1371106800"; d="scan'208";a="377024113"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 12 Sep 2013 00:36:24 -0700
Received: from localhost.localdomain (unknown [10.237.112.121])
	by linux.intel.com (Postfix) with ESMTP id 5BF8F6A4007;
	Thu, 12 Sep 2013 00:36:22 -0700 (PDT)
From: alexandrux.palalau@linux.intel.com
To: yocto@yoctoproject.org
Date: Thu, 12 Sep 2013 10:37:38 +0300
Message-Id: <1378971461-9052-2-git-send-email-alexandrux.palalau@linux.intel.com>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <1378971461-9052-1-git-send-email-alexandrux.palalau@linux.intel.com>
References: <1378971461-9052-1-git-send-email-alexandrux.palalau@linux.intel.com>
Cc: Alexandru Palalau <alexandrux.palalau@intel.com>
Subject: [PATCH 1/4] autobuilder/buildsets: added functionality to CreateBBLayersConf.py in order to add poky extra layers (non BSP-specific)
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
X-List-Received-Date: Thu, 12 Sep 2013 07:36:28 -0000

From: Alexandru Palalau <alexandrux.palalau@intel.com>

This patch allows you to add poky layers to bblayers.conf (eg. meta-skeleton)

Signed-off-by: Alexandru Palalau <alexandrux.palalau@intel.com>
---
 .../site-packages/autobuilder/buildsteps/CreateBBLayersConf.py         | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py
index a37ec04..506e59d 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py
@@ -67,6 +67,9 @@ class CreateBBLayersConf(ShellCommand):
                 fout = fout + workdir + '/build/meta-intel \ \n'
                 fout = fout + workdir + '/build/meta-intel/meta-' + buildername.replace("-noemgd", "").replace("-lsb", "") + ' \ \n'
                 fout = fout + workdir + '/build/meta-intel/meta-tlk \ \n'
+        elif self.bsplayer == False and list(self.layerdirs):
+            for layer in self.layerdirs:
+                fout = fout + workdir + '/build/' + layer + ' \ \n'
         elif self.bsplayer == True and self.bspprovider == "fsl-ppc":
             fout = fout + workdir + '/build/meta-fsl-ppc \ \n'
         elif self.bsplayer == True and self.bspprovider == "fsl-arm":
-- 
1.7.11.7


