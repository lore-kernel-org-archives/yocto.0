Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DF9DE013D1
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 12:52:39 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 23 May 2012 12:52:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="103456221"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by AZSMGA002.ch.intel.com with ESMTP; 23 May 2012 12:52:38 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 23 May 2012 14:52:37 -0500
Message-Id: <46ccbe564dbf3fe3dce4686197b1b624f178f72f.1337801535.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337801535.git.tom.zanussi@intel.com>
References: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337801535.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337801535.git.tom.zanussi@intel.com>
References: <cover.1337801535.git.tom.zanussi@intel.com>
Subject: [PATCH 10/20] gst-ffmpeg: add bbappend for external ffmpeg
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
X-List-Received-Date: Wed, 23 May 2012 19:52:39 -0000

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


