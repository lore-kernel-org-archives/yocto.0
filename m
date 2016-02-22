Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A20DCE00838; Mon, 22 Feb 2016 07:12:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB8A6E00C1E
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 07:12:55 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga104.fm.intel.com with ESMTP; 22 Feb 2016 07:12:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,484,1449561600"; d="scan'208";a="908653525"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.35])
	by fmsmga001.fm.intel.com with ESMTP; 22 Feb 2016 07:12:48 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 22 Feb 2016 09:15:03 -0600
Message-Id: <1456154103-13478-4-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1456154103-13478-1-git-send-email-anibal.limon@linux.intel.com>
References: <1456154103-13478-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Subject: [[PATCHv2][autobuilder] 4/4] buildset-config.toaster: Remove unused template toaster-build.
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

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 buildset-config.toaster/toaster-build.conf | 29 -----------------------------
 1 file changed, 29 deletions(-)
 delete mode 100644 buildset-config.toaster/toaster-build.conf

diff --git a/buildset-config.toaster/toaster-build.conf b/buildset-config.toaster/toaster-build.conf
deleted file mode 100644
index 09a03e2..0000000
--- a/buildset-config.toaster/toaster-build.conf
+++ /dev/null
@@ -1,29 +0,0 @@
-[toaster-build]
-builders: 'example-worker'
-props: [{'atext':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'atext',
-                       'default': '',
-                       'label':'<hr><h3> auto.conf:</h3>'}},
-        {'bbtext':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'bbtext',
-                       'default': '',
-                       'label':'<hr><h3> bblayers.conf:</h3>'}},
-        {'images':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'images',
-                       'default': '',
-                       'label':'<hr><h3> images:</h3>'}},
-        {'layers':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'layers',
-                       'default': '',
-                       'label':'<hr><h3> repo string (ast):</h3>'}}]
-steps: [{'SetDest':{}},
-        {'CheckOutToasterLayers': {}},
-        {'RunPreamble': {}},
-        {'GetDistroVersion' : {'distro': 'poky'}},
-        {'CreateAutoConf': {'atext' : '#TOASTER'}},
-        {'CreateBBLayersConf': {'bbtext' : '#TOASTER'}},
-        {'BuildImages': {'images': '#TOASTER'}}]
-- 
2.1.4


