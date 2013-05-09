Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B520E01480
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 05:32:17 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 May 2013 05:32:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,641,1363158000"; d="scan'208";a="239112214"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by AZSMGA002.ch.intel.com with ESMTP; 09 May 2013 05:32:14 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  9 May 2013 15:12:18 +0300
Message-Id: <1368101538-30068-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH v3] Move RSEHelper to a separate plugin
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
X-List-Received-Date: Thu, 09 May 2013 12:32:17 -0000

- move RSEHelper to newly created separate plugin org.yocto.remote.utils
- clean-up RSEHelper code by removing all unused methods
- moved message strings that are relevant for this plugin to the corresponding class
- modify remotetools plugin to use RSEHelper from org.yocto.remote.utils
- add plugin resources need for RSEHelper

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |   10 ++
 .../org.yocto.remote.utils/resources/ust_tar.sh    |   19 +++
 .../org.yocto.remote.utils/resources/yocto_tool.sh |  125 +++++++++++++++
 .../org.yocto.remote.utils/resources/yocto_ust.sh  |   35 +++++
 .../src/org/yocto/remote/utils/Activator.java      |    4 +-
 .../src/org/yocto/remote/utils/Messages.java       |   35 +++++
 .../src/org/yocto/remote/utils}/RSEHelper.java     |  163 ++++++--------------
 .../org.yocto.sdk.remotetools/META-INF/MANIFEST.MF |    3 +-
 .../yocto/sdk/remotetools/actions/BaseModel.java   |    2 +-
 .../sdk/remotetools/actions/BaseSettingDialog.java |    2 +-
 .../sdk/remotetools/actions/TerminalHandler.java   |    2 +-
 .../sdk/remotetools/remote/RemoteShellExec.java    |    2 +-
 12 files changed, 277 insertions(+), 125 deletions(-)
 create mode 100755 plugins/org.yocto.remote.utils/resources/ust_tar.sh
 create mode 100755 plugins/org.yocto.remote.utils/resources/yocto_tool.sh
 create mode 100755 plugins/org.yocto.remote.utils/resources/yocto_ust.sh
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Messages.java
 rename plugins/{org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools => org.yocto.remote.utils/src/org/yocto/remote/utils}/RSEHelper.java (78%)

diff --git a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
index eff0356..9616484 100644
--- a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
@@ -8,3 +8,13 @@ Require-Bundle: org.eclipse.ui,
  org.eclipse.core.runtime
 Bundle-ActivationPolicy: lazy
 Bundle-RequiredExecutionEnvironment: JavaSE-1.7
