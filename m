Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BD46E00AD2; Tue, 21 Jun 2016 16:08:15 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3C1DE009F6
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 16:08:12 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 21 Jun 2016 16:08:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,507,1459839600"; d="scan'208";a="1002631853"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.159])
	by orsmga002.jf.intel.com with ESMTP; 21 Jun 2016 16:08:12 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 21 Jun 2016 18:07:44 -0500
Message-Id: <1466550472-1365-8-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
References: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: joshua.g.lock@intel.com
Subject: [[yocto-autobuilder][PATCHv2] 07/15] buiidsets: Add DownloadBitbakeErrorReport step
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
X-List-Received-Date: Tue, 21 Jun 2016 23:08:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add DownloadBitbakeErrorReport step to buildsets that uses bitbake,
this step is responsable to download bitbake error reports (if
bitbake fails) to slave in order to send it to Error report web.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 buildset-config.controller/build-appliance.conf         | 1 +
 buildset-config.controller/buildtools.conf              | 1 +
 buildset-config.controller/nightly-arm-lsb.conf         | 1 +
 buildset-config.controller/nightly-arm.conf             | 1 +
 buildset-config.controller/nightly-arm64.conf           | 1 +
 buildset-config.controller/nightly-deb-non-deb.conf     | 1 +
 buildset-config.controller/nightly-deb.conf             | 1 +
 buildset-config.controller/nightly-ipk.conf             | 1 +
 buildset-config.controller/nightly-mips-lsb.conf        | 1 +
 buildset-config.controller/nightly-mips.conf            | 1 +
 buildset-config.controller/nightly-mips64.conf          | 1 +
 buildset-config.controller/nightly-multilib.conf        | 1 +
 buildset-config.controller/nightly-musl.conf            | 1 +
 buildset-config.controller/nightly-no-x11.conf          | 1 +
 buildset-config.controller/nightly-non-gpl3.conf        | 1 +
 buildset-config.controller/nightly-oecore.conf          | 1 +
 buildset-config.controller/nightly-ppc-lsb.conf         | 1 +
 buildset-config.controller/nightly-ppc.conf             | 1 +
 buildset-config.controller/nightly-qa-extras.conf       | 1 +
 buildset-config.controller/nightly-qa-logrotate.conf    | 1 +
 buildset-config.controller/nightly-qa-pam.conf          | 1 +
 buildset-config.controller/nightly-qa-skeleton.conf     | 1 +
 buildset-config.controller/nightly-qa-systemd.conf      | 1 +
 buildset-config.controller/nightly-qa-targetbuilds.conf | 1 +
 buildset-config.controller/nightly-rpm-non-rpm.conf     | 1 +
 buildset-config.controller/nightly-rpm.conf             | 1 +
 buildset-config.controller/nightly-uclibc.conf          | 1 +
 buildset-config.controller/nightly-world-lsb.conf       | 1 +
 buildset-config.controller/nightly-world.conf           | 1 +
 buildset-config.controller/nightly-x32.conf             | 1 +
 buildset-config.controller/nightly-x86-64-lsb.conf      | 1 +
 buildset-config.controller/nightly-x86-64.conf          | 1 +
 buildset-config.controller/nightly-x86-lsb.conf         | 1 +
 buildset-config.controller/nightly-x86.conf             | 1 +
 buildset-config.controller/nightly.conf                 | 1 +
 buildset-config.controller/poky-tiny.conf               | 1 +
 buildset-config.examples/awesomefirmware.conf           | 1 +
 buildset-config.freescale/nightly-fsl-arm-lsb.conf      | 1 +
 buildset-config.freescale/nightly-fsl-arm.conf          | 1 +
 buildset-config.freescale/nightly-fsl-ppc-lsb.conf      | 1 +
 buildset-config.freescale/nightly-fsl-ppc.conf          | 1 +
 buildset-config.iot-devkit/iot-devkit.conf              | 1 +
 buildset-config.kernel/kernel-arm-lsb.conf              | 1 +
 buildset-config.kernel/kernel-arm.conf                  | 1 +
 buildset-config.kernel/kernel-arm64.conf                | 1 +
 buildset-config.kernel/kernel-mips-lsb.conf             | 1 +
 buildset-config.kernel/kernel-mips.conf                 | 1 +
 buildset-config.kernel/kernel-ppc-lsb.conf              | 1 +
 buildset-config.kernel/kernel-ppc.conf                  | 1 +
 buildset-config.kernel/kernel-x86-64-lsb.conf           | 1 +
 buildset-config.kernel/kernel-x86-64.conf               | 1 +
 buildset-config.kernel/kernel-x86-lsb.conf              | 1 +
 buildset-config.kernel/kernel-x86.conf                  | 1 +
 buildset-config.kernel/nightly-kernel.conf              | 1 +
 buildset-config.tizen/nightly-tizen-ivi.conf            | 1 +
 buildset-config.tizen/nightly-tizen.conf                | 1 +
 buildset-config.tizen/nightly.conf                      | 1 +
 57 files changed, 57 insertions(+)

