Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B101AE00BE0; Tue,  4 Jul 2017 15:03:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CD4DE00B3D
	for <yocto@yoctoproject.org>; Tue,  4 Jul 2017 15:03:17 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Jul 2017 15:03:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,309,1496127600"; d="scan'208";a="120836621"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.4.33])
	by orsmga005.jf.intel.com with ESMTP; 04 Jul 2017 15:03:13 -0700
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Tue,  4 Jul 2017 17:05:59 -0500
Message-Id: <20170704220602.23233-1-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [qa-tools][PATCH 1/4] poduct/init: Add support for PackageManagement component
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
X-List-Received-Date: Tue, 04 Jul 2017 22:03:23 -0000

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

Create package_management_issues.py product and add support to use this
product on init file.

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 testopia_update/product/__init__.py                  | 2 ++
 testopia_update/product/package_management_issues.py | 4 ++++
 2 files changed, 6 insertions(+)
 create mode 100644 testopia_update/product/package_management_issues.py

diff --git a/testopia_update/product/__init__.py b/testopia_update/product/__init__.py
index 8d31a1e..30b2201 100644
--- a/testopia_update/product/__init__.py
+++ b/testopia_update/product/__init__.py
@@ -262,6 +262,7 @@ def get_products(testopia, opts, config, logger, **kwargs):
     from . import esdk
     from . import kernel
     from . import general_runtime
+    from . import package_management_issues
 
     products = []
 
@@ -277,6 +278,7 @@ def get_products(testopia, opts, config, logger, **kwargs):
     products.append(esdk.eSDKProduct(testopia, opts, logger, config, **kwargs))
     products.append(kernel.KernelProduct(testopia, opts, logger, config, **kwargs))
     products.append(general_runtime.GeneralRuntimeProduct(testopia, opts, logger, config, **kwargs))
+    products.append(package_management_issues.PackageManagementIssues(testopia, opts, logger, config, **kwargs))
     products.append(DummyProduct(testopia, opts, logger, config, **kwargs))
 
 
diff --git a/testopia_update/product/package_management_issues.py b/testopia_update/product/package_management_issues.py
new file mode 100644
index 0000000..1f3ecc7
--- /dev/null
+++ b/testopia_update/product/package_management_issues.py
@@ -0,0 +1,4 @@
+from testopia_update.product import Product
+
+class PackageManagementIssues(Product):
+    name = 'Package Management Issues'
-- 
2.11.0


