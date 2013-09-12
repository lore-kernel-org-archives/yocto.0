Return-Path: <alexandrux.palalau@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE84FE01445
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 00:36:29 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 12 Sep 2013 00:36:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,889,1371106800"; d="scan'208";a="400434552"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 12 Sep 2013 00:36:28 -0700
Received: from localhost.localdomain (unknown [10.237.112.121])
	by linux.intel.com (Postfix) with ESMTP id 404E76A4007;
	Thu, 12 Sep 2013 00:36:26 -0700 (PDT)
From: alexandrux.palalau@linux.intel.com
To: yocto@yoctoproject.org
Date: Thu, 12 Sep 2013 10:37:41 +0300
Message-Id: <1378971461-9052-5-git-send-email-alexandrux.palalau@linux.intel.com>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <1378971461-9052-1-git-send-email-alexandrux.palalau@linux.intel.com>
References: <1378971461-9052-1-git-send-email-alexandrux.palalau@linux.intel.com>
Cc: Alexandru Palalau <alexandrux.palalau@intel.com>
Subject: [PATCH 4/4] buildset-config: added new scenario in order to test logrotate qa runtime test
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
X-List-Received-Date: Thu, 12 Sep 2013 07:36:31 -0000

From: Alexandru Palalau <alexandrux.palalau@intel.com>

Signed-off-by: Alexandru Palalau <alexandrux.palalau@intel.com>
---
 buildset-config/nightly-qa-logrotate.conf | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)
 create mode 100644 buildset-config/nightly-qa-logrotate.conf

diff --git a/buildset-config/nightly-qa-logrotate.conf b/buildset-config/nightly-qa-logrotate.conf
new file mode 100644
index 0000000..f2fa779
--- /dev/null
+++ b/buildset-config/nightly-qa-logrotate.conf
@@ -0,0 +1,16 @@
+[nightly-qa-logrotate]
+builders: 'builder1'
+repos: [{'poky':
+	    {'repourl':'git://git.yoctoproject.org/poky',
+	    'layerversion':{'core':'meta'},
+	    'branch':'master'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nDISTRO_EXTRA_RDEPENDS += "logrotate"\n'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'BuildImages': {'images': 'core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'logrotate'}}]
+
+
-- 
1.7.11.7


