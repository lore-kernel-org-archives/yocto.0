Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07B39E01256; Thu, 11 Aug 2016 16:30:29 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84C4BE0124B
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 16:30:24 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 11 Aug 2016 16:30:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,507,1464678000"; d="scan'208";a="1012911429"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga001.jf.intel.com with ESMTP; 11 Aug 2016 16:30:24 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 16:31:08 -0700
Message-Id: <1470958271-28279-6-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1470958271-28279-1-git-send-email-timothy.t.orling@linux.intel.com>
References: <1470958271-28279-1-git-send-email-timothy.t.orling@linux.intel.com>
Subject: [eclipse-poky][PATCH 5/8] org.yocto.bc.ui: cleanup unused imports; fix generics warnings
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

Also add any required unimplemented methods
Fix deprecated Eclipse-LazyStart: true in META-INF/MANIFEST

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |   2 +-
 .../src/org/yocto/bc/bitbake/BBRecipe.java         |  12 +-
 .../src/org/yocto/bc/bitbake/BBSession.java        | 126 +++++++++++----------
 .../org/yocto/bc/bitbake/ProjectInfoHelper.java    |   3 -
 .../src/org/yocto/bc/ui/Activator.java             |  37 +++---
 .../ui/actions/AbstractBitbakeCommandAction.java   |   5 +-
 .../yocto/bc/ui/actions/LaunchToasterDialog.java   |  17 +--
 .../bc/ui/actions/LaunchVariableWizardAction.java  |   3 +-
 .../org/yocto/bc/ui/builder/BitbakeBuilder.java    |   6 +-
 .../yocto/bc/ui/builder/ToggleNatureAction.java    |   5 +-
 .../src/org/yocto/bc/ui/decorators/ReadOnly.java   |   9 +-
 .../bc/ui/editors/bitbake/BBVariableTextHover.java |   2 +-
 .../yocto/bc/ui/filesystem/CustomLocalFile.java    |   1 +
 .../src/org/yocto/bc/ui/filesystem/OEFile.java     |   4 +-
 .../org/yocto/bc/ui/filesystem/OEFileSystem.java   |   6 +-
 .../org/yocto/bc/ui/filesystem/OEIgnoreFile.java   |  11 +-
 .../src/org/yocto/bc/ui/filesystem/Policy.java     |   4 +-
 .../perspectives/BitbakeCommanderPerspective.java  |  13 +--
 .../org/yocto/bc/ui/popup/actions/NewAction.java   |   1 -
 .../yocto/bc/ui/views/RecipeContentProvider.java   |   7 +-
 .../src/org/yocto/bc/ui/views/RecipeView.java      |   2 -
 .../bc/ui/wizards/BitbakeRecipeUIElement.java      |   6 +-
 .../org/yocto/bc/ui/wizards/FiniteStateWizard.java |  10 +-
 .../yocto/bc/ui/wizards/FiniteStateWizardPage.java |  26 ++---
 .../bc/ui/wizards/NewBitBakeFileRecipeWizard.java  |   5 +-
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |  13 +--
 .../ui/wizards/importProject/BBCProjectPage.java   |   2 +-
 .../importProject/ImportYoctoProjectWizard.java    |  11 +-
 .../yocto/bc/ui/wizards/install/InstallWizard.java |  16 +--
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |  19 +---
 .../BBConfigurationInitializeOperation.java        |   1 -
 .../newproject/CreateBBCProjectOperation.java      |   4 +-
 .../yocto/bc/ui/wizards/variable/VariablePage.java |  13 ++-
 .../bc/ui/wizards/variable/VariableWizard.java     |   8 +-
 34 files changed, 187 insertions(+), 223 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
index 7b725ca..ebe0173 100644
--- a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
@@ -17,7 +17,7 @@ Require-Bundle: org.eclipse.ui,
  org.eclipse.ui.console,
  org.eclipse.core.filesystem,
  org.yocto.remote.utils
-Eclipse-LazyStart: true
+Bundle-ActivationPolicy: lazy
 Bundle-ClassPath: .
 Import-Package: org.eclipse.rse.core.model,
  org.eclipse.rse.services.clientserver.messages,
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
index 2b355ba..65512fd 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
@@ -12,14 +12,6 @@ package org.yocto.bc.bitbake;
 
 import java.io.IOException;
 
-import org.eclipse.jface.preference.JFacePreferences;
-import org.eclipse.jface.resource.JFaceResources;
-import org.eclipse.swt.widgets.Display;
-import org.eclipse.ui.console.ConsolePlugin;
-import org.eclipse.ui.console.IConsole;
-import org.eclipse.ui.console.MessageConsole;
-import org.eclipse.ui.console.MessageConsoleStream;
-
 /**
  * Represents the bitbake environment of a recipe package.
  * @author kgilmer
@@ -47,4 +39,8 @@ public class BBRecipe extends BBSession {
 	protected String getDefaultDepends() {
 		return this.filePath;
 	}
+
+	public BBSession getSession() {
+		return session;
+	}
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
index b13a6c3..02a0a51 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
@@ -15,7 +15,6 @@ import java.io.File;
 import java.io.FileFilter;
 import java.io.IOException;
 import java.io.StringReader;
-import java.net.URI;
 import java.util.ArrayList;
 import java.util.Arrays;
 import java.util.Collection;
@@ -31,12 +30,12 @@ import java.util.concurrent.locks.Lock;
 import org.eclipse.core.resources.IFile;
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IResource;
+import org.eclipse.core.runtime.IPath;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.IStatus;
 import org.eclipse.core.runtime.Status;
 import org.eclipse.jface.preference.JFacePreferences;
 import org.eclipse.jface.resource.JFaceResources;
-import org.eclipse.swt.widgets.Display;
 import org.eclipse.ui.console.ConsolePlugin;
 import org.eclipse.ui.console.IConsole;
 import org.eclipse.ui.console.IConsoleManager;
@@ -53,7 +52,7 @@ import org.yocto.bc.ui.model.ProjectInfo;
  * @author kgilmer
  *
  */
