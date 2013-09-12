Return-Path: <alexandrux.palalau@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14486E01481
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 00:36:33 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 Sep 2013 00:36:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,889,1371106800"; d="scan'208";a="402181675"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 12 Sep 2013 00:36:27 -0700
Received: from localhost.localdomain (unknown [10.237.112.121])
	by linux.intel.com (Postfix) with ESMTP id EC8CE6A4007;
	Thu, 12 Sep 2013 00:36:24 -0700 (PDT)
From: alexandrux.palalau@linux.intel.com
To: yocto@yoctoproject.org
Date: Thu, 12 Sep 2013 10:37:40 +0300
Message-Id: <1378971461-9052-4-git-send-email-alexandrux.palalau@linux.intel.com>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <1378971461-9052-1-git-send-email-alexandrux.palalau@linux.intel.com>
References: <1378971461-9052-1-git-send-email-alexandrux.palalau@linux.intel.com>
Cc: Alexandru Palalau <alexandrux.palalau@intel.com>
Subject: [PATCH 3/4] builset-config: added new scenario in order to test pam qa runtime test
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
X-List-Received-Date: Thu, 12 Sep 2013 07:36:34 -0000

From: Alexandru Palalau <alexandrux.palalau@intel.com>

Signed-off-by: Alexandru Palalau <alexandrux.palalau@intel.com>
---
 buildset-config/nightly-qa-pam.conf | 15 +++++++++++++++
 1 file changed, 15 insertions(+)
 create mode 100644 buildset-config/nightly-qa-pam.conf

diff --git a/buildset-config/nightly-qa-pam.conf b/buildset-config/nightly-qa-pam.conf
new file mode 100644
index 0000000..cc697ff
--- /dev/null
+++ b/buildset-config/nightly-qa-pam.conf
@@ -0,0 +1,15 @@
+[nightly-qa-pam]
+builders: 'builder1'
+repos: [{'poky':
+	{'repourl':'git://git.yoctoproject.org/poky',
+	'layerversion':{'core':'meta'},
+	'branch':'master'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nDISTRO_FEATURES_append = " pam"\n'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'BuildImages': {'images': 'core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'pam'}}]
+
-- 
1.7.11.7


