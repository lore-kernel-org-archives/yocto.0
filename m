Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05A89E01409
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2013 08:25:35 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Jun 2013 08:23:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,913,1363158000"; d="scan'208";a="333409023"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by orsmga001.jf.intel.com with ESMTP; 21 Jun 2013 08:25:33 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 21 Jun 2013 18:04:22 +0300
Message-Id: <1371827062-17852-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Ioana Grigoropol <ioanax.grigoropol@gmail.com>
Subject: [RFC PATCH upstream org.eclipse.ptp] [411387] SystemRemoteFolderDialog should return a path when selecting 'My Home' or 'Root'
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
X-List-Received-Date: Fri, 21 Jun 2013 15:25:38 -0000

- when browsing to pick the project location, if "My Home" or "Root" get picked the project location remains empty
- this is caused by the RSEUIFileManager browseDirectory method
   - the selection made in the SystemRemoteFolderDialog is an SystemFilterReference, and thus not a instance of IRemoteFile.
   - if the selection is of type ISystemFilterReference:
	- make sure that the children of the system filter are populated
		- retrieve the adapter for the filter and populate the children list
	- retrieve first child from the list & return parent path
	- if the parent path is null for the first child:
		- this is actually the root of the file system -> return path of this child

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@gmail.com>
---
 .../ptp/remote/rse/ui/RSEUIFileManager.java        |   27 +++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/core/org.eclipse.ptp.remote.rse.ui/src/org/eclipse/ptp/remote/rse/ui/RSEUIFileManager.java b/core/org.eclipse.ptp.remote.rse.ui/src/org/eclipse/ptp/remote/rse/ui/RSEUIFileManager.java
index dd0e097..e3f1423 100644
--- a/core/org.eclipse.ptp.remote.rse.ui/src/org/eclipse/ptp/remote/rse/ui/RSEUIFileManager.java
+++ b/core/org.eclipse.ptp.remote.rse.ui/src/org/eclipse/ptp/remote/rse/ui/RSEUIFileManager.java
@@ -7,21 +7,27 @@
  *
  * Contributors:
  * IBM Corporation - Initial API and implementation
+ * Ioana Grigoropol (Intel) - browseDirectory should return a path when selecting 'My Home' or 'Root'
  *******************************************************************************/
 package org.eclipse.ptp.remote.rse.ui;
 
 import java.util.Vector;
 
+import org.eclipse.core.runtime.IAdapterFactory;
 import org.eclipse.jface.window.Window;
 import org.eclipse.ptp.remote.core.IRemoteConnection;
 import org.eclipse.ptp.remote.core.IRemoteConnectionManager;
 import org.eclipse.ptp.remote.core.IRemoteServices;
 import org.eclipse.ptp.remote.rse.core.RSEConnection;
 import org.eclipse.ptp.remote.ui.IRemoteUIFileManager;
+import org.eclipse.rse.core.filters.ISystemFilterReference;
 import org.eclipse.rse.core.model.IHost;
+import org.eclipse.rse.core.model.SystemChildrenContentsType;
 import org.eclipse.rse.files.ui.dialogs.SystemRemoteFileDialog;
 import org.eclipse.rse.files.ui.dialogs.SystemRemoteFolderDialog;
+import org.eclipse.rse.internal.ui.view.SystemViewFilterReferenceAdapter;
 import org.eclipse.rse.subsystems.files.core.subsystems.IRemoteFile;
+import org.eclipse.rse.ui.RSEUIPlugin;
 import org.eclipse.swt.widgets.Shell;
 
 public class RSEUIFileManager implements IRemoteUIFileManager {
@@ -51,6 +57,25 @@ public class RSEUIFileManager implements IRemoteUIFileManager {
 			if (retObj instanceof IRemoteFile) {
 				IRemoteFile selectedFile = (IRemoteFile) retObj;
 				return selectedFile.getAbsolutePath();
+			} else if (retObj instanceof ISystemFilterReference){
+				ISystemFilterReference selectedFile = (ISystemFilterReference)retObj;
+
+				RSEUIPlugin plugin = RSEUIPlugin.getDefault();
+				if (selectedFile.getContents(SystemChildrenContentsType.getInstance()) == null) {
+					// in order to make sure that the children of this SystemFilterReference are populated
+					// the method getChildren() of the underlying adapter must be invoked
+					IAdapterFactory factory = plugin.getSystemViewAdapterFactory();
+					SystemViewFilterReferenceAdapter adapter = (SystemViewFilterReferenceAdapter)factory.getAdapter(selectedFile, ISystemFilterReference.class);
+					adapter.getChildren(selectedFile);
+				}
+				// now that the children are cached for the filter references we can try and access them
+				Object[] con = selectedFile.getContents(SystemChildrenContentsType.getInstance());
+				if (con != null && con[0] instanceof IRemoteFile) {
+					IRemoteFile file = (IRemoteFile)con[0];
+					if (file.getParentPath() == null)
+						return file.getAbsolutePath();// this is actually the root of the file system
+					return file.getParentPath();
+				}
 			}
 		}
 		return null;
@@ -134,4 +159,4 @@ public class RSEUIFileManager implements IRemoteUIFileManager {
 	public void showConnections(boolean enable) {
 		onlyConnection = !enable;
 	}
-}
\ No newline at end of file
+}
-- 
1.7.10.4


