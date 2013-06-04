Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3AD0E01541
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 08:30:00 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Jun 2013 08:30:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,800,1363158000"; d="scan'208";a="347946920"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 04 Jun 2013 08:29:59 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Jun 2013 18:07:48 +0300
Message-Id: <1370358468-20881-9-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370358468-20881-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370358468-20881-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [Refactor RFC 8/8] Fix variables hoover
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
X-List-Received-Date: Tue, 04 Jun 2013 15:30:01 -0000

- initialize bitbake session for recipe:
	- when starting a new project, the session environment variables are obtained by calling "bitbake -e"
        - when a new recipe is created and edited, the session variables should be updated with the values obtained from "bitbake -e -b package" => overwrite the session with the new one

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/BBSession.java        |    5 +++++
 .../bc/ui/editors/bitbake/BBVariableTextHover.java |   12 +++++++++---
 2 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
index 3becff2..714b3ab 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
@@ -761,6 +761,11 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 			wlock.unlock();
 		}
 	}
+
+	public Map<String, String> getProperties() {
+		return (Map<String, String>) properties;
+	}
+
 	public ProjectInfo getProjectInfo() {
 		return pinfo;
 	}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BBVariableTextHover.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BBVariableTextHover.java
index 28e98d4..329ec6b 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BBVariableTextHover.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BBVariableTextHover.java
@@ -25,15 +25,21 @@ import org.yocto.bc.ui.Activator;
  */
 class BBVariableTextHover implements ITextHover {
 	private final BBSession session;
-	private volatile Map envMap;
+	private volatile Map<String, String> envMap;
 
 	public BBVariableTextHover(BBSession session, URI file) {
 		this.session = session;
-		envMap = session;
+		envMap = getEnvironmentMap();
 		LoadRecipeJob loadRecipeJob = new LoadRecipeJob(getFilename(file), file);
 		loadRecipeJob.schedule();
 	}
 
+	private Map<String, String> getEnvironmentMap() {
+		if (envMap == null)
+			envMap = this.session.getProperties();
+		return envMap;
+	}
+
 	private String getFilename(URI uri) {
 		return uri.getPath();
 	}
@@ -77,7 +83,7 @@ class BBVariableTextHover implements ITextHover {
 		}
 		
 		String key = new String(line, start + 2, i - start - 2);
-		String val = (String) envMap.get(key);
+		String val = (String) getEnvironmentMap().get(key);
 		
 		if (val == null) {
 			val = "";
-- 
1.7.9.5


