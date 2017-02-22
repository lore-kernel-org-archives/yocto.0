Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44336E009D7; Wed, 22 Feb 2017 09:12:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6768E0098A
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2017 09:12:16 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga105.fm.intel.com with ESMTP; 22 Feb 2017 09:12:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,195,1484035200"; d="scan'208";a="68345107"
Received: from jgperezc.zpn.intel.com (HELO jgperezc-MOBL1.zpn.intel.com)
	([10.219.4.33])
	by fmsmga005.fm.intel.com with ESMTP; 22 Feb 2017 09:12:15 -0800
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Wed, 22 Feb 2017 11:12:41 -0600
Message-Id: <1487783562-22965-2-git-send-email-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1487783562-22965-1-git-send-email-jose.perez.carranza@linux.intel.com>
References: <1487783562-22965-1-git-send-email-jose.perez.carranza@linux.intel.com>
Subject: [qa-tools][PATCH 2/3] testopia_update: Add suppor for Testopia products
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
X-List-Received-Date: Wed, 22 Feb 2017 17:12:18 -0000

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

Add a list of supported products currently available on Testopia

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 testopia_update/product/__init__.py        | 22 ++++++++++++++++++++++
 testopia_update/product/adt.py             |  4 ++++
 testopia_update/product/bitbake.py         |  4 ++++
 testopia_update/product/crops.py           |  4 ++++
 testopia_update/product/eclipse_plugin.py  |  4 ++++
 testopia_update/product/esdk.py            |  4 ++++
 testopia_update/product/general_runtime.py |  4 ++++
 testopia_update/product/kernel.py          |  4 ++++
 testopia_update/product/meta_yocto.py      |  4 ++++
 testopia_update/product/oe_core.py         |  4 ++++
 testopia_update/product/runtime.py         |  4 ++++
 11 files changed, 62 insertions(+)
 create mode 100644 testopia_update/product/adt.py
 create mode 100644 testopia_update/product/bitbake.py
 create mode 100644 testopia_update/product/crops.py
 create mode 100644 testopia_update/product/eclipse_plugin.py
 create mode 100644 testopia_update/product/esdk.py
 create mode 100644 testopia_update/product/general_runtime.py
 create mode 100644 testopia_update/product/kernel.py
 create mode 100644 testopia_update/product/meta_yocto.py
 create mode 100644 testopia_update/product/oe_core.py
 create mode 100644 testopia_update/product/runtime.py

diff --git a/testopia_update/product/__init__.py b/testopia_update/product/__init__.py
index d7cb984..e401824 100644
--- a/testopia_update/product/__init__.py
+++ b/testopia_update/product/__init__.py
@@ -187,13 +187,35 @@ class Product(object):
         return missing
 
 def get_products(testopia, opts, config, logger):
+
+
+    from . import bitbake
+    from . import meta_yocto
     from . import bsp_qemu
+    from . import oe_core
+    from . import runtime
     from . import toaster
+    from . import adt
+    from . import crops
+    from . import eclipse_plugin
+    from . import esdk
+    from . import kernel
+    from . import general_runtime
 
     products = []
 
+    products.append(bitbake.BitbakeProduct(testopia, opts, logger, config))
     products.append(bsp_qemu.BSPQEMUProduct(testopia, opts, logger, config))
+    products.append(meta_yocto.MetaYoctoProduct(testopia, opts, logger, config))
+    products.append(oe_core.OECoreProduct(testopia, opts, logger, config))
+    products.append(runtime.RuntimeProduct(testopia, opts, logger, config))
     products.append(toaster.ToasterProduct(testopia, opts, logger, config))
+    products.append(adt.ADTProduct(testopia, opts, logger, config))
+    products.append(crops.CROPSProduct(testopia, opts, logger, config))
+    products.append(eclipse_plugin.EclipePluginProduct(testopia, opts, logger, config))
+    products.append(esdk.eSDKProduct(testopia, opts, logger, config))
+    products.append(kernel.KernelProduct(testopia, opts, logger, config))
+    products.append(general_runtime.GeneralRuntimeProduct(testopia, opts, logger, config))
 
     return products
 
