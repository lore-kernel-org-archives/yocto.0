Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06FEDE0045D
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 08:22:32 -0700 (PDT)
Received: from mail-we0-f176.google.com ([74.125.82.176])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 17 Oct 2012 08:22:31 -0700
Received: by mail-we0-f176.google.com with SMTP id z53so5109666wey.35
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 08:22:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references
	:x-gm-message-state;
	bh=tF2XE5FENa797DkKfOa+ln1uFaDbyCvxU6YjDpfvLRU=;
	b=gfemlSbN8iToYI2vP3pkY2bph9cgmE2rWOgpF+8UjSGpuEzlt40Uc9yRT1xKFTrlPB
	Bm/Hf5fdZ2u94vLgMFATcNy/rUmfWtK/lw9si1IUb4ngnjieAnzG/6VGraiDbc5ng/9I
	VqRUrtVimjbV69zNh3f3tPA8SC7v1YL5HRKKFS6oEMjF+/zs1OkGeGIH/mEjvujJDbWU
	BSOo0uOYc0FHUri+Z0TPyCnsUgLVjnENjVEa0T35wjt9wcKksnNy986L6CfZV/z8tn5k
	a+Y2Fqs4SXZpnogirL+AqxjD8f96UJEC31EjmNYI5OE6Mb1G7XBpWR4/pyZ6kEfUGLVA
	MkdA==
Received: by 10.216.193.158 with SMTP id k30mr11690658wen.89.1350487351236;
	Wed, 17 Oct 2012 08:22:31 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id z14sm3987242wiv.5.2012.10.17.08.22.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 17 Oct 2012 08:22:30 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: kishore.k.bodke@intel.com, nitin.a.kamble@intel.com, dvhart@linux.intel.com
Date: Wed, 17 Oct 2012 16:21:18 +0100
Message-Id: <1350487279-1681-3-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
In-Reply-To: <1350487279-1681-1-git-send-email-ross.burton@intel.com>
References: <1350487279-1681-1-git-send-email-ross.burton@intel.com>
X-Gm-Message-State: ALoCoQkWlAiYSmsrrYY89cTbbP9XeD2/m6d6HcucrVK58+cUHyop7jFpSub0eXTA8vkPr3pg2O5w
Cc: yocto@yoctoproject.org
Subject: [PATCH 2/3] gstreamer-vaapi: upgrade to 0.3.8, and remove ffmpeg dependencies
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
X-List-Received-Date: Wed, 17 Oct 2012 15:22:32 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 .../gstreamer/gstreamer-vaapi_git.bb               |   21 ++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/common/recipes-multimedia/gstreamer/gstreamer-vaapi_git.bb b/common/recipes-multimedia/gstreamer/gstreamer-vaapi_git.bb
index fe601cc..27552a2 100644
--- a/common/recipes-multimedia/gstreamer/gstreamer-vaapi_git.bb
+++ b/common/recipes-multimedia/gstreamer/gstreamer-vaapi_git.bb
@@ -6,15 +6,14 @@ based plugins for GStreamer and helper libraries: `vaapidecode', \
 LICENSE = "LGPLv2.1+"
 LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=4fbd65380cdd255951079008b364516c"
 
-DEPENDS = "gstreamer libva ffmpeg"
+DEPENDS = "gstreamer libva"
 
-# 0.2.9 tag
-SRCREV = "c98c14bd32855467a5a0ff21b6c703e9e3461467"
-PV = "0.2.9+git${SRCPV}"
+# 0.3.8 tag
+SRCREV = "6ec4c2252a4aa706cd8631cb1083828485b9df9a"
+PV = "0.3.8+git${SRCPV}"
 PR = "r0"
 
-SRC_URI = "git://gitorious.org/vaapi/gstreamer-vaapi.git \
-           file://glib-includes.patch"
+SRC_URI = "git://gitorious.org/vaapi/gstreamer-vaapi.git"
 
 SRC_URI[md5sum] = "729d75f21df79114a8c81d896489e5ad"
 SRC_URI[sha256sum] = "f1770c4537f1615701dbc845eee5732fbb1036b3acafbc7488e551fab334a31d"
@@ -23,6 +22,16 @@ S = "${WORKDIR}/git"
 
 inherit autotools pkgconfig gtk-doc
 
+EXTRA_OECONF = "--disable-ffmpeg"
+
+do_configure_prepend() {
+  # DEBUG: Executing shell function do_configure
+  # ln: target `m4/' is not a directory: No such file or directory
+  # cp: cannot create regular file `m4/': Not a directory
+  # (should be fixed in autotools.bbclass)
+  mkdir --parents ${B}/m4
+}
+
 FILES_${PN} += "${libdir}/gstreamer-0.10/*.so"
 FILES_${PN}-dbg += "${libdir}/gstreamer-0.10/.debug"
 FILES_${PN}-dev += "${libdir}/gstreamer-0.10/*.la ${libdir}/gstreamer-0.10/*.a"
-- 
1.7.10


