Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E26DBE007BA; Wed,  8 Mar 2017 16:31:21 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90324E00519
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 16:31:20 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Mar 2017 16:31:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,266,1486454400"; d="scan'208";a="1120242419"
Received: from tgraydonws.ostc.intel.com ([10.54.69.46])
	by fmsmga001.fm.intel.com with ESMTP; 08 Mar 2017 16:31:19 -0800
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  8 Mar 2017 16:31:09 -0800
Message-Id: <1489019469-24258-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.7.0
Cc: joshua.g.lock@intel.com
Subject: [yocto-autobuilder][PATCH] /buildset-config.meta-intel/nightly-x32.conf
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
X-List-Received-Date: Thu, 09 Mar 2017 00:31:21 -0000

Add nightly-x32 buildset with world build for meta-intel autobuilder.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 buildset-config.meta-intel/nightly-x32.conf | 60 +++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 buildset-config.meta-intel/nightly-x32.conf

diff --git a/buildset-config.meta-intel/nightly-x32.conf b/buildset-config.meta-intel/nightly-x32.conf
new file mode 100644
index 0000000..cba4f00
--- /dev/null
+++ b/buildset-config.meta-intel/nightly-x32.conf
@@ -0,0 +1,60 @@
+[nightly-x32]
+builders: ['yocto-ab-master.ostc.intel.com', 'yocto-ab01.ostc.intel.com', 'yocto-ab02.ostc.intel.com', 'yocto-ab03.ostc.intel.com', 'yocto-ab04.ostc.intel.com']
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
+                       'label':'<hr><h3> SRC_URI_pn-linux-yocto KMETA append. (default is blank).<br> This should be constructed as *just* the git uri portion of the       string. <br>(git://git.yoctoproject.org/linux-yocto-3.19.git</h3>'}},
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
+                       'label':'<hr><h3> SRC_URI_pn-linux-yocto KBRANCH append. (default is blank).<br> This should be constructed as *just* the git uri portion of the    string. <br>(git://git.yoctoproject.org/linux-yocto-3.19.git</h3>'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'GetBitbakeVersion': {}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64',
+                            'buildhistory' : False, 'x32': True,
+                            'distro': 'poky'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'PublishLayerTarballs':{}},
+        {'BuildImages': {'images': 'core-image-minimal core-image-sato world'}},
+        {'RunSanityTests': {'images': 'core-image-minimal'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64',
+                            'buildhistory' : False, 'x32': True,
+                            'distro': 'poky'}},
+        {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'x32lib'}},
+        {'DownloadErrorReports': {}},
+        {'SendErrorReport': {}},
+        {'UploadToasterEventlog': {}},
+        {'PublishArtifacts': {'artifacts': ['md5sums']}}]
-- 
2.7.0