diff --git a/testopia_update/product/adt.py b/testopia_update/product/adt.py
new file mode 100644
index 0000000..73c82d3
--- /dev/null
+++ b/testopia_update/product/adt.py
@@ -0,0 +1,4 @@
+from testopia_update.product import Product
+
+class ADTProduct(Product):
+    name = 'ADT'
diff --git a/testopia_update/product/bitbake.py b/testopia_update/product/bitbake.py
new file mode 100644
index 0000000..6eef591
--- /dev/null
+++ b/testopia_update/product/bitbake.py
@@ -0,0 +1,4 @@
+from testopia_update.product import Product
+
+class BitbakeProduct(Product):
+    name = 'BitBake'
diff --git a/testopia_update/product/crops.py b/testopia_update/product/crops.py
new file mode 100644
index 0000000..90dcc69
--- /dev/null
+++ b/testopia_update/product/crops.py
@@ -0,0 +1,4 @@
+from testopia_update.product import Product
+
+class CROPSProduct(Product):
+    name = 'CROPS'
diff --git a/testopia_update/product/eclipse_plugin.py b/testopia_update/product/eclipse_plugin.py
new file mode 100644
index 0000000..a88ab8a
--- /dev/null
+++ b/testopia_update/product/eclipse_plugin.py
@@ -0,0 +1,4 @@
+from testopia_update.product import Product
+
+class EclipePluginProduct(Product):
+    name = 'Eclipse Plugin'
diff --git a/testopia_update/product/esdk.py b/testopia_update/product/esdk.py
new file mode 100644
index 0000000..8b004dd
--- /dev/null
+++ b/testopia_update/product/esdk.py
@@ -0,0 +1,4 @@
+from testopia_update.product import Product
+
+class eSDKProduct(Product):
+    name = 'eSDK'
diff --git a/testopia_update/product/general_runtime.py b/testopia_update/product/general_runtime.py
new file mode 100644
index 0000000..dac643e
--- /dev/null
+++ b/testopia_update/product/general_runtime.py
@@ -0,0 +1,4 @@
+from testopia_update.product import Product
+
+class GeneralRuntimeProduct(Product):
+    name = 'General Runtime'
diff --git a/testopia_update/product/kernel.py b/testopia_update/product/kernel.py
new file mode 100644
index 0000000..b2061c5
--- /dev/null
+++ b/testopia_update/product/kernel.py
@@ -0,0 +1,4 @@
+from testopia_update.product import Product
+
+class KernelProduct(Product):
+    name = 'Kernel'
diff --git a/testopia_update/product/meta_yocto.py b/testopia_update/product/meta_yocto.py
new file mode 100644
index 0000000..5b9dc53
--- /dev/null
+++ b/testopia_update/product/meta_yocto.py
@@ -0,0 +1,4 @@
+from testopia_update.product import Product
+
+class MetaYoctoProduct(Product):
+    name = 'Meta-yocto'
diff --git a/testopia_update/product/oe_core.py b/testopia_update/product/oe_core.py
new file mode 100644
index 0000000..d2b3042
--- /dev/null
+++ b/testopia_update/product/oe_core.py
@@ -0,0 +1,4 @@
+from testopia_update.product import Product
+
+class OECoreProduct(Product):
+    name = 'OE-Core'
diff --git a/testopia_update/product/runtime.py b/testopia_update/product/runtime.py
new file mode 100644
index 0000000..ec4ff0c
--- /dev/null
+++ b/testopia_update/product/runtime.py
@@ -0,0 +1,4 @@
+from testopia_update.product import Product
+
+class RuntimeProduct(Product):
+    name = 'Runtime'
-- 
2.1.4