-public class BBSession implements IBBSessionListener, IModelElement, Map {
+public class BBSession implements IBBSessionListener, IModelElement, Map<String, Object> {
 	public static final int TYPE_VARIABLE_ASSIGNMENT = 1;
 	public static final int TYPE_UNKNOWN = 2;
 	public static final int TYPE_STATEMENT = 3;
@@ -61,8 +60,8 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 	
 	protected final ProjectInfo pinfo;
 	protected final ShellSession shell;
-	protected Map properties = null;
-	protected List <String> depends = null;
+	protected Map<String, Object> properties = null;
+	protected List<String> depends = null;
 	protected boolean initialized = false;
 	protected MessageConsole sessionConsole;
 	private final ReentrantReadWriteLock rwlock = new ReentrantReadWriteLock();
@@ -78,15 +77,15 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		this.parsingCmd = "DISABLE_SANITY_CHECKS=1 bitbake -e";
 	}
 
-	private Collection adapttoIPath(List<File> asList, IProject project) {
+	private Collection<IPath> adapttoIPath(List<File> asList, IProject project) {
 
-		List pathList = new ArrayList();
+		List<IPath> pathList = new ArrayList<IPath>();
 
-		for (Iterator i = asList.iterator(); i.hasNext();) {
+		for (Iterator<File> i = asList.iterator(); i.hasNext();) {
 			File f = (File) i.next();
 			IFile ff = project.getFile(stripLeading(f.toString(), project.getLocationURI().getPath()));
 			if (ff.exists()) {
-				pathList.add(ff);
+				pathList.add((IPath) ff);
 			}
 		}
 
@@ -143,7 +142,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		}
 	}
 
-	public Set entrySet() {
+	public Set<java.util.Map.Entry<String, Object>> entrySet() {
 		try {
 			checkValidAndLock(true);
 			return properties.entrySet();
@@ -184,7 +183,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 	 * @param fileExtension
 	 * @param project
 	 */
-	private void findRecipes(File rootDir, List recipes, final String fileExtension, IProject project) {
+	private void findRecipes(File rootDir, List<IPath> recipes, final String fileExtension, IProject project) {
 		File[] children = rootDir.listFiles(new FileFilter() {
 
 			public boolean accept(File pathname) {
@@ -212,11 +211,11 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		}
 	}
 
-	private Collection findRecipes(List paths, IProject project) {
-		List recipes = new ArrayList();
+	private Collection<IPath> findRecipes(List<IPath> paths, IProject project) {
+		List<IPath> recipes = new ArrayList<IPath>();
 
-		for (Iterator i = paths.iterator(); i.hasNext();) {
-			String rawPath = (String) i.next();
+		for (Iterator<IPath> i = paths.iterator(); i.hasNext();) {
+			String rawPath = i.next().toString();
 			String[] elems = rawPath.split("\\*/\\*");
 
 			if (elems.length == 2) {
@@ -242,7 +241,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		}
 	}
 
-	private List getBitBakeKeywords() {
+	private List<String> getBitBakeKeywords() {
 		return Arrays.asList(BBLanguageHelper.BITBAKE_KEYWORDS);
 	}
 
@@ -276,7 +275,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 			return TYPE_VARIABLE_ASSIGNMENT;
 		}
 
-		for (Iterator i = getBitBakeKeywords().iterator(); i.hasNext();) {
+		for (Iterator<String> i = getBitBakeKeywords().iterator(); i.hasNext();) {
 			if (line.startsWith((String) i.next())) {
 				return TYPE_STATEMENT;
 			}
@@ -289,14 +288,14 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		return TYPE_UNKNOWN;
 	}
 
-	public Collection getRecipeFiles(IProject project) {
+	public Collection<IPath> getRecipeFiles(IProject project) {
 		try {
 			checkValidAndLock(true);
 			if (!initialized) {
 				throw new RuntimeException(this.getClass().getName() + " is not initialized.");
 			}
 			String bbfiles = (String) this.properties.get("BBFILES");
-			List paths = parseBBFiles(bbfiles);
+			List<IPath> paths = parseBBFiles(bbfiles);
 			return findRecipes(paths, project);
 		} catch (Exception e) {
 			return null;
@@ -415,7 +414,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		}
 	}
 	
-	public Set keySet() {
+	public Set<String> keySet() {
 		try {
 			checkValidAndLock(true);
 			return properties.keySet();
@@ -427,12 +426,12 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		}
 	}
 
-	protected void parse(String content, Map outMap) throws Exception {
+	protected void parse(String content, Map<String, Object> env) throws Exception {
 		BufferedReader reader = new BufferedReader(new StringReader(content));
 		String line;
 		boolean inLine = false;
 		StringBuffer sb = null;
-		Stack blockStack = new Stack();
+		Stack<Object> blockStack = new Stack<Object>();
 
 		while ((line = reader.readLine()) != null) {
 			String trimmed = line.trim();
@@ -468,25 +467,25 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 				line = sb.toString();
 			}
 
-			parseLine(line, outMap);
+			parseLine(line, env);
 		}
 	}
 	
-	private void parseAdditiveAssignment(String line, String operator, Map mo) throws Exception {
+	private void parseAdditiveAssignment(String line, String operator, Map<String, Object> env) throws Exception {
 		String[] elems = splitAssignment(line, "\\+=");
 
 		if (elems.length != 2) {
 			throw new Exception("Unable to parse additive variable assignment in line: " + line);
 		}
 
-		if (!mo.containsKey(elems[0])) {
-			mo.put(elems[0].trim(), elems[1]);
+		if (!env.containsKey(elems[0])) {
+			env.put(elems[0].trim(), elems[1]);
 		} else {
-			String existing = (String) mo.get(elems[0]);
+			String existing = (String) env.get(elems[0]);
 			if (operator.equals("+=")) {
-				mo.put(elems[0], existing + elems[1]);
+				env.put(elems[0], existing + elems[1]);
 			} else {
-				mo.put(elems[0], elems[1] + existing);
+				env.put(elems[0], elems[1] + existing);
 			}
 		}
 	}
@@ -495,8 +494,8 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		return null;
 	}
 	
-	protected Map parseBBEnvironment(String bbOut) throws Exception {
-		Map env = new Hashtable();
+	protected Map<String, Object> parseBBEnvironment(String bbOut) throws Exception {
+		Map<String, Object> env = new Hashtable<String, Object>();
 		this.depends = new ArrayList<String>();
 
 		parse(bbOut, env);
@@ -512,41 +511,48 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		return env;
 	}
 
-	private List parseBBFiles(String bbfiles) {
-		return Arrays.asList(bbfiles.split(" "));
+	private List<IPath> parseBBFiles(String bbfiles) {
+		List<String> bbfiles_list = Arrays.asList(bbfiles.split(" "));
+		List<IPath> paths = new ArrayList<IPath>();
+
+		for (Iterator<String> i = bbfiles_list.iterator(); i.hasNext();) {
+			// TODO: check that path exists?
+			paths.add((IPath) i);
+		}
+		return paths;
 	}
 	
 	//Map delegate methods 
 
-	private void parseConditionalAssignment(String line, Map mo) throws Exception {
+	private void parseConditionalAssignment(String line, Map<String, Object> env) throws Exception {
 		String[] elems = splitAssignment(line, "\\?=");
 
 		if (elems.length != 2) {
 			throw new Exception("Unable to parse conditional variable assignment in line: " + line);
 		}
 
-		if (!mo.containsKey(elems[0].trim())) {
-			mo.put(elems[0].trim(), elems[1].trim());
+		if (!env.containsKey(elems[0].trim())) {
+			env.put(elems[0].trim(), elems[1].trim());
 		}
 	}
 
-	private void parseImmediateAssignment(String line, String delimiter, Map mo) throws Exception {
+	private void parseImmediateAssignment(String line, String delimiter, Map<String, Object> env) throws Exception {
 		String[] elems = splitAssignment(line, delimiter);
 
-		mo.put(elems[0], substitute(elems[1], mo));
+		env.put(elems[0], substitute(elems[1], env));
 	}
 
-	private void parseKeyValue(String line, String delimiter, Map mo) throws Exception {
+	private void parseKeyValue(String line, String delimiter, Map<String, Object> env) throws Exception {
 		String[] elems = splitAssignment(line, delimiter);
 
-		mo.put(elems[0], elems[1]);
+		env.put(elems[0], elems[1]);
 	}
 
-	private void parseLine(String line, Map mo) throws Exception {
+	private void parseLine(String line, Map<String, Object> env) throws Exception {
 
 		switch (getLineType(line)) {
 		case TYPE_VARIABLE_ASSIGNMENT:
-			parseVariableAssignment(line, mo);
+			parseVariableAssignment(line, env);
 			break;
 		case TYPE_STATEMENT:
 		case TYPE_FLAG:
@@ -560,41 +566,42 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		}
 	}
 
-	private void parseVariableAssignment(String line, Map mo) throws Exception {
+	private void parseVariableAssignment(String line, Map<String, Object> env) throws Exception {
 		if (line.contains("?=")) {
-			parseConditionalAssignment(line, mo);
+			parseConditionalAssignment(line, env);
 		} else if (line.contains("+=")) {
-			parseAdditiveAssignment(line, "+=", mo);
+			parseAdditiveAssignment(line, "+=", env);
 		} else if (line.contains("=+")) {
-			parseAdditiveAssignment(line, "=+", mo);
+			parseAdditiveAssignment(line, "=+", env);
 		} else if (line.contains(":=")) {
-			parseImmediateAssignment(line, ":=", mo);
+			parseImmediateAssignment(line, ":=", env);
 		} else {
-			parseKeyValue(line, "=", mo);
+			parseKeyValue(line, "=", env);
 		}
 
 	}
 
-	private List parseVars(String line) {
-		List l = new ArrayList();
+	private List<String> parseVars(String line) {
+		List<String> l = new ArrayList<String>();
 
 		int i = 0;
 
 		while ((i = line.indexOf("${", i)) > -1) {
 			int i2 = line.indexOf("}", i);
 
-			l.add(line.subSequence(i + 2, i2));
+			l.add((String) line.subSequence(i + 2, i2));
 			i++;
 		}
 
 		return l;
 	}
 
-	public Object put(Object arg0, Object arg1) {
+	public Object put(String arg0, Object arg1) {
 		throw new RuntimeException("BB configuration is read-only.");
 	}
 
-	public void putAll(Map arg0) {
+	@Override
+	public void putAll(Map<? extends String, ? extends Object> m) {
 		throw new RuntimeException("BB configuration is read-only.");
 	}
 
@@ -669,16 +676,16 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 	 * @param expression
 	 * @return Input string with any substitutions from this file.
 	 */
-	public String substitute(String expression, Map mo) {
+	public String substitute(String expression, Map<String, Object> env) {
 
-		List vars = parseVars(expression);
+		List<String> vars = parseVars(expression);
 
-		for (Iterator i = vars.iterator(); i.hasNext();) {
+		for (Iterator<String> i = vars.iterator(); i.hasNext();) {
 			String varName = (String) i.next();
 			String varToken = "${" + varName + "}";
 
-			if (mo.containsKey(varName)) {
-				expression = expression.replace(varToken, (String) mo.get(varName));
+			if (env.containsKey(varName)) {
+				expression = expression.replace(varToken, (String) env.get(varName));
 			} else if (System.getProperty(varName) != null) {
 				expression = expression.replace(varToken, System.getProperty(varName));
 			} else if (varName.toUpperCase().equals("HOME")) {
@@ -689,7 +696,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		return expression;
 	}
 
-	public Collection values() {
+	public Collection<Object> values() {
 		try {
 			checkValidAndLock(true);
 			return properties.values();
@@ -723,4 +730,5 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 			wlock.unlock();
 		}
 	}
+
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHelper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHelper.java
index c8a425c..df5d803 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHelper.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHelper.java
@@ -13,15 +13,12 @@ package org.yocto.bc.bitbake;
 
 import java.io.BufferedReader;
 import java.io.File;
-import java.io.FileOutputStream;
 import java.io.FileReader;
 import java.io.IOException;
 
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.ResourcesPlugin;
 
-import org.yocto.bc.ui.model.ProjectInfo;
-
 /**
  * A helper class for ProjectInfo related tasks.
  * 
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
index 64c9b71..34baae5 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
@@ -19,7 +19,6 @@ import java.util.Hashtable;
 import java.util.Iterator;
 import java.util.Map;
 
-import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IResource;
 import org.eclipse.core.resources.IResourceChangeEvent;
 import org.eclipse.core.resources.IResourceChangeListener;
@@ -35,7 +34,6 @@ import org.yocto.bc.bitbake.BBSession;
 import org.yocto.bc.bitbake.ProjectInfoHelper;
 import org.yocto.bc.bitbake.ShellSession;
 import org.yocto.bc.ui.model.ProjectInfo;
-import org.yocto.bc.ui.wizards.newproject.CreateBBCProjectOperation;
 
 public class Activator extends AbstractUIPlugin {
 
@@ -46,16 +44,16 @@ public class Activator extends AbstractUIPlugin {
 
 	// The shared instance
 	private static Activator plugin;
-	private static Map shellMap;
-	private static Map projInfoMap;
-	private static Hashtable bbSessionMap;
-	private static Hashtable bbRecipeMap;
+	private static Map<String, ShellSession> shellMap;
+	private static Map<String, ProjectInfo> projInfoMap;
+	private static Hashtable<String,BBSession> bbSessionMap;
+	private static Hashtable<String,BBRecipe> bbRecipeMap;
 
 	private IResourceChangeListener listener = new BCResourceChangeListener();
 
 	public static BBRecipe getBBRecipe(BBSession session, String filePath) throws IOException {
 		if (bbRecipeMap == null) {
-			bbRecipeMap = new Hashtable();
+			bbRecipeMap = new Hashtable<String, BBRecipe>();
 		}
 
 		String key = session.getProjInfoRoot() + filePath;
@@ -76,7 +74,7 @@ public class Activator extends AbstractUIPlugin {
 	 */
 	public static BBSession getBBSession(String projectRoot, Writer out) throws IOException {
 		if (bbSessionMap == null) {
-			bbSessionMap = new Hashtable();
+			bbSessionMap = new Hashtable<String, BBSession>();
 		}
 		
 		BBSession bbs = (BBSession) bbSessionMap.get(projectRoot);
@@ -97,7 +95,7 @@ public class Activator extends AbstractUIPlugin {
 	 */
 	public static BBSession getBBSession(String projectRoot) throws IOException {
 		if (bbSessionMap == null) {
-			bbSessionMap = new Hashtable();
+			bbSessionMap = new Hashtable<String, BBSession>();
 		}
 		
 		BBSession bbs = (BBSession) bbSessionMap.get(projectRoot);
@@ -132,7 +130,7 @@ public class Activator extends AbstractUIPlugin {
 
 	public static ProjectInfo getProjInfo(String location) throws CoreException, InvocationTargetException, InterruptedException {
 		if (projInfoMap == null) {
-			projInfoMap = new Hashtable();
+			projInfoMap = new Hashtable<String, ProjectInfo>();
 		}
 
 		ProjectInfo pi = (ProjectInfo) projInfoMap.get(location);
@@ -151,19 +149,20 @@ public class Activator extends AbstractUIPlugin {
 	}
 
 	public static void notifyAllBBSession(IResource[] added, IResource[] removed, IResource[] changed) {
-		Iterator iter;
+		Iterator<BBRecipe> recipe_iter;
+		Iterator<BBSession> session_iter;
 		if(bbRecipeMap != null) {
-			iter = bbRecipeMap.values().iterator();
-			while(iter.hasNext()) {
-				BBRecipe p = (BBRecipe)iter.next();
+			recipe_iter = bbRecipeMap.values().iterator();
+			while(recipe_iter.hasNext()) {
+				BBRecipe p = (BBRecipe)recipe_iter.next();
 				p.changeNotified(added, removed, changed);
 			}
 		}
 
 		if(bbSessionMap != null) {
-			iter= bbSessionMap.values().iterator();
-			while(iter.hasNext()) {
-				BBSession p = (BBSession)iter.next();
+			session_iter= bbSessionMap.values().iterator();
+			while(session_iter.hasNext()) {
+				BBSession p = (BBSession)session_iter.next();
 				p.changeNotified(added, removed, changed);
 			}
 		}
@@ -176,7 +175,7 @@ public class Activator extends AbstractUIPlugin {
 	 */
 	private static ShellSession getShellSession(String absolutePath, Writer out) throws IOException {
 		if (shellMap == null) {
-			shellMap = new Hashtable();
+			shellMap = new Hashtable<String, ShellSession>();
 		}
 		
 		ShellSession ss = (ShellSession) shellMap.get(absolutePath);
@@ -190,7 +189,7 @@ public class Activator extends AbstractUIPlugin {
 
 	public static void putProjInfo(String location, ProjectInfo pinfo) {
 		if (projInfoMap == null) {
-			projInfoMap = new Hashtable();
+			projInfoMap = new Hashtable<String, ProjectInfo>();
 		}
 		
 		
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/AbstractBitbakeCommandAction.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/AbstractBitbakeCommandAction.java
index 43ef424..6215ff1 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/AbstractBitbakeCommandAction.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/AbstractBitbakeCommandAction.java
@@ -32,7 +32,6 @@ import org.eclipse.ui.console.MessageConsoleStream;
 
 import org.yocto.bc.bitbake.BBLanguageHelper;
 import org.yocto.bc.bitbake.BBSession;
-import org.yocto.bc.bitbake.ICommandResponseHandler;
 import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.builder.BitbakeCommanderNature;
 
@@ -55,12 +54,12 @@ public abstract class AbstractBitbakeCommandAction implements IWorkbenchWindowAc
 	protected IFile recipe;
 	protected BBSession bbs;
 
-	private Color commandColor, responseColor, errorColor;
+	private Color commandColor, errorColor;
 	private boolean errorOccurred = false;
 
 	public AbstractBitbakeCommandAction() {
 		commandColor = JFaceResources.getColorRegistry().get(JFacePreferences.ACTIVE_HYPERLINK_COLOR);
-		responseColor = JFaceResources.getColorRegistry().get(JFacePreferences.HYPERLINK_COLOR);
+		JFaceResources.getColorRegistry().get(JFacePreferences.HYPERLINK_COLOR);
 		errorColor = JFaceResources.getColorRegistry().get(JFacePreferences.ERROR_COLOR);
 	}
 
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchToasterDialog.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchToasterDialog.java
index 124ae39..1957525 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchToasterDialog.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchToasterDialog.java
@@ -14,8 +14,6 @@ import java.io.File;
 import java.io.IOException;
 import java.net.URL;
 import java.util.ArrayList;
-import java.util.HashMap;
-import java.util.HashSet;
 import java.util.Iterator;
 import java.util.Map;
 import java.util.Map.Entry;
@@ -28,28 +26,21 @@ import org.eclipse.jface.dialogs.IDialogConstants;
 import org.eclipse.swt.SWT;
 import org.eclipse.swt.layout.GridData;
 import org.eclipse.swt.layout.GridLayout;
-import org.eclipse.swt.widgets.Button;
 import org.eclipse.swt.widgets.Combo;
 import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Control;
 import org.eclipse.swt.widgets.Label;
 import org.eclipse.swt.widgets.Shell;
 import org.yocto.bc.ui.builder.BitbakeBuilder;
-import org.yocto.bc.ui.builder.BitbakeCommanderNature;
 
 public class LaunchToasterDialog extends Dialog {
-	private String title;
-	private Button buildButton;
 	private Combo toaster_url;
 	private IProject project;
-	private Shell shell;
 	private URL toaster_server;
 
 	public LaunchToasterDialog(Shell parentShell, String dialogTitle, IProject project) {
         super(parentShell);
-        this.shell = parentShell;
         this.project = project;
-        this.title = dialogTitle;
         setShellStyle(getShellStyle() | SWT.RESIZE);
 	}
 
@@ -68,7 +59,6 @@ public class LaunchToasterDialog extends Dialog {
 	}
 
 	private void createComposite(Composite composite) throws Exception{
-		Label root_label, sysroot_label;
 		GridData gd = new GridData(SWT.FILL, SWT.CENTER, true, false);
 		GridLayout layout = new GridLayout(2, false);
 		composite.setLayout(layout);
@@ -102,6 +92,7 @@ public class LaunchToasterDialog extends Dialog {
 		return toaster_server ;
 	}
 
+	@SuppressWarnings("unused")
 	private boolean isSubDirectory(File baseDir, File subDir) throws IOException {
 		baseDir = baseDir.getCanonicalFile();
 		subDir = subDir.getCanonicalFile();
@@ -116,6 +107,7 @@ public class LaunchToasterDialog extends Dialog {
 		return false;
 	}
 
+	@SuppressWarnings("unused")
 	private void initializeBuildCombo()
 	{
 		ArrayList<String> items = new ArrayList<String> ();
@@ -133,9 +125,9 @@ public class LaunchToasterDialog extends Dialog {
 						Map<String, String> args = cmd.getArguments();
 						if ((args != null) && !args.isEmpty())
 						{
-							Iterator entries = args.entrySet().iterator();
+							Iterator<Entry<String, String>> entries = args.entrySet().iterator();
 							while (entries.hasNext()) {
-								Entry thisEntry = (Entry) entries.next();
+								Entry<String, String> thisEntry = (Entry<String, String>) entries.next();
 								String key = (String)thisEntry.getKey();
 							}
 						}
@@ -147,6 +139,7 @@ public class LaunchToasterDialog extends Dialog {
 		}
 	}
 
+	@SuppressWarnings("unused")
 	private String[] getValues(String value) {
 		if ((value != null) && !value.isEmpty())
 		{
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchVariableWizardAction.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchVariableWizardAction.java
index eaf716e..8bd9162 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchVariableWizardAction.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchVariableWizardAction.java
@@ -22,7 +22,6 @@ import org.eclipse.jface.viewers.IStructuredSelection;
 import org.eclipse.jface.wizard.WizardDialog;
 import org.eclipse.ui.IWorkbenchWindow;
 import org.eclipse.ui.IWorkbenchWindowActionDelegate;
-
 import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.builder.BitbakeCommanderNature;
 import org.yocto.bc.ui.wizards.variable.VariableWizard;
@@ -35,7 +34,7 @@ import org.yocto.bc.ui.wizards.variable.VariableWizard;
 public class LaunchVariableWizardAction implements IWorkbenchWindowActionDelegate {
 
 	private IWorkbenchWindow window;
-	private Map session;
+	private Map<String, Object> session;
 
 	public void dispose() {
 	}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/BitbakeBuilder.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/BitbakeBuilder.java
index aead213..8d1f868 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/BitbakeBuilder.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/BitbakeBuilder.java
@@ -36,6 +36,7 @@ public class BitbakeBuilder extends IncrementalProjectBuilder {
 		 * @see org.eclipse.core.resources.IResourceDeltaVisitor#visit(org.eclipse.core.resources.IResourceDelta)
 		 */
 		public boolean visit(IResourceDelta delta) throws CoreException {
+			@SuppressWarnings("unused")
 			IResource resource = delta.getResource();
 			switch (delta.getKind()) {
 			case IResourceDelta.ADDED:
@@ -98,6 +99,7 @@ public class BitbakeBuilder extends IncrementalProjectBuilder {
 
 	private SAXParserFactory parserFactory;
 
+	@SuppressWarnings("unused")
 	private void addMarker(IFile file, String message, int lineNumber,
 			int severity) {
 		try {
@@ -119,7 +121,7 @@ public class BitbakeBuilder extends IncrementalProjectBuilder {
 	 *      java.util.Map, org.eclipse.core.runtime.IProgressMonitor)
 	 */
 	@Override
-	protected IProject[] build(int kind, Map args, IProgressMonitor monitor)
+	protected IProject[] build(int kind, Map<String, String> args, IProgressMonitor monitor)
 			throws CoreException {
 		if (kind == FULL_BUILD) {
 			fullBuild(monitor);
@@ -146,6 +148,7 @@ public class BitbakeBuilder extends IncrementalProjectBuilder {
 		}
 	}*/
 
+	@SuppressWarnings("unused")
 	private void deleteMarkers(IFile file) {
 		try {
 			file.deleteMarkers(MARKER_TYPE, false, IResource.DEPTH_ZERO);
@@ -161,6 +164,7 @@ public class BitbakeBuilder extends IncrementalProjectBuilder {
 		}*/
 	}
 
+	@SuppressWarnings("unused")
 	private SAXParser getParser() throws ParserConfigurationException,
 			SAXException {
 		if (parserFactory == null) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/ToggleNatureAction.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/ToggleNatureAction.java
index f25148d..0c52ca6 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/ToggleNatureAction.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/ToggleNatureAction.java
@@ -33,14 +33,15 @@ public class ToggleNatureAction implements IObjectActionDelegate {
 	 */
 	public void run(IAction action) {
 		if (selection instanceof IStructuredSelection) {
-			for (Iterator it = ((IStructuredSelection) selection).iterator(); it
+			for (@SuppressWarnings("unchecked")
+			Iterator<IStructuredSelection> it = ((IStructuredSelection) selection).iterator(); it
 					.hasNext();) {
 				Object element = it.next();
 				IProject project = null;
 				if (element instanceof IProject) {
 					project = (IProject) element;
 				} else if (element instanceof IAdaptable) {
-					project = (IProject) ((IAdaptable) element)
+					project = ((IAdaptable) element)
 							.getAdapter(IProject.class);
 				}
 				if (project != null) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/decorators/ReadOnly.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/decorators/ReadOnly.java
index 0bb3c20..2241fd1 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/decorators/ReadOnly.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/decorators/ReadOnly.java
@@ -14,12 +14,15 @@ import java.net.URL;
 
 import org.eclipse.core.resources.IResource;
 import org.eclipse.core.resources.ResourceAttributes;
+import org.eclipse.core.runtime.FileLocator;
 import org.eclipse.core.runtime.Path;
-import org.eclipse.core.runtime.Platform;
 import org.eclipse.jface.resource.ImageDescriptor;
 import org.eclipse.jface.viewers.IDecoration;
 import org.eclipse.jface.viewers.ILabelProviderListener;
 import org.eclipse.jface.viewers.ILightweightLabelDecorator;
+import org.osgi.framework.Bundle;
+import org.osgi.framework.FrameworkUtil;
+import org.yocto.bc.ui.Activator;
 
 /**
  * An example showing how to control when an element is decorated. This example
@@ -68,8 +71,8 @@ public class ReadOnly implements ILightweightLabelDecorator {
 		ResourceAttributes attrs = resource.getResourceAttributes();
 		if(attrs!=null) {
 			if (attrs.isReadOnly()){
-				URL url = Platform.find(
-						Platform.getBundle("org.yocto.bc.ui"), new Path(iconPath)); //NON-NLS-1
+				Bundle bundle = FrameworkUtil.getBundle(Activator.class);
+				URL url = FileLocator.find(bundle, new Path(iconPath), null);
 	
 				if (url == null)
 					return;
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BBVariableTextHover.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BBVariableTextHover.java
index dc014a7..c913e72 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BBVariableTextHover.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BBVariableTextHover.java
@@ -24,7 +24,7 @@ import org.yocto.bc.ui.Activator;
 
 class BBVariableTextHover implements ITextHover {
 	private final BBSession session;
-	private volatile Map envMap;
+	private volatile Map<String, Object> envMap;
 
 	public BBVariableTextHover(BBSession session, String file) {
 		this.session = session;
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/CustomLocalFile.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/CustomLocalFile.java
index b62a1da..3147c37 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/CustomLocalFile.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/CustomLocalFile.java
@@ -5,6 +5,7 @@ import java.io.File;
 import org.eclipse.core.internal.filesystem.local.LocalFile;
 import org.yocto.remote.utils.RemoteHelper;
 
+@SuppressWarnings("restriction")
 public class CustomLocalFile extends LocalFile{
 	
 	public CustomLocalFile(String projName, File file) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java
index a0a0e6e..7c86cdb 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java
@@ -52,7 +52,7 @@ public class OEFile extends FileStore {
 	 * The java.io.File that this store represents.
 	 */
 	protected final File file;
-	private List ignorePaths;
+	private List<Object> ignorePaths;
 
 	/**
 	 * The absolute file system path of the file represented by this store.
@@ -67,7 +67,7 @@ public class OEFile extends FileStore {
 	 * @param file The file this local file represents
 	 * @param root 
 	 */
-	public OEFile(File file, List ignorePaths, String root) {
+	public OEFile(File file, List<Object> ignorePaths, String root) {
 		this.file = file;
 		this.ignorePaths = ignorePaths;
 		this.root = root;
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java
index 3443f57..51ff7b1 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java
@@ -36,11 +36,11 @@ public class OEFileSystem extends FileSystem {
 		return ref;
 	}
 
-	private Map fileStoreCache;
+	private Map<URI, OEFile> fileStoreCache;
 
 	public OEFileSystem() {
 		ref = this;
-		fileStoreCache = new Hashtable();
+		fileStoreCache = new Hashtable<URI, OEFile>();
 	}
 	
 	@Override
@@ -62,7 +62,7 @@ public class OEFileSystem extends FileSystem {
 				throw new RuntimeException("Invalid local.conf: TMPDIR or DL_DIR or SSTATE_DIR undefined.");
 			}
 			
-			List ignoreList = new ArrayList();
+			List<Object> ignoreList = new ArrayList<Object>();
 
 			//These directories are ignored because they contain too many files for Eclipse to handle efficiently.
 			ignoreList.add(config.get("TMPDIR"));
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEIgnoreFile.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEIgnoreFile.java
index 8643309..e044c53 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEIgnoreFile.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEIgnoreFile.java
@@ -64,11 +64,6 @@ public class OEIgnoreFile implements IFileStore {
 		return new FileInfo(file.getName());
 	}
 
-	public Object getAdapter(Class adapter) {
-		// TODO Auto-generated method stub
-		return null;
-	}
-
 	public IFileStore getChild(IPath path) {
 		// TODO Auto-generated method stub
 		return null;
@@ -128,6 +123,12 @@ public class OEIgnoreFile implements IFileStore {
 	public IFileStore getFileStore(IPath path) {
 		return null;
 	}
+
+	@Override
+	public <T> T getAdapter(Class<T> adapter) {
+		// TODO Auto-generated method stub
+		return null;
+	}
 	
 	
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/Policy.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/Policy.java
index 84c0f32..e78c430 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/Policy.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/Policy.java
@@ -20,7 +20,7 @@ import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.core.runtime.OperationCanceledException;
 import org.eclipse.core.runtime.Status;
-import org.eclipse.core.runtime.SubProgressMonitor;
+import org.eclipse.core.runtime.SubMonitor;
 
 import org.yocto.bc.ui.Activator;
 
@@ -103,6 +103,6 @@ public class Policy {
 			return new NullProgressMonitor();
 		if (monitor instanceof NullProgressMonitor)
 			return monitor;
-		return new SubProgressMonitor(monitor, ticks);
+		return SubMonitor.convert(monitor, ticks);
 	}
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/perspectives/BitbakeCommanderPerspective.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/perspectives/BitbakeCommanderPerspective.java
index b9ddcb6..3278f44 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/perspectives/BitbakeCommanderPerspective.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/perspectives/BitbakeCommanderPerspective.java
@@ -15,8 +15,6 @@ import org.eclipse.ui.IPageLayout;
 import org.eclipse.ui.IPerspectiveFactory;
 import org.eclipse.ui.console.IConsoleConstants;
 
-import org.yocto.bc.ui.views.RecipeView;
-
 public class BitbakeCommanderPerspective implements IPerspectiveFactory {
 
 	private IPageLayout factory;
@@ -37,10 +35,9 @@ public class BitbakeCommanderPerspective implements IPerspectiveFactory {
 	}
 
 	private void addPerspectiveShortcuts() {
-		// factory.addPerspectiveShortcut("org.eclipse.team.ui.TeamSynchronizingPerspective");
-		// //NON-NLS-1
-		// factory.addPerspectiveShortcut("org.eclipse.team.cvs.ui.cvsPerspective");
-		// //NON-NLS-1
+		//factory.addPerspectiveShortcut("org.eclipse.team.ui.TeamSynchronizingPerspective"); //NON-NLS-1
+		// TODO: add egit perspective instead
+		//factory.addPerspectiveShortcut("org.eclipse.team.cvs.ui.cvsPerspective"); //$NON-NLS-1$
 		factory.addPerspectiveShortcut("org.eclipse.ui.resourcePerspective"); // NON-NLS-1
 	}
 
@@ -54,7 +51,7 @@ public class BitbakeCommanderPerspective implements IPerspectiveFactory {
 		
 		IFolderLayout topLeft = factory.createFolder("topLeft", // NON-NLS-1
 				IPageLayout.LEFT, 0.25f, factory.getEditorArea());
-		topLeft.addView(IPageLayout.ID_RES_NAV);
+		topLeft.addView(IPageLayout.ID_PROJECT_EXPLORER);
 		//llu detach RecipeView
 		//topLeft.addView(RecipeView.ID_VIEW); // NON-NLS-1
 		
@@ -72,7 +69,7 @@ public class BitbakeCommanderPerspective implements IPerspectiveFactory {
 		factory.addShowViewShortcut("org.eclipse.team.ui.GenericHistoryView"); // NON-NLS-1
 		factory.addShowViewShortcut(IConsoleConstants.ID_CONSOLE_VIEW);
 		// factory.addShowViewShortcut(JavaUI.ID_PACKAGES);
-		factory.addShowViewShortcut(IPageLayout.ID_RES_NAV);
+		factory.addShowViewShortcut(IPageLayout.ID_PROJECT_EXPLORER);
 		// factory.addShowViewShortcut(IPageLayout.ID_PROBLEM_VIEW);
 		// factory.addShowViewShortcut(IPageLayout.ID_OUTLINE);
 	}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/popup/actions/NewAction.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/popup/actions/NewAction.java
index 3bdf5d3..6880d58 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/popup/actions/NewAction.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/popup/actions/NewAction.java
@@ -4,7 +4,6 @@ import org.eclipse.jface.action.IAction;
 import org.eclipse.jface.dialogs.MessageDialog;
 import org.eclipse.jface.viewers.ISelection;
 import org.eclipse.swt.widgets.Shell;
-import org.eclipse.ui.IActionDelegate;
 import org.eclipse.ui.IObjectActionDelegate;
 import org.eclipse.ui.IWorkbenchPart;
 
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/views/RecipeContentProvider.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/views/RecipeContentProvider.java
index 7e29e7a..fefdeb4 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/views/RecipeContentProvider.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/views/RecipeContentProvider.java
@@ -15,9 +15,9 @@ import java.util.Collection;
 import java.util.List;
 
 import org.eclipse.core.resources.IProject;
-import org.eclipse.core.resources.IProjectNature;
 import org.eclipse.core.resources.ResourcesPlugin;
 import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.IPath;
 import org.eclipse.jface.viewers.IStructuredContentProvider;
 import org.eclipse.jface.viewers.Viewer;
 
@@ -30,9 +30,8 @@ class RecipeContentProvider implements IStructuredContentProvider {
 	}
 
 	public Object[] getElements(Object parent) {
-		List recipes = new ArrayList();
+		List<IPath> recipes = new ArrayList<IPath>();
 		IProject[] projects = ResourcesPlugin.getWorkspace().getRoot().getProjects();
-		IProjectNature nature = null;
 		for (int i = 0; i < projects.length; ++i) {
 			try {
 				if (projects[i].isOpen() && projects[i].hasNature(BitbakeCommanderNature.NATURE_ID)) {
@@ -50,7 +49,7 @@ class RecipeContentProvider implements IStructuredContentProvider {
 		return recipes.toArray();
 	}
 
-	private Collection getRecipesFromProject(IProject project) throws Exception {
+	private Collection<IPath> getRecipesFromProject(IProject project) throws Exception {
 		BBSession session = Activator.getBBSession(project.getLocationURI().getPath(), null);
 		return session.getRecipeFiles(project);
 	}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/views/RecipeView.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/views/RecipeView.java
index fdbd8e0..5cd0c0e 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/views/RecipeView.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/views/RecipeView.java
@@ -24,7 +24,6 @@ import org.eclipse.jface.viewers.IStructuredSelection;
 import org.eclipse.jface.viewers.ITableLabelProvider;
 import org.eclipse.jface.viewers.LabelProvider;
 import org.eclipse.jface.viewers.TableViewer;
-import org.eclipse.jface.viewers.ViewerSorter;
 import org.eclipse.swt.SWT;
 import org.eclipse.swt.graphics.Image;
 import org.eclipse.swt.widgets.Composite;
@@ -77,7 +76,6 @@ private TableViewer viewer;
 		viewer = new TableViewer(parent, SWT.MULTI | SWT.H_SCROLL | SWT.V_SCROLL);
 		viewer.setContentProvider(new RecipeContentProvider());
 		viewer.setLabelProvider(new ViewLabelProvider());
-		viewer.setSorter(new ViewerSorter());
 		viewer.setInput(getViewSite());
 		makeActions();
 		hookContextMenu();
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/BitbakeRecipeUIElement.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/BitbakeRecipeUIElement.java
index 22d6bb7..b5468dd 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/BitbakeRecipeUIElement.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/BitbakeRecipeUIElement.java
@@ -10,8 +10,6 @@
  *******************************************************************************/
 package org.yocto.bc.ui.wizards;
 
-import org.eclipse.jface.viewers.ISelection;
-import org.eclipse.swt.widgets.Text;
 import java.util.ArrayList;
 
 public class BitbakeRecipeUIElement {
@@ -28,7 +26,7 @@ public class BitbakeRecipeUIElement {
 	private String md5sum;
 	private String sha256sum;
 	private String metaDir;
-	private ArrayList inheritance;
+	private ArrayList<String> inheritance;
 	private String[] valid_src_uris = {"file://", "bzr://", "git://", "osc://", "repo://",
 			"ccrc://","http://","https://","ftp://","cvs://","hg://","p4://","ssh://","svn://"};
 
@@ -45,7 +43,7 @@ public class BitbakeRecipeUIElement {
 		this.srcuri = "";
 		this.md5sum = "";
 		this.sha256sum = "";
-		this.inheritance = new ArrayList();
+		this.inheritance = new ArrayList<String>();
 		this.metaDir = "";
 	}
 
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizard.java
index 8b47498..fdd6532 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizard.java
@@ -49,8 +49,8 @@ public abstract class FiniteStateWizard extends Wizard {
     }
     
     /**
-     * Retrive the model object from the wizard.
-     * @return
-     */
-    public abstract Map getModel();
-}
+     * Retrive the model object from the wizard.
+     * @return
+     */
+    public abstract Map<String, Object> getModel();
+}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizardPage.java
index a83a389..ff0b547 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizardPage.java
@@ -10,19 +10,19 @@ import org.eclipse.swt.events.SelectionEvent;
 import org.eclipse.swt.events.SelectionListener;
 import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Event;
-import org.eclipse.swt.widgets.Listener;
-
-public abstract class FiniteStateWizardPage extends WizardPage {
-    protected Map model = null;
-    protected FiniteStateWizard wizard = null;
-    private static boolean previousState = false;
-    /**
-     * @param pageName
-     */
-    protected FiniteStateWizardPage(String name, Map model) {
-        super(name);
-        this.model = model;
-        this.setPageComplete(false);
+import org.eclipse.swt.widgets.Listener;
+
+public abstract class FiniteStateWizardPage extends WizardPage {
+    protected Map<String, Object> model = null;
+    protected FiniteStateWizard wizard = null;
+    private static boolean previousState = false;
+    /**
+     * @param pageName
+     */
+    protected FiniteStateWizardPage(String name, Map<String, Object> model) {
+        super(name);
+        this.model = model;
+        this.setPageComplete(false);
     }
 
     /*
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
index b4bdb48..895bf8a 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
@@ -36,13 +36,12 @@ import org.eclipse.jface.wizard.Wizard;
 import org.eclipse.ui.INewWizard;
 import org.eclipse.ui.IWorkbench;
 import org.eclipse.ui.IWorkbenchPage;
-import org.eclipse.ui.IWorkbenchWizard;
+// Only referenced in comment
+//import org.eclipse.ui.IWorkbenchWizard;
 import org.eclipse.ui.PartInitException;
 import org.eclipse.ui.PlatformUI;
 import org.eclipse.ui.ide.IDE;
 
-import org.yocto.bc.bitbake.BBLanguageHelper;
-
 public class NewBitBakeFileRecipeWizard extends Wizard implements INewWizard {
 	private NewBitBakeFileRecipeWizardPage page;
 	private ISelection selection;
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
index ba4bdae..578feb4 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
@@ -16,7 +16,6 @@ import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IResource;
 import org.eclipse.core.resources.ResourcesPlugin;
 import org.eclipse.core.runtime.Path;
-import org.eclipse.core.runtime.IPath;
 import org.eclipse.jface.viewers.ISelection;
 import org.eclipse.jface.viewers.IStructuredSelection;
 import org.eclipse.jface.window.Window;
@@ -30,21 +29,16 @@ import org.eclipse.swt.layout.GridData;
 import org.eclipse.swt.layout.GridLayout;
 import org.eclipse.swt.widgets.Button;
 import org.eclipse.swt.widgets.Composite;
-import org.eclipse.swt.widgets.DirectoryDialog;
-import org.eclipse.swt.widgets.FileDialog;
 import org.eclipse.swt.widgets.Label;
 import org.eclipse.swt.widgets.Text;
 import org.eclipse.ui.dialogs.ContainerSelectionDialog;
 
 import java.util.HashMap;
-import java.util.Hashtable;
 import java.util.Set;
 import java.util.ArrayList;
-import java.util.Enumeration;
 import java.util.Iterator;
 
 import java.io.BufferedReader;
-import java.io.InputStreamReader;
 import java.io.File;
 import java.io.FileReader;
 import java.io.IOException;
@@ -71,7 +65,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	
 	private ISelection selection;
 	private String metaDirLoc;
-	private ArrayList inheritance;
+	private ArrayList<String> inheritance;
 
 	public NewBitBakeFileRecipeWizardPage(ISelection selection) {
 		super("wizardPage");
@@ -79,7 +73,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		setDescription("Create a new BitBake recipe.");
 		this.selection = selection;
 		element = new BitbakeRecipeUIElement();
-		inheritance = new ArrayList();
+		inheritance = new ArrayList<String>();
 	}
 
 	public void createControl(Composite parent) {
@@ -324,7 +318,6 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 				else if (file.getName().equalsIgnoreCase("setup.py"))
 					inheritance.add("disutils");
 				else {
-					String pattern = "configure.[ac|.in]";
 					if (file.getName().equalsIgnoreCase("configure.ac") || file.getName().equalsIgnoreCase("configure.in"))
 						inheritance.add("autotools");
 					else
@@ -499,7 +492,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	
 	private void updateSrcuri(HashMap<String, String> mirrorsMap, String src_uri) {
 		Set<String> mirrors = mirrorsMap.keySet();
-		Iterator iter = mirrors.iterator();
+		Iterator<String> iter = mirrors.iterator();
 		String mirror_key = null;
 
 	    while (iter.hasNext()) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/importProject/BBCProjectPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/importProject/BBCProjectPage.java
index 71ea70c..3f66518 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/importProject/BBCProjectPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/importProject/BBCProjectPage.java
@@ -64,7 +64,7 @@ public class BBCProjectPage extends FiniteStateWizardPage {
 	private ValidationListener validationListener;
 	private Text txtProjectName;
 
-	public BBCProjectPage(Map model) {
+	public BBCProjectPage(Map<String, Object> model) {
 		super(PAGE_TITLE, model);
 		setTitle("Create new Yocto Project BitBake Commander project");
 		setMessage("Enter information to create a BitBake Commander project.");
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/importProject/ImportYoctoProjectWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/importProject/ImportYoctoProjectWizard.java
index b1fc841..d116701 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/importProject/ImportYoctoProjectWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/importProject/ImportYoctoProjectWizard.java
@@ -44,17 +44,14 @@ public class ImportYoctoProjectWizard extends FiniteStateWizard  implements IImp
 	public static final String KEY_INITPATH = "INITPATH";
 	protected static final String KEY_PINFO = "PINFO";
 	
-	private Map projectModel;
-	private IWorkbench workbench;
-	private IStructuredSelection selection;
-	
+	private Map<String, Object> projectModel;
 	private MessageConsole myConsole;
 	
 	public ImportYoctoProjectWizard() {
-		projectModel = new Hashtable();
+		projectModel = new Hashtable<String, Object>();
 	}
 	
-	public Map getModel() {
+	public Map<String, Object> getModel() {
 		return projectModel;
 	}
 	
@@ -100,8 +97,6 @@ public class ImportYoctoProjectWizard extends FiniteStateWizard  implements IImp
 	}
 
 	public void init(IWorkbench workbench, IStructuredSelection selection) {
-		this.workbench = workbench;
-		this.selection = selection;
 		this.setNeedsProgressMonitor(true);
 		setWindowTitle("BitBake Commander Project");
 		
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
index 0abac26..d653bfd 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
@@ -19,8 +19,6 @@ import java.io.Writer;
 import java.lang.reflect.InvocationTargetException;
 import java.util.Hashtable;
 import java.util.Map;
-import java.util.regex.Matcher;
-import java.util.regex.Pattern;
 
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.IStatus;
@@ -40,6 +38,7 @@ import org.eclipse.ui.console.IConsoleManager;
 import org.eclipse.ui.console.IConsoleView;
 import org.eclipse.ui.console.MessageConsole;
 import org.eclipse.ui.console.MessageConsoleStream;
+
 import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.model.ProjectInfo;
 import org.yocto.bc.ui.wizards.FiniteStateWizard;
@@ -71,11 +70,11 @@ public class InstallWizard extends FiniteStateWizard implements
 	protected static final String DEFAULT_INSTALL_DIR = "~/yocto";
 	public static final String VALIDATION_FILE = DEFAULT_INIT_SCRIPT;
 
-	private Map model;
+	private Map<String, Object> model;
 	private MessageConsole myConsole;
 
 	public InstallWizard() {
-		this.model = new Hashtable();
+		this.model = new Hashtable<String, Object>();
 		model.put(INSTALL_DIRECTORY, DEFAULT_INSTALL_DIR);
 		model.put(INIT_SCRIPT, DEFAULT_INIT_SCRIPT);
 		
@@ -108,7 +107,7 @@ public class InstallWizard extends FiniteStateWizard implements
 	}
 
 	public InstallWizard(IStructuredSelection selection) {
-		model = new Hashtable();
+		model = new Hashtable<String, Object>();
 	}
 
 	/*
@@ -132,7 +131,7 @@ public class InstallWizard extends FiniteStateWizard implements
 	}
 
 	@Override
-	public Map getModel() {
+	public Map<String, Object> getModel() {
 		return model;
 	}
 
@@ -143,7 +142,7 @@ public class InstallWizard extends FiniteStateWizard implements
 
 		WizardPage page = (WizardPage) getPage("Options");
 		page.setPageComplete(true);
-		Map options = (Map) model;
+		Map<String, Object> options = (Map<String, Object>) model;
 		String install_dir = "";
 		if (options.containsKey(INSTALL_DIRECTORY)) {
 			install_dir = (String) options.get(INSTALL_DIRECTORY);
@@ -189,6 +188,7 @@ public class InstallWizard extends FiniteStateWizard implements
 		public float calWorkloadDone(String info) throws IllegalArgumentException;
 	}
 
+	@SuppressWarnings("unused")
 	private class LongtimeRunningTask implements IRunnableWithProgress {
 		private String []cmdArray;
 		private String []envp;
@@ -306,6 +306,7 @@ public class InstallWizard extends FiniteStateWizard implements
 			}
 		}
 
+		@SuppressWarnings("unused")
 		public void printDialog(String msg) {
 			try {
 				myConsoleStream.println(msg);
@@ -331,6 +332,7 @@ public class InstallWizard extends FiniteStateWizard implements
 			}
 		}
 
+		@SuppressWarnings("unused")
 		public void printCmd(String cmd) {
 			try {
 				myConsoleStream.println(cmd);
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
index 3a2caa0..b9d6c1e 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
@@ -1,20 +1,13 @@
 package org.yocto.bc.ui.wizards.install;
 
-import java.io.IOException;
 import java.io.File;
 import java.net.URI;
-import java.util.ArrayList;
-import java.util.Hashtable;
-import java.util.Iterator;
-import java.util.List;
 import java.util.Map;
 
 import org.eclipse.core.resources.IProject;
-import org.eclipse.core.resources.IProjectDescription;
 import org.eclipse.core.resources.IResource;
 import org.eclipse.core.resources.IWorkspaceRoot;
 import org.eclipse.core.resources.ResourcesPlugin;
-import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IStatus;
 import org.eclipse.swt.SWT;
 import org.eclipse.swt.events.SelectionAdapter;
@@ -23,16 +16,13 @@ import org.eclipse.swt.layout.GridData;
 import org.eclipse.swt.layout.GridLayout;
 import org.eclipse.swt.widgets.Button;
 import org.eclipse.swt.widgets.Composite;
-import org.eclipse.swt.widgets.Control;
 import org.eclipse.swt.widgets.DirectoryDialog;
 import org.eclipse.swt.widgets.FileDialog;
 import org.eclipse.swt.widgets.Label;
 import org.eclipse.swt.widgets.Text;
 import org.eclipse.ui.PlatformUI;
 
-import org.yocto.bc.ui.wizards.FiniteStateWizard;
 import org.yocto.bc.ui.wizards.FiniteStateWizardPage;
-import org.yocto.bc.ui.wizards.FiniteStateWizardPage.ValidationListener;
 
 /**
  * Select which flavor of OE is to be installed.
@@ -45,17 +35,13 @@ import org.yocto.bc.ui.wizards.FiniteStateWizardPage.ValidationListener;
  */
 public class OptionsPage extends FiniteStateWizardPage {
 
-	private Map vars;
-	private Composite c1;
 	private Composite top;
-	private List controlList;
-	private boolean controlsCreated = false;
 	private Text txtProjectLocation;
 	private Text txtInit;
 	private ValidationListener validationListener;
 	private Text txtProjectName;
 
-	protected OptionsPage(Map model) {
+	protected OptionsPage(Map<String, Object> model) {
 		super("Options", model);
 		setMessage("Enter these parameters to create new Yocto Project BitBake commander project");
 	}
@@ -67,8 +53,6 @@ public class OptionsPage extends FiniteStateWizardPage {
 		top.setLayoutData(new GridData(GridData.FILL_BOTH));
 
 		GridData gdFillH = new GridData(GridData.FILL_HORIZONTAL);
-		GridData gdVU = new GridData(GridData.VERTICAL_ALIGN_BEGINNING);
-
 		Composite projectNameComp = new Composite(top, SWT.NONE);
 		GridData gdProjName = new GridData(GridData.FILL_HORIZONTAL);
 		projectNameComp.setLayoutData(gdProjName);
@@ -190,6 +174,7 @@ public class OptionsPage extends FiniteStateWizardPage {
 		return true;
 	}
 	
+	@SuppressWarnings("unused")
 	private class FileOpenSelectionAdapter extends SelectionAdapter {
 		@Override
 		public void widgetSelected(SelectionEvent e) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
index d2238ed..ff7e00f 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
@@ -18,7 +18,6 @@ import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.jface.operation.IRunnableWithProgress;
 
 import org.yocto.bc.bitbake.BBSession;
-import org.yocto.bc.bitbake.ProjectInfoHelper;
 import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.model.ProjectInfo;
 
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
index 7517833..c1cc7fe 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
@@ -11,7 +11,6 @@
  *******************************************************************************/
 package org.yocto.bc.ui.wizards.newproject;
 
-import java.io.IOException;
 import java.lang.reflect.InvocationTargetException;
 import java.net.URI;
 import java.net.URISyntaxException;
@@ -30,7 +29,6 @@ import org.eclipse.core.runtime.QualifiedName;
 import org.eclipse.core.runtime.Status;
 import org.eclipse.ui.actions.WorkspaceModifyOperation;
 
-import org.yocto.bc.bitbake.ProjectInfoHelper;
 import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.builder.BitbakeCommanderNature;
 import org.yocto.bc.ui.model.ProjectInfo;
@@ -47,7 +45,7 @@ public class CreateBBCProjectOperation extends WorkspaceModifyOperation {
 	public static final QualifiedName BBC_PROJECT_INIT = new QualifiedName(null, "BBC_PROJECT_INIT");
 	public static void addNatureToProject(IProject proj, String nature_id, IProgressMonitor monitor) throws CoreException {
 		IProjectDescription desc = proj.getDescription();
-		Vector natureIds = new Vector();
+		Vector<String> natureIds = new Vector<String>();
 		
 		natureIds.add(nature_id);
 		natureIds.addAll(Arrays.asList(desc.getNatureIds()));
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/variable/VariablePage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/variable/VariablePage.java
index facb783..f8f5d57 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/variable/VariablePage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/variable/VariablePage.java
@@ -1,6 +1,6 @@
 package org.yocto.bc.ui.wizards.variable;
 
-import java.util.Comparator;
+//import java.util.Comparator;
 import java.util.Map;
 
 import org.eclipse.jface.viewers.ILabelProviderListener;
@@ -9,7 +9,7 @@ import org.eclipse.jface.viewers.ITableLabelProvider;
 import org.eclipse.jface.viewers.TableViewer;
 import org.eclipse.jface.viewers.Viewer;
 import org.eclipse.jface.viewers.ViewerFilter;
-import org.eclipse.jface.viewers.ViewerSorter;
+//import org.eclipse.jface.viewers.ViewerSorter;
 import org.eclipse.swt.SWT;
 import org.eclipse.swt.events.SelectionAdapter;
 import org.eclipse.swt.events.SelectionEvent;
@@ -35,7 +35,7 @@ public class VariablePage extends FiniteStateWizardPage {
 	private TableColumn c1;
 	private TableColumn c2;
 
-	protected VariablePage(Map model) {
+	protected VariablePage(Map<String, Object> model) {
 		super("Yocto Project BitBake Commander", model);
 		setTitle("Yocto Project BitBake Variable Viewer");
 		setDescription("Sort and fitler global BitBake variables by name or value.");
@@ -71,7 +71,7 @@ public class VariablePage extends FiniteStateWizardPage {
 		c1.setWidth(200);
 		c1.addSelectionListener(new SelectionAdapter() {
 			public void widgetSelected(SelectionEvent event) {
-				((VariableViewerSorter) viewer.getSorter()).doSort(0);
+				//((VariableViewerSorter) viewer.getSorter()).doSort(0);
 				viewer.refresh();
 			}
 		});
@@ -81,14 +81,13 @@ public class VariablePage extends FiniteStateWizardPage {
 		c2.setWidth(200);
 		c2.addSelectionListener(new SelectionAdapter() {
 			public void widgetSelected(SelectionEvent event) {
-				((VariableViewerSorter) viewer.getSorter()).doSort(1);
+				//((VariableViewerSorter) viewer.getSorter()).doSort(1);
 				viewer.refresh();
 			}
 		});
 
 		viewer.setContentProvider(new VariableContentProvider());
 		viewer.setLabelProvider(new VariableLabelProvider());
-		viewer.setSorter(new VariableViewerSorter());
 
 		viewer.setFilters(new ViewerFilter[] {new MapViewerFilter()});
 		setControl(top);
@@ -186,6 +185,7 @@ public class VariablePage extends FiniteStateWizardPage {
 	 * A tableviewer sorter found on the internet.
 	 *
 	 */
+	/* deprecated
 	class VariableViewerSorter extends ViewerSorter {
 		private static final int ASCENDING = 0;
 
@@ -226,6 +226,7 @@ public class VariablePage extends FiniteStateWizardPage {
 			return rc;
 		}
 	}
+	*/
 	
 	/**
 	 * A filter for the name/value model.
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/variable/VariableWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/variable/VariableWizard.java
index 75a6125..a8154b5 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/variable/VariableWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/variable/VariableWizard.java
@@ -12,15 +12,15 @@ import org.yocto.bc.ui.wizards.FiniteStateWizard;
  */
 public class VariableWizard extends FiniteStateWizard {
 
-	private Map model;
+	private Map<String, Object> model;
 
-	public VariableWizard(Map model) {
+	public VariableWizard(Map<String, Object> model) {
 		this.model = model;
 		setWindowTitle("Yocto Project BitBake Commander");
 	}
 
 	public VariableWizard(IStructuredSelection selection) {
-		model = new Hashtable();
+		model = new Hashtable<String, Object>();
 	}
 	
 	@Override
@@ -29,7 +29,7 @@ public class VariableWizard extends FiniteStateWizard {
 	}
 	
 	@Override
-	public Map getModel() {
+	public Map<String, Object> getModel() {
 		return model;
 	}
 
-- 
2.7.4


