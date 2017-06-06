Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5386CE00C27; Tue,  6 Jun 2017 08:47:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEF8BE00BC1
	for <yocto@yoctoproject.org>; Tue,  6 Jun 2017 08:47:10 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Jun 2017 08:47:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,306,1493708400"; d="scan'208";a="96200773"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.128.117])
	by orsmga002.jf.intel.com with ESMTP; 06 Jun 2017 08:47:08 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  6 Jun 2017 10:46:51 -0500
Message-Id: <1496764011-3595-5-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1496764011-3595-1-git-send-email-anibal.limon@linux.intel.com>
References: <1496764011-3595-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: monserratx.sedeno.bustos@intel.com
Subject: [yocto-autobuilder][PATCHv2 5/5] buildset-config.yocto-qa: Add intel-corei7-64-daft buildset
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
X-List-Received-Date: Tue, 06 Jun 2017 15:47:14 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This buildset is for support running sanity tests over a DUT like
Minnowboard for the moment only builds core-image-sato, there is a need
to make it configurable.

Also the listo of the available devices are fixed into the UI as
parameters.

[YOCTO #10604]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 buildset-config.yocto-qa/intel-corei7-64-daft.conf | 59 ++++++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 buildset-config.yocto-qa/intel-corei7-64-daft.conf

diff --git a/buildset-config.yocto-qa/intel-corei7-64-daft.conf b/buildset-config.yocto-qa/intel-corei7-64-daft.conf
new file mode 100644
index 0000000..cb3bcda
--- /dev/null
+++ b/buildset-config.yocto-qa/intel-corei7-64-daft.conf
@@ -0,0 +1,59 @@
+[intel-corei7-64-daft]
+builders: 'example-worker'
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
+             'branch':'master'}},
+        {'meta-intel':
+            {'repourl':'git://git.yoctoproject.org/meta-intel',
+             'layerversion':{'intel':'meta-intel'},
+             'branch':'master'}}]
+props: [{'kmeta':{'prop_type':'StringParameter',
+                       'size': 15,
+                       'name': 'kmeta',
+                       'default': '',
+                       'label':'<hr><h3> branch for KMETA_${MACHINE} (default is blank):</h3>'}},
+        {'srcrev_meta':{'prop_type':'StringParameter',
+                       'size': 15,
+                       'name': 'srcrev_meta',
+                       'default': '${AUTOREV}',
+                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is ${AUTOREV}):<br></h3>'}},
+        {'srcuri_meta':{'prop_type':'StringParameter',
+                       'size': 50,
+                       'name': 'srcuri_meta',
+                       'default': '',
+                       'label':'<hr><h3> SRC_URI_pn-linux-yocto KMETA append. (default is blank).<br> This should be constructed as *just* the git uri portion of the string. <br>(git://git.yoctoproject.org/linux-yocto-3.19.git</h3>'}},
+        {'kbranch':{'prop_type':'StringParameter',
+                       'size': 15,
+                       'name': 'kbranch',
+                       'default': '',
+                       'label':'<hr><h3> branch for KBRANCH_${MACHINE} (default is blank):</h3>'}},
+        {'srcrev_machine':{'prop_type':'StringParameter',
+                       'size': 15,
+                       'name': 'srcrev_machine',
+                       'default': '${AUTOREV}',
+                       'label':'<hr><h3> SRCREV for KBRANCH. (default is ${AUTOREV}):<br></h3>'}},
+        {'srcuri_machine':{'prop_type':'StringParameter',
+                       'size': 50,
+                       'name': 'srcuri_machine',
+                       'default': '',
+                       'label':'<hr><h3> SRC_URI_pn-linux-yocto KBRANCH append. (default is blank).<br> This should be constructed as *just* the git uri portion of the string. <br>(git://git.yoctoproject.org/linux-yocto-3.19.git</h3>'}},
+	{'dut':{'prop_type':'ChoiceStringParameter',
+		   'choices': ['Minnowboard1'],
+		   'name': 'dut',
+		   'label':'<hr><h3>Selects DUT for flashing.<br></h3>'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'CheckBSPExists': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'machine': 'intel-corei7-64', 'SDKMACHINE' : 'x86_64', 
+                            'distro': 'poky'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto',
+                                'bsplayer': True, 'bspprovider': 'intel',
+                                'layerdirs': ['meta-intel', 'meta-intel/meta-tlk']}},
+        {'AddKernelProps': {}},
+        {'DaftGetDevices': {}},
+        {'BuildImages': {'images': 'core-image-sato'}},
+        {'DaftFlash':{}},
+        {'RunSanityTests': {'images': 'core-image-sato'}},]
-- 
2.1.4


