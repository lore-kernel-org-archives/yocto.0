Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFB99E01403
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 11:57:06 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Apr 2012 11:57:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="127429572"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.90])
	by orsmga001.jf.intel.com with ESMTP; 10 Apr 2012 11:57:06 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Tue, 10 Apr 2012 11:55:37 -0700
Message-Id: <0f7ace95e55226a4e4077c53b46b185983f89084.1334083666.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <8cb0b0ca1821875b7c2c140aade540917c40fc93.1334083666.git.kishore.k.bodke@intel.com>
References: <8cb0b0ca1821875b7c2c140aade540917c40fc93.1334083666.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1334083666.git.kishore.k.bodke@intel.com>
References: <cover.1334083666.git.kishore.k.bodke@intel.com>
Subject: [PATCH 7/9] [meta-intel] Cedartrail: Add new recipes for audio and video samples.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Apr 2012 18:57:06 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

This recipe adds sample Audio files and Video files
for testing with pvr Acceleration driver.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../ogg-CC-BY-3.0-music-samples_0.1.bb             |   21 +++++++++++++++++++
 .../video-samples/bigbuckbunny-ogg.bb              |   22 ++++++++++++++++++++
 2 files changed, 43 insertions(+), 0 deletions(-)
 create mode 100644 meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb
 create mode 100644 meta-cedartrail/recipes-mediasamples/video-samples/bigbuckbunny-ogg.bb

diff --git a/meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb b/meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb
new file mode 100644
index 0000000..796cd61
--- /dev/null
+++ b/meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb
@@ -0,0 +1,21 @@
+SUMMARY = "ogg file format music samples"
+DESCRIPTION = "Installs ogg file format music samples in /home/Music dir"
+
+LICENSE = "CC-BY-3.0"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/CC-BY-3.0;md5=dfa02b5755629022e267f10b9c0a2ab7"
+
+PR = "r0"
+
+SRC_URI = "http://downloads.yoctoproject.org/releases/media/music/ogg-CC-BY-3.0-music-samples-${PV}.tar.bz2 \
+            "
+
+SRC_URI[md5sum] = "dc3dd4adca69996edaffe8828e1ee165"
+SRC_URI[sha256sum] = "86381f8474d5ac2c80f54c951a8c22f67d352daa977341d3dfb4161e39ca3975"
+
+do_install() {
+
+install -d ${D}${base_prefix}/home/music
+install -m 0644  ${WORKDIR}/ogg-CC-BY-3.0-music-samples-${PV}/*/*.ogg ${D}${base_prefix}/home/music
+}
+
+FILES_${PN} += "${base_prefix}/home/music/*.ogg"
diff --git a/meta-cedartrail/recipes-mediasamples/video-samples/bigbuckbunny-ogg.bb b/meta-cedartrail/recipes-mediasamples/video-samples/bigbuckbunny-ogg.bb
new file mode 100644
index 0000000..3b658e0
--- /dev/null
+++ b/meta-cedartrail/recipes-mediasamples/video-samples/bigbuckbunny-ogg.bb
@@ -0,0 +1,22 @@
+SUMMARY = "Big Buck Bunny video OGG sample "
+DESCRIPTION = "Installs Big Buck Bunny Video OGG file samples in /home/video dir "
+
+LICENSE = "CC-BY-3.0"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/CC-BY-3.0;md5=dfa02b5755629022e267f10b9c0a2ab7"
+
+PR = "r0"
+
+SRC_URI = "http://blender-mirror.kino3d.org/peach/bigbuckbunny_movies/big_buck_bunny_720p_stereo.ogg \
+            "
+
+
+SRC_URI[md5sum] = "576424c653da53e31b86c027e55758ae"
+SRC_URI[sha256sum] = "785b09a585be55f81326a3fcef2cdeeb7ebbc33932b6305fd84209928df67f28"
+
+do_install() {
+
+install -d ${D}${base_prefix}/home/Videos
+install -m 0644  ${WORKDIR}/*.ogg ${D}${base_prefix}/home/Videos
+}
+
+FILES_${PN} += "${base_prefix}/home/Videos/*.ogg"
-- 
1.7.5.4


