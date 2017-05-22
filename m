Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C60A3E00B49; Sun, 21 May 2017 23:51:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69796E00A16
	for <yocto@yoctoproject.org>; Sun, 21 May 2017 23:51:52 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v4M6ppku021353
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Sun, 21 May 2017 23:51:52 -0700
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Sun, 21 May 2017 23:51:51 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 22 May 2017 14:51:49 +0800
Message-ID: <20170522065149.27016-1-jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-cgl][PATCH] meta-cgl-common: remove dependency on meta-openclovis
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
X-List-Received-Date: Mon, 22 May 2017 06:51:58 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

The dependency was needed because of the usage of
openhpi and openimpi, now the two recipes are added
in meta-openembedded/meta-networking and
meta-openembedded/meta-oe with newer versions,
and meta-openclovis is not really active in the past
two years, it's better to remove the dependency on
meta-openclovis.

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 README                          | 4 ----
 cgl-init-build-env              | 2 +-
 meta-cgl-common/conf/layer.conf | 2 +-
 3 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/README b/README
index 9f6713c..0117c1e 100644
--- a/README
+++ b/README
@@ -21,9 +21,6 @@ This layer depends on:
   URI: git://git.yoctoproject.org/meta-qt3
   branch: master
 
-  URI: https://github.com/joaohf/meta-openclovis
-  branch: master
-
   URI: git://git.yoctoproject.org/meta-selinux
   branch: master
 
@@ -98,7 +95,6 @@ other layers needed. Adapt the below list to proper format.
     meta-yocto
     meta-yocto-bsp
     meta-virtualization
-    meta-openclovis
     meta-selinux
     meta-security
     meta-cloud-services/meta-openstack
diff --git a/cgl-init-build-env b/cgl-init-build-env
index 29dfb38..5e1842e 100755
--- a/cgl-init-build-env
+++ b/cgl-init-build-env
@@ -28,7 +28,7 @@ unset OPTION
 
 NUM_CORES=$(grep -c processor /proc/cpuinfo || echo 2)
 BUILD_PATH="build"
-METALAYERS="meta-cgl/meta-cgl-common,meta-qt3,meta-openclovis,meta-selinux,meta-security,meta-virtualization"
+METALAYERS="meta-cgl/meta-cgl-common,meta-qt3,meta-selinux,meta-security,meta-virtualization"
 
 function usage() {
 cat <<EOF
diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.conf
index dfd0d1f..bdf5f3f 100644
--- a/meta-cgl-common/conf/layer.conf
+++ b/meta-cgl-common/conf/layer.conf
@@ -11,6 +11,6 @@ BBFILE_COLLECTIONS += "cgl-common"
 BBFILE_PATTERN_cgl-common = "^${LAYERDIR}/"
 BBFILE_PRIORITY_cgl-common = "7"
 
-LAYERDEPENDS_cgl-common = "core openembedded-layer networking-layer perl-layer filesystems-layer security openclovis selinux"
+LAYERDEPENDS_cgl-common = "core openembedded-layer networking-layer perl-layer filesystems-layer security selinux"
 
 require conf/distro/include/cgl_common_security_flags.inc
-- 
2.11.0


