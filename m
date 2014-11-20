Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A2A6E008E5; Thu, 20 Nov 2014 09:28:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09D43E0086F
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 09:28:37 -0800 (PST)
Received: by mail-wi0-f169.google.com with SMTP id r20so300972wiv.2
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 09:28:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=6Kqu5uazmivK9KNhhvHNOiMFbUF7rKJSllf4LC071Hk=;
	b=mSoYFYYr1QjjxDnjY7f5wQwV5WHvUz0G83IPzX5yYg4NbQqY0R1RAwGS1TBn5Mt4TT
	pToKzDqJWO4gLOG/E/OBTn/HmBSsU5m9pnakk5M3xAacmvy8zfdLNPjawdY2lCSFQeK5
	C9/fQE6Y/DQPElD6xddcMj1e3qT+20OrhHDV4eY24MdNp6kcEkshgUL7x9ItdmzLaO9j
	/Uutv28WINP2xkuKC3qWORku+hGZ5eLvX9D524OfMdGJorU1VJKVzuj+Dzxq8FdJs4p5
	P+9u6AnXuCjsN7gHBK/96bYC5OGinXn967RPseUYmrLdliVa1vHZ9Xaq1UCKXY8dWNCR
	lecg==
X-Gm-Message-State: ALoCoQn/ppDh28nUhjXvyIyeVcXuEcxca5fQop5rDDIoLWZPl5W7ei6tWK+lCtmUUbaFShnwNYpo
X-Received: by 10.194.59.17 with SMTP id v17mr26288772wjq.130.1416504516605;
	Thu, 20 Nov 2014 09:28:36 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by mx.google.com with ESMTPSA id
	mc10sm7512359wic.24.2014.11.20.09.28.34 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Nov 2014 09:28:35 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 20 Nov 2014 17:28:24 +0000
Message-Id: <1416504504-20259-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [autobuilder][PATCH] buildset-config.controller: add nightly-arm64 target
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
X-List-Received-Date: Thu, 20 Nov 2014 17:28:43 -0000

This is based on the nightly-arm target with the beaglebone builds removed.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 buildset-config.controller/nightly-arm64.conf |   27 +++++++++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100644 buildset-config.controller/nightly-arm64.conf

diff --git a/buildset-config.controller/nightly-arm64.conf b/buildset-config.controller/nightly-arm64.conf
new file mode 100644
index 0000000..7c2524b
--- /dev/null
+++ b/buildset-config.controller/nightly-arm64.conf
@@ -0,0 +1,27 @@
+[nightly-arm64]
+builders: 'example-worker'
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+	         'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
+             'branch':'master'}},
+        {'meta-qt3':
+            {'repourl':'git://git.yoctoproject.org/meta-qt3',
+             'branch':'master'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'machine': 'qemuarm64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : True}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'SyncPersistDB' : {'distro' : 'poky'}},
+        {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
+        {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
+        {'CreateAutoConf': {'machine': 'qemuarm64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : False}},
+        {'BuildToolchainImages': {}},
+        {'CreateAutoConf': {'machine': 'qemuarm64', 'SDKMACHINE' : 'x86_64', 'distro': 'poky', 'buildhistory' : False}},
+        {'BuildToolchainImages': {}},
+        {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
+        {'PublishLayerTarballs':{}},
+        {'SendErrorReport': {}},
+        {'PublishArtifacts': {'artifacts': ['qemuarm64', 'ipk', 'toolchain', 'md5sums']}}]
+
-- 
1.7.10.4


