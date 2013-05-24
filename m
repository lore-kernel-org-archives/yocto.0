Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E041E014F1
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 02:06:20 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 24 May 2013 02:06:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,734,1363158000"; d="scan'208";a="339366466"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga001.fm.intel.com with ESMTP; 24 May 2013 02:06:24 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 24 May 2013 11:45:15 +0300
Message-Id: <1369385115-31487-3-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1369385115-31487-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1369385115-31487-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH v3 2/2] Remove all plugin dependencies to RSE APi from remote tools plugin
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
X-List-Received-Date: Fri, 24 May 2013 09:06:20 -0000

- removed all plugin dependencies to the RSE API & kept only the ones needed for GUI actions and Terminal views

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org.yocto.sdk.remotetools/META-INF/MANIFEST.MF |   10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF b/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF
index c34ad9e..5147c1a 100644
--- a/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF
@@ -7,16 +7,10 @@ Bundle-Activator: org.yocto.sdk.remotetools.Activator
 Require-Bundle: org.eclipse.ui,
  org.eclipse.core.runtime,
  org.eclipse.rse.core;bundle-version="3.0.0",
- org.eclipse.rse.services;bundle-version="3.0.0",
- org.eclipse.rse.subsystems.files.core;bundle-version="3.0.0",
- org.eclipse.rse.ui;bundle-version="3.0.0",
  org.yocto.sdk.ide,
- org.eclipse.tm.terminal;bundle-version="3.0.1",
- org.eclipse.rse.subsystems.terminals.core;bundle-version="[1.0.0,2.0.0)",
  org.eclipse.rse.terminals.ui;bundle-version="1.0.100",
  org.eclipse.cdt;bundle-version="7.0.0",
  org.eclipse.linuxtools.tmf.core;bundle-version="0.4.0",
- org.eclipse.rse.subsystems.shells.core,
  org.eclipse.ui.ide;bundle-version="3.8.0",
  org.eclipse.ui.console;bundle-version="3.5.100"
 Bundle-ActivationPolicy: lazy
@@ -24,6 +18,10 @@ Bundle-RequiredExecutionEnvironment: JavaSE-1.6
 Import-Package: org.eclipse.core.resources,
  org.eclipse.debug.internal.ui,
  org.eclipse.rse.shells.ui,
+ org.eclipse.rse.ui.actions,
+ org.eclipse.tm.internal.terminal.control,
+ org.eclipse.tm.internal.terminal.control.actions,
+ org.eclipse.tm.internal.terminal.provisional.api,
  org.eclipse.ui.forms.widgets,
  org.yocto.remote.utils
 Bundle-Vendor: %Bundle-Vendor
-- 
1.7.9.5


