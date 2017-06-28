Return-Path: <philippe.coval@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51661E00BD6; Wed, 28 Jun 2017 11:08:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
X-Greylist: delayed 533 seconds by postgrey-1.32 at yocto-www;
	Wed, 28 Jun 2017 11:07:59 PDT
Received: from osg.samsung.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2074E00BD2
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 11:07:59 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by osg.samsung.com (Postfix) with ESMTP id 02CDFA05EF;
	Wed, 28 Jun 2017 17:59:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osg.samsung.com
Received: from osg.samsung.com ([127.0.0.1])
	by localhost (s-opensource.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F-CJwRu8ehu0; Wed, 28 Jun 2017 17:59:27 +0000 (UTC)
Received: from localhost.localdomain (unknown [82.236.136.171])
	by osg.samsung.com (Postfix) with ESMTPSA id 1E6BAA05EC;
	Wed, 28 Jun 2017 17:59:25 +0000 (UTC)
From: Philippe Coval <philippe.coval@osg.samsung.com>
To: kishen.maloor@intel.com
Date: Wed, 28 Jun 2017 19:58:29 +0200
Message-Id: <1498672709-6176-1-git-send-email-philippe.coval@osg.samsung.com>
X-Mailer: git-send-email 2.7.4
Cc: iotivity-dev@lists.iotivity.org, yocto@yoctoproject.org,
	Philippe Coval <philippe.coval@osg.samsung.com>
Subject: [meta-oic][PATCH] Hotfix: Include functional header for g++-7.1.0
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
X-List-Received-Date: Wed, 28 Jun 2017 18:08:01 -0000

Reason is described in gcc7 porting notes:
"Several C++ Standard Library headers
have been changed to no longer include the <functional> header.
As such, C++ programs that used components defined in <functional>
without explicitly including that header will no longer compile."

It was tested on yocto poky master on iotivity-1.2.1 (and later)

Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
---

Origin: https://github.com/tizenteam/meta-oic/tree/sandbox/pcoval/on/master/review

...rce-Include-functional-header-for-g-7.1.0.patch | 62 ++++++++++++++++++++++
 recipes-core/iotivity/iotivity_1.2.1.bb            |  3 ++
 2 files changed, 65 insertions(+)
 create mode 100644 recipes-core/iotivity/files/0189-resource-Include-functional-header-for-g-7.1.0.patch

diff --git a/recipes-core/iotivity/files/0189-resource-Include-functional-header-for-g-7.1.0.patch b/recipes-core/iotivity/files/0189-resource-Include-functional-header-for-g-7.1.0.patch
new file mode 100644
index 0000000..2e40f97
--- /dev/null
+++ b/recipes-core/iotivity/files/0189-resource-Include-functional-header-for-g-7.1.0.patch
@@ -0,0 +1,62 @@
+From fd9c363689646784303197da5a21d6693cc6cbc9 Mon Sep 17 00:00:00 2001
+From: Philippe Coval <philippe.coval@osg.samsung.com>
+Date: Wed, 28 Jun 2017 04:54:05 +0200
+Subject: [PATCH 189/189] resource: Include functional header for g++-7.1.0
+
+It was tested on yocto poky master on iotivity-1.2.1 (and later):
+
+  resource/include/OCUtilities.h: \
+  In function 'OCStackResult OC::nil_guard(PtrT&&, FnT&&, ParamTs&& ...)':
+  resource/include/OCUtilities.h:85:21: \
+  error: 'bind' is not a member of 'std'
+  return std::bind(fn, p, std::ref(params)...)();
+
+  resource/include/OCApi.h: At global scope:
+  resource/include/OCApi.h:362:18: \
+  error: 'function' in namespace 'std' does not name a template type
+  typedef std::function<void(std::shared_ptr<OCResource>)> FindCallback;
+
+Change-Id: Ie1cab497c33fde394f77490a1d636eb36a563396
+Origin: https://gerrit.iotivity.org/gerrit/#/c/21069/
+Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
+Reviewed-on: https://gerrit.iotivity.org/gerrit/21067
+Reviewed-by: Thiago Macieira <thiago.macieira@intel.com>
+Tested-by: jenkins-iotivity <jenkins@iotivity.org>
+(cherry picked from commit 26c2798188497da22e0a70efebc47991dd755db2)
+Reviewed-on: https://gerrit.iotivity.org/gerrit/21069
+Reviewed-by: Sudarsana Babu Nagineni <sudarsana.nagineni@intel.com>
+Reviewed-by: Mats Wichmann <mats@linux.com>
+---
+ resource/include/OCApi.h       | 2 --
+ resource/include/OCUtilities.h | 1 +
+ 2 files changed, 1 insertion(+), 2 deletions(-)
+
+diff --git a/resource/include/OCApi.h b/resource/include/OCApi.h
+index ff2d212..47981d5 100644
+--- a/resource/include/OCApi.h
++++ b/resource/include/OCApi.h
+@@ -27,9 +27,7 @@
+ #include <map>
+ #include <memory>
+ #include <iterator>
+-#if defined(_MSC_VER)
+ #include <functional>
+-#endif
+ 
+ #include "octypes.h"
+ #include "OCHeaderOption.h"
+diff --git a/resource/include/OCUtilities.h b/resource/include/OCUtilities.h
+index 85039d0..f1c9304 100644
+--- a/resource/include/OCUtilities.h
++++ b/resource/include/OCUtilities.h
+@@ -26,6 +26,7 @@
+ #include <memory>
+ #include <utility>
+ #include <exception>
++#include <functional>
+ 
+ #include <OCException.h>
+ #include <StringConstants.h>
+-- 
+2.7.4
+
diff --git a/recipes-core/iotivity/iotivity_1.2.1.bb b/recipes-core/iotivity/iotivity_1.2.1.bb
index c01ea46..c8fb8fd 100644
--- a/recipes-core/iotivity/iotivity_1.2.1.bb
+++ b/recipes-core/iotivity/iotivity_1.2.1.bb
@@ -1,3 +1,4 @@
+PR = "r1"
 SUMMARY = "IoTivity framework and SDK sponsored by the Open Connectivity Foundation."
 DESCRIPTION = "IoTivity is an open source software framework enabling seamless device-to-device connectivity to address the emerging needs of the Internet of Things."
 HOMEPAGE = "https://www.iotivity.org/"
@@ -12,6 +13,8 @@ branch_iotivity = "1.2-rel"
 SRCREV = "0c90ca6ffcbb6a2c56c977ec11bebb7b1d14053b"
 SRC_URI = "git://github.com/iotivity/iotivity.git;destsuffix=${S};branch=${branch_iotivity};protocol=http"
 SRC_URI += "file://0364-yocto-Use-tools-from-sysroot-before-system-PATH-agai.patch"
+SRC_URI += "file://0189-resource-Include-functional-header-for-g-7.1.0.patch"
+
 
 url_tinycbor = "git://github.com/01org/tinycbor.git"
 SRCREV_tinycbor = "31c7f81d45d115d2007b1c881cbbd3a19618465c"
-- 
2.7.4


