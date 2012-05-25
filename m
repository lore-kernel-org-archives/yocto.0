Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DF4DE01412
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 14:51:15 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 May 2012 14:51:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="157376053"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by fmsmga001.fm.intel.com with ESMTP; 25 May 2012 14:50:14 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 25 May 2012 16:50:27 -0500
Message-Id: <3cca0ca6debc6be162956d814fd31a8b4ac101cf.1337981719.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
References: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337981713.git.tom.zanussi@intel.com>
References: <cover.1337981713.git.tom.zanussi@intel.com>
Subject: [PATCH 02/22] meta-intel: add gstreamer-vaapi_git recipe
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
X-List-Received-Date: Fri, 25 May 2012 21:51:15 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Based on the gstreamer-vaapi_0.2.5.bb recipe from the Yocto Project
meta-demo layer (git://git.yoctoproject.org/meta-demo):

    commit a33dd433b629f08bc6517ef2ad3bdd36814ebe85
    Author: Joshua Lock <josh@linux.intel.com>
    Date:   Tue Mar 22 12:11:42 2011 +0000

        gstreamer-vaapi: new recipe

        currently untested but will likely be useful in future so commiting it so
        that it doesn't get lost

        Signed-off-by: Joshua Lock <josh@linux.intel.com>

Additional changes made by Tom Zanussi <tom.zanussi@intel.com> in
order to work with the other multimedia recipes in meta-intel/common:

- summary and description
- correct license
- changed into a _git recipe in order to pick up post-0.2.5 versions
- additional inherits
- tested

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../gstreamer/gstreamer-vaapi_git.bb               |   26 ++++++++++++++++++++
 1 files changed, 26 insertions(+), 0 deletions(-)
 create mode 100644 common/recipes-multimedia/gstreamer/gstreamer-vaapi_git.bb

diff --git a/common/recipes-multimedia/gstreamer/gstreamer-vaapi_git.bb b/common/recipes-multimedia/gstreamer/gstreamer-vaapi_git.bb
new file mode 100644
index 0000000..8ffbb51
--- /dev/null
+++ b/common/recipes-multimedia/gstreamer/gstreamer-vaapi_git.bb
@@ -0,0 +1,26 @@
+SUMMARY = "VA-API support to GStreamer"
+DESCRIPTION = "gstreamer-vaapi consists of a collection of VA-API \
+based plugins for GStreamer and helper libraries: `vaapidecode', \
+`vaapiconvert', and `vaapisink'."
+
+LICENSE = "LGPLv2.1+"
+LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=4fbd65380cdd255951079008b364516c"
+
+DEPENDS = "gstreamer libva ffmpeg"
+
+# 0.2.9 tag
+SRCREV = "c98c14bd32855467a5a0ff21b6c703e9e3461467"
+PV = "0.2.9+git${SRCPV}"
+PR = "r0"
+
+SRC_URI = "git://gitorious.org/vaapi/gstreamer-vaapi.git"
+SRC_URI[md5sum] = "729d75f21df79114a8c81d896489e5ad"
+SRC_URI[sha256sum] = "f1770c4537f1615701dbc845eee5732fbb1036b3acafbc7488e551fab334a31d"
+
+S = "${WORKDIR}/git"
+
+inherit autotools pkgconfig gtk-doc
+
+FILES_${PN} += "${libdir}/gstreamer-0.10/*.so"
+FILES_${PN}-dbg += "${libdir}/gstreamer-0.10/.debug"
+FILES_${PN}-dev += "${libdir}/gstreamer-0.10/*.la ${libdir}/gstreamer-0.10/*.a"
-- 
1.7.0.4


