Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FA10E00A44; Tue,  2 Aug 2016 13:53:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D6B6E00A21
	for <yocto@yoctoproject.org>; Tue,  2 Aug 2016 13:53:42 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP; 02 Aug 2016 13:53:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,462,1464678000"; d="scan'208";a="1007251613"
Received: from wcrandle-mobl1.amr.corp.intel.com (HELO
	wcrandle-mobl1.jf.intel.com) ([10.7.199.146])
	by orsmga001.jf.intel.com with ESMTP; 02 Aug 2016 13:53:42 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  2 Aug 2016 13:53:32 -0700
Message-Id: <1470171212-25096-2-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <1470171212-25096-1-git-send-email-william.c.randle@intel.com>
References: <1470171212-25096-1-git-send-email-william.c.randle@intel.com>
Subject: [yocto-autobuilder][PATCH 2/2] CreateBBLayersConf.py: do not include meta-qt3 when oe-core version is >= 9
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
X-List-Received-Date: Tue, 02 Aug 2016 20:53:44 -0000

Oe-core version 9 upgraded LSB to version 5, so the LSB builds no longer
require qt3.

[YOCTO #10020]

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 .../site-packages/autobuilder/buildsteps/CreateBBLayersConf.py       | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py
index a00c991..da53efe 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py
@@ -89,9 +89,8 @@ class CreateBBLayersConf(ShellCommand):
                     if (layer[layer.iterkeys().next()].has_key('checkout') and layer[layer.iterkeys().next()]['checkout'] is not False) \
                         or layer[layer.iterkeys().next()].has_key('checkout') is False:
                         if layer.iterkeys().next()=="meta-qt3":
-                            # For now, we want meta-qt3 in, no matter the layerversion
-                            #if layerversioncore is not None and int(layerversioncore) < 7:
-                            fout = fout + workdir + '/build/' + layer.iterkeys().next() + ' \ \n'
+                            if layerversioncore is not None and int(layerversioncore) < 9:
+                                fout = fout + workdir + '/build/' + layer.iterkeys().next() + ' \ \n'
                         elif layer.iterkeys().next()=="meta-qt4":
                             if layerversioncore is not None and int(layerversioncore) > 6:
                                 fout = fout + workdir + '/build/' + layer.iterkeys().next() + ' \ \n'
-- 
2.5.5


