Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2528AE00CFD; Fri, 19 Feb 2016 08:12:40 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC017E00CFD
	for <yocto@yoctoproject.org>; Fri, 19 Feb 2016 08:12:36 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 19 Feb 2016 08:12:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,471,1449561600"; d="scan'208";a="655723873"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.35])
	by FMSMGA003.fm.intel.com with ESMTP; 19 Feb 2016 08:12:36 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 19 Feb 2016 10:14:45 -0600
Message-Id: <1455898489-10556-5-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1455898489-10556-1-git-send-email-anibal.limon@linux.intel.com>
References: <1455898489-10556-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Subject: [[PATCH][autobuilder] 4/8] buildset-config.toaster: Add toaster-tests.conf.
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
X-List-Received-Date: Fri, 19 Feb 2016 16:12:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The toaster-test.conf file provides buildsteps for run toaster testing.
For now only setup/start/stop toaster.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 buildset-config.toaster/toaster-tests.conf | 19 +++++++++++++++++++
 buildset-config.toaster/yoctoAB.conf       |  2 +-
 2 files changed, 20 insertions(+), 1 deletion(-)
 create mode 100644 buildset-config.toaster/toaster-tests.conf

diff --git a/buildset-config.toaster/toaster-tests.conf b/buildset-config.toaster/toaster-tests.conf
new file mode 100644
index 0000000..22ac176
--- /dev/null
+++ b/buildset-config.toaster/toaster-tests.conf
@@ -0,0 +1,19 @@
+[toaster-tests]
+builders: 'example-worker'
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
+             'branch':'master' }}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686',
+                            'distro': 'poky', 'buildhistory' : True}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'SyncPersistDB' : {'distro' : 'poky'}},
+        {'GetBitbakeVersion': {}},
+	{'ToasterSetupVenv': {}},
+	{'ToasterStart': {}},
+	{'ToasterStop': {}},
+       ]
diff --git a/buildset-config.toaster/yoctoAB.conf b/buildset-config.toaster/yoctoAB.conf
index 4f3fa00..614e39c 100644
--- a/buildset-config.toaster/yoctoAB.conf
+++ b/buildset-config.toaster/yoctoAB.conf
@@ -1,2 +1,2 @@
 [BuildSets]
-order: [] 
+order: ['toaster-tests']
-- 
2.1.4


