Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A505E0050B; Wed, 15 Mar 2017 13:28:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
X-Greylist: delayed 540 seconds by postgrey-1.32 at yocto-www;
	Wed, 15 Mar 2017 13:27:56 PDT
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D45D8E003E1
	for <yocto@yoctoproject.org>; Wed, 15 Mar 2017 13:27:56 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id A57FA261A26
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: yocto@yoctoproject.org
Date: Wed, 15 Mar 2017 21:18:44 +0100
Message-Id: <20170315201844.26804-1-fabien.lahoudere@collabora.co.uk>
X-Mailer: git-send-email 2.11.0
Subject: [meta-raspberrypi][PATCH 1/1] Remove orphan bbappend
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
X-List-Received-Date: Wed, 15 Mar 2017 20:28:00 -0000

gstreamer1.0-omx_1.2.0.bb and gstreamer1.0-omx_git.bb have been removed
from poky on master branch, so related bbappend should be removed.

Signed-off-by: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
---
 .../gstreamer/gstreamer1.0-omx_1.2.0.bbappend              | 14 --------------
 recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend | 13 -------------
 2 files changed, 27 deletions(-)
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend

diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
deleted file mode 100644
index 49ba376..0000000
--- a/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
+++ /dev/null
@@ -1,14 +0,0 @@
-#
-# Need to make this conditional to gstreamer1
-#
-SRC_URI_append_rpi = " \
-             file://0001-config-files-path.patch \
-             file://0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch \
-             file://0002-fix-decoder-flushing.patch \
-             file://0003-no-timeout-on-get-state.patch \
-             file://0004-Properly-handle-drain-requests-while-flushing.patch \
-             file://0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch \
-             file://0006-omxvideodec-unref-allocator-after-getting-it-from-al.patch \
-"
-
-FILESEXTRAPATHS_prepend := "${THISDIR}/gstreamer1.0-omx-1.2.0:"
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend
deleted file mode 100644
index 9bcc446..0000000
--- a/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend
+++ /dev/null
@@ -1,13 +0,0 @@
-#
-# Need to make this conditional to gstreamer1
-#
-SRC_URI_append_rpi = " \
-             file://0001-config-files-path.patch \
-             file://0002-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch \
-             file://0003-fix-decoder-flushing.patch \
-             file://0003-no-timeout-on-get-state.patch \
-             file://0004-Properly-handle-drain-requests-while-flushing.patch \
-             file://0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch \
-"
-
-FILESEXTRAPATHS_prepend := "${THISDIR}/gstreamer1.0-omx:"
-- 
2.11.0


