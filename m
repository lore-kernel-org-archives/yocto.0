Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1584DE0155A
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 06:48:25 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 04 Jun 2013 06:48:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,799,1363158000"; d="scan'208";a="344571137"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga001.fm.intel.com with ESMTP; 04 Jun 2013 06:48:42 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Jun 2013 16:26:07 +0300
Message-Id: <1370352368-18730-9-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [Refactor RFC 8/9] Use URI for storing project locations
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
X-List-Received-Date: Tue, 04 Jun 2013 13:48:25 -0000

Added new class YoctoLocation
- wrapper over URI based location
- return original URI for working with the file system(remote or local)
- return OEFS URI for working with OEFS File system

ProjectInfo
- use YoctoLocation instead of String for storing project location
- store IHost connection and FileService fields in project info

Propagate these changes to all the other files that use project in any way:
- Activator
	- map ShellSession to Project Infos
- ShellSession
	- store projectInfo
	- retrive underlying shell session from the Activator using project info
	- use IHostFile instead of File to store project location root
- BBRecipe
	- use URI instead of String for storing the path
- BBSession
        - store list of dependencies using URI
- ProjectInfoHelper
        - change getInitScriptPath to use URI
- OEFile
	- use URI instead of String for storing the path
- OEFileSystem
	- store project info
- BitbakeSourceViewerConfiguration
- BitbakeFileEditor
- LoadRecipeJob
- LaunchVariableWizardAction
- RecipeContentProvider
- ImportYoctoProjectWizard
- InstallWizard
- BBConfigurationInitializeOperation
- CreateBBCProjectOperation

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |    4 ++
 .../src/org/yocto/bc/bitbake/BBRecipe.java         |   24 +++----
 .../src/org/yocto/bc/bitbake/BBSession.java        |   34 +++++----
 .../org/yocto/bc/bitbake/ProjectInfoHelper.java    |   22 +++---
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   16 ++++-
 .../src/org/yocto/bc/ui/Activator.java             |   60 +++++++++-------
 .../bc/ui/actions/LaunchVariableWizardAction.java  |   16 ++++-
 .../bc/ui/editors/bitbake/BBVariableTextHover.java |   16 ++---
 .../bc/ui/editors/bitbake/BitBakeFileEditor.java   |   16 ++++-
 .../bitbake/BitBakeSourceViewerConfiguration.java  |   14 +++-
 .../src/org/yocto/bc/ui/filesystem/OEFile.java     |   13 ++--
 .../org/yocto/bc/ui/filesystem/OEFileSystem.java   |   24 ++++++-
 .../org/yocto/bc/ui/filesystem/YoctoLocation.java  |   34 +++++++++
 .../src/org/yocto/bc/ui/model/ProjectInfo.java     |   75 +++++++++++++++++---
 .../yocto/bc/ui/views/RecipeContentProvider.java   |    2 +-
 .../importProject/ImportYoctoProjectWizard.java    |    7 +-
 .../yocto/bc/ui/wizards/install/InstallWizard.java |    9 ++-
 .../BBConfigurationInitializeOperation.java        |    2 +-
 .../newproject/CreateBBCProjectOperation.java      |   14 ++--
 19 files changed, 281 insertions(+), 121 deletions(-)
 create mode 100755 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/YoctoLocation.java

diff --git a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
index 3ca62df..7cecce8 100644
--- a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
@@ -18,3 +18,7 @@ Require-Bundle: org.eclipse.ui,
  org.yocto.remote.utils;bundle-version="1.0.0"
 Eclipse-LazyStart: true
 Bundle-ClassPath: .
+Import-Package: org.eclipse.ptp.remote.core,
+ org.eclipse.rse.core.model,
+ org.eclipse.rse.services.clientserver.messages,
+ org.eclipse.rse.services.files
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
index 2b355ba..1baf124 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
@@ -11,14 +11,7 @@
 package org.yocto.bc.bitbake;
 
 import java.io.IOException;
