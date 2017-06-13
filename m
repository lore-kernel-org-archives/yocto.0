Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9352CE00B99; Tue, 13 Jun 2017 08:45:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0202CE00B8D
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 08:45:17 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Jun 2017 08:45:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,338,1493708400"; d="scan'208";a="980308274"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.4.33])
	by orsmga003.jf.intel.com with ESMTP; 13 Jun 2017 08:45:17 -0700
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Tue, 13 Jun 2017 10:47:26 -0500
Message-Id: <20170613154728.19002-2-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170613154728.19002-1-jose.perez.carranza@linux.intel.com>
References: <20170613154728.19002-1-jose.perez.carranza@linux.intel.com>
Subject: [qa-tools][PATCH 2/4] poduct/init: Add functions to get product and environment names
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
X-List-Received-Date: Tue, 13 Jun 2017 15:45:18 -0000

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

Add functions as follows:
- get_test_plan_by_id : Get test plan providing the plan ID
- get_product_name: Get product name providing the product ID
- get_environment_by_id: Get environment providing the environment ID

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 testopia_update/product/__init__.py | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/testopia_update/product/__init__.py b/testopia_update/product/__init__.py
index a24196a..8d31a1e 100644
--- a/testopia_update/product/__init__.py
+++ b/testopia_update/product/__init__.py
@@ -32,6 +32,17 @@ class Product(object):
 
         return tp
 
+    def get_test_plan_by_id(self, plan_id):
+        tp = self.testopia.testplan_get(plan_id)
+
+        return tp
+
+    def get_product_name(self, product_id):
+        prod_name = self.testopia.product_lookup_name_by_id(product_id)
+
+        return prod_name
+
+
     def get_environment(self, tp, env_name):
         tp_envs = self.testopia.product_get_environments(tp['product_id'])
         for tp_env in tp_envs:
@@ -47,6 +58,12 @@ class Product(object):
         tp_envs = self.testopia.product_get_environments(tp['product_id'])
         return [tp_env['name'] for tp_env in tp_envs]
 
+    def get_environment_by_id(self, env_id):
+        environment_id = self.testopia.testrun_lookup_environment_name_by_id(env_id)
+
+        return environment_id
+
+
     def _format_build_name(self, project_version, project_revision):
         return "%s: %s" % (project_version, project_revision)
 
-- 
2.11.0


