Return-Path: <andrei@gherzan.ro>
Received: from mail-bk0-f46.google.com (mail-bk0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B007E00348
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 13:08:19 -0700 (PDT)
Received: by mail-bk0-f46.google.com with SMTP id na10so3057323bkb.33
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 13:08:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=pnwfxKcoLGAh6gFpJayDpK+/GI4P6BmSCRl97yQUIq0=;
	b=dH+RuGCfBtNLCytKmuOpaikNZTt9wTNwXBs7aFjrpedkz3GjM0lTFWqVUEF07ka6j0
	eYKKP8jp9ZnlmZJ+V0SQ4QEDv8vceSWXNm/EmMt6Z2N4mn07gkeo72Yjx3kbPvyG4Ya/
	lAn70Be+v7Zt6NhQnaopWrU9LX2yaI15bPyAOif/P8f7jgYC3pzBtq0qpGV81eeK624O
	HcMmS0MHks/QlurIs8BwBsVqzPZSB1u2PFTQMaDOsrMkNAPRMlJcZuwK1zPGS9oC0Nrr
	PxXsUNpWQesx7f0HPnAsdftlspSRT8j1Pn9CT/JnOk9tJV/lw5GCw2JFLQg6Fy77JExV
	Tc2w==
X-Received: by 10.204.188.17 with SMTP id cy17mr1372595bkb.114.1371758898290; 
	Thu, 20 Jun 2013 13:08:18 -0700 (PDT)
Received: from otp-agherzan-l1.corp.ad.wrs.com
	(5-13-222-51.residential.rdsnet.ro. [5.13.222.51])
	by mx.google.com with ESMTPSA id da16sm791598bkb.2.2013.06.20.13.08.16
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 20 Jun 2013 13:08:17 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 20 Jun 2013 23:08:07 +0300
Message-Id: <1371758887-5092-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
X-Gm-Message-State: ALoCoQnbx/fffpzBR+tjT+DHgaMxNRh0ZhZcOZEBxMPOUySXL4rgGFYfFoWvZnQcH7EIbdb1V02j
Subject: [meta-ivi][PATCH v2 1/1] gpu-viv-bin-mx6q.inc: Add linked libraries to libGAL to DEPENDS
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
X-List-Received-Date: Thu, 20 Jun 2013 20:08:20 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-graphics/gpu-viv-bin-mx6q/gpu-viv-bin-mx6q.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-graphics/gpu-viv-bin-mx6q/gpu-viv-bin-mx6q.inc b/recipes-graphics/gpu-viv-bin-mx6q/gpu-viv-bin-mx6q.inc
index e1f10b6..91d93e6 100644
--- a/recipes-graphics/gpu-viv-bin-mx6q/gpu-viv-bin-mx6q.inc
+++ b/recipes-graphics/gpu-viv-bin-mx6q/gpu-viv-bin-mx6q.inc
@@ -126,6 +126,7 @@ FILES_libegl-mx6-dbg = "${libdir}/.debug/libEGL${SOLIBS}"
 FILES_libgal-mx6 = "${libdir}/libGAL${SOLIBS}"
 FILES_libgal-mx6-dev = "${libdir}/libGAL${SOLIBSDEV}"
 FILES_libgal-mx6-dbg = "${libdir}/.debug/libGAL${SOLIBS}"
+DEPENDS += "${@base_contains('DISTRO_FEATURES', 'x11', 'virtual/libx11 libxdamage libxext libxfixes', '', d)}"
 
 FILES_libgl-mx6 = "${libdir}/libGL${SOLIBS}"
 FILES_libgl-mx6-dbg = "${libdir}/.debug/libGL.${SOLIBS}"
-- 
1.8.1.4


