Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DD7FE013A6
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2012 04:48:41 -0800 (PST)
Received: from mail-bk0-f72.google.com ([209.85.214.72])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 05 Nov 2012 04:48:40 -0800
Received: by mail-bk0-f72.google.com with SMTP id q16so4156939bkw.11
	for <yocto@yoctoproject.org>; Mon, 05 Nov 2012 04:48:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references
	:x-gm-message-state;
	bh=Q3G60/mPd4IjZekgCOXMcWQcMCNXupBiWbUKI7WqvnQ=;
	b=makmBVY4v28MJ2fzHTqaq3e3YHUP4CUCcDbNVgIkSZHb3Me2lv3rnZkN0hAdt07M1V
	qiWltdAn74RZhkXr55dctn7umvAx8CT9ioLJTdbzxd33XYQQPcieC4WIDau4UJvqKPcs
	JxDMopEjNx0iCfpAHMZwiiHuf+q/IEfgIwtEOboh80YRhXxpf+SOSAG1G1MwYaZXtM5O
	evPX9z1hZbJdpxoNwE7DUx6rj8J5GSqdRZquDjcL9btqZbfMzlYmpnTHy1cjEpBDZ4zo
	A4jVmGB4K3nIJirsDmgVmEoCv0bSwjike/nhLWfG3JomXr365HGYOfzshrFCihiBV3pr
	pRPQ==
Received: by 10.180.102.131 with SMTP id fo3mr13238383wib.1.1352119718683;
	Mon, 05 Nov 2012 04:48:38 -0800 (PST)
Received: by 10.180.102.131 with SMTP id fo3mr13238378wib.1.1352119718620;
	Mon, 05 Nov 2012 04:48:38 -0800 (PST)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id fa9sm11451350wib.5.2012.11.05.04.48.37
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 05 Nov 2012 04:48:37 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: kishore.k.bodke@intel.com,
	nitin.a.kamble@intel.com
Date: Mon,  5 Nov 2012 12:47:19 +0000
Message-Id: <1352119640-25949-3-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
In-Reply-To: <1352119640-25949-1-git-send-email-ross.burton@intel.com>
References: <1352119640-25949-1-git-send-email-ross.burton@intel.com>
X-Gm-Message-State: ALoCoQl0u+kbsPcF6gzJ+mrpl8M49iZUESsPDYQN3ZVkEbvh9j86RUwFzj0H/zP7PNx+n3y6QaB1Tu41EtDXou7Tb+n2/f7YB/pxz974e/lVs+jmYc3S/IyW53KAZLCvwA/R41FV+sf0TPSDrcukk+AxKNCX/ziuJw==
Cc: yocto@yoctoproject.org
Subject: [PATCH 2/3] cdv-pvr-driver: add xorg-abi-video- dependency
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
X-List-Received-Date: Mon, 05 Nov 2012 12:48:41 -0000

xserver changes the driver ABI at will, and refuses to load drivers with the
wrong ABI version. So that we know about this error at image build time instead
of when xserver fails to start, RDEPEND on the ABI version we expect.

This dependency is added programmatically so that bitbake doesn't look for a
provider of xorg-abi-video-8 at parse time, which it won't find.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 .../recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb      |    9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
index 7bda3b5..ebb5891 100644
--- a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
+++ b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
@@ -88,6 +88,15 @@ FILES_${PN} += "${datadir}/doc/pvr-bin-cdv-${PVR-BIN-REV_LIC}/license.txt"
 
 RDEPENDS_${PN} = "xserver-xorg-module-exa"
 
+# Add the ABI dependency at package generation time, as otherwise bitbake will
+# attempt to find a provider for it (and fail) when it does the parse.
+#
+# This version *must* be kept correct.
+python populate_packages_prepend() {
+    pn = d.getVar("PN", True)
+    d.appendVar("RDEPENDS_" + pn, " xorg-abi-video-8")
+}
+
 TARGET_CC_ARCH += "${CFLAGS}{LDFLAGS}"
 INSANE_SKIP_${PN} += "ldflags"
 INSANE_SKIP_${PN}-dbg += "ldflags"
-- 
1.7.10