diff --git a/buildset-config.controller/build-appliance.conf b/buildset-config.controller/build-appliance.conf
index 59e6f74..4101b67 100644
--- a/buildset-config.controller/build-appliance.conf
+++ b/buildset-config.controller/build-appliance.conf
@@ -19,6 +19,7 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'universe -c fetch'}},
         {'BuildImages': {'images': 'build-appliance-image'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'PublishLayerTarballs':{}},
         {'PublishArtifacts': {'artifacts': ['build-appliance', 'md5sums']}}]
diff --git a/buildset-config.controller/buildtools.conf b/buildset-config.controller/buildtools.conf
index cb8765d..a04c894 100644
--- a/buildset-config.controller/buildtools.conf
+++ b/buildset-config.controller/buildtools.conf
@@ -15,5 +15,6 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildapp': True}},
         {'BuildImages': {'images': 'uninative-tarball'}},
         {'PublishLayerTarballs':{}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'PublishArtifacts': {'artifacts': ['buildtools-tarball', 'uninative', 'md5sums']}}]
diff --git a/buildset-config.controller/nightly-arm-lsb.conf b/buildset-config.controller/nightly-arm-lsb.conf
index c742b3a..68ce6c1 100644
--- a/buildset-config.controller/nightly-arm-lsb.conf
+++ b/buildset-config.controller/nightly-arm-lsb.conf
@@ -25,6 +25,7 @@ steps: [{'SetDest':{}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-sdk'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky-lsb'}},
         {'PublishLayerTarballs':{}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'UploadToasterEventlog': {}},
         {'PublishArtifacts': {'artifacts': ['qemuarm', 'beagleboard', 'md5sums']}}]
diff --git a/buildset-config.controller/nightly-arm.conf b/buildset-config.controller/nightly-arm.conf
index 76244ed..1941fed 100644
--- a/buildset-config.controller/nightly-arm.conf
+++ b/buildset-config.controller/nightly-arm.conf
@@ -25,6 +25,7 @@ steps: [{'SetDest':{}},
         {'RunESDKSanityTests': {'images': 'core-image-minimal core-image-sato'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
         {'PublishLayerTarballs':{}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'UploadToasterEventlog': {}},
         {'PublishArtifacts': {'artifacts': ['qemuarm', 'beagleboard', 'ipk', 'rpm', 'deb', 'toolchain', 'md5sums']}}]
diff --git a/buildset-config.controller/nightly-arm64.conf b/buildset-config.controller/nightly-arm64.conf
index 4476c7c..670b83e 100644
--- a/buildset-config.controller/nightly-arm64.conf
+++ b/buildset-config.controller/nightly-arm64.conf
@@ -23,6 +23,7 @@ steps: [{'SetDest':{}},
         {'RunSDKSanityTests': {'images': 'core-image-sato'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
         {'PublishLayerTarballs':{}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'UploadToasterEventlog': {}},
         {'PublishArtifacts': {'artifacts': ['qemuarm64', 'ipk', 'rpm', 'deb', 'toolchain', 'md5sums']}}]
diff --git a/buildset-config.controller/nightly-deb-non-deb.conf b/buildset-config.controller/nightly-deb-non-deb.conf
index 53e4c0f..a31c0f1 100644
--- a/buildset-config.controller/nightly-deb-non-deb.conf
+++ b/buildset-config.controller/nightly-deb-non-deb.conf
@@ -12,4 +12,5 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}}]
diff --git a/buildset-config.controller/nightly-deb.conf b/buildset-config.controller/nightly-deb.conf
index 4a1bb95..f1f4001 100644
--- a/buildset-config.controller/nightly-deb.conf
+++ b/buildset-config.controller/nightly-deb.conf
@@ -12,4 +12,5 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}}]
diff --git a/buildset-config.controller/nightly-ipk.conf b/buildset-config.controller/nightly-ipk.conf
index c09fe34..cdebd02 100644
--- a/buildset-config.controller/nightly-ipk.conf
+++ b/buildset-config.controller/nightly-ipk.conf
@@ -12,4 +12,5 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'RunSanityTests': {'images' : 'core-image-minimal core-image-sato core-image-sato-sdk'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}}]
diff --git a/buildset-config.controller/nightly-mips-lsb.conf b/buildset-config.controller/nightly-mips-lsb.conf
index a221029..eac6d93 100644
--- a/buildset-config.controller/nightly-mips-lsb.conf
+++ b/buildset-config.controller/nightly-mips-lsb.conf
@@ -26,6 +26,7 @@ steps: [{'SetDest':{}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-sdk'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky-lsb'}},
         {'PublishLayerTarballs':{}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'UploadToasterEventlog': {}},
         {'PublishArtifacts': {'artifacts': ['qemumips', 'routerstationpro', 'md5sums']}}]
