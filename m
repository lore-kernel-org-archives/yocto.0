Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9039E014A1
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2013 08:40:02 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Jun 2013 08:40:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,913,1363158000"; d="scan'208";a="357457393"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 21 Jun 2013 08:40:00 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 21 Jun 2013 18:18:39 +0300
Message-Id: <1371827919-18181-2-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1371827919-18181-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1371827919-18181-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC PATCH v2 upstream org.eclipse.ptp] [411387] SystemRemoteFolderDialog should return a path when selecting 'My Home' or 'Root'
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
X-List-Received-Date: Fri, 21 Jun 2013 15:40:03 -0000

- when browsing to pick the project location, if "My Home" or "Root" get picked the project location remains empty
- this is caused by the RSEUIFileManager browseDirectory method
   - the selection made in the SystemRemoteFolderDialog is an SystemFilterReference, and thus not a instance of IRemoteFile.
   - if the selection is of type ISystemFilterReference:
	- make sure that the children of the system filter are populated
		- retrieve the adapter for the filter and populate the children list
	- retrieve first child from the list & return parent path
	- if the parent path is null for the first child:
		- this is actually the root of the file system -> return path of this child
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../internal/remote/rse/ui/RSEUIFileManager.java   |   27 +++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/core/org.eclipse.ptp.remote.rse.ui/src/org/eclipse/ptp/internal/remote/rse/ui/RSEUIFileManager.java b/core/org.eclipse.ptp.remote.rse.ui/src/org/eclipse/ptp/internal/remote/rse/ui/RSEUIFileManager.java
index 8182f01..c9a6357 100644
--- a/core/org.eclipse.ptp.remote.rse.ui/src/org/eclipse/ptp/internal/remote/rse/ui/RSEUIFileManager.java
+++ b/core/org.eclipse.ptp.remote.rse.ui/src/org/eclipse/ptp/internal/remote/rse/ui/RSEUIFileManager.java
@@ -7,21 +7,27 @@
  *
  * Contributors:
  * IBM Corporation - Initial API and implementation
+ * Ioana Grigoropol (Intel) - browseDirectory should return a path when selecting 'My Home' or 'Root'
  *******************************************************************************/
 package org.eclipse.ptp.internal.remote.rse.ui;
 
 import java.util.Vector;
 
+import org.eclipse.core.runtime.IAdapterFactory;
 import org.eclipse.jface.window.Window;
 import org.eclipse.ptp.internal.remote.rse.core.RSEConnection;
 import org.eclipse.ptp.remote.core.IRemoteConnection;
 import org.eclipse.ptp.remote.core.IRemoteConnectionManager;
 import org.eclipse.ptp.remote.core.IRemoteServices;
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


