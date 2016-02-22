Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0602E00C1E; Mon, 22 Feb 2016 07:12:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E416CE00C29
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 07:12:55 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga104.fm.intel.com with ESMTP; 22 Feb 2016 07:12:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,484,1449561600"; d="scan'208";a="908653515"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.35])
	by fmsmga001.fm.intel.com with ESMTP; 22 Feb 2016 07:12:48 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 22 Feb 2016 09:15:02 -0600
Message-Id: <1456154103-13478-3-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1456154103-13478-1-git-send-email-anibal.limon@linux.intel.com>
References: <1456154103-13478-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Subject: [[PATCHv2][autobuilder] 3/4] buildset-config.toaster: Add toaster-tests.conf buildset.
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
X-List-Received-Date: Mon, 22 Feb 2016 15:12:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The toaster-tests buildset contains steps for run toaster tests
in a clean way, a Sleep step is needed after setup toaster for
give certain time to let toaster ends setup.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 buildset-config.toaster/toaster-tests.conf | 21 +++++++++++++++++++++
 buildset-config.toaster/yoctoAB.conf       |  2 +-
 2 files changed, 22 insertions(+), 1 deletion(-)
 create mode 100644 buildset-config.toaster/toaster-tests.conf

diff --git a/buildset-config.toaster/toaster-tests.conf b/buildset-config.toaster/toaster-tests.conf
new file mode 100644
index 0000000..0aa6b46
--- /dev/null
+++ b/buildset-config.toaster/toaster-tests.conf
@@ -0,0 +1,21 @@
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
+	{'Sleep': {'time': '120'}},
+	{'ToasterRunTests': {}},
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


