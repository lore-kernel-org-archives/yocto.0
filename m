Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67816E00498
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2013 06:12:22 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 07 Jan 2013 06:12:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,424,1355126400"; d="scan'208";a="240854264"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.62])
	by azsmga001.ch.intel.com with ESMTP; 07 Jan 2013 06:12:20 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Mon,  7 Jan 2013 15:59:57 +0200
Message-Id: <1357567197-19752-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] [eclipse-poky][branch:windows-build]Fix variables hoover & remote file system detection
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
X-List-Received-Date: Mon, 07 Jan 2013 14:12:22 -0000

- initialize bitbake session for recipe:
	- when starting a new project, the session environment variables are obtained by calling "bitbake -e"
	- when a new recipe is created and edited, the session variables should be updated with the values obtained from "bitbake -e -b package" => overwrite the session with the new one
- if we try to retrive a "remote" file (local file system, remote host) using RSE protocol before the system is initialized, null will be returned causing every remote operation to fail:
	- add exception handling
	- make sure that the "remote" FileSystem gets initialized, as well as the project connection

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/BBSession.java        |    4 ++++
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   13 ++++++++-----
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |    7 ++++++-
 .../org/yocto/bc/remote/utils/RemoteMachine.java   |    8 +++++---
 .../bc/ui/editors/bitbake/BBVariableTextHover.java |   12 +++++++++---
 5 files changed, 32 insertions(+), 12 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
index 3aa4efe..66a6083 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
@@ -746,4 +746,8 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 			wlock.unlock();
 		}
 	}
+
+	public Map<String, String> getProperties() {
+		return (Map<String, String>) properties;
+	}
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index c127c25..38e2557 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -86,8 +86,12 @@ public class ShellSession {
 
 	private void initializeShell(IProgressMonitor monitor) throws IOException {
 		try {
-			RemoteHelper.runCommandRemote(projectInfo.getConnection(), new YoctoCommand("source " + initCmd, root.getAbsolutePath(), ""));
-			RemoteHelper.runCommandRemote(projectInfo.getConnection(), new YoctoCommand(exportCmd, root.getAbsolutePath(), ""));
+			if (root != null) {
+				RemoteHelper.runCommandRemote(projectInfo.getConnection(), new YoctoCommand("source " + initCmd, root.getAbsolutePath(), ""));
+				RemoteHelper.runCommandRemote(projectInfo.getConnection(), new YoctoCommand(exportCmd, root.getAbsolutePath(), ""));
+			} else {
+				throw new Exception("Root file not found!");
+			}
 		} catch (Exception e) {
 			e.printStackTrace();
 		}
@@ -103,9 +107,8 @@ public class ShellSession {
 
 		try {
 			if (projectInfo.getConnection() != null) {
-				IHost connection = RemoteHelper.getRemoteConnectionByName(projectInfo.getConnection().getName());
-				hasErrors = RemoteHelper.runCommandRemote(connection, new YoctoCommand(command, root.getAbsolutePath() + "/build/", ""));
-				return RemoteHelper.getProcessBuffer(connection).getMergedOutputLines();
+				hasErrors = RemoteHelper.runCommandRemote(projectInfo.getConnection(), new YoctoCommand(command, root.getAbsolutePath() + "/build/", ""));
+				return RemoteHelper.getProcessBuffer(projectInfo.getConnection()).getMergedOutputLines();
 			}
 			return null;
 		} catch (Exception e) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
index c230fd6..e511e06 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
@@ -99,7 +99,11 @@ public class RemoteHelper {
 		if (host == null) {
 			// this is a local connection
 			ISystemRegistry sr = RSECorePlugin.getTheSystemRegistry();
-			return sr.getLocalHost();
+			IHost local = null;
+			while (local == null) {
+				local = sr.getLocalHost();
+			}
+			return local;
 		}
 		ISystemRegistry sr = RSECorePlugin.getTheSystemRegistry();
 		IHost[] connections = sr.getHosts();
@@ -237,6 +241,7 @@ public class RemoteHelper {
 			IHostFile remoteFile = fileService.getFile(remotePath.removeLastSegments(1).toString(), remotePath.lastSegment(), new SubProgressMonitor(monitor, 5));
 			return remoteFile;
 		} catch (Exception e) {
+			e.printStackTrace();
 	    }finally {
 			monitor.done();
 		}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
index 6eb2945..a25eea4 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
@@ -123,6 +123,9 @@ public class RemoteMachine {
 	}
 
 	public IHost getConnection() {
+//		if (connection == null) {
+//			connection = RemoteHelper.getRemoteConnectionForURI(, new NullProgressMonitor());
+//		}
 		return connection;
 	}
 	public void setConnection(IHost connection) {
@@ -132,9 +135,8 @@ public class RemoteMachine {
 	public IFileService getRemoteFileService(IProgressMonitor monitor) throws Exception {
 		if (fileService == null) {
 	
-			if (getFileSubsystem() == null)
-				throw new Exception(Messages.ErrorNoSubsystem);
-	
+			while(getFileSubsystem() == null)
+				Thread.sleep(2);
 			try {
 				getFileSubsystem().connect(monitor, false);
 			} catch (CoreException e) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BBVariableTextHover.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BBVariableTextHover.java
index cd18d54..329ec6b 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BBVariableTextHover.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BBVariableTextHover.java
@@ -29,11 +29,17 @@ class BBVariableTextHover implements ITextHover {
 
 	public BBVariableTextHover(BBSession session, URI file) {
 		this.session = session;
-//		envMap = session;
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
@@ -103,7 +109,7 @@ class BBVariableTextHover implements ITextHover {
 			try {
 				BBRecipe recipe = Activator.getBBRecipe(session, filePath);
 				recipe.initialize();
-//				envMap = recipe;
+				envMap = recipe;
 			} catch (Exception e) {
 				return new Status(IStatus.WARNING, Activator.PLUGIN_ID, "Unable to load session for " + filePath, e);
 			} 
-- 
1.7.9.5


