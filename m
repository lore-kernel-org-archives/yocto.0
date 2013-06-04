Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1226EE01439
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 08:29:58 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Jun 2013 08:30:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,800,1363158000"; d="scan'208";a="347946877"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 04 Jun 2013 08:29:55 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Jun 2013 18:07:46 +0300
Message-Id: <1370358468-20881-7-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370358468-20881-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370358468-20881-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [Refactor RFC 6/8] Fix Hob launching on Linux host
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
X-List-Received-Date: Tue, 04 Jun 2013 15:29:58 -0000

- use location URI instead of String path when launching Hob

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../bc/ui/builder/BitbakeCommanderNature.java      |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/BitbakeCommanderNature.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/BitbakeCommanderNature.java
index fe2a997..a481bea 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/BitbakeCommanderNature.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/BitbakeCommanderNature.java
@@ -44,7 +44,7 @@ public class BitbakeCommanderNature implements IProjectNature {
 			w_copy.setAttribute("org.eclipse.debug.ui.favoriteGroups", listValue);		
 			w_copy.setAttribute("org.eclipse.ui.externaltools.ATTR_LOCATION", "/usr/bin/xterm");
 
-			String init_script = project.getLocation().toString() + "/oe-init-build-env ";
+			String init_script = project.getLocationURI().getPath() + "/oe-init-build-env ";
 			String argument = "-e \"source " + init_script + buildDir + ";hob";// + ";bash\"";
 
 			w_copy.setAttribute("org.eclipse.ui.externaltools.ATTR_TOOL_ARGUMENTS", argument);
-- 
1.7.9.5


