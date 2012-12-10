Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93A6DE00777
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 08:35:52 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 Dec 2012 08:35:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,252,1355126400"; d="scan'208";a="260025136"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by fmsmga001.fm.intel.com with ESMTP; 10 Dec 2012 08:35:50 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 10 Dec 2012 18:25:33 +0200
Message-Id: <1355156733-5821-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] [eclipse-poky][branch:windows-build]Ignore files from repository with invalid resource names
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
X-List-Received-Date: Mon, 10 Dec 2012 16:35:53 -0000

- when browsing through files in poky repository, files that contain '<', '>', ':','"', '/', '\', '|', '?', '*' will not be displayed on a Windows environment and will through a ResourceException
- since these files are needed for the internal cooking files should not be deleted, but the user does not need to see or modify them -> just ignore these exception, causing the files to be skipped when browsing the repo

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../newproject/CreateBBCProjectOperation.java      |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
index 1a19479..ae1e093 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
@@ -82,6 +82,10 @@ public class CreateBBCProjectOperation extends WorkspaceModifyOperation {
 			proj.open(monitor);
 		} catch (IOException e) {
 			throw new InvocationTargetException(e);
+		} catch (ResourceException e){
+			// ignore this exception since it only occurs for special internal files from the repository on Windows platform
+			// the resource names on Windows must not contain '<', '>', ':','"', '/', '\', '|', '?', '*'
+			// the ignored files must not be removed since they are internal cooking files, but the user does not need to see/modify them
 		} catch (Exception e) {
 			e.printStackTrace();
 		}
-- 
1.7.9.5


