Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BE63E01415
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 14:50:28 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 May 2012 14:50:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="171420202"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by fmsmga002.fm.intel.com with ESMTP; 25 May 2012 14:50:28 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 25 May 2012 16:50:35 -0500
Message-Id: <46ccbe564dbf3fe3dce4686197b1b624f178f72f.1337981721.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
References: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337981713.git.tom.zanussi@intel.com>
References: <cover.1337981713.git.tom.zanussi@intel.com>
Subject: [PATCH 10/22] gst-ffmpeg: add bbappend for external ffmpeg
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
X-List-Received-Date: Fri, 25 May 2012 21:50:28 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

We don't want gst-ffmpeg to use its own internal copy of ffmpeg, but
rather an updated external version with security updates and bugfixes.

So add a .bbappend that allows us to make use of --with-system-ffmpeg
for that purpose.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../gstreamer/gst-ffmpeg_0.10.13.bbappend          |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)
 create mode 100644 common/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.13.bbappend

diff --git a/common/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.13.bbappend b/common/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.13.bbappend
new file mode 100644
index 0000000..f17a3bc
--- /dev/null
+++ b/common/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.13.bbappend
@@ -0,0 +1,2 @@
+DEPENDS += "ffmpeg"
+EXTRA_OECONF += "--with-system-ffmpeg"
-- 
1.7.0.4


