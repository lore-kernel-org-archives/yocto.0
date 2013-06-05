Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3D91E01569
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 10:22:45 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jun 2013 10:23:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,808,1363158000"; d="scan'208";a="348629407"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2013 10:22:44 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Jun 2013 20:00:18 +0300
Message-Id: <1370451622-10619-18-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC refactor 17/21] Collect Bitbake error lines
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
X-List-Received-Date: Wed, 05 Jun 2013 17:22:45 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/BBSession.java        |   10 +++++++++
 .../BBConfigurationInitializeOperation.java        |   23 ++++++++++++++++++--
 2 files changed, 31 insertions(+), 2 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
index 714b3ab..5a44710 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
@@ -467,6 +467,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		Stack blockStack = new Stack();
 
 		while ((line = reader.readLine()) != null) {
+			errorLines += line;
 			String trimmed = line.trim();
 			if (trimmed.length() == 0 || line.startsWith("#")) {
 				// weed out the blank and comment lines
@@ -769,4 +770,13 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 	public ProjectInfo getProjectInfo() {
 		return pinfo;
 	}
+
+	public boolean hasErrorOccured() {
+		return errorOccured;
+	}
+
+	public String getErrorLines() {
+		return errorLines;
+	}
+
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
index 20c001a..d761667 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
@@ -20,17 +20,22 @@ import org.yocto.bc.bitbake.BBSession;
 import org.yocto.bc.bitbake.ProjectInfoHelper;
 import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.model.ProjectInfo;
+import org.yocto.remote.utils.RemoteHelper;
 
 public class BBConfigurationInitializeOperation implements IRunnableWithProgress {
 
 	private final ProjectInfo pinfo;
 	private final Writer writer;
+	private boolean errorOccured = false;
+	private String errorMessage = "";
 
 	public BBConfigurationInitializeOperation(ProjectInfo pinfo) {
 		this.pinfo = pinfo;
 		writer = null;
 	}
-
+	public boolean hasErrorOccured() {
+		return errorOccured;
+	}
 	public BBConfigurationInitializeOperation(ProjectInfo pinfo, Writer writer) {
 		this.pinfo = pinfo;
 		this.writer = writer;
@@ -39,11 +44,25 @@ public class BBConfigurationInitializeOperation implements IRunnableWithProgress
 	public void run(IProgressMonitor monitor) throws InvocationTargetException, InterruptedException {
 		BBSession session;
 		try {
+			System.out.println("Initialize bitbake session ...");
+			monitor.beginTask("Initialize bitbake session ...", RemoteHelper.TOTALWORKLOAD);
 			session = Activator.getBBSession(pinfo, writer, monitor);
 			session.initialize();
-
+			monitor.worked(90);
+			monitor.done();
+			errorOccured = session.hasErrorOccured();
+			errorMessage = session.getErrorLines();
+			if (!errorOccured) {
+				System.out.println("Bitbake session initialized successfully.");
+				errorMessage = "";
+			} else
+				System.out.println("An error occured and Bitbake session was not initialized.");
 		} catch (Exception e) {
 			throw new InvocationTargetException(e);
 		}
 	}
+
+	public String getErrorMessage() {
+		return errorMessage;
+	}
 }
-- 
1.7.9.5