diff --git a/buildset-config.controller/nightly-mips.conf b/buildset-config.controller/nightly-mips.conf
index 23edb1d..9714924 100644
--- a/buildset-config.controller/nightly-mips.conf
+++ b/buildset-config.controller/nightly-mips.conf
@@ -29,6 +29,7 @@ steps: [{'SetDest':{}},
         {'RunESDKSanityTests': {'images': 'core-image-minimal core-image-sato'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
         {'PublishLayerTarballs':{}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'UploadToasterEventlog': {}},
         {'PublishArtifacts': {'artifacts': ['qemumips', 'routerstationpro', 'ipk', 'rpm', 'deb', 'toolchain', 'md5sums']}}]
diff --git a/buildset-config.controller/nightly-mips64.conf b/buildset-config.controller/nightly-mips64.conf
index 43ddca7..c35088f 100644
--- a/buildset-config.controller/nightly-mips64.conf
+++ b/buildset-config.controller/nightly-mips64.conf
@@ -23,6 +23,7 @@ steps: [{'SetDest':{}},
         {'RunSDKSanityTests': {'images': 'core-image-sato'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
         {'PublishLayerTarballs':{}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'UploadToasterEventlog': {}},
         {'PublishArtifacts': {'artifacts': ['qemumips64', 'ipk', 'rpm', 'deb', 'toolchain', 'md5sums']}}]
diff --git a/buildset-config.controller/nightly-multilib.conf b/buildset-config.controller/nightly-multilib.conf
index 0020494..6481019 100644
--- a/buildset-config.controller/nightly-multilib.conf
+++ b/buildset-config.controller/nightly-multilib.conf
@@ -37,4 +37,5 @@ steps: [{'SetDest':{}},
                             'buildhistory' : False, 'multilib': 'lib64',
                             'distro': 'poky'}},
         {'BuildImages': {'images': 'lib64-core-image-sato lib64-core-image-sato-sdk'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}}]
diff --git a/buildset-config.controller/nightly-musl.conf b/buildset-config.controller/nightly-musl.conf
index 89aec9c..2d1dce5 100644
--- a/buildset-config.controller/nightly-musl.conf
+++ b/buildset-config.controller/nightly-musl.conf
@@ -13,5 +13,6 @@ steps: [{'SetDest':{}},
                             'atextappend' : '\nTCLIBC="musl"\n' }},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images':  'core-image-minimal core-image-full-cmdline core-image-sato'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}}]
 
diff --git a/buildset-config.controller/nightly-no-x11.conf b/buildset-config.controller/nightly-no-x11.conf
index a747036..0feb6cd 100644
--- a/buildset-config.controller/nightly-no-x11.conf
+++ b/buildset-config.controller/nightly-no-x11.conf
@@ -15,5 +15,6 @@ steps: [{'SetDest':{}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
         {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'world'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'UploadToasterEventlog': {}}]
diff --git a/buildset-config.controller/nightly-non-gpl3.conf b/buildset-config.controller/nightly-non-gpl3.conf
index 14bedb2..3368263 100644
--- a/buildset-config.controller/nightly-non-gpl3.conf
+++ b/buildset-config.controller/nightly-non-gpl3.conf
@@ -14,4 +14,5 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'core-image-minimal core-image-basic'}},
         {'CheckForGPLv3':{}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}}]
diff --git a/buildset-config.controller/nightly-oecore.conf b/buildset-config.controller/nightly-oecore.conf
index c51f9ac..dcee52d 100644
--- a/buildset-config.controller/nightly-oecore.conf
+++ b/buildset-config.controller/nightly-oecore.conf
@@ -24,6 +24,7 @@ steps: [{'SetDest':{}},
                             'distro': 'oecore', 'buildhistory' : False}},
         {'BuildToolchainImages': {}},
         {'BuildImages': {'images': '-c populate_sdk_ext core-image-minimal'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}}
         ]
 
diff --git a/buildset-config.controller/nightly-ppc-lsb.conf b/buildset-config.controller/nightly-ppc-lsb.conf
index 95e91a3..e596720 100644
--- a/buildset-config.controller/nightly-ppc-lsb.conf
+++ b/buildset-config.controller/nightly-ppc-lsb.conf
@@ -26,6 +26,7 @@ steps: [{'SetDest':{}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-sdk'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky-lsb'}},
         {'PublishLayerTarballs':{}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'UploadToasterEventlog': {}},
         {'PublishArtifacts': {'artifacts': ['qemuppc', 'mpc8315e-rdb', 'md5sums']}}]
