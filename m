Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47226E00BA2; Fri, 28 Jul 2017 08:57:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCA54E00B83
	for <yocto@yoctoproject.org>; Fri, 28 Jul 2017 08:57:16 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Jul 2017 08:57:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,425,1496127600"; d="scan'208";a="1177381614"
Received: from pequod.jf.intel.com ([10.54.74.4])
	by fmsmga001.fm.intel.com with ESMTP; 28 Jul 2017 08:57:06 -0700
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 28 Jul 2017 08:56:15 -0700
Message-Id: <20170728155615.53607-1-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.13.3
Subject: [yocto-autobuilder][PATCH] CreateBBLayersConf: remove meta-qt4 after layer version 10
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
X-List-Received-Date: Fri, 28 Jul 2017 15:57:18 -0000

Qt4 is EOL and is no longer being supported. This patch removes
meta-qt4 from the build when the layer version is great than 10.

See this commit for removal justifications:
oecore c96aa431f2f56d023b84d28e049065eef2a7490f

And this for the layer bump:
oecore 179b7ae2511974173ae4aa72dfb49384ff69c2e5

Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
---
 .../site-packages/autobuilder/buildsteps/CreateBBLayersConf.py          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py
index 74871604c..593b9ee37 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py
@@ -92,7 +92,7 @@ class CreateBBLayersConf(ShellCommand):
                             if layerversioncore < 9:
                                 fout = fout + workdir + '/build/' + layer.iterkeys().next() + ' \ \n'
                         elif layer.iterkeys().next()=="meta-qt4":
-                            if layerversioncore > 6:
+                            if layerversioncore > 6 and layerversioncore < 11:
                                 fout = fout + workdir + '/build/' + layer.iterkeys().next() + ' \ \n'
                         elif layer.iterkeys().next()=="meta-gplv2":
                             # We only want meta-gplv2 for pyro or newer
-- 
2.13.3


