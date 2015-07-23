Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5349E009B2; Thu, 23 Jul 2015 14:37:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B7EBE009B2
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 14:37:50 -0700 (PDT)
Received: by wicgb10 with SMTP id gb10so2606856wic.1
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 14:37:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=GSaB5q+e05uh8gWgEERcBZuXvb4RFWWTHqtfz/uWlP8=;
	b=DEWG2wCmJSzgTOpcK7SsatBl/hD+ujQr5I/wryeBUJtUSK7UTMxgkhkE3BeB8xUGZw
	MiVcynphv69O85hHtRbBeMjaQw/LXFkyDTuXO4h7OR77lNXmrrCmiJ2l3V943PpLIZwm
	O48zZOBqEzncgTpZ67Thx2S6/fXwNVJQw7zxCcrp552+aIIGvNM5cxaFJve1lQsApyMd
	dDxM/NkjRQmy+iKq56ftMK3Dk64koI7VIug84vk703MVNFDvZSrN2U0eg22mBY7w2HHt
	+OLR6Q8FVfC+Y+fT3nyJoe6pESfVBZRZz/NyOrrBmveZCVhj4uQESn2tQILQGrdzESK1
	+p5w==
X-Gm-Message-State: ALoCoQkdGpXtw1+NvxXljelrbs5DgTKuQ620eXPPX47OFZvZ4Aa3WUYTgl8li5AFzeyboW3pfsNl
X-Received: by 10.180.7.130 with SMTP id j2mr579718wia.29.1437687469509;
	Thu, 23 Jul 2015 14:37:49 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35])
	by smtp.gmail.com with ESMTPSA id qq1sm9413112wjc.0.2015.07.23.14.37.48
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 23 Jul 2015 14:37:48 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 23 Jul 2015 22:31:53 +0100
Message-Id: <1437687113-22685-2-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1437687113-22685-1-git-send-email-ross.burton@intel.com>
References: <1437687113-22685-1-git-send-email-ross.burton@intel.com>
Subject: [PATCH][yocto-autobuilder 2/2] buildset-config.controller: don't build Qt3 images
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
X-List-Received-Date: Thu, 23 Jul 2015 21:37:55 -0000

Qt3 is incredibly old and not required by LSB 5, so now is time to remove it
from the autobuilder.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 buildset-config.controller/minnow-lsb.conf          | 5 +----
 buildset-config.controller/nightly-arm-lsb.conf     | 5 +----
 buildset-config.controller/nightly-fsl-arm-lsb.conf | 9 +++------
 buildset-config.controller/nightly-fsl-ppc-lsb.conf | 5 +----
 buildset-config.controller/nightly-mips-lsb.conf    | 5 +----
 buildset-config.controller/nightly-ppc-lsb.conf     | 5 +----
 buildset-config.controller/nightly-x86-64-lsb.conf  | 5 +----
 buildset-config.controller/nightly-x86-lsb.conf     | 5 +----
 buildset-config.controller/nightly.conf             | 5 +----
 9 files changed, 11 insertions(+), 38 deletions(-)

diff --git a/buildset-config.controller/minnow-lsb.conf b/buildset-config.controller/minnow-lsb.conf
index ea65e84..c8ec405 100644
--- a/buildset-config.controller/minnow-lsb.conf
+++ b/buildset-config.controller/minnow-lsb.conf
@@ -4,9 +4,6 @@ repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
              'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
-             'branch':'master'}},
         {'meta-intel':
             {'repourl':'git://git.yoctoproject.org/meta-intel',
              'branch':'master'}},
@@ -20,7 +17,7 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'minnow', 'SDKMACHINE' : 'x86_64', 'distro': 'poky-lsb', 'emgd': 'True', 'pvr': 'False', 'atextappend': '\nNOISO="1"\nCORE_IMAGE_EXTRA_INSTALL += "dmidecode pciutils ethtool alsa-utils"\n'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'bsplayer': True, 'bspprovider': 'intel','layerdirs': ['meta-minnow', 'meta-intel', 'meta-intel/meta-tlk']}},
         {'CheckForMinnow':{}},
