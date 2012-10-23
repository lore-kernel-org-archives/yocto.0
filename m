Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 294C2E002AB
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 02:44:45 -0700 (PDT)
Received: from mail-fa0-f72.google.com ([209.85.161.72])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 23 Oct 2012 02:44:44 -0700
Received: by mail-fa0-f72.google.com with SMTP id m1so2805272fam.11
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 02:44:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=d4LRumVv4v2CzFcXVo3mbZdMNlk4GdrIMC1vbjGV92M=;
	b=Xo0/Ohg12xTQ91UijMN2RNinqib2BHXc/ufuRXCn/y6FQ/0MJGkkbK//JV/WRDP585
	KxfqMsifLyr6KpgxcVZpMrO1s1P6+6zWiUEd2Tzs5Tdk5eKxbv99tSJq9mYeMCmv/DqW
	trrRcstidIy2bcTXLmaydMPCUQWIbNgsA+vOJKzU1DkHhK47ylpB9w7St0f637EpIEXF
	W4xc0Xkn/VpXTHdA0L5xK/dPLXG/q2+KKUCVJ4lD5unaKJwmoPOuPp+DClCryJYpCFw5
	qUWTwsGfwrMg4bHYxA4dxxtnD0WK8eyX8T2/KgKcDrP2gcA8QVTRUhSGrYACf+IF/Hyz
	AN1A==
Received: by 10.216.202.164 with SMTP id d36mr6825826weo.55.1350985482393;
	Tue, 23 Oct 2012 02:44:42 -0700 (PDT)
Received: by 10.216.202.164 with SMTP id d36mr6825819weo.55.1350985482213;
	Tue, 23 Oct 2012 02:44:42 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id a10sm26930817wiz.4.2012.10.23.02.44.40
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 23 Oct 2012 02:44:41 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Oct 2012 10:43:31 +0100
Message-Id: <1350985411-20099-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQm20RPbkkVUVizQDVY7E/wRaD96jxCGTArsPSoh2lAJye1TvMjkbgOSXbPLXMvTuwdKnS8TGo6Rexyd6KrdpNIUxrzINb8bnpniIdW8stetbGR8EypTGRnP9sAwT5B1ILV2ruILTfAREuniH6rygZckz7S4KQ==
Subject: [PATCH] gstreamer-vaapi: add missing build dependencies
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
X-List-Received-Date: Tue, 23 Oct 2012 09:44:45 -0000

[YOCTO #3321]

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 common/recipes-multimedia/gstreamer/gstreamer-vaapi_git.bb |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/recipes-multimedia/gstreamer/gstreamer-vaapi_git.bb b/common/recipes-multimedia/gstreamer/gstreamer-vaapi_git.bb
index 27552a2..74fa29a 100644
--- a/common/recipes-multimedia/gstreamer/gstreamer-vaapi_git.bb
+++ b/common/recipes-multimedia/gstreamer/gstreamer-vaapi_git.bb
@@ -6,7 +6,7 @@ based plugins for GStreamer and helper libraries: `vaapidecode', \
 LICENSE = "LGPLv2.1+"
 LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=4fbd65380cdd255951079008b364516c"
 
-DEPENDS = "gstreamer libva"
+DEPENDS = "gstreamer gst-plugins-base gst-plugins-bad libva"
 
 # 0.3.8 tag
 SRCREV = "6ec4c2252a4aa706cd8631cb1083828485b9df9a"
-- 
1.7.10


