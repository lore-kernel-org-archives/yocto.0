Return-Path: <javier.b.perez.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E017E0095F; Fri,  9 Jan 2015 09:07:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 326BBE0070B
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 09:07:29 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 09 Jan 2015 09:07:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="438588876"
Received: from unknown (HELO jbperezh-mobl4.amr.corp.intel.com)
	([10.255.34.120])
	by FMSMGA003.fm.intel.com with ESMTP; 09 Jan 2015 08:54:53 -0800
From: "Javier B. Perez" <javier.b.perez.hernandez@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri,  9 Jan 2015 11:07:10 -0600
Message-Id: <1420823230-6148-5-git-send-email-javier.b.perez.hernandez@linux.intel.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1420823230-6148-1-git-send-email-javier.b.perez.hernandez@linux.intel.com>
References: <1420823230-6148-1-git-send-email-javier.b.perez.hernandez@linux.intel.com>
X-Mailman-Approved-At: Sun, 11 Jan 2015 22:02:59 -0800
Cc: Javier B Perez Hernandez <javier.b.perez.hernandez@linux.intel.com>
Subject: [PATCH 4/4] Example of buildset to select auto.conf variables and 'images' from force build GUI.
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
X-List-Received-Date: Fri, 09 Jan 2015 17:07:31 -0000

From: Javier B Perez Hernandez <javier.b.perez.hernandez@linux.intel.com>

build-image-machine.conf: created a new 'buildset' to select 'packages', 'machine'
and 'PREFERRED_PROVIDER_virtual/kernel' auto.conf variables for CreateAutoConf
step and the 'images' for BuildImages step in the force build GUI.

Signed-off-by: Javier B Perez Hernandez <javier.b.perez.hernandez@linux.intel.com>
---
 buildset-config.examples/build-image-machine.conf | 43 +++++++++++++++++++++++
 1 file changed, 43 insertions(+)
 create mode 100644 buildset-config.examples/build-image-machine.conf

diff --git a/buildset-config.examples/build-image-machine.conf b/buildset-config.examples/build-image-machine.conf
new file mode 100644
index 0000000..0e81cf1
--- /dev/null
+++ b/buildset-config.examples/build-image-machine.conf
@@ -0,0 +1,43 @@
+[build-image-machine]
+builders: 'example-worker'
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
+             'branch':'master'}}]
+props: [{'images':{'prop_type':'ChoiceStringParameter',
+                 	'choices': ['core-image-base', 'core-image-clutter',
+		  	'core-image-full-cmdline', 'core-image-minimal', 
+		  	'core-image-lsb-qt3', 'core-image-minimal', 
+			'core-image-minimal-dev', 
+			'core-image-minimal-initramfs', 
+			'core-image-minimal-mtdutils', 
+			'core-image-rt', 'core-image-rt-sdk', 
+			'core-image-sato', 'core-image-sato-dev', 
+			'core-image-sato-sdk', 'core-image-testmaster', 
+			'core-image-testmaster-initramfs', 
+			'core-image-weston', 'core-image-x11'],
+                  'name': 'images',
+                  'label':'<h3> Image:</h3>',
+                  'multiple': True,
+                  'default':['core-image-base','core-image-minimal','core-image-sato']}},
+        {'prefered_kernel':{'prop_type':'ChoiceStringParameter',
+                   'choices': ['linux-yocto', 'linux-yocto-dev'],
+                   'name': 'prefered_kernel',
+                   'label':'<h3> PREFERRED_PROVIDER_virtual/kernel:</h3>'}},
+        {'machine':{'prop_type':'ChoiceStringParameter',
+                    'choices': ['qemuarm', 'qemumips', 'qemuppc', 'qemux86', 'qemux86-64'],
+                    'name': 'machine',
+                    'label':'<h3> Machine:</h3>'}},
+        {'packages':{'prop_type':'ChoiceStringParameter',
+                     'choices': ['rpm', 'deb', 'ipk'],
+                     'name': 'packages',
+                     'label':'<h3> Package type:</h3>',
+                     'multiple': True,
+                     'default':'deb'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'devkernel': False, 'distro': 'poky'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'BuildImages': {}}]
-- 
1.9.3