-        {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
+        {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk'}},
         {'PublishLayerTarballs':{}},
         {'SendErrorReport': {}},
         {'PublishArtifacts': {'artifacts': ['conf', 'minnow', 'md5sums']}}]
diff --git a/buildset-config.controller/nightly-arm-lsb.conf b/buildset-config.controller/nightly-arm-lsb.conf
index f950b6d..f7b98eb 100644
--- a/buildset-config.controller/nightly-arm-lsb.conf
+++ b/buildset-config.controller/nightly-arm-lsb.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
@@ -16,7 +13,7 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky-lsb'}},
         {'GetBitbakeVersion': {}},
-        {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
+        {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk'}},
         {'CreateAutoConf': {'machine': 'beagleboard', 'SDKMACHINE' : 'i686', 'distro': 'poky-lsb'}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-sdk'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky-lsb'}},
diff --git a/buildset-config.controller/nightly-fsl-arm-lsb.conf b/buildset-config.controller/nightly-fsl-arm-lsb.conf
index 4599247..8380b84 100644
--- a/buildset-config.controller/nightly-fsl-arm-lsb.conf
+++ b/buildset-config.controller/nightly-fsl-arm-lsb.conf
@@ -6,9 +6,6 @@ repos: [{'poky':
              'branch':'master'}},
         {'meta-fsl-arm':
             {'repourl':'git://git.yoctoproject.org/meta-fsl-arm',
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
@@ -20,17 +17,17 @@ steps: [{'SetDest':{}},
                             'devkernel' : False}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'bsplayer' : True, 'bspprovider' : 'fsl-arm'}},
         {'GetBitbakeVersion': {}},
-        {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
+        {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk'}},
         {'CreateAutoConf': {'machine': 'imx6qsabresd', 'SDKMACHINE' : 'x86_64',
                             'distro': 'poky-lsb', 'buildhistory' : False,
                             'atextprepend': 'ACCEPT_FSL_EULA = "1"\n',
                             'devkernel' : False}},
-        {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
+        {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk'}},
         {'CreateAutoConf': {'machine': 'imx28evk', 'SDKMACHINE' : 'x86_64',
                             'distro': 'poky-lsb', 'buildhistory' : False,
                             'atextprepend': 'ACCEPT_FSL_EULA = "1"\n',
                             'devkernel' : False}},
-        {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
+        {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk'}},
         {'PublishLayerTarballs':{}},
         {'SendErrorReport': {}},
         {'UploadToasterEventlog': {}},
diff --git a/buildset-config.controller/nightly-fsl-ppc-lsb.conf b/buildset-config.controller/nightly-fsl-ppc-lsb.conf
index e9fccc1..a9db2ec 100644
--- a/buildset-config.controller/nightly-fsl-ppc-lsb.conf
+++ b/buildset-config.controller/nightly-fsl-ppc-lsb.conf
@@ -6,9 +6,6 @@ repos: [{'poky':
              'branch':'master'}},
         {'meta-fsl-ppc':
             {'repourl':'git://git.yoctoproject.org/meta-fsl-ppc',
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
@@ -20,7 +17,7 @@ steps: [{'SetDest':{}},
                             'devkernel' : False}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'bsplayer' : True, 'bspprovider' : 'fsl-ppc'}},
         {'GetBitbakeVersion': {}},        
-        {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
+        {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk'}},
         {'PublishLayerTarballs':{}},
         {'SendErrorReport': {}},
         {'UploadToasterEventlog': {}},
diff --git a/buildset-config.controller/nightly-mips-lsb.conf b/buildset-config.controller/nightly-mips-lsb.conf
index 78c49dc..f5b90d6 100644
--- a/buildset-config.controller/nightly-mips-lsb.conf
+++ b/buildset-config.controller/nightly-mips-lsb.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
@@ -16,7 +13,7 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky-lsb'}},
         {'GetBitbakeVersion': {}},
-        {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
+        {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk'}},
         {'CreateAutoConf': {'machine': 'routerstationpro',
                             'SDKMACHINE' : 'i686', 'distro': 'poky-lsb'}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-sdk'}},
diff --git a/buildset-config.controller/nightly-ppc-lsb.conf b/buildset-config.controller/nightly-ppc-lsb.conf
index 179121d..a17a023 100644
--- a/buildset-config.controller/nightly-ppc-lsb.conf
+++ b/buildset-config.controller/nightly-ppc-lsb.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
@@ -16,7 +13,7 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky-lsb'}},
         {'GetBitbakeVersion': {}},
-        {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
+        {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk'}},
         {'CreateAutoConf': {'machine': 'mpc8315e-rdb', 'SDKMACHINE' : 'i686',
                             'distro': 'poky-lsb', 'buildhistory' : False}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-sdk'}},
diff --git a/buildset-config.controller/nightly-x86-64-lsb.conf b/buildset-config.controller/nightly-x86-64-lsb.conf
index 35319f2..a8a4453 100644
--- a/buildset-config.controller/nightly-x86-64-lsb.conf
+++ b/buildset-config.controller/nightly-x86-64-lsb.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
@@ -16,7 +13,7 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky-lsb'}},
         {'GetBitbakeVersion': {}},
-        {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
+        {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk'}},
         {'CreateAutoConf': {'machine': 'genericx86-64', 'SDKMACHINE' : 'i686',
                             'distro': 'poky-lsb', 'buildhistory' : False}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-sdk'}},
diff --git a/buildset-config.controller/nightly-x86-lsb.conf b/buildset-config.controller/nightly-x86-lsb.conf
index dc22f80..5151b01 100644
--- a/buildset-config.controller/nightly-x86-lsb.conf
+++ b/buildset-config.controller/nightly-x86-lsb.conf
@@ -3,9 +3,6 @@ builders: 'example-worker'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
@@ -16,7 +13,7 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky-lsb'}},
         {'GetBitbakeVersion': {}},
-        {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
+        {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk'}},
         {'CreateAutoConf': {'machine': 'genericx86', 'SDKMACHINE' : 'i686',
                             'buildhistory' : False, 'distro': 'poky-lsb'}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-sdk'}},
diff --git a/buildset-config.controller/nightly.conf b/buildset-config.controller/nightly.conf
index d4a8275..67b12f2 100644
--- a/buildset-config.controller/nightly.conf
+++ b/buildset-config.controller/nightly.conf
@@ -36,10 +36,7 @@ repos: [{'poky':
         {'eclipse-poky-mars':
             {'repourl':'git://git.yoctoproject.org/eclipse-poky',
              'checkout':False,
-             'branch':'mars-master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
-             'branch':'master'}}]
+             'branch':'mars-master'}}]
 props: [{'release_me':{'prop_type':'ChoiceStringParameter',
                        'choices': ['False', 'True'],
                        'name': 'release_me',
-- 
2.1.4


