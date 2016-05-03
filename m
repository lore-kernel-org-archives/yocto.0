Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC80CE00D5D; Tue,  3 May 2016 04:31:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F32FCE00D5D
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 04:31:04 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 04:31:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="971489708"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by fmsmga002.fm.intel.com with ESMTP; 03 May 2016 04:31:03 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 14:30:30 +0300
Message-Id: <d33ca9e4417cb40648e3d7088e129382f2a7aa6a.1462274044.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
References: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1462274044.git.jussi.kukkonen@intel.com>
References: <cover.1462274044.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 11/25] po: update POTFILES.in
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
X-List-Received-Date: Tue, 03 May 2016 11:31:18 -0000

From: Ross Burton <ross.burton@intel.com>

---
 po/POTFILES.in | 24 +++++++++++++++++-------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/po/POTFILES.in b/po/POTFILES.in
index b98a590..3ffdd38 100644
--- a/po/POTFILES.in
+++ b/po/POTFILES.in
@@ -1,12 +1,22 @@
-matchbox-panel/mb-panel-scaling-image.c
-matchbox-panel/mb-panel.c
-applets/launcher/launcher.c
-applets/startup/startup.c
+applets/exit/exit.c
 applets/windowselector/windowselector.c
+applets/startup/startup.c
+applets/battery/battery-apm.c
 applets/battery/battery.c
+applets/battery/battery-acpi.c
+applets/launcher/launcher.c
 applets/showdesktop/showdesktop.c
-applets/clock/clock.c
+applets/startup-notify/marshal.c
+applets/startup-notify/startup.c
 applets/systray/systray.c
-applets/systray/na-marshal.c
 applets/systray/na-tray-manager.c
-
+applets/systray/na-tray-child.c
+applets/systray/fixedtip.c
+applets/systray/na-tray.c
+applets/clock/clock.c
+applets/notify/mb-notification.c
+applets/notify/marshal.c
+applets/notify/notify-store.c
+applets/notify/applet.c
+applets/brightness/brightness.c
+applets/common/test_main.c
-- 
2.8.1


