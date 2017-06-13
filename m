Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14C2EE00BD5; Mon, 12 Jun 2017 19:36:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF3B1E00B9F
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 19:36:55 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v5D2atGN019634
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 12 Jun 2017 19:36:55 -0700 (PDT)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Mon, 12 Jun 2017 19:36:54 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 12 Jun 2017 19:36:45 -0700
Message-ID: <b44524e9b097f34fcc42954539239ad993bb4d84.1497320961.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <cover.1497320961.git.liezhi.yang@windriver.com>
References: <cover.1497320961.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, paul.eggleton@linux.intel.com
Subject: [PATCH V4 04/10] update_layer.py: set layerbranch's collection before add_dependencies
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
X-List-Received-Date: Tue, 13 Jun 2017 02:36:58 -0000
Content-Type: text/plain

The _add_dependency() uses:
if layerbranch.collection:
    var_name = layerbranch.collection

The layerbranch.collection is none if it is newly created, thus it can't get
LAYERDEPENDS, because what defined in layer.conf is LAYERDEPENDS_<collection>,
but what it would get is LAYERDEPENDS_<layer_name>, this patch can fix the
problem.

Reproducer:
$ python3 update_layer.py -l mete-xfce -b <newbranch> --fullreload -d

It would get None LAYERDEPENDS.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/update_layer.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 05ab3e7..bcf7056 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -360,9 +360,9 @@ def main():
                     logger.info("Skipping update of layer %s for branch %s - conf/layer.conf may have parse issues" % (layer.name, branchdesc))
                     layerconfparser.shutdown()
                     sys.exit(1)
+                utils.set_layerbranch_collection_version(layerbranch, layer_config_data, logger=logger)
                 utils.add_dependencies(layerbranch, layer_config_data, logger=logger)
                 utils.add_recommends(layerbranch, layer_config_data, logger=logger)
-                utils.set_layerbranch_collection_version(layerbranch, layer_config_data, logger=logger)
                 layerbranch.save()
 
                 try:
-- 
2.10.2