-
-import org.eclipse.jface.preference.JFacePreferences;
-import org.eclipse.jface.resource.JFaceResources;
-import org.eclipse.swt.widgets.Display;
-import org.eclipse.ui.console.ConsolePlugin;
-import org.eclipse.ui.console.IConsole;
-import org.eclipse.ui.console.MessageConsole;
-import org.eclipse.ui.console.MessageConsoleStream;
+import java.net.URI;
 
 /**
  * Represents the bitbake environment of a recipe package.
@@ -27,24 +20,25 @@ import org.eclipse.ui.console.MessageConsoleStream;
  */
 public class BBRecipe extends BBSession {
 	private final BBSession session;
-	private final String filePath;
+	private final URI fileURI;
 
-	public BBRecipe(BBSession session, String filePath) throws IOException {
-		super(session.shell, session.pinfo.getRootPath());
+	public BBRecipe(BBSession session, URI filePath) throws IOException {
+		super(session.shell, session.pinfo.getOriginalURI());
 		this.session = session;
-		this.filePath = filePath;
+		this.fileURI = filePath;
 		this.parsingCmd = "DISABLE_SANITY_CHECKS=1 bitbake -e -b " + filePath;
 	}
 	
 	@Override
 	public void initialize() throws Exception {
 		if (this.size() == 0) {
-			//System.out.println("Failed to parse " + filePath);
+			//System.out.println("Failed to parse " + fileURI);
 			//throw new IOException("Failed to parse " + filePath);
 		}
 	}
 
-	protected String getDefaultDepends() {
-		return this.filePath;
+	@Override
+	protected URI getDefaultDepends() {
+		return this.fileURI;
 	}
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
index e998bcd..fcde557 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
@@ -15,6 +15,7 @@ import java.io.File;
 import java.io.FileFilter;
 import java.io.IOException;
 import java.io.StringReader;
+import java.net.URI;
 import java.util.ArrayList;
 import java.util.Arrays;
 import java.util.Collection;
@@ -65,8 +66,8 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 
 	protected final ProjectInfo pinfo;
 	protected final ShellSession shell;
-	protected Map properties = null;
-	protected List <String> depends = null;
+	protected Map<?,?> properties = null;
+	protected List <URI> depends = null;
 	protected boolean initialized = false;
 	protected MessageConsole sessionConsole;
 	private final ReentrantReadWriteLock rwlock = new ReentrantReadWriteLock();
@@ -75,15 +76,15 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 	protected String parsingCmd;
 	private boolean silent = false;
 	
-	public BBSession(ShellSession ssession, String projectRoot) throws IOException {
+	public BBSession(ShellSession ssession, URI projectRoot) throws IOException {
 		shell = ssession;
 		this.pinfo = new ProjectInfo();
-		pinfo.setLocation(projectRoot);
+		pinfo.setLocationURI(projectRoot);
 		pinfo.setInitScriptPath(ProjectInfoHelper.getInitScriptPath(projectRoot));
 		this.parsingCmd = "DISABLE_SANITY_CHECKS=1 bitbake -e";
 	}
 
-	public BBSession(ShellSession ssession, String projectRoot, boolean silent) throws IOException {
+	public BBSession(ShellSession ssession, URI projectRoot, boolean silent) throws IOException {
 		this(ssession, projectRoot);
 		this.silent = silent;
 	}
@@ -182,8 +183,8 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		return shell;
 	}
 
-	public String getProjInfoRoot() {
-		return pinfo.getRootPath();
+	public URI getProjInfoRoot() {
+		return pinfo.getOriginalURI();
 	}
 
 	/**
@@ -261,7 +262,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 	 */
 	public MessageConsole getConsole() {
 		if (sessionConsole == null) {
-			String cName = ProjectInfoHelper.getProjectName(pinfo.getRootPath()) + " Console";
+			String cName = ProjectInfoHelper.getProjectName(pinfo.getOriginalURI()) + " Console";
 			IConsoleManager conMan = ConsolePlugin.getDefault().getConsoleManager();
 			IConsole[] existing = conMan.getConsoles();
 			for (int i = 0; i < existing.length; i++)
@@ -330,8 +331,8 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 	}
 
 	protected int checkExecuteError(String result, int code) {
-		String recipe = getDefaultDepends();
-		String text = "Parsing " + ((recipe != null) ? ("recipe " + recipe) : "base configurations");
+		URI recipeURI = getDefaultDepends();
+		String text = "Parsing " + ((recipeURI != null) ? ("recipe " + recipeURI) : "base configurations");
 		if (code != 0) {
 			text = text + " ERROR!\n" + result;
 		}else {
@@ -503,13 +504,13 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		}
 	}
 
-	protected String getDefaultDepends() {
+	protected URI getDefaultDepends() {
 		return null;
 	}
 	
 	protected Map parseBBEnvironment(String bbOut) throws Exception {
 		Map env = new Hashtable();
-		this.depends = new ArrayList<String>();
+		this.depends = new ArrayList<URI>();
 
 		parse(bbOut, env);
 
@@ -518,12 +519,15 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 			this.depends.add(getDefaultDepends());
 		}
 		if(included != null) {
-			this.depends.addAll(Arrays.asList(included.split(" ")));
+			String[] includedSplitted = included.split(" ");
+			for (String incl : includedSplitted){
+				this.depends.add(new URI(incl));
+			}
 		}
 
 		return env;
 	}
-	
+
 
 	private List parseBBFiles(String bbfiles) {
 		return Arrays.asList(bbfiles.split(" "));
@@ -719,7 +723,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		try {
 			if (initialized && (removed != null || changed != null)) {
 				for(int i=0;removed != null && i<removed.length;i++) {
-					if (this.depends.contains(removed[i].getLocation().toString())) {
+					if (this.depends.contains(removed[i].getLocationURI())) {
 						initialized = false;
 						return;
 					}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHelper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHelper.java
index 0d95c01..c053c28 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHelper.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHelper.java
@@ -15,6 +15,7 @@ import java.io.File;
 import java.io.FileOutputStream;
 import java.io.FileReader;
 import java.io.IOException;
+import java.net.URI;
 
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.ResourcesPlugin;
@@ -28,6 +29,9 @@ import org.yocto.bc.ui.model.ProjectInfo;
  * 
  */
 public class ProjectInfoHelper {
+	public static final String OEFS_SCHEME = "OEFS://";
+	public static final String FILE_SCHEME = "file";
+	public static final String RSE_SCHEME = "rse";
 
 	protected static final String DEFAULT_INIT_SCRIPT = "oe-init-build-env";
 	/**
@@ -35,24 +39,16 @@ public class ProjectInfoHelper {
 	 * @return The path to bitbake init script
 	 * @throws IOException
 	 */
-	public static String getInitScriptPath(String path) throws IOException {
-		String val = path + File.separator + DEFAULT_INIT_SCRIPT;
-
-		File inFile = new File(path, ".eclipse-data");
-		if(inFile.exists()) {
-			BufferedReader br = new BufferedReader(new FileReader(inFile));
-			val = br.readLine();
-			br.close();
-		}
-
+	public static String getInitScriptPath(URI uri) throws IOException {
+		String val = uri.getPath() + "/" + DEFAULT_INIT_SCRIPT;
 		return val;
 	}
-	
-	public static String getProjectName(String projectRoot) {
+
+	public static String getProjectName(URI projectRoot) {
 		IProject[] projects = ResourcesPlugin.getWorkspace().getRoot().getProjects();
 		for (int i = 0; i < projects.length; ++i) {
 			try {
-				if (projects[i].getLocationURI().getPath().equals(projectRoot)) {
+				if (projects[i].getLocationURI().equals(projectRoot)) {
 					return projects[i].getName();
 				}
 
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index db8f564..44b2696 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -18,6 +18,8 @@ import java.io.InputStreamReader;
 import java.io.OutputStream;
 import java.io.Writer;
 
+import org.eclipse.rse.services.files.IHostFile;
+import org.yocto.bc.ui.model.ProjectInfo;
 import org.yocto.remote.utils.ICommandResponseHandler;
 
 /**
@@ -65,11 +67,21 @@ public class ShellSession {
 	//private File initFile = null;
 	private String shellPath = null;
 	private final String initCmd;
-	private final File root;
+	private final IHostFile root;
 	private final Writer out;
 	
+	private ProjectInfo projectInfo;
 
-	public ShellSession(int shellType, File root, String initCmd, Writer out) throws IOException {
+	public ProjectInfo getProjectInfo() {
+		return projectInfo;
+	}
+
+	public void setProjectInfo(ProjectInfo projectInfo) {
+		this.projectInfo = projectInfo;
+	}
+
+	public ShellSession(ProjectInfo pInfo, int shellType, IHostFile root, String initCmd, Writer out) throws IOException {
+		this.projectInfo = pInfo;
 		this.root = root;
 		this.initCmd  = initCmd;
 		if (out == null) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
index a6c10c6..ded1e44 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
@@ -14,6 +14,7 @@ import java.io.File;
 import java.io.IOException;
 import java.io.Writer;
 import java.lang.reflect.InvocationTargetException;
+import java.net.URI;
 import java.util.Hashtable;
 import java.util.Iterator;
 import java.util.Map;
@@ -24,8 +25,10 @@ import org.eclipse.core.resources.IResourceChangeEvent;
 import org.eclipse.core.resources.IResourceChangeListener;
 import org.eclipse.core.resources.ResourcesPlugin;
 import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.jface.resource.ImageDescriptor;
 import org.eclipse.jface.resource.ImageRegistry;
+import org.eclipse.rse.services.files.IHostFile;
 import org.eclipse.ui.plugin.AbstractUIPlugin;
 import org.osgi.framework.BundleContext;
 
@@ -35,6 +38,7 @@ import org.yocto.bc.bitbake.ProjectInfoHelper;
 import org.yocto.bc.bitbake.ShellSession;
 import org.yocto.bc.ui.model.ProjectInfo;
 import org.yocto.bc.ui.wizards.newproject.CreateBBCProjectOperation;
+import org.yocto.remote.utils.RemoteHelper;
 
 public class Activator extends AbstractUIPlugin {
 
@@ -46,21 +50,21 @@ public class Activator extends AbstractUIPlugin {
 	// The shared instance
 	private static Activator plugin;
 	private static Map shellMap;
-	private static Map projInfoMap;
+	private static Map<URI, ProjectInfo> projInfoMap;
 	private static Hashtable bbSessionMap;
 	private static Hashtable bbRecipeMap;
 
 	private IResourceChangeListener listener = new BCResourceChangeListener();
 
-	public static BBRecipe getBBRecipe(BBSession session, String filePath) throws IOException {
+	public static BBRecipe getBBRecipe(BBSession session, URI fileURI) throws IOException {
 		if (bbRecipeMap == null) {
 			bbRecipeMap = new Hashtable();
 		}
 
-		String key = session.getProjInfoRoot() + filePath;
+		URI key = session.getProjInfoRoot();
 		BBRecipe recipe = (BBRecipe) bbRecipeMap.get(key);
 		if (recipe == null) {
-			recipe = new BBRecipe(session,filePath);
+			recipe = new BBRecipe(session, fileURI);
 			bbRecipeMap.put(key, recipe);
 		}
 
@@ -73,7 +77,8 @@ public class Activator extends AbstractUIPlugin {
 	 * @return
 	 * @throws IOException
 	 */
-	public static BBSession getBBSession(String projectRoot, Writer out) throws IOException {
+	public static BBSession getBBSession(ProjectInfo projectInfo, Writer out, IProgressMonitor monitor) throws IOException {
+		URI projectRoot = projectInfo.getOriginalURI();
 		if (bbSessionMap == null) {
 			bbSessionMap = new Hashtable();
 		}
@@ -81,7 +86,7 @@ public class Activator extends AbstractUIPlugin {
 		BBSession bbs = (BBSession) bbSessionMap.get(projectRoot);
 		
 		if (bbs == null) {
-			bbs = new BBSession(getShellSession(projectRoot, out), projectRoot);
+			bbs = new BBSession(getShellSession(projectInfo, out, monitor), projectRoot);
 			bbSessionMap.put(projectRoot, bbs);
 		}
 		
@@ -94,7 +99,8 @@ public class Activator extends AbstractUIPlugin {
 	 * @return
 	 * @throws IOException
 	 */
-	public static BBSession getBBSession(String projectRoot) throws IOException {
+	public static BBSession getBBSession(ProjectInfo projectInfo, IProgressMonitor monitor) throws Exception {
+		URI projectRoot = projectInfo.getOriginalURI();
 		if (bbSessionMap == null) {
 			bbSessionMap = new Hashtable();
 		}
@@ -102,7 +108,7 @@ public class Activator extends AbstractUIPlugin {
 		BBSession bbs = (BBSession) bbSessionMap.get(projectRoot);
 		
 		if (bbs == null) {
-			bbs = new BBSession(getShellSession(projectRoot, null), projectRoot);
+			bbs = new BBSession(getShellSession(projectInfo, null, monitor), projectRoot);
 			bbSessionMap.put(projectRoot, bbs);
 		}
 		
@@ -129,24 +135,26 @@ public class Activator extends AbstractUIPlugin {
 		return imageDescriptorFromPlugin(PLUGIN_ID, path);
 	}
 
-	public static ProjectInfo getProjInfo(String location) throws CoreException, InvocationTargetException, InterruptedException {
+	public static ProjectInfo getProjInfo(URI location) throws CoreException, InvocationTargetException, InterruptedException {
 		if (projInfoMap == null) {
-			projInfoMap = new Hashtable();
+			projInfoMap = new Hashtable<URI, ProjectInfo>();
 		}
-		
-		ProjectInfo pi = (ProjectInfo) projInfoMap.get(location);
-		
-		if (pi == null) {
-			pi = new ProjectInfo();
-			pi.setLocation(location);
-			try {
-				pi.setInitScriptPath(ProjectInfoHelper.getInitScriptPath(location));
-			} catch (IOException e) {
-				throw new InvocationTargetException(e);
+		if (location != null) {
+			ProjectInfo pi = projInfoMap.get(location);
+			if (pi == null) {
+				pi = new ProjectInfo();
+				pi.setLocationURI(location);
+				try {
+					pi.setInitScriptPath(ProjectInfoHelper.getInitScriptPath(location));
+				} catch (IOException e) {
+					throw new InvocationTargetException(e);
+				}
+
+				projInfoMap.put(location, pi);
 			}
+			return pi;
 		}
-		
-		return pi;
+		return null;
 	}
 
 	public static void notifyAllBBSession(IResource[] added, IResource[] removed, IResource[] changed) {
@@ -173,7 +181,8 @@ public class Activator extends AbstractUIPlugin {
 	 * @return a cached shell session for a given project root.
 	 * @throws IOException 
 	 */
-	private static ShellSession getShellSession(String absolutePath, Writer out) throws IOException {
+	private static ShellSession getShellSession(ProjectInfo projInfo, Writer out, IProgressMonitor monitor) throws IOException {
+		URI absolutePath = projInfo.getOriginalURI();
 		if (shellMap == null) {
 			shellMap = new Hashtable();
 		}
@@ -181,13 +190,14 @@ public class Activator extends AbstractUIPlugin {
 		ShellSession ss = (ShellSession) shellMap.get(absolutePath);
 		
 		if (ss == null) {
-			ss = new ShellSession(ShellSession.SHELL_TYPE_BASH, new File(absolutePath), ProjectInfoHelper.getInitScriptPath(absolutePath), out);
+			IHostFile remoteHostFile = RemoteHelper.getRemoteHostFile(projInfo.getConnection(), absolutePath.getPath(), monitor);
+			ss = new ShellSession(projInfo, ShellSession.SHELL_TYPE_BASH, remoteHostFile, ProjectInfoHelper.getInitScriptPath(absolutePath), out);
 		}
 		
 		return ss;
 	}
 
-	public static void putProjInfo(String location, ProjectInfo pinfo) {
+	public static void putProjInfo(URI location, ProjectInfo pinfo) {
 		if (projInfoMap == null) {
 			projInfoMap = new Hashtable();
 		}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchVariableWizardAction.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchVariableWizardAction.java
index eaf716e..1899098 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchVariableWizardAction.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchVariableWizardAction.java
@@ -11,20 +11,22 @@
 package org.yocto.bc.ui.actions;
 
 import java.io.IOException;
+import java.lang.reflect.InvocationTargetException;
 import java.util.Map;
 
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IResource;
 import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.jface.action.IAction;
 import org.eclipse.jface.viewers.ISelection;
 import org.eclipse.jface.viewers.IStructuredSelection;
 import org.eclipse.jface.wizard.WizardDialog;
 import org.eclipse.ui.IWorkbenchWindow;
 import org.eclipse.ui.IWorkbenchWindowActionDelegate;
-
 import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.builder.BitbakeCommanderNature;
+import org.yocto.bc.ui.model.ProjectInfo;
 import org.yocto.bc.ui.wizards.variable.VariableWizard;
 
 /**
@@ -62,13 +64,21 @@ public class LaunchVariableWizardAction implements IWorkbenchWindowActionDelegat
 				IProject p = ((IResource)element).getProject();
 
 				try {
-					if (p.isOpen() && p.hasNature(BitbakeCommanderNature.NATURE_ID)) {
-						session = Activator.getBBSession(((IResource)element).getProject().getLocationURI().getPath());
+					if (p.isAccessible() && p.isOpen() && p.hasNature(BitbakeCommanderNature.NATURE_ID)) {
+						IProject proj = ((IResource)element).getProject();
+						ProjectInfo projInfo = Activator.getProjInfo(proj.getLocationURI());
+						session = Activator.getBBSession(projInfo, new NullProgressMonitor());
 					}
 				} catch (IOException e) {
 					e.printStackTrace();
 				} catch (CoreException e) {
 					e.printStackTrace();
+				} catch (InvocationTargetException e) {
+					e.printStackTrace();
+				} catch (InterruptedException e) {
+					e.printStackTrace();
+				} catch (Exception e) {
+					e.printStackTrace();
 				}
 			}
 		}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BBVariableTextHover.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BBVariableTextHover.java
index 9478423..28e98d4 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BBVariableTextHover.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BBVariableTextHover.java
@@ -3,7 +3,7 @@
  */
 package org.yocto.bc.ui.editors.bitbake;
 
-import java.io.File;
+import java.net.URI;
 import java.util.Map;
 
 import org.eclipse.core.runtime.IProgressMonitor;
@@ -14,7 +14,6 @@ import org.eclipse.jface.text.IRegion;
 import org.eclipse.jface.text.ITextHover;
 import org.eclipse.jface.text.ITextViewer;
 import org.eclipse.jface.text.Region;
-
 import org.yocto.bc.bitbake.BBRecipe;
 import org.yocto.bc.bitbake.BBSession;
 import org.yocto.bc.ui.Activator;
@@ -28,18 +27,15 @@ class BBVariableTextHover implements ITextHover {
 	private final BBSession session;
 	private volatile Map envMap;
 
-	public BBVariableTextHover(BBSession session, String file) {
+	public BBVariableTextHover(BBSession session, URI file) {
 		this.session = session;
 		envMap = session;
 		LoadRecipeJob loadRecipeJob = new LoadRecipeJob(getFilename(file), file);
 		loadRecipeJob.schedule();
 	}
 
-	private String getFilename(String file) {
-		
-		String [] elems = file.split(File.separator);
-		
-		return elems[elems.length - 1];
+	private String getFilename(URI uri) {
+		return uri.getPath();
 	}
 
 	public IRegion getHoverRegion(ITextViewer tv, int off) {
@@ -95,9 +91,9 @@ class BBVariableTextHover implements ITextHover {
 	}
 	
 	private class LoadRecipeJob extends Job {
-		private final String filePath;
+		private final URI filePath;
 
-		public LoadRecipeJob(String name, String filePath) {
+		public LoadRecipeJob(String name, URI filePath) {
 			super("Extracting BitBake environment for " + name);
 			this.filePath = filePath;
 		}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeFileEditor.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeFileEditor.java
index b33f030..7535341 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeFileEditor.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeFileEditor.java
@@ -11,10 +11,13 @@
 package org.yocto.bc.ui.editors.bitbake;
 
 import java.io.IOException;
+import java.lang.reflect.InvocationTargetException;
 import java.util.ResourceBundle;
 
 import org.eclipse.core.resources.IFile;
 import org.eclipse.core.resources.IProject;
+import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.core.runtime.Status;
 import org.eclipse.ui.IEditorInput;
 import org.eclipse.ui.IEditorSite;
@@ -23,8 +26,8 @@ import org.eclipse.ui.part.FileEditorInput;
 import org.eclipse.ui.texteditor.AbstractDecoratedTextEditor;
 import org.eclipse.ui.texteditor.ContentAssistAction;
 import org.eclipse.ui.texteditor.ITextEditorActionDefinitionIds;
-
 import org.yocto.bc.ui.Activator;
+import org.yocto.bc.ui.model.ProjectInfo;
 
 /**
  * Editor for BB Recipe
@@ -64,10 +67,19 @@ public class BitBakeFileEditor extends AbstractDecoratedTextEditor {
 			viewerConfiguration.setTargetFile(targetFile);
 			
 			try {
-				viewerConfiguration.setBBSession(Activator.getBBSession(p.getLocationURI().getPath()));
+				ProjectInfo projInfo = Activator.getProjInfo(p.getLocationURI());
+				viewerConfiguration.setBBSession(Activator.getBBSession(projInfo, new NullProgressMonitor()));
 			} catch (IOException e) {
 				e.printStackTrace();
 				throw new PartInitException(Status.CANCEL_STATUS);
+			} catch (InvocationTargetException e) {
+				e.printStackTrace();
+			} catch (CoreException e) {
+				e.printStackTrace();
+			} catch (InterruptedException e) {
+				e.printStackTrace();
+			} catch (Exception e) {
+				e.printStackTrace();
 			}
 		}
 		super.init(site, input);
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeSourceViewerConfiguration.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeSourceViewerConfiguration.java
index 56cd014..2be6f1d 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeSourceViewerConfiguration.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeSourceViewerConfiguration.java
@@ -10,6 +10,9 @@
  *******************************************************************************/
 package org.yocto.bc.ui.editors.bitbake;
 
+import java.net.URI;
+import java.net.URISyntaxException;
+
 import org.eclipse.core.resources.IFile;
 import org.eclipse.jface.preference.IPreferenceStore;
 import org.eclipse.jface.text.ITextHover;
@@ -33,7 +36,6 @@ import org.eclipse.swt.SWT;
 import org.eclipse.swt.graphics.Color;
 import org.eclipse.swt.graphics.RGB;
 import org.eclipse.ui.editors.text.TextSourceViewerConfiguration;
-
 import org.yocto.bc.bitbake.BBLanguageHelper;
 import org.yocto.bc.bitbake.BBSession;
 
@@ -66,7 +68,15 @@ public class BitBakeSourceViewerConfiguration extends TextSourceViewerConfigurat
 	public ITextHover getTextHover(ISourceViewer sv, String contentType) {
 		//only .bb file support Text Hover.
 		if (textHover == null && targetFile.getFileExtension().equals(BBLanguageHelper.BITBAKE_RECIPE_FILE_EXTENSION)) {
-			textHover = new BBVariableTextHover(session, targetFile.getLocationURI().getPath());
+			URI root = session.getProjInfoRoot();
+			try {
+				String targetFileProjPath = targetFile.getProjectRelativePath().toPortableString();
+				URI targetFileURI = new URI(root.getScheme(), root.getHost(), root.getPath() + "/" +
+						targetFileProjPath, root.getFragment());
+				textHover = new BBVariableTextHover(session, targetFileURI);
+			} catch (URISyntaxException e) {
+				e.printStackTrace();
+			}
 		}
 		
 		return textHover;
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java
index 85794f1..8340597 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java
@@ -39,6 +39,7 @@ import org.eclipse.osgi.util.NLS;
 import org.yocto.bc.bitbake.BBSession;
 import org.yocto.bc.bitbake.ProjectInfoHelper;
 import org.yocto.bc.bitbake.ShellSession;
+import org.yocto.bc.ui.Activator;
 
 /**
  * File system implementation based on storage of files in the local
@@ -62,7 +63,7 @@ public class OEFile extends FileStore {
 	 */
 	protected final String filePath;
 
-	private final String root;
+	private final URI root;
 
 	/**
 	 * Creates a new local file.
@@ -70,7 +71,7 @@ public class OEFile extends FileStore {
 	 * @param file The file this local file represents
 	 * @param root 
 	 */
-	public OEFile(File file, List ignorePaths, String root) {
+	public OEFile(File file, List ignorePaths, URI root) {
 		this.file = file;
 		this.ignorePaths = ignorePaths;
 		this.root = root;
@@ -117,13 +118,11 @@ public class OEFile extends FileStore {
 	/*
 	 * try to find items for ignoreList
 	 */
-	private void updateIgnorePaths(String path, List list) {
+	private void updateIgnorePaths(String path, List<Object> list, IProgressMonitor monitor) {
 		if(isPotentialBuildDir(path)) {
 			BBSession config = null;
 			try {
-				ShellSession shell = new ShellSession(ShellSession.SHELL_TYPE_BASH, new File(root), 
-							ProjectInfoHelper.getInitScriptPath(root) + " " + path, null);
-				config = new BBSession(shell, root, true);
+				config = Activator.getBBSession(Activator.getProjInfo(root), monitor);
 				config.initialize();
 			} catch(Exception e) {
 				e.printStackTrace();
@@ -154,7 +153,7 @@ public class OEFile extends FileStore {
 		for (int i = 0; i < wrapped.length; i++) {
 			String fullPath = file.toString() +File.separatorChar + children[i];
 			
-			updateIgnorePaths(fullPath, ignorePaths);
+			updateIgnorePaths(fullPath, ignorePaths, monitor);
 			if (ignorePaths.contains(fullPath)) {
 				wrapped[i] = getDeadChild(children[i]);
 			} else {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java
index f0bf449..19c9dbc 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java
@@ -11,6 +11,7 @@
 package org.yocto.bc.ui.filesystem;
 
 import java.io.File;
+import java.lang.reflect.InvocationTargetException;
 import java.net.URI;
 import java.util.ArrayList;
 import java.util.Hashtable;
@@ -20,9 +21,12 @@ import java.util.Map;
 import org.eclipse.core.filesystem.IFileStore;
 import org.eclipse.core.filesystem.IFileSystem;
 import org.eclipse.core.filesystem.provider.FileSystem;
+import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.NullProgressMonitor;
 
 import org.yocto.bc.bitbake.BBSession;
 import org.yocto.bc.ui.Activator;
+import org.yocto.bc.ui.model.ProjectInfo;
 
 /**
  * A filesystem that ignores specific OE directories that contain derived information.
@@ -32,6 +36,8 @@ import org.yocto.bc.ui.Activator;
 public class OEFileSystem extends FileSystem {
 
 	private static IFileSystem ref;
+	private ProjectInfo projInfo;
+
 	public static IFileSystem getInstance() {
 		return ref;
 	}
@@ -47,11 +53,12 @@ public class OEFileSystem extends FileSystem {
 	public IFileStore getStore(URI uri) {
 		
 		OEFile uf = (OEFile) fileStoreCache.get(uri);
+		setProjInfo(uri);
 		
 		if (uf == null) {
 			BBSession config = null;
 			try {
-				config = Activator.getBBSession(uri.getPath());
+				config = Activator.getBBSession(projInfo, new NullProgressMonitor());
 				config.initialize();
 			} catch (Exception e) {
 				e.printStackTrace();
@@ -69,10 +76,23 @@ public class OEFileSystem extends FileSystem {
 			ignoreList.add(config.get("DL_DIR"));
 			ignoreList.add(config.get("SSTATE_DIR"));
 			
-			uf = new OEFile(new File(uri.getPath()), ignoreList, uri.getPath());
+			uf = new OEFile(new File(uri.getPath()), ignoreList, uri);
 			fileStoreCache.put(uri, uf);
 		}
 		
 		return uf;
 	}
+
+	private void setProjInfo(URI uri) {
+		try {
+			if(projInfo == null)
+				projInfo = Activator.getProjInfo(uri);
+		} catch (CoreException e) {
+			e.printStackTrace();
+		} catch (InvocationTargetException e) {
+			e.printStackTrace();
+		} catch (InterruptedException e) {
+			e.printStackTrace();
+		}
+	}
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/YoctoLocation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/YoctoLocation.java
new file mode 100755
index 0000000..ab99177
--- /dev/null
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/YoctoLocation.java
@@ -0,0 +1,34 @@
+package org.yocto.bc.ui.filesystem;
+
+import java.net.URI;
+import java.net.URISyntaxException;
+
+public class YoctoLocation{
+	URI oefsURI;
+	URI originalURI;
+
+	public YoctoLocation(){
+		try {
+			oefsURI = new URI("");
+			originalURI = new URI("");
+		} catch (URISyntaxException e) {
+			e.printStackTrace();
+		}
+	}
+
+	public URI getOEFSURI() {
+		return oefsURI;
+	}
+
+	public URI getOriginalURI() {
+		return originalURI;
+	}
+
+	public void setOriginalURI(URI originalURI) {
+		this.originalURI = originalURI;
+	}
+
+	public void setOEFSURI(URI uri) {
+		this.oefsURI = uri;
+	}
+}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java
index 3af1e2a..5ce6308 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java
@@ -10,12 +10,25 @@
  *******************************************************************************/
 package org.yocto.bc.ui.model;
 
+import java.net.URI;
+import java.net.URISyntaxException;
+
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.core.runtime.NullProgressMonitor;
+import org.eclipse.ptp.remote.core.IRemoteServices;
+import org.eclipse.rse.core.model.IHost;
+import org.eclipse.rse.services.files.IFileService;
+import org.yocto.bc.bitbake.ProjectInfoHelper;
+import org.yocto.bc.ui.filesystem.YoctoLocation;
+import org.yocto.remote.utils.RemoteHelper;
 
 public class ProjectInfo implements IModelElement {
 	private String name;
-	private String location;
+	private YoctoLocation location;
 	private String init;
-	
+	private IHost connection;
+	private IRemoteServices remoteServices;
+
 	public ProjectInfo() {
 	}
 	
@@ -25,12 +38,18 @@ public class ProjectInfo implements IModelElement {
 	public String getProjectName() {
 		return name;
 	}
-	public String getRootPath() {
-		return location;
+	public URI getOriginalURI() {
+		return location.getOriginalURI();
+	}
+
+	public URI getOEFSURI() {
+		return location.getOEFSURI();
 	}
+
+	@Override
 	public void initialize() throws Exception {
 		name = new String();
-		location = new String();
+		location = new YoctoLocation();
 		init = new String();
 	}
 
@@ -38,11 +57,51 @@ public class ProjectInfo implements IModelElement {
 		this.init = init;
 	}
 
-	public void setLocation(String location) {
-		this.location = location;
+	public void setLocationURI(URI location) {
+		if (this.location == null)
+			this.location = new YoctoLocation();
+		this.location.setOriginalURI(location);
+		try {
+			this.location.setOEFSURI(new URI(ProjectInfoHelper.OEFS_SCHEME + location.getPath() ));
+		} catch (URISyntaxException e) {
+			try {
+				this.location.setOEFSURI(new URI(""));
+			} catch (URISyntaxException e1) {
+				e1.printStackTrace();
+			}
+			e.printStackTrace();
+		}
 	}
-	
+
 	public void setName(String name) {
 		this.name = name;
 	}
+
+	public IHost getConnection() {
+		if (connection == null) {
+			connection = RemoteHelper.getRemoteConnectionForURI(location.getOriginalURI(), new NullProgressMonitor());
+		}
+		return connection;
+	}
+
+	public void setConnection(IHost connection) {
+		this.connection = connection;
+	}
+
+	public IRemoteServices getRemoteServices() {
+		return remoteServices;
+	}
+
+	public void setRemoteServices(IRemoteServices remoteServices) {
+		this.remoteServices = remoteServices;
+	}
+
+	public IFileService getFileService(IProgressMonitor monitor){
+		try {
+			return RemoteHelper.getConnectedRemoteFileService(connection, monitor);
+		} catch (Exception e) {
+			e.printStackTrace();
+			return null;
+		}
+	}
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/views/RecipeContentProvider.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/views/RecipeContentProvider.java
index 7e29e7a..d657fd5 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/views/RecipeContentProvider.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/views/RecipeContentProvider.java
@@ -51,7 +51,7 @@ class RecipeContentProvider implements IStructuredContentProvider {
 	}
 
 	private Collection getRecipesFromProject(IProject project) throws Exception {
-		BBSession session = Activator.getBBSession(project.getLocationURI().getPath(), null);
+		BBSession session = Activator.getBBSession(Activator.getProjInfo(project.getLocationURI()), null);
 		return session.getRecipeFiles(project);
 	}
 
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/importProject/ImportYoctoProjectWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/importProject/ImportYoctoProjectWizard.java
index b1fc841..82c5ab3 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/importProject/ImportYoctoProjectWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/importProject/ImportYoctoProjectWizard.java
@@ -12,6 +12,7 @@ package org.yocto.bc.ui.wizards.importProject;
 
 import java.io.IOException;
 import java.io.Writer;
+import java.net.URI;
 import java.util.Hashtable;
 import java.util.Map;
 
@@ -29,11 +30,9 @@ import org.eclipse.ui.console.IConsoleConstants;
 import org.eclipse.ui.console.IConsoleManager;
 import org.eclipse.ui.console.IConsoleView;
 import org.eclipse.ui.console.MessageConsole;
-
 import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.model.ProjectInfo;
 import org.yocto.bc.ui.wizards.FiniteStateWizard;
-
 import org.yocto.bc.ui.wizards.newproject.BBConfigurationInitializeOperation;
 import org.yocto.bc.ui.wizards.newproject.CreateBBCProjectOperation;
 
@@ -68,7 +67,7 @@ public class ImportYoctoProjectWizard extends FiniteStateWizard  implements IImp
 	public boolean performFinish() {
 		ProjectInfo pinfo = new ProjectInfo();
 		pinfo.setInitScriptPath((String) projectModel.get(ImportYoctoProjectWizard.KEY_INITPATH));
-		pinfo.setLocation((String) projectModel.get(ImportYoctoProjectWizard.KEY_LOCATION));
+		pinfo.setLocationURI((URI) projectModel.get(ImportYoctoProjectWizard.KEY_LOCATION));
 		pinfo.setName((String) projectModel.get(ImportYoctoProjectWizard.KEY_NAME));
 		
 		try {
@@ -87,7 +86,7 @@ public class ImportYoctoProjectWizard extends FiniteStateWizard  implements IImp
 		projectModel.put(ImportYoctoProjectWizard.KEY_PINFO, pinfo);
 		//setPageComplete(valid);
 		//ProjectInfo pinfo = (ProjectInfo) projectModel.get(KEY_PINFO);
-		Activator.putProjInfo(pinfo.getRootPath(), pinfo);
+		Activator.putProjInfo(pinfo.getOEFSURI(), pinfo);
 		try {
 			getContainer().run(false, false, new CreateBBCProjectOperation(pinfo));
 		} catch (Exception e) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
index 3130cbf..f9174e2 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
@@ -6,6 +6,7 @@ import java.io.IOException;
 import java.io.InputStreamReader;
 import java.io.Writer;
 import java.lang.reflect.InvocationTargetException;
+import java.net.URI;
 import java.util.Hashtable;
 import java.util.Map;
 import java.util.regex.Matcher;
@@ -142,6 +143,10 @@ public class InstallWizard extends FiniteStateWizard implements
 		}
 
 		try {
+			URI uri = new URI("");
+			if (options.containsKey(INSTALL_DIRECTORY)) {
+				uri = (URI) options.get(INSTALL_DIRECTORY);
+			}
 			if (((Boolean)options.get(GIT_CLONE)).booleanValue()) {
 				String []git_clone_cmd = {"git", "clone", "--progress", "git://git.pokylinux.org/poky.git", install_dir};
 				final Pattern pattern = Pattern.compile("^Receiving objects:\\s*(\\d+)%.*");
@@ -171,7 +176,7 @@ public class InstallWizard extends FiniteStateWizard implements
 				String prjName = (String) options.get(PROJECT_NAME);
 				ProjectInfo pinfo = new ProjectInfo();
 				pinfo.setInitScriptPath(initPath);
-				pinfo.setLocation(install_dir);
+				pinfo.setLocationURI(uri);
 				pinfo.setName(prjName);
 			
 				ConsoleWriter cw = new ConsoleWriter();
@@ -181,7 +186,7 @@ public class InstallWizard extends FiniteStateWizard implements
 				myConsole.newMessageStream().println(cw.getContents());
 
 				model.put(InstallWizard.KEY_PINFO, pinfo);
-				Activator.putProjInfo(pinfo.getRootPath(), pinfo);
+				Activator.putProjInfo(pinfo.getOEFSURI(), pinfo);
 
 				this.getContainer().run(false, false,
 						new CreateBBCProjectOperation(pinfo));
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
index 64c3e6e..20c001a 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
@@ -39,7 +39,7 @@ public class BBConfigurationInitializeOperation implements IRunnableWithProgress
 	public void run(IProgressMonitor monitor) throws InvocationTargetException, InterruptedException {
 		BBSession session;
 		try {
-			session = Activator.getBBSession(pinfo.getRootPath(), writer);
+			session = Activator.getBBSession(pinfo, writer, monitor);
 			session.initialize();
 
 		} catch (Exception e) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
index 1d54ea3..41efdb0 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
@@ -65,15 +65,10 @@ public class CreateBBCProjectOperation extends WorkspaceModifyOperation {
 		addNatureToProject(proj, BitbakeCommanderNature.NATURE_ID, monitor);
 	}
 
-	private IProjectDescription createProjectDescription(IWorkspace workspace, ProjectInfo projInfo2) throws CoreException {
-		IProjectDescription desc = workspace.newProjectDescription(projInfo2.getProjectName());
-		
-		try {
-			desc.setLocationURI(new URI(OEFS_SCHEME + projInfo2.getRootPath()));
-		} catch (URISyntaxException e) {
-			throw new CoreException(new Status(IStatus.ERROR, Activator.PLUGIN_ID, "Unable to load filesystem.", e));
-		}
-		
+	private IProjectDescription createProjectDescription(IWorkspace workspace, ProjectInfo projInfo) throws CoreException {
+		IProjectDescription desc = workspace.newProjectDescription(projInfo.getProjectName());
+
+		desc.setLocationURI(projInfo.getOEFSURI());
 		return desc;
 	}
 
@@ -85,6 +80,7 @@ public class CreateBBCProjectOperation extends WorkspaceModifyOperation {
 
 		IProject proj = wsroot.getProject(projInfo.getProjectName());
 		proj.create(desc, monitor);
+
 		proj.open(monitor);
 
 		addNatures(proj, monitor);
-- 
1.7.9.5