diff --git a/buildset-config.controller/nightly-ppc.conf b/buildset-config.controller/nightly-ppc.conf
index 5f149e2..d6a8537 100644
--- a/buildset-config.controller/nightly-ppc.conf
+++ b/buildset-config.controller/nightly-ppc.conf
@@ -28,6 +28,7 @@ steps: [{'SetDest':{}},
         {'RunESDKSanityTests': {'images': 'core-image-minimal core-image-sato'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
         {'PublishLayerTarballs':{}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'UploadToasterEventlog': {}},
         {'PublishArtifacts': {'artifacts': ['qemuppc', 'mpc8315e-rdb', 'ipk', 'rpm', 'deb', 'toolchain', 'md5sums']}}]
diff --git a/buildset-config.controller/nightly-qa-extras.conf b/buildset-config.controller/nightly-qa-extras.conf
index 1ce0042..dcb03f0 100644
--- a/buildset-config.controller/nightly-qa-extras.conf
+++ b/buildset-config.controller/nightly-qa-extras.conf
@@ -18,5 +18,6 @@ steps: [{'SetDest':{}},
                             'distro': 'poky', 'buildhistory' : False,
                             'atextappend' : '\nROOT_HOME = "/root"\n'}},
         {'BuildImages': {'images': 'core-image-minimal'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'RunSanityTests': {'images': 'core-image-minimal'}}]
diff --git a/buildset-config.controller/nightly-qa-logrotate.conf b/buildset-config.controller/nightly-qa-logrotate.conf
index 202eb92..779fddb 100644
--- a/buildset-config.controller/nightly-qa-logrotate.conf
+++ b/buildset-config.controller/nightly-qa-logrotate.conf
@@ -13,6 +13,7 @@ steps: [{'SetDest':{}},
                             'atextappend' : '\nIMAGE_INSTALL_append = " logrotate"\n'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'core-image-sato'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'logrotate'}}]
 
diff --git a/buildset-config.controller/nightly-qa-pam.conf b/buildset-config.controller/nightly-qa-pam.conf
index 15d8fc0..c790bf5 100644
--- a/buildset-config.controller/nightly-qa-pam.conf
+++ b/buildset-config.controller/nightly-qa-pam.conf
@@ -14,5 +14,6 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'core-image-sato'}},
         {'SendErrorReport': {}},
+        {'DownloadBitbakeErrorReports': {}},
         {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'pam'}}]
 
diff --git a/buildset-config.controller/nightly-qa-skeleton.conf b/buildset-config.controller/nightly-qa-skeleton.conf
index a0686b3..a0461eb 100644
--- a/buildset-config.controller/nightly-qa-skeleton.conf
+++ b/buildset-config.controller/nightly-qa-skeleton.conf
@@ -13,6 +13,7 @@ steps: [{'SetDest':{}},
                             'atextappend' : '\nIMAGE_INSTALL_append = " service hello-mod"\n'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'layerdirs': ['meta-skeleton']}},
         {'BuildImages': {'images': 'core-image-sato'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'skeletoninit'}}]
 
diff --git a/buildset-config.controller/nightly-qa-systemd.conf b/buildset-config.controller/nightly-qa-systemd.conf
index 4912d9b..fdf61c6 100644
--- a/buildset-config.controller/nightly-qa-systemd.conf
+++ b/buildset-config.controller/nightly-qa-systemd.conf
@@ -23,5 +23,6 @@ steps: [{'SetDest':{}},
                             'buildhistory' : False, 'distro': 'poky',
                             'initmgr' : 'systemd'}},
         {'BuildImages': {'images': 'core-image-sato'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'systemd'}}]
diff --git a/buildset-config.controller/nightly-qa-targetbuilds.conf b/buildset-config.controller/nightly-qa-targetbuilds.conf
index 7ad7400..fd3d0da 100644
--- a/buildset-config.controller/nightly-qa-targetbuilds.conf
+++ b/buildset-config.controller/nightly-qa-targetbuilds.conf
@@ -27,6 +27,7 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemuppc', 'SDKMACHINE' : 'x86_64',
                             'buildhistory' : False, 'distro': 'poky'}},
         {'BuildImages': {'images': 'core-image-sato-sdk'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'RunSanityTests': {'images': 'core-image-sato-sdk',
                             'suites' : 'ping ssh buildsudoku buildcvs buildiptables'}}]
