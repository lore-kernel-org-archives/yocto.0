Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3662E0150D
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 10:22:30 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jun 2013 10:23:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,808,1363158000"; d="scan'208";a="348629262"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2013 10:22:29 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Jun 2013 20:00:06 +0300
Message-Id: <1370451622-10619-6-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC refactor 05/21] Save active connection for Bitbake recipe
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
X-List-Received-Date: Wed, 05 Jun 2013 17:22:30 -0000

- retrieve active connection from project info and save it on the Bitbake editor

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../bc/ui/editors/bitbake/BitBakeFileEditor.java   |    1 +
 1 file changed, 1 insertion(+)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeFileEditor.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeFileEditor.java
index 1e42d29..44fd0c1 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeFileEditor.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeFileEditor.java
@@ -68,6 +68,7 @@ public class BitBakeFileEditor extends AbstractDecoratedTextEditor {
 			
 			try {
 				ProjectInfo projInfo = Activator.getProjInfo(p.getLocationURI());
+				((BitBakeDocumentProvider)getDocumentProvider()).setActiveConnection(projInfo.getConnection());
 				viewerConfiguration.setBBSession(Activator.getBBSession(projInfo, new NullProgressMonitor()));
 			} catch (IOException e) {
 				e.printStackTrace();
-- 
1.7.9.5


