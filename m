Return-Path: <rahul.saxena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 491D4E013D9
	for <yocto@yoctoproject.org>; Thu, 22 Mar 2012 17:41:56 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Mar 2012 17:41:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="143576938"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by fmsmga002.fm.intel.com with ESMTP; 22 Mar 2012 17:41:30 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Thu, 22 Mar 2012 10:32:22 -0700
Message-Id: <0862c27278dd92ce622e8fdf420ff01b346453eb.1332459306.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332459306.git.rahul.saxena@intel.com>
References: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332459306.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1332459306.git.rahul.saxena@intel.com>
References: <cover.1332459306.git.rahul.saxena@intel.com>
Subject: [PATCH 09/13] meta-cedartrail: add recipes to instal audio and video samples
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
X-List-Received-Date: Fri, 23 Mar 2012 00:41:56 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Install Ogg format audio and video sample files

Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>
---
 .../ogg-CC-BY-3.0-music-samples_0.1.bb             |   20 ++++++++++++++++++++
 .../video-samples/bigbuckbunny-ogg.bb              |   20 ++++++++++++++++++++
 2 files changed, 40 insertions(+), 0 deletions(-)
 create mode 100644 meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb
 create mode 100644 meta-cedartrail/recipes-mediasamples/video-samples/bigbuckbunny-ogg.bb

diff --git a/meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb b/meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb
new file mode 100644
index 0000000..5da3e10
--- /dev/null
+++ b/meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb
@@ -0,0 +1,20 @@
+SUMMARY = "ogg file format music samples"
+DESCRIPTION = "Installs ogg file format music samples in /home/Music dir"
+
+LICENSE = "CC-BY-3.0"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/CC-BY-3.0;md5=dfa02b5755629022e267f10b9c0a2ab7"
+
+DEPENDS += " " 
+
+
+PR = r0
+SRC_URI = "http://downloads.yoctoproject.org/releases/media/music/ogg-CC-BY-3.0-music-samples-${PV}.tar.bz2 \
+            "
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
index 0000000..2225af4
--- /dev/null
+++ b/meta-cedartrail/recipes-mediasamples/video-samples/bigbuckbunny-ogg.bb
@@ -0,0 +1,20 @@
+SUMMARY = "Big Buck Bunny video OGG sample "
+DESCRIPTION = "Installs Big Buck Bunny Video OGG file samples in /home/video dir "
+
+LICENSE = "CC-BY-3.0"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/CC-BY-3.0;md5=dfa02b5755629022e267f10b9c0a2ab7"
+
+DEPENDS += " " 
+
+
+PR = r0
+SRC_URI = "http://blender-mirror.kino3d.org/peach/bigbuckbunny_movies/big_buck_bunny_720p_stereo.ogg \
+            "
+
+do_install() {
+
+install -d ${D}${base_prefix}/home/Videos
+install -m 0644  ${WORKDIR}/*.ogg ${D}${base_prefix}/home/Videos
+}
+
+FILES_${PN} += "${base_prefix}/home/Videos/*.ogg"
-- 
1.7.4.1