diff --git a/buildset-config.controller/nightly-rpm-non-rpm.conf b/buildset-config.controller/nightly-rpm-non-rpm.conf
index 6f3dedd..b8b4c2a 100644
--- a/buildset-config.controller/nightly-rpm-non-rpm.conf
+++ b/buildset-config.controller/nightly-rpm-non-rpm.conf
@@ -13,5 +13,6 @@ steps: [{'SetDest':{}},
                             'packages': 'rpm'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images' : 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'RunSanityTests': {'images' : 'core-image-minimal core-image-sato core-image-sato-sdk'}}]
diff --git a/buildset-config.controller/nightly-rpm.conf b/buildset-config.controller/nightly-rpm.conf
index 48bd1a8..f03a12f 100644
--- a/buildset-config.controller/nightly-rpm.conf
+++ b/buildset-config.controller/nightly-rpm.conf
@@ -13,5 +13,6 @@ steps: [{'SetDest':{}},
                             'packages': 'rpm'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images' : 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'RunSanityTests': {'images' : 'core-image-minimal core-image-sato core-image-sato-sdk'}}]
diff --git a/buildset-config.controller/nightly-uclibc.conf b/buildset-config.controller/nightly-uclibc.conf
index 2e63110..4063040 100644
--- a/buildset-config.controller/nightly-uclibc.conf
+++ b/buildset-config.controller/nightly-uclibc.conf
@@ -13,5 +13,6 @@ steps: [{'SetDest':{}},
                             'atextappend' : '\nTCLIBC="uclibc"\n' }},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'core-image-minimal'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}}]
 
diff --git a/buildset-config.controller/nightly-world-lsb.conf b/buildset-config.controller/nightly-world-lsb.conf
index 4c9994c..1117f06 100644
--- a/buildset-config.controller/nightly-world-lsb.conf
+++ b/buildset-config.controller/nightly-world-lsb.conf
@@ -21,6 +21,7 @@ steps: [{'SetDest':{}},
                             'distro': 'poky-lsb'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'world'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'PublishArtifacts': {'artifacts': ['ipk', 'rpm', 'deb']}}]
 
diff --git a/buildset-config.controller/nightly-world.conf b/buildset-config.controller/nightly-world.conf
index 12c06e4..53b7286 100644
--- a/buildset-config.controller/nightly-world.conf
+++ b/buildset-config.controller/nightly-world.conf
@@ -13,6 +13,7 @@ steps: [{'SetDest':{}},
                             'distro': 'poky'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'world'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'PublishArtifacts': {'artifacts': ['ipk', 'rpm', 'deb']}}]
 
diff --git a/buildset-config.controller/nightly-x32.conf b/buildset-config.controller/nightly-x32.conf
index 1fbfc10..42d38ac 100644
--- a/buildset-config.controller/nightly-x32.conf
+++ b/buildset-config.controller/nightly-x32.conf
@@ -20,6 +20,7 @@ steps: [{'SetDest':{}},
                             'buildhistory' : False, 'x32': True,
                             'distro': 'poky'}},
         {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'x32lib'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'UploadToasterEventlog': {}},
         {'PublishArtifacts': {'artifacts': ['md5sums']}}]
diff --git a/buildset-config.controller/nightly-x86-64-lsb.conf b/buildset-config.controller/nightly-x86-64-lsb.conf
index cd0ddaa..704c508 100644
--- a/buildset-config.controller/nightly-x86-64-lsb.conf
+++ b/buildset-config.controller/nightly-x86-64-lsb.conf
@@ -26,6 +26,7 @@ steps: [{'SetDest':{}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-sdk'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky-lsb'}},
         {'PublishLayerTarballs':{}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'UploadToasterEventlog': {}},
         {'PublishArtifacts': {'artifacts': ['qemux86-64', 'genericx86-64', 'md5sums']}}]
