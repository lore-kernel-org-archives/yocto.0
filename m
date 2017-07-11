Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 341BAE00BD2; Tue, 11 Jul 2017 14:26:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34F99E00BB7
	for <yocto@yoctoproject.org>; Tue, 11 Jul 2017 14:26:01 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga105.jf.intel.com with ESMTP; 11 Jul 2017 14:26:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,347,1496127600"; d="scan'208";a="991819120"
Received: from chiron.jf.intel.com ([10.7.159.56])
	by orsmga003.jf.intel.com with ESMTP; 11 Jul 2017 14:26:00 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 11 Jul 2017 14:25:52 -0700
Message-Id: <20170711212552.26897-1-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.9.4
Subject: [meta-alexa-demo][PATCH] Fix setuptools_scm build error for several python packages
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
X-List-Received-Date: Tue, 11 Jul 2017 21:26:06 -0000

python-setuptools-scm-native is needed at build time for:
  python-cheroot
  python-cherrypy
  python-portend
  python-tempora

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 recipes-devtools/python/python-cheroot_5.1.0.bb   | 2 +-
 recipes-devtools/python/python-cherrypy_10.1.1.bb | 2 +-
 recipes-devtools/python/python-portend_1.8.bb     | 2 +-
 recipes-devtools/python/python-tempora_1.6.1.bb   | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/recipes-devtools/python/python-cheroot_5.1.0.bb b/recipes-devtools/python/python-cheroot_5.1.0.bb
index 2da3115..e8795d1 100644
--- a/recipes-devtools/python/python-cheroot_5.1.0.bb
+++ b/recipes-devtools/python/python-cheroot_5.1.0.bb
@@ -14,7 +14,7 @@ FILES_${PN} += "${datadir}/cheroot"
 
 BBCLASSEXTEND = "nativesdk"
 
-DEPENDS += " swig-native"
+DEPENDS += " swig-native python-setuptools-scm-native"
 
 RDEPENDS_${PN} += " \
     python-pip \
diff --git a/recipes-devtools/python/python-cherrypy_10.1.1.bb b/recipes-devtools/python/python-cherrypy_10.1.1.bb
index 2a75fd8..6a9086a 100644
--- a/recipes-devtools/python/python-cherrypy_10.1.1.bb
+++ b/recipes-devtools/python/python-cherrypy_10.1.1.bb
@@ -14,7 +14,7 @@ FILES_${PN} += "${datadir}/CherryPy"
 
 BBCLASSEXTEND = "nativesdk"
 
-DEPENDS += " swig-native"
+DEPENDS += " swig-native python-setuptools-scm-native"
 
 RDEPENDS_${PN} += " \
     python-pip \
diff --git a/recipes-devtools/python/python-portend_1.8.bb b/recipes-devtools/python/python-portend_1.8.bb
index f50de7c..926d238 100644
--- a/recipes-devtools/python/python-portend_1.8.bb
+++ b/recipes-devtools/python/python-portend_1.8.bb
@@ -14,7 +14,7 @@ FILES_${PN} += "${datadir}/portend"
 
 BBCLASSEXTEND = "nativesdk"
 
-DEPENDS += " swig-native"
+DEPENDS += " swig-native python-setuptools-scm-native"
 
 RDEPENDS_${PN} += " \
     python-pip \
diff --git a/recipes-devtools/python/python-tempora_1.6.1.bb b/recipes-devtools/python/python-tempora_1.6.1.bb
index 417818b..4412030 100644
--- a/recipes-devtools/python/python-tempora_1.6.1.bb
+++ b/recipes-devtools/python/python-tempora_1.6.1.bb
@@ -14,7 +14,7 @@ FILES_${PN} += "${datadir}/tempora"
 
 BBCLASSEXTEND = "nativesdk"
 
-DEPENDS += " swig-native"
+DEPENDS += " swig-native python-setuptools-scm-native"
 
 RDEPENDS_${PN} += " \
     python-pip \
-- 
2.9.4