+Import-Package: org.eclipse.rse.core,
+ org.eclipse.rse.core.model,
+ org.eclipse.rse.core.subsystems,
+ org.eclipse.rse.services,
+ org.eclipse.rse.services.files,
+ org.eclipse.rse.services.shells,
+ org.eclipse.rse.subsystems.files.core.servicesubsystem,
+ org.eclipse.rse.subsystems.shells.core.subsystems.servicesubsystem,
+ org.eclipse.rse.subsystems.terminals.core
+Export-Package: org.yocto.remote.utils
diff --git a/plugins/org.yocto.remote.utils/resources/ust_tar.sh b/plugins/org.yocto.remote.utils/resources/ust_tar.sh
new file mode 100755
index 0000000..20a8039
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/resources/ust_tar.sh
@@ -0,0 +1,19 @@
+#!/bin/sh
+
+#set PATH to include sbin dirs
+export PATH="$PATH:/usr/local/sbin:/usr/sbin:/sbin"
+
+if [ ! -d "$@" ] || [ -z "$@" ]; then
+  exit 1
+fi
+
+DATESTRING="$(date +%Y%m%d%H%M%S%N)"
+BASENAME=`basename $@`
+DATAFILE=/tmp/${BASENAME}-${DATESTRING}.tar
+cd $@
+cd ..
+
+tar -cf  ${DATAFILE} ${BASENAME} &> /dev/null || exit $?
+
+echo -e "ustfile:$DATAFILE\n"
+
diff --git a/plugins/org.yocto.remote.utils/resources/yocto_tool.sh b/plugins/org.yocto.remote.utils/resources/yocto_tool.sh
new file mode 100755
index 0000000..099e481
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/resources/yocto_tool.sh
@@ -0,0 +1,125 @@
+#!/bin/sh
+
+help ()
+{
+  echo "Usage $0 command [options] application [application argument]"
+  echo "command:"
+  echo "  start - start an application"
+  echo "  stop - stop an application"
+  echo "  restart - restart an application"
+  echo ""
+  echo "options: -d | -l <log file>"
+  echo "  -d  - start an application as a singleton daemon"
+  echo "  -l <log file name> - redirect the standard output/error in the the file" 
+  echo "  note: Option -d and -l are exclusive to each other"
+  exit 1
+}
+
+killproc() {        # kill the named process(es)
+    pid=`/bin/pidof $1`
+    [ "x$pid" != "x" ] && kill $pid
+}
+
+start () 
+{
+        pid=`/bin/pidof $APP`
+        [ "x$pid" != "x" ] && return 0
+        
+        if [ "x$DAEMON" != "x" ]; then
+            if [ "x$APPARG" != "x" ]; then
+                start-stop-daemon -S -b --oknodo -x $APP -- $APPARG
+            else
+                start-stop-daemon -S -b --oknodo -x $APP
+            fi
+            
+            #wait for sometime for the backend app to bring up & daemonzie
+            ret=$?
+            if [ $ret -eq 0 ]; then
+               sleep 1
+            fi
+            return $ret           
+        elif [ "x$LOGFILE" != "x" ]; then
+            $APP $APPARG $>${LOGFILE}
+        else
+            $APP $APPARG
+        fi
+}
+
+stop ()
+{
+  if [ "x$DAEMON" != "x" ]; then
+    start-stop-daemon -K -x $APP
+  else
+    count=0
+    while [ -n "`/bin/pidof $APP`" -a $count -lt 10 ] ; do
+      killproc $APP >& /dev/null
+      sleep 1
+      RETVAL=$?
+      if [ $RETVAL != 0 -o -n "`/bin/pidof $APP`" ] ; then
+          sleep 3
+      fi
+      count=`expr $count + 1`
+    done
+  fi
+}
+
+restart ()
+{
+  stop
+  sleep 1
+  start
+}
+
+#set PATH to include sbin dirs
+export PATH="$PATH:/usr/local/sbin:/usr/sbin:/sbin"
+
+#get command
+case $1 in 
+start) CMD=$1; shift 1
+    ;;
+stop)  CMD=$1; shift 1
+    ;;
+*)  help
+    ;;
+esac
+
+#get options
+while [ $# -gt 0 ]; do
+  case $1 in
+  -d) DAEMON=true; shift 1
+    ;; 
+  -l) LOGFILE=$2; shift 2
+    ;;
+  *) break
+    ;;
+  esac
+done
+
+#get application
+APP=$1
+shift 1
+
+#get app argument
+APPARG="$@"
+
+#validate options
+if [ "x$DAEMON" != "x" -a "x$LOGFILE" != "x" ]; then
+  help
+fi
+if [ "x$DAEMON" != "x" ]; then
+  APP=`which $APP`
+fi
+if [ "x$APP" == "x" ]; then
+  help
+fi
+
+#run script
+case $CMD in 
+start) start
+    ;;
+stop) stop
+    ;;
+restart)
+    restart
+    ;;
+esac
diff --git a/plugins/org.yocto.remote.utils/resources/yocto_ust.sh b/plugins/org.yocto.remote.utils/resources/yocto_ust.sh
new file mode 100755
index 0000000..a1637db
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/resources/yocto_ust.sh
@@ -0,0 +1,35 @@
+#!/bin/sh
+
+#set PATH to include sbin dirs
+export PATH="$PATH:/usr/local/sbin:/usr/sbin:/sbin"
+
+DATESTRING="$(date +%Y%m%d%H%M%S%N)"
+TEMPFILE="/tmp/yocto-ust-tmp-$DATESTRING"
+
+rm -f ${TEMPFILE}
+usttrace $@ &> ${TEMPFILE}
+ret=$?
+
+if [ $ret -ne 0 ]; then
+  cat $TEMPFILE
+  rm -f $TEMPFILE
+  exit $ret
+fi
+
+#search for output dir
+USTDIR=`cat ${TEMPFILE} | awk '/^Trace was output in:/ { print $5}'`
+rm -f ${TEMPFILE}
+
+if [ -z "$USTDIR" ]; then
+  exit 1
+fi
+
+BASENAME=`basename $USTDIR`
+DATAFILE=/tmp/${BASENAME}.tar
+cd $USTDIR
+cd ..
+
+tar -cf  ${DATAFILE} ${BASENAME} &> /dev/null || exit $?
+
+echo -e "ustfile:$DATAFILE\n"
+
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Activator.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Activator.java
index 047d900..da66a3e 100644
--- a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Activator.java
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Activator.java
@@ -23,7 +23,7 @@ public class Activator extends AbstractUIPlugin {
 
 	// The shared instance
 	private static Activator plugin;
-	
+
 	/**
 	 * The constructor
 	 */
@@ -34,6 +34,7 @@ public class Activator extends AbstractUIPlugin {
 	 * (non-Javadoc)
 	 * @see org.eclipse.ui.plugin.AbstractUIPlugin#start(org.osgi.framework.BundleContext)
 	 */
+	@Override
 	public void start(BundleContext context) throws Exception {
 		super.start(context);
 		plugin = this;
@@ -43,6 +44,7 @@ public class Activator extends AbstractUIPlugin {
 	 * (non-Javadoc)
 	 * @see org.eclipse.ui.plugin.AbstractUIPlugin#stop(org.osgi.framework.BundleContext)
 	 */
+	@Override
 	public void stop(BundleContext context) throws Exception {
 		plugin = null;
 		super.stop(context);
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Messages.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Messages.java
new file mode 100644
index 0000000..fc696d6
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Messages.java
@@ -0,0 +1,35 @@
+/*******************************************************************************
+ * Copyright (c) 2013 Intel Corporation.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * Intel - initial API and implementation
+ *******************************************************************************/
+package org.yocto.remote.utils;
+
+import org.eclipse.osgi.util.NLS;
+
+public class Messages extends NLS {
+
+	private static final String BUNDLE_NAME = "org.yocto.remote.utils.messages"; //$NON-NLS-1$
+
+	public static String ErrorNoSubsystem;
+	public static String ErrorConnectSubsystem;
+
+	public static String InfoDownload;
+	public static String InfoUpload;
+
+	public static String RemoteShellExec_1;
+	public static String RemoteShellExec_2;
+
+	static {
+		// initialize resource bundle
+		NLS.initializeMessages(BUNDLE_NAME, Messages.class);
+	}
+
+	private Messages() {
+	}
+}
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/RSEHelper.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RSEHelper.java
similarity index 78%
rename from plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/RSEHelper.java
rename to plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RSEHelper.java
index 569b00d..201c944 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/RSEHelper.java
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RSEHelper.java
@@ -1,5 +1,5 @@
 /********************************************************************************
- * Copyright (c) 2009, 2010 MontaVista Software, Inc and Others.
+ * Copyright (c) 2013 MontaVista Software, Inc and Others.
  * This program and the accompanying materials are made available under the terms
  * of the Eclipse Public License v1.0 which accompanies this distribution, and is
  * available at http://www.eclipse.org/legal/epl-v10.html
@@ -7,8 +7,9 @@
  * Contributors:
  * Anna Dushistova (MontaVista) - initial API and implementation
  * Lianhao Lu (Intel)			- Modified to add other file operations.
+ * Ioana Grigoropol (Intel)     - Separated remote functionality
  ********************************************************************************/
-package org.yocto.sdk.remotetools;
+package org.yocto.remote.utils;
 
 import java.io.BufferedInputStream;
 import java.io.BufferedOutputStream;
@@ -20,32 +21,34 @@ import java.util.Arrays;
 import java.util.Iterator;
 
 import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.FileLocator;
+import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.IStatus;
 import org.eclipse.core.runtime.MultiStatus;
 import org.eclipse.core.runtime.OperationCanceledException;
-import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.Path;
 import org.eclipse.core.runtime.Status;
 import org.eclipse.core.runtime.SubProgressMonitor;
-import org.eclipse.core.runtime.FileLocator;
 import org.eclipse.osgi.util.NLS;
 import org.eclipse.rse.core.IRSECoreStatusCodes;
+import org.eclipse.rse.core.IRSESystemType;
 import org.eclipse.rse.core.RSECorePlugin;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.rse.core.model.ISubSystemConfigurationCategories;
 import org.eclipse.rse.core.model.ISystemRegistry;
 import org.eclipse.rse.core.subsystems.ISubSystem;
-import org.eclipse.rse.subsystems.shells.core.subsystems.servicesubsystem.IShellServiceSubSystem;
 import org.eclipse.rse.services.IService;
 import org.eclipse.rse.services.files.IFileService;
 import org.eclipse.rse.services.shells.HostShellProcessAdapter;
 import org.eclipse.rse.services.shells.IHostShell;
 import org.eclipse.rse.services.shells.IShellService;
 import org.eclipse.rse.subsystems.files.core.servicesubsystem.IFileServiceSubSystem;
+import org.eclipse.rse.subsystems.shells.core.subsystems.servicesubsystem.IShellServiceSubSystem;
 import org.eclipse.rse.subsystems.terminals.core.ITerminalServiceSubSystem;
-import org.eclipse.rse.core.IRSESystemType;
 
 public class RSEHelper {
+	private final static String EXIT_CMD = "exit"; //$NON-NLS-1$
+	private final static String CMD_DELIMITER = ";"; //$NON-NLS-1$
 	
 	public static IHost getRemoteConnectionByName(String remoteConnection) {
 		if (remoteConnection == null)
@@ -58,15 +61,6 @@ public class RSEHelper {
 		// somehow, throw the exception?
 
 	}
-	
-	public static String getRemoteHostName(String remoteConnection)
-	{
-		final IHost host=getRemoteConnectionByName(remoteConnection);
-		if(host == null)
-			return null;
-		else
-			return host.getHostName();
-	}
 
 	public static IService getConnectedRemoteFileService(
 			IHost currentConnection, IProgressMonitor monitor) throws Exception {
@@ -99,7 +93,7 @@ public class RSEHelper {
 		}
 		return null;
 	}
-	
+
 	public static IService getConnectedShellService(
 			IHost currentConnection, IProgressMonitor monitor) throws Exception {
 		final ISubSystem subsystem = getShellSubsystem(currentConnection);
@@ -120,7 +114,7 @@ public class RSEHelper {
 
 		return ((IShellServiceSubSystem) subsystem).getShellService();
 	}
-	
+
 	public static ISubSystem getShellSubsystem(IHost host) {
 		if (host == null)
 			return null;
@@ -133,15 +127,15 @@ public class RSEHelper {
 	}
 
 	public static IHost[] getSuitableConnections() {
-		
+
 		//we only get RSE connections with files&cmds subsystem
 		ArrayList <IHost> filConnections = new ArrayList <IHost>(Arrays.asList(RSECorePlugin.getTheSystemRegistry()
 				.getHostsBySubSystemConfigurationCategory(ISubSystemConfigurationCategories.SUBSYSTEM_CATEGORY_FILES))); //$NON-NLS-1$
-		
+
 		ArrayList <IHost> terminalConnections = new ArrayList <IHost>(Arrays.asList(RSECorePlugin.getTheSystemRegistry()
 				.getHostsBySubSystemConfigurationCategory("terminal")));//$NON-NLS-1$
-		
-		ArrayList shellConnections = new ArrayList(Arrays.asList(RSECorePlugin.getTheSystemRegistry()
+
+		ArrayList <IHost> shellConnections = new ArrayList <IHost>(Arrays.asList(RSECorePlugin.getTheSystemRegistry()
 				.getHostsBySubSystemConfigurationCategory("shells"))); //$NON-NLS-1$
 
 		Iterator <IHost>iter = filConnections.iterator();
@@ -155,79 +149,16 @@ public class RSEHelper {
 				iter.remove();
 			}
 		}
-		
-		return (IHost[]) filConnections.toArray(new IHost[filConnections.size()]);
-	}
-	
-	public static void deleteRemoteFile(IHost connection, String remoteExePath,
-			IProgressMonitor monitor) throws Exception {
-		
-		assert(connection!=null);
-		monitor.beginTask(Messages.InfoUpload, 100);
-		
-		IFileService fileService;
-		try {
-			fileService = (IFileService) getConnectedRemoteFileService(
-							connection,
-							new SubProgressMonitor(monitor, 5));
-	
-			Path remotePath = new Path(remoteExePath);
-			if(fileService.getFile(remotePath.removeLastSegments(1).toString(), 
-					remotePath.lastSegment(), 
-					new SubProgressMonitor(monitor, 5)).exists()) {
-				fileService.delete(remotePath.removeLastSegments(1).toString(), 
-						remotePath.lastSegment(), 
-						new SubProgressMonitor(monitor, 10));
-			}
-		} finally {
-			monitor.done();
-		}
-		return;
-	}
-	
-	public static void putRemoteFile(IHost connection, String localExePath, String remoteExePath,
-			IProgressMonitor monitor) throws Exception {
-		
-		assert(connection!=null);
-		monitor.beginTask(Messages.InfoUpload, 100);
-		
-		IFileService fileService;
-		try {
-			fileService = (IFileService) getConnectedRemoteFileService(
-							connection,
-							new SubProgressMonitor(monitor, 5));
-			File file = new File(localExePath);
-			Path remotePath = new Path(remoteExePath);
-			if(fileService.getFile(remotePath.removeLastSegments(1).toString(), 
-					remotePath.lastSegment(), 
-					new SubProgressMonitor(monitor, 5)).exists()) {
-				fileService.delete(remotePath.removeLastSegments(1).toString(), 
-						remotePath.lastSegment(), 
-						new SubProgressMonitor(monitor, 10));
-			}
-			fileService.upload(file, remotePath.removeLastSegments(1)
-					.toString(), remotePath.lastSegment(), true, null, null,
-					new SubProgressMonitor(monitor, 80));
-			// Need to change the permissions to match the original file
-			// permissions because of a bug in upload
-			//RemoteApplication p = remoteShellExec(
-			//		config,
-			//		"", "chmod", "+x " + spaceEscapify(remotePath.toString()), new SubProgressMonitor(monitor, 5)); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
-			//Thread.sleep(500);
-			//p.destroy();
-			
-		} finally {
-			monitor.done();
-		}
-		return;
+
+		return filConnections.toArray(new IHost[filConnections.size()]);
 	}
-	
+
 	public static void putRemoteFileInPlugin(IHost connection, String locaPathInPlugin, String remoteExePath,
 			IProgressMonitor monitor) throws Exception {
-		
-		assert(connection!=null);
+
+		assert(connection != null);
 		monitor.beginTask(Messages.InfoUpload, 100);
-		
+
 		IFileService fileService;
 		try {
 			fileService = (IFileService) getConnectedRemoteFileService(
@@ -236,17 +167,7 @@ public class RSEHelper {
 			InputStream  inputStream = FileLocator.openStream(
 				    Activator.getDefault().getBundle(), new Path(locaPathInPlugin), false);
 			Path remotePath = new Path(remoteExePath);
-			/*
-			if(!fileService.getFile(remotePath.removeLastSegments(1).toString(), 
-					remotePath.lastSegment(), 
-					new SubProgressMonitor(monitor, 5)).exists()) {
-			}
-			*/
-			/*
-			fileService.upload(inputStream, remotePath.removeLastSegments(1)
-					.toString(), remotePath.lastSegment(), true, null,
-					new SubProgressMonitor(monitor, 80));
-					*/
+
 			//TODO workaround for now
 			//in case the underlying scp file service doesn't support inputStream upload
 			BufferedInputStream bis = new BufferedInputStream(inputStream);
@@ -268,19 +189,19 @@ public class RSEHelper {
 			remoteShellExec(
 					connection,
 					"", "chmod", "+x " + spaceEscapify(remotePath.toString()), new SubProgressMonitor(monitor, 5)); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
-			
+
 		} finally {
 			monitor.done();
 		}
 		return;
 	}
-	
+
 	public static void getRemoteFile(IHost connection, String localExePath, String remoteExePath,
 			IProgressMonitor monitor) throws Exception {
-		
+
 		assert(connection!=null);
 		monitor.beginTask(Messages.InfoDownload, 100);
-		
+
 		IFileService fileService;
 		try {
 			fileService = (IFileService) getConnectedRemoteFileService(
@@ -290,7 +211,7 @@ public class RSEHelper {
 			file.deleteOnExit();
 			monitor.worked(5);
 			Path remotePath = new Path(remoteExePath);
-			fileService.download(remotePath.removeLastSegments(1).toString(), 
+			fileService.download(remotePath.removeLastSegments(1).toString(),
 					remotePath.lastSegment(),file,true, null,
 					new SubProgressMonitor(monitor, 85));
 			// Need to change the permissions to match the original file
@@ -300,13 +221,13 @@ public class RSEHelper {
 			//		"", "chmod", "+x " + spaceEscapify(remotePath.toString()), new SubProgressMonitor(monitor, 5)); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
 			//Thread.sleep(500);
 			//p.destroy();
-			
+
 		} finally {
 			monitor.done();
 		}
 		return;
 	}
-	
+
 	public static ITerminalServiceSubSystem getTerminalSubSystem(
             IHost connection) {
         ISystemRegistry systemRegistry = RSECorePlugin.getTheSystemRegistry();
@@ -319,21 +240,18 @@ public class RSEHelper {
         }
         return null;
     }
-	
+
 	public static String spaceEscapify(String inputString) {
 		if (inputString == null)
 			return null;
 
 		return inputString.replaceAll(" ", "\\\\ "); //$NON-NLS-1$ //$NON-NLS-2$
 	}
-	
-	private final static String EXIT_CMD = "exit"; //$NON-NLS-1$
-	private final static String CMD_DELIMITER = ";"; //$NON-NLS-1$
-	
+
 	public static Process remoteShellExec(IHost connection,
 			String prelaunchCmd, String remoteCommandPath, String arguments,
 			IProgressMonitor monitor) throws CoreException {
-		
+
 		monitor.beginTask(NLS.bind(Messages.RemoteShellExec_1,
 				remoteCommandPath, arguments), 10);
 		String realRemoteCommand = arguments == null ? spaceEscapify(remoteCommandPath)
@@ -376,11 +294,11 @@ public class RSEHelper {
 		monitor.done();
 		return p;
 	}
-	
+
 	/**
 	 * Throws a core exception with an error status object built from the given
 	 * message, lower level exception, and error code.
-	 * 
+	 *
 	 * @param message
 	 *            the status message
 	 * @param exception
@@ -394,13 +312,17 @@ public class RSEHelper {
 		if (exception != null) {
 			MultiStatus multiStatus = new MultiStatus(Activator.PLUGIN_ID, code, message, exception);
 			multiStatus.add(new Status(IStatus.ERROR, Activator.PLUGIN_ID, code, exception.getLocalizedMessage(), exception));
-			status= multiStatus;
+			status = multiStatus;
 		} else {
-			status= new Status(IStatus.ERROR, Activator.PLUGIN_ID, code, message, null);
+			status = new Status(IStatus.ERROR, Activator.PLUGIN_ID, code, message, null);
 		}
 		throw new CoreException(status);
 	}
-
+	/**
+	 * Checks whether a IHost associated system's is enabled and not a local one
+	 * @param host
+	 * @return
+	 */
 	public static boolean isHostViable(IHost host) {
 		IRSESystemType sysType = host.getSystemType();
 		if (sysType != null && sysType.isEnabled() && !sysType.isLocal())
@@ -408,6 +330,9 @@ public class RSEHelper {
 		return false;
 	}
 
+	/**
+	 * Ensures that RSECorePlugin is initialized before performing any actions
+	 */
 	public static void waitForRSEInitCompletition() {
 		if (!RSECorePlugin.isInitComplete(RSECorePlugin.INIT_MODEL))
 			try {
diff --git a/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF b/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF
index d10a56e..c34ad9e 100644
--- a/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF
@@ -24,7 +24,8 @@ Bundle-RequiredExecutionEnvironment: JavaSE-1.6
 Import-Package: org.eclipse.core.resources,
  org.eclipse.debug.internal.ui,
  org.eclipse.rse.shells.ui,
- org.eclipse.ui.forms.widgets
+ org.eclipse.ui.forms.widgets,
+ org.yocto.remote.utils
 Bundle-Vendor: %Bundle-Vendor
 Bundle-ClassPath: lib/json-simple-1.1.1.jar,
  .
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
index 2e15e48..08cb873 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
@@ -18,7 +18,7 @@ import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.SubProgressMonitor;
 import org.eclipse.jface.operation.IRunnableWithProgress;
 import org.eclipse.rse.core.model.IHost;
-import org.yocto.sdk.remotetools.RSEHelper;
+import org.yocto.remote.utils.RSEHelper;
 import org.yocto.sdk.remotetools.remote.RemoteShellExec;
 
 abstract public class BaseModel implements IRunnableWithProgress {
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseSettingDialog.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseSettingDialog.java
index 962a20a..7845959 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseSettingDialog.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseSettingDialog.java
@@ -21,9 +21,9 @@
 
 package org.yocto.sdk.remotetools.actions;
 
+import org.yocto.remote.utils.RSEHelper;
 import org.yocto.sdk.remotetools.Messages;
 import org.yocto.sdk.remotetools.SWTFactory;
-import org.yocto.sdk.remotetools.RSEHelper;
 import org.eclipse.jface.dialogs.Dialog;
 import org.eclipse.jface.dialogs.IDialogConstants;
 import org.eclipse.rse.core.model.IHost;
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java
index 9e7c169..4ad8688 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java
@@ -33,8 +33,8 @@ import org.eclipse.swt.events.DisposeListener;
 import org.eclipse.swt.widgets.Shell;
 import org.eclipse.tm.internal.terminal.control.ITerminalViewControl;
 import org.eclipse.tm.internal.terminal.provisional.api.ITerminalConnector;
+import org.yocto.remote.utils.RSEHelper;
 import org.yocto.sdk.remotetools.CommonHelper;
-import org.yocto.sdk.remotetools.RSEHelper;
 
 abstract public class TerminalHandler extends AbstractHandler {
 	
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/remote/RemoteShellExec.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/remote/RemoteShellExec.java
index bb4859d..bfcbbfc 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/remote/RemoteShellExec.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/remote/RemoteShellExec.java
@@ -22,7 +22,7 @@ import org.eclipse.core.runtime.IProgressMonitor;
 //import org.eclipse.tcf.services.IProcesses;
 //import org.eclipse.tcf.util.TCFTask;
 import org.eclipse.rse.core.model.IHost;
-import org.yocto.sdk.remotetools.RSEHelper;
+import org.yocto.remote.utils.RSEHelper;
 
 public class RemoteShellExec {
 	
-- 
1.7.9.5