diff --git a/buildset-config.controller/nightly-x86-64.conf b/buildset-config.controller/nightly-x86-64.conf
index 2bba8c1..6a003f5 100644
--- a/buildset-config.controller/nightly-x86-64.conf
+++ b/buildset-config.controller/nightly-x86-64.conf
@@ -30,6 +30,7 @@ steps: [{'SetDest':{}},
         {'RunESDKSanityTests': {'images': 'core-image-minimal core-image-sato'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
         {'PublishLayerTarballs':{}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'UploadToasterEventlog': {}},
         {'PublishArtifacts': {'artifacts': ['qemux86-64', 'genericx86-64', 'ipk', 'rpm', 'deb', 'toolchain', 'md5sums']}}]
diff --git a/buildset-config.controller/nightly-x86-lsb.conf b/buildset-config.controller/nightly-x86-lsb.conf
index f32d495..ea7f58e 100644
--- a/buildset-config.controller/nightly-x86-lsb.conf
+++ b/buildset-config.controller/nightly-x86-lsb.conf
@@ -26,6 +26,7 @@ steps: [{'SetDest':{}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-sdk'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky-lsb'}},
         {'PublishLayerTarballs':{}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'UploadToasterEventlog': {}},
         {'PublishArtifacts': {'artifacts': ['qemux86', 'genericx86', 'md5sums']}}]
diff --git a/buildset-config.controller/nightly-x86.conf b/buildset-config.controller/nightly-x86.conf
index 56e5916..e965c8f 100644
--- a/buildset-config.controller/nightly-x86.conf
+++ b/buildset-config.controller/nightly-x86.conf
@@ -30,6 +30,7 @@ steps: [{'SetDest':{}},
         {'RunESDKSanityTests': {'images': 'core-image-minimal core-image-sato'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
         {'PublishLayerTarballs':{}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'UploadToasterEventlog': {}},
         {'PublishArtifacts': {'artifacts': ['qemux86', 'genericx86', 'ipk', 'rpm', 'deb', 'toolchain', 'md5sums']}}]
diff --git a/buildset-config.controller/nightly.conf b/buildset-config.controller/nightly.conf
index b039cb1..2734bf7 100644
--- a/buildset-config.controller/nightly.conf
+++ b/buildset-config.controller/nightly.conf
@@ -152,6 +152,7 @@ steps: [{'SetDest':{}},
         {'BuildImages': {'images': 'adt-installer'}},
         {'PublishArtifacts': {'artifacts': ['adt-installer-QA', 'adtrepo-dev']}},
         {'BitbakeSelftest': {}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'TriggerBuilds': {'schedulerName': 'buildhistory',
                            'waitForFinish': 'False',
diff --git a/buildset-config.controller/poky-tiny.conf b/buildset-config.controller/poky-tiny.conf
index 04219e1..291e031 100644
--- a/buildset-config.controller/poky-tiny.conf
+++ b/buildset-config.controller/poky-tiny.conf
@@ -12,6 +12,7 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'core-image-minimal'}},
         {'PublishLayerTarballs':{}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'PublishArtifacts': {'artifacts': ['tiny', 'md5sums']}}]
 
diff --git a/buildset-config.examples/awesomefirmware.conf b/buildset-config.examples/awesomefirmware.conf
index a34de54..d4bb436 100644
--- a/buildset-config.examples/awesomefirmware.conf
+++ b/buildset-config.examples/awesomefirmware.conf
@@ -29,6 +29,7 @@ steps: [{'SetDest':{}},
         {'BuildImages': {'images': 'core-image-minimal'}},
         {'CreateGPLTarball': {}},
         {'PublishArtifacts': {'artifacts': ['genericx86-64']}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'UploadToasterEventlog': {}},
         {'SendQAEmail': {}},
diff --git a/buildset-config.freescale/nightly-fsl-arm-lsb.conf b/buildset-config.freescale/nightly-fsl-arm-lsb.conf
index 4124694..fd4178c 100644
--- a/buildset-config.freescale/nightly-fsl-arm-lsb.conf
+++ b/buildset-config.freescale/nightly-fsl-arm-lsb.conf
@@ -35,6 +35,7 @@ steps: [{'SetDest':{}},
                             'devkernel' : False}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk LSB-QT-IMAGES'}},
         {'PublishLayerTarballs':{}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'UploadToasterEventlog': {}},
         {'PublishArtifacts': {'artifacts': ['imx53qsb', 'imx6qsabresd', 'imx28evk', 'md5sums']}}]
diff --git a/buildset-config.freescale/nightly-fsl-arm.conf b/buildset-config.freescale/nightly-fsl-arm.conf
index 59e5745..16b88c6 100644
--- a/buildset-config.freescale/nightly-fsl-arm.conf
+++ b/buildset-config.freescale/nightly-fsl-arm.conf
@@ -40,6 +40,7 @@ steps: [{'SetDest':{}},
                             'devkernel' : False}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'PublishLayerTarballs':{}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'UploadToasterEventlog': {}},
         {'PublishArtifacts': {'artifacts': ['imx53qsb', 'imx6qsabresd', 'imx28evk', 'ipk', 'toolchain', 'md5sums']}}]
diff --git a/buildset-config.freescale/nightly-fsl-ppc-lsb.conf b/buildset-config.freescale/nightly-fsl-ppc-lsb.conf
index a7cae9c..2b6defc 100644
--- a/buildset-config.freescale/nightly-fsl-ppc-lsb.conf
+++ b/buildset-config.freescale/nightly-fsl-ppc-lsb.conf
@@ -25,6 +25,7 @@ steps: [{'SetDest':{}},
         {'GetBitbakeVersion': {}},        
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk LSB-QT-IMAGES'}},
         {'PublishLayerTarballs':{}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'UploadToasterEventlog': {}},
         {'PublishArtifacts': {'artifacts': ['p1022ds', 'md5sums']}}]
diff --git a/buildset-config.freescale/nightly-fsl-ppc.conf b/buildset-config.freescale/nightly-fsl-ppc.conf
index 7c04051..eaf2e8d 100644
--- a/buildset-config.freescale/nightly-fsl-ppc.conf
+++ b/buildset-config.freescale/nightly-fsl-ppc.conf
@@ -26,6 +26,7 @@ steps: [{'SetDest':{}},
         {'BuildToolchainImages': {}},
         {'BuildImages': {'images': '-c populate_sdk_ext core-image-minimal'}},
         {'PublishLayerTarballs':{}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'UploadToasterEventlog': {}},
         {'PublishArtifacts': {'artifacts': ['p1022ds', 'ipk', 'toolchain', 'md5sums']}}]
diff --git a/buildset-config.iot-devkit/iot-devkit.conf b/buildset-config.iot-devkit/iot-devkit.conf
index 3ec5945..bd4c024 100644
--- a/buildset-config.iot-devkit/iot-devkit.conf
+++ b/buildset-config.iot-devkit/iot-devkit.conf
@@ -29,5 +29,6 @@ steps: [{'SetDest':{}},
           'meta-openembedded/meta-filesystems']}},
         {'BuildImages': {'images': 'iot-devkit-image iot-devkit-prof-image iot-devkit-prof-dev-image'}},
         {'PublishLayerTarballs':{}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'PublishArtifacts': {'artifacts': ['quark', 'ipk', 'md5sums']}}]
