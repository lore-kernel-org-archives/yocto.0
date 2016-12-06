Return-Path: <gthomas@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5DB9E00C6A; Tue,  6 Dec 2016 01:33:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5A06E00C59
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 01:33:44 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 836BA68A019; Tue,  6 Dec 2016 09:33:43 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 073BA68A019;
	Tue,  6 Dec 2016 09:33:41 +0000 (GMT)
Received: by zeus.mlbassoc.com (Postfix, from userid 1000)
	id AA58067404A2; Tue,  6 Dec 2016 10:33:40 +0100 (CET)
From: Gary Thomas <gary@mlbassoc.com>
To: yocto@yoctoproject.org
Date: Tue,  6 Dec 2016 10:33:38 +0100
Message-Id: <1481016818-27612-1-git-send-email-gary@mlbassoc.com>
X-Mailer: git-send-email 2.7.4
Cc: Gary Thomas <gary@mlbassoc.com>
Subject: [meta-raspberrypi][PATCH] gstreamer1.0-plugins-bad: Don't hard wire use of userland
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
X-List-Received-Date: Tue, 06 Dec 2016 09:33:47 -0000

Selection of the libgl packages should be by virtual/XXX.  Using 'userland'
directly can lead to build conflicts and make the system unbuildable.

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
index 7292f90..432869d 100644
--- a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
@@ -9,4 +9,4 @@ PACKAGECONFIG_GL_rpi = "egl gles2"
 
 PACKAGECONFIG_append_rpi = " hls libmms faad"
 
-PACKAGECONFIG[dispmanx] = "--enable-dispmanx,--disable-dispmanx,userland"
+PACKAGECONFIG[dispmanx] = "--enable-dispmanx,--disable-dispmanx,virtual/egl virtual/libgles2"
-- 
2.7.4


