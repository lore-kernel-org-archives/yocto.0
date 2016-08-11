Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78F04E0124E; Thu, 11 Aug 2016 16:30:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 694FAE01252
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 16:30:28 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 11 Aug 2016 16:30:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,507,1464678000"; d="scan'208";a="1012911461"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga001.jf.intel.com with ESMTP; 11 Aug 2016 16:30:28 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 16:31:11 -0700
Message-Id: <1470958271-28279-9-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1470958271-28279-1-git-send-email-timothy.t.orling@linux.intel.com>
References: <1470958271-28279-1-git-send-email-timothy.t.orling@linux.intel.com>
Subject: [eclipse-poky][PATCH 8/8] org.yocto.sdk.remotetools: SubProgressMonitor -> SubMonitor
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
X-List-Received-Date: Thu, 11 Aug 2016 23:30:29 -0000

[YOCTO #9908]

Suppress restriction, unchecked and unused warnings.
Cleanup unused imports/variables.
Comment out some imports that were only used in commented out code.

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 .../src/org/yocto/sdk/remotetools/YoctoJSONHelper.java   |  6 ++++++
 .../src/org/yocto/sdk/remotetools/actions/BaseModel.java | 12 ++++++------
 .../org/yocto/sdk/remotetools/actions/OprofileModel.java |  6 +++---
 .../org/yocto/sdk/remotetools/actions/PowertopModel.java |  6 +++---
 .../yocto/sdk/remotetools/actions/SystemtapHandler.java  |  2 ++
 .../sdk/remotetools/actions/SystemtapSettingDialog.java  |  1 +
 .../src/org/yocto/sdk/remotetools/actions/Ust2Model.java | 16 ++++++++--------
 .../org/yocto/sdk/remotetools/views/BaseFileView.java    |  1 +
 .../org/yocto/sdk/remotetools/views/TerminalViewTab.java |  6 ++++--
 .../org/yocto/sdk/remotetools/views/TerminalViewer.java  |  3 ++-
 .../sdk/remotetools/wizards/bsp/PropertiesPage.java      |  1 +
 11 files changed, 37 insertions(+), 23 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/YoctoJSONHelper.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/YoctoJSONHelper.java
index 37ce54d..36723d9 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/YoctoJSONHelper.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/YoctoJSONHelper.java
@@ -32,6 +32,7 @@ public class YoctoJSONHelper {
 		try {
 			
 			JSONObject obj = (JSONObject)JSONValue.parse(new FileReader(PROPERTIES_FILE));
+			@SuppressWarnings("unchecked")
 			Set<String> keys = obj.keySet();
 			if (!keys.isEmpty()) {
 				Iterator<String> iter = keys.iterator();
@@ -57,8 +58,13 @@ public class YoctoJSONHelper {
 		return properties;
 	}
 
+	@SuppressWarnings("unchecked")
 	public static void createBspJSONFile(HashSet<YoctoBspPropertyElement> properties) {
 		try {
+			/* should be JSONObject<String, Object> obj = new JSONObject<String, Object>();
+			 * but upstream json-simple would have to change.
+			 * See http://stackoverflow.com/questions/16415436/json-and-generics-in-java-type-safety-warning
+			 */
 			JSONObject obj = new JSONObject();
 			if (!properties.isEmpty()) {
 				Iterator<YoctoBspPropertyElement> it = properties.iterator();
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
index 6686d39..d6004aa 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
@@ -15,7 +15,7 @@ import java.io.InputStream;
 import java.lang.reflect.InvocationTargetException;
 
 import org.eclipse.core.runtime.IProgressMonitor;
-import org.eclipse.core.runtime.SubProgressMonitor;
+import org.eclipse.core.runtime.SubMonitor;
 import org.eclipse.jface.operation.IRunnableWithProgress;
 import org.eclipse.rse.core.model.IHost;
 import org.yocto.remote.utils.RemoteHelper;
@@ -84,23 +84,23 @@ abstract public class BaseModel implements IRunnableWithProgress {
 			monitor.beginTask(RUN_MSG + taskName, WORKLOAD);
 
 			monitor.subTask(INIT_MSG + taskName + DOTS);
-			init(new SubProgressMonitor(monitor, INIT_PERCENT));
+			init(SubMonitor.convert(monitor, INIT_PERCENT));
 
 			monitor.subTask(PRE_PROCESS_MSG + taskName + DOTS);
-			preProcess(new SubProgressMonitor(monitor, PRE_PROCESS_PERCENT));
+			preProcess(SubMonitor.convert(monitor, PRE_PROCESS_PERCENT));
 
 			monitor.subTask(PROCESS_MSG + taskName + DOTS);
-			process(new SubProgressMonitor(monitor, PROCESS_PERCENT));
+			process(SubMonitor.convert(monitor, PROCESS_PERCENT));
 
 			monitor.subTask(POST_PROCESS_MSG + taskName + DOTS);
-			postProcess(new SubProgressMonitor(monitor, POST_PROCESS_PERCENT));
+			postProcess(SubMonitor.convert(monitor, POST_PROCESS_PERCENT));
 		} catch (InterruptedException e){
 			throw new InterruptedException("User cancelled!");
 		} catch (InvocationTargetException e) {
 			throw e;
 		} finally {
 			monitor.subTask(CLEAN_MSG + taskName + DOTS);
-			clean(new SubProgressMonitor(monitor, CLEAN_PERCENT));
+			clean(SubMonitor.convert(monitor, CLEAN_PERCENT));
 			monitor.done();
 		}
 	}
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java
index 7fbe7c6..d482448 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java
@@ -17,7 +17,7 @@ import java.io.IOException;
 import java.lang.reflect.InvocationTargetException;
 
 import org.eclipse.core.runtime.IProgressMonitor;
-import org.eclipse.core.runtime.SubProgressMonitor;
+import org.eclipse.core.runtime.SubMonitor;
 import org.eclipse.jface.preference.IPreferenceStore;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.ui.IWorkbenchWindow;
@@ -118,7 +118,7 @@ public class OprofileModel extends BaseModel {
 			monitor.beginTask("Starting oprofile", 100);	
 			//start oprofile-server
 			monitor.subTask("Starting oprofile-server");
-			startServer(new SubProgressMonitor(monitor,80));
+			startServer(SubMonitor.convert(monitor,80));
 			
 			//start local oprofile-viewer
 			monitor.subTask("oprofile-viewer is running locally");
@@ -140,7 +140,7 @@ public class OprofileModel extends BaseModel {
 				//stop oprofile-server
 				if(stopServer) {
 					monitor.subTask("Stopping oprofile-viewer");
-					stopServer(new SubProgressMonitor(monitor,30));
+					stopServer(SubMonitor.convert(monitor,30));
 				}
 			}
 		}catch (InterruptedException e){
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
index 79bef61..20dc0e4 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PowertopModel.java
@@ -16,7 +16,7 @@ import java.text.SimpleDateFormat;
 import java.util.Calendar;
 
 import org.eclipse.core.runtime.IProgressMonitor;
-import org.eclipse.core.runtime.SubProgressMonitor;
+import org.eclipse.core.runtime.SubMonitor;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.swt.widgets.Display;
 import org.eclipse.ui.IWorkbenchPage;
@@ -74,10 +74,10 @@ public class PowertopModel extends BaseModel {
 		try {
 			//running powertop
 			monitor.subTask("Generating powertop data file remotely");
-			generateData(new SubProgressMonitor(monitor,30));
+			generateData(SubMonitor.convert(monitor,30));
 			//download datafile
 			monitor.subTask("Downloading powertop data file");
-			getDataFile(new SubProgressMonitor(monitor,30));
+			getDataFile(SubMonitor.convert(monitor,30));
 			//show it in the powertop view
 			display.syncExec(new Runnable() {
 				public void run() {
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapHandler.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapHandler.java
index 466f0c3..886e635 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapHandler.java
@@ -9,6 +9,7 @@
  * Intel - initial API and implementation
  *******************************************************************************/
 package org.yocto.sdk.remotetools.actions;
+
 import java.lang.reflect.InvocationTargetException;
 
 import org.eclipse.core.commands.AbstractHandler;
@@ -34,6 +35,7 @@ import org.eclipse.ui.IWorkbenchWindow;
 import org.eclipse.ui.handlers.HandlerUtil;
 import org.yocto.remote.utils.RemoteHelper;
 
+@SuppressWarnings("restriction")
 public class SystemtapHandler extends AbstractHandler {
 	protected SystemtapSettingDialog setting;
 	protected String changeTerm="export TERM=vt100;";
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java
index 5c14c9a..ed11017 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java
@@ -219,6 +219,7 @@ public class SystemtapSettingDialog extends Dialog {
 	
  	@Override
 	protected void okPressed() {
+		@SuppressWarnings("unused")
 		IDialogSettings settings = Activator.getDefault().getDialogSettings();
 		metadata_location = metadataLocationText.getText();
 		if ( (metadata_location == null) || metadata_location.isEmpty()) {
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java
index 8dcc5b3..854a6a0 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust2Model.java
@@ -25,7 +25,7 @@ import org.eclipse.core.resources.ResourcesPlugin;
 import org.eclipse.core.runtime.IPath;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.Path;
-import org.eclipse.core.runtime.SubProgressMonitor;
+import org.eclipse.core.runtime.SubMonitor;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.ui.IWorkbenchWindow;
 
@@ -46,6 +46,7 @@ public class Ust2Model extends BaseModel {
 	
 	private String prj_name;
 	
+	@SuppressWarnings("unused")
 	private IWorkbenchWindow window;
 	
 	public Ust2Model(IHost host, String trace, String project, IWorkbenchWindow window) {
@@ -89,6 +90,7 @@ public class Ust2Model extends BaseModel {
 		String traceName = localFile.substring(0,localFile.length()-LOCAL_FILE_SUFFIX.length());
 		
 		IWorkspaceRoot wsroot = ResourcesPlugin.getWorkspace().getRoot();
+		@SuppressWarnings("unused")
 		IPath full_path = wsroot.getFullPath();
 		IProject project = wsroot.getProject(prj_name);
 		IFolder traceFolder = project.getFolder(TRACE_FOLDER_NAME);
@@ -111,6 +113,7 @@ public class Ust2Model extends BaseModel {
 		}
 	}
 	
+	@SuppressWarnings("unused")
 	private String[] generateViewerParam() throws Exception {
 		String viewerParam=new String(LOCAL_EXEC);
 		int i;
@@ -135,23 +138,20 @@ public class Ust2Model extends BaseModel {
 	@Override
 	public void process(IProgressMonitor monitor)
 			throws InvocationTargetException, InterruptedException {
-		// TODO Auto-generated method stub
-		
-		String datafile;
-		
+
 		monitor.beginTask("Running ust", 100);		
 		try {
 			//preparing remote trace
 			
 			monitor.subTask("Preparing user space lttng data file remotely");
-			generateData(new SubProgressMonitor(monitor,30));
+			generateData(SubMonitor.convert(monitor,30));
 			
 			//download datafile to local
 			monitor.subTask("Downloading user space lttng data file");
-			getDataFile(new SubProgressMonitor(monitor,30));
+			getDataFile(SubMonitor.convert(monitor,30));
 			
 			//extract datafile and import to lttng project
-			importToProject(new SubProgressMonitor(monitor,30));
+			importToProject(SubMonitor.convert(monitor,30));
 				
 		}catch (InterruptedException e){
 			throw e;
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/BaseFileView.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/BaseFileView.java
index a5801c7..1df5a67 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/BaseFileView.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/BaseFileView.java
@@ -85,6 +85,7 @@ public class BaseFileView extends ViewPart {
 					if(line!=null)
 						elements.add(line);
 				}while(line!=null);
+				in.close();
 			}catch (Exception e) {
 				e.printStackTrace();
 			}
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/TerminalViewTab.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/TerminalViewTab.java
index c3fbd6a..8c169f3 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/TerminalViewTab.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/TerminalViewTab.java
@@ -38,7 +38,7 @@ import org.eclipse.swt.graphics.Font;
 import org.eclipse.swt.layout.FillLayout;
 import org.eclipse.swt.layout.GridData;
 import org.eclipse.swt.widgets.Composite;
-import org.eclipse.swt.widgets.Menu;
+// import org.eclipse.swt.widgets.Menu;
 import org.eclipse.tm.internal.terminal.control.ITerminalViewControl;
 import org.eclipse.tm.internal.terminal.control.actions.TerminalActionClearAll;
 import org.eclipse.tm.internal.terminal.control.actions.TerminalActionCopy;
@@ -59,7 +59,8 @@ public class TerminalViewTab extends Composite {
 
 	private IPropertyChangeListener propertyChangeListener;
 
-	private Menu menu;
+	//  Only used in commented out code
+	//  Menu menu;
 
 	private boolean fMenuAboutToShow;
 
@@ -193,6 +194,7 @@ public class TerminalViewTab extends Composite {
 		}
 	}
 
+	@SuppressWarnings("deprecation")
 	public void updateTheme(final ITerminalViewControl control) {
 		if (control != null) {
 			IThemeManager mgr = PlatformUI.getWorkbench().getThemeManager();
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/TerminalViewer.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/TerminalViewer.java
index 21d010c..38c6b5e 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/TerminalViewer.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/TerminalViewer.java
@@ -131,7 +131,8 @@ public class TerminalViewer extends ViewPart implements ISelectionListener,
             pagebook.showPage(noTabShownLabel);
     }
     
-    private void showTabsPage(){
+    @SuppressWarnings("unused")
+	private void showTabsPage(){
         pagebook.showPage(tabFolder);
     }
 
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
index 18149e7..58ee11f 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
@@ -442,6 +442,7 @@ public class PropertiesPage extends WizardPage {
 	}
 
 	private void updateKernelValues(final String value, String property) {
+		@SuppressWarnings("unused")
 		String build_dir = "";
 		if ((bspElem.getBuildLoc() == null) || bspElem.getBuildLoc().isEmpty())
 			build_dir = bspElem.getMetadataLoc()+"/build";
-- 
2.7.4