diff --git a/buildset-config.kernel/kernel-arm-lsb.conf b/buildset-config.kernel/kernel-arm-lsb.conf
index 444ba44..b317085 100644
--- a/buildset-config.kernel/kernel-arm-lsb.conf
+++ b/buildset-config.kernel/kernel-arm-lsb.conf
@@ -55,5 +55,6 @@ steps: [{'SetDest':{}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
         {'BuildImages': {'images': 'core-image-kernel-dev'}},
         {'RunSanityTests': {'images': 'core-image-kernel-dev'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}}]
 
diff --git a/buildset-config.kernel/kernel-arm.conf b/buildset-config.kernel/kernel-arm.conf
index 91ef0c1..d4b6400 100644
--- a/buildset-config.kernel/kernel-arm.conf
+++ b/buildset-config.kernel/kernel-arm.conf
@@ -49,5 +49,6 @@ steps: [{'SetDest':{}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
         {'BuildImages': {'images': 'core-image-kernel-dev'}},
         {'RunSanityTests': {'images': 'core-image-kernel-dev'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}}]
 
diff --git a/buildset-config.kernel/kernel-arm64.conf b/buildset-config.kernel/kernel-arm64.conf
index 2d49819..dd4a10b 100644
--- a/buildset-config.kernel/kernel-arm64.conf
+++ b/buildset-config.kernel/kernel-arm64.conf
@@ -49,5 +49,6 @@ steps: [{'SetDest':{}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
         {'BuildImages': {'images': 'core-image-kernel-dev'}},
         {'RunSanityTests': {'images': 'core-image-kernel-dev'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}}]
 
diff --git a/buildset-config.kernel/kernel-mips-lsb.conf b/buildset-config.kernel/kernel-mips-lsb.conf
index 3f24814..fe703fc 100644
--- a/buildset-config.kernel/kernel-mips-lsb.conf
+++ b/buildset-config.kernel/kernel-mips-lsb.conf
@@ -55,4 +55,5 @@ steps: [{'SetDest':{}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
         {'BuildImages': {'images': 'core-image-kernel-dev'}},
         {'RunSanityTests': {'images': 'core-image-kernel-dev'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}}]
diff --git a/buildset-config.kernel/kernel-mips.conf b/buildset-config.kernel/kernel-mips.conf
index 97d1f97..679dd61 100644
--- a/buildset-config.kernel/kernel-mips.conf
+++ b/buildset-config.kernel/kernel-mips.conf
@@ -49,4 +49,5 @@ steps: [{'SetDest':{}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
         {'BuildImages': {'images': 'core-image-kernel-dev'}},
         {'RunSanityTests': {'images': 'core-image-kernel-dev'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}}]
diff --git a/buildset-config.kernel/kernel-ppc-lsb.conf b/buildset-config.kernel/kernel-ppc-lsb.conf
index 67493b4..d0017c8 100644
--- a/buildset-config.kernel/kernel-ppc-lsb.conf
+++ b/buildset-config.kernel/kernel-ppc-lsb.conf
@@ -55,4 +55,5 @@ steps: [{'SetDest':{}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
         {'BuildImages': {'images': 'core-image-kernel-dev'}},
         {'RunSanityTests': {'images': 'core-image-kernel-dev'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}}]
diff --git a/buildset-config.kernel/kernel-ppc.conf b/buildset-config.kernel/kernel-ppc.conf
index 973ba68..7b1b212 100644
--- a/buildset-config.kernel/kernel-ppc.conf
+++ b/buildset-config.kernel/kernel-ppc.conf
@@ -49,4 +49,5 @@ steps: [{'SetDest':{}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
         {'BuildImages': {'images': 'core-image-kernel-dev'}},
         {'RunSanityTests': {'images': 'core-image-kernel-dev'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}}]
diff --git a/buildset-config.kernel/kernel-x86-64-lsb.conf b/buildset-config.kernel/kernel-x86-64-lsb.conf
index 4fe6604..af7eb26 100644
--- a/buildset-config.kernel/kernel-x86-64-lsb.conf
+++ b/buildset-config.kernel/kernel-x86-64-lsb.conf
@@ -55,4 +55,5 @@ steps: [{'SetDest':{}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
         {'BuildImages': {'images': 'core-image-kernel-dev'}},
         {'RunSanityTests': {'images': 'core-image-kernel-dev'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}}]
diff --git a/buildset-config.kernel/kernel-x86-64.conf b/buildset-config.kernel/kernel-x86-64.conf
index 039eb4a..1edc34c 100644
--- a/buildset-config.kernel/kernel-x86-64.conf
+++ b/buildset-config.kernel/kernel-x86-64.conf
@@ -49,4 +49,5 @@ steps: [{'SetDest':{}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
         {'BuildImages': {'images': 'core-image-kernel-dev'}},
         {'RunSanityTests': {'images': 'core-image-kernel-dev'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}}]
diff --git a/buildset-config.kernel/kernel-x86-lsb.conf b/buildset-config.kernel/kernel-x86-lsb.conf
index e33a72f..0d456fb 100644
--- a/buildset-config.kernel/kernel-x86-lsb.conf
+++ b/buildset-config.kernel/kernel-x86-lsb.conf
@@ -55,4 +55,5 @@ steps: [{'SetDest':{}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
         {'BuildImages': {'images': 'core-image-kernel-dev'}},
         {'RunSanityTests': {'images': 'core-image-kernel-dev'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}}]
diff --git a/buildset-config.kernel/kernel-x86.conf b/buildset-config.kernel/kernel-x86.conf
index a3c41f9..b830449 100644
--- a/buildset-config.kernel/kernel-x86.conf
+++ b/buildset-config.kernel/kernel-x86.conf
@@ -49,4 +49,5 @@ steps: [{'SetDest':{}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
         {'BuildImages': {'images': 'core-image-kernel-dev'}},
         {'RunSanityTests': {'images': 'core-image-kernel-dev'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}}]
diff --git a/buildset-config.kernel/nightly-kernel.conf b/buildset-config.kernel/nightly-kernel.conf
index 6d258f8..36b5c84 100644
--- a/buildset-config.kernel/nightly-kernel.conf
+++ b/buildset-config.kernel/nightly-kernel.conf
@@ -58,5 +58,6 @@ steps: [{'SetDest':{}},
                            'kernel-x86-64': {}, 'kernel-x86-64-lsb': {},
                            'kernel-x86': {}, 'kernel-x86-lsb': {}, 'kernel-arm64': {}},
                            'schedulerNames_nowait' : {}}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'SendQAEmail': {}}]
diff --git a/buildset-config.tizen/nightly-tizen-ivi.conf b/buildset-config.tizen/nightly-tizen-ivi.conf
index bbffc81..7fc5b35 100644
--- a/buildset-config.tizen/nightly-tizen-ivi.conf
+++ b/buildset-config.tizen/nightly-tizen-ivi.conf
@@ -19,5 +19,6 @@ steps: [{'SetDest':{}},
               'meta-tizen/meta-tizen-common-share', 'meta-tizen/meta-tizen-common-devtools', \
               'meta-tizen/meta-tizen-common-demo', 'meta-tizen/meta-tizen-ivi']}},
         {'BuildImages': {'images': 'tizen-ivi-Modello-image'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}}
         ]
diff --git a/buildset-config.tizen/nightly-tizen.conf b/buildset-config.tizen/nightly-tizen.conf
index 42bec9d..288d866 100644
--- a/buildset-config.tizen/nightly-tizen.conf
+++ b/buildset-config.tizen/nightly-tizen.conf
@@ -18,6 +18,7 @@ steps: [{'SetDest':{}},
               'meta-tizen/meta-tizen-common-share', 'meta-tizen/meta-tizen-common-devtools', \
               'meta-tizen/meta-tizen-common-demo']}},
         {'BuildImages': {'images': 'tizen-common-core-image-crosswalk-dev'}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}}
         ]
 
diff --git a/buildset-config.tizen/nightly.conf b/buildset-config.tizen/nightly.conf
index e19e76c..f097b22 100644
--- a/buildset-config.tizen/nightly.conf
+++ b/buildset-config.tizen/nightly.conf
@@ -42,6 +42,7 @@ steps: [{'SetDest':{}},
         {'TriggerBuilds': {'schedulerName': 'main-build', 'waitForFinish': 'True',
                            'schedulerNames': {'nightly-tizen-ivi': {}, 'nightly-tizen': {}},
                            'schedulerNames_nowait' : {}}},
+        {'DownloadBitbakeErrorReports': {}},
         {'SendErrorReport': {}},
         {'TriggerBuilds': {'schedulerName': 'buildhistory',
                            'waitForFinish': 'False',
-- 
2.1.4


