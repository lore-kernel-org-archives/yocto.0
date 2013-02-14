Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D991E0141C
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 05:45:21 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 Feb 2013 05:43:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,665,1355126400"; d="scan'208";a="262610577"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.62])
	by orsmga001.jf.intel.com with ESMTP; 14 Feb 2013 05:45:02 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Feb 2013 15:29:56 +0200
Message-Id: <1360848596-15956-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] Initial commit for remote proof of concept
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
X-List-Received-Date: Thu, 14 Feb 2013 13:45:21 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 core/org.eclipse.cdt.core/META-INF/MANIFEST.MF     |    1 +
 .../cdt/internal/core/model/CModelManager.java     |   17 +-
 .../pdom/indexer/ProjectIndexerInputAdapter.java   |    2 +-
 core/org.eclipse.cdt.core/plugin.xml               |    1 +
 .../schema/RemoteProxyManager.exsd                 |  114 ++++++++++
 .../src/org/eclipse/cdt/core/CommandLauncher.java  |   31 ++-
 .../core/remoteproxy/IRemoteCommandLauncher.java   |   31 +++
 .../core/remoteproxy/IRemoteFileProxy.java         |   26 +++
 .../core/remoteproxy/IRemoteProxyManager.java      |   23 ++
 .../internal/core/remoteproxy/LocalFileProxy.java  |   54 +++++
 .../internal/core/remoteproxy/LocalLauncher.java   |   62 ++++++
 .../core/remoteproxy/RemoteProxyManager.java       |  112 ++++++++++
 core/org.eclipse.cdt.rdt.proxy/.classpath          |    7 +
 core/org.eclipse.cdt.rdt.proxy/.project            |   28 +++
 .../.settings/org.eclipse.jdt.core.prefs           |    8 +
 .../org.eclipse.cdt.rdt.proxy/META-INF/MANIFEST.MF |   15 ++
 core/org.eclipse.cdt.rdt.proxy/build.properties    |    5 +
 core/org.eclipse.cdt.rdt.proxy/plugin.xml          |   19 ++
 .../src/org/eclipse/cdt/rdt/proxy/Activator.java   |   81 +++++++
 .../org/eclipse/cdt/rdt/proxy/RDTProxyManager.java |   44 ++++
 .../org/eclipse/cdt/rdt/proxy/Resources.properties |   11 +
 .../rdt/internal/rdt/proxy/RDTCommandLauncher.java |  227 +++++++++++++++++++
 .../rdt/internal/rdt/proxy/RDTFileProxy.java       |   51 +++++
 .../internal/rdt/proxy/RemoteProcessClosure.java   |  234 ++++++++++++++++++++
 .../org/eclipse/cdt/debug/core/CDebugUtils.java    |  109 +++++++++
 launch/org.eclipse.cdt.launch/META-INF/MANIFEST.MF |    3 +-
 .../cdt/launch/AbstractCLaunchDelegate.java        |  121 +++++++++-
 .../launch/internal/LocalCDILaunchDelegate.java    |   43 +++-
 28 files changed, 1465 insertions(+), 15 deletions(-)
 create mode 100644 core/org.eclipse.cdt.core/schema/RemoteProxyManager.exsd
 create mode 100644 core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/IRemoteCommandLauncher.java
 create mode 100644 core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/IRemoteFileProxy.java
 create mode 100644 core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/IRemoteProxyManager.java
 create mode 100644 core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/LocalFileProxy.java
 create mode 100644 core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/LocalLauncher.java
 create mode 100644 core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/RemoteProxyManager.java
 create mode 100644 core/org.eclipse.cdt.rdt.proxy/.classpath
 create mode 100644 core/org.eclipse.cdt.rdt.proxy/.project
 create mode 100644 core/org.eclipse.cdt.rdt.proxy/.settings/org.eclipse.jdt.core.prefs
 create mode 100644 core/org.eclipse.cdt.rdt.proxy/META-INF/MANIFEST.MF
 create mode 100644 core/org.eclipse.cdt.rdt.proxy/build.properties
 create mode 100644 core/org.eclipse.cdt.rdt.proxy/plugin.xml
 create mode 100644 core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/cdt/rdt/proxy/Activator.java
 create mode 100644 core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/cdt/rdt/proxy/RDTProxyManager.java
 create mode 100644 core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/cdt/rdt/proxy/Resources.properties
 create mode 100644 core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/rdt/internal/rdt/proxy/RDTCommandLauncher.java
 create mode 100644 core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/rdt/internal/rdt/proxy/RDTFileProxy.java
 create mode 100644 core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/rdt/internal/rdt/proxy/RemoteProcessClosure.java

diff --git a/core/org.eclipse.cdt.core/META-INF/MANIFEST.MF b/core/org.eclipse.cdt.core/META-INF/MANIFEST.MF
index 9130967..adcc8a1 100644
--- a/core/org.eclipse.cdt.core/META-INF/MANIFEST.MF
+++ b/core/org.eclipse.cdt.core/META-INF/MANIFEST.MF
@@ -84,6 +84,7 @@ Export-Package: org.eclipse.cdt.core,
  org.eclipse.cdt.internal.core.pdom.dom.cpp;x-internal:=true,
  org.eclipse.cdt.internal.core.pdom.export;x-internal:=true,
  org.eclipse.cdt.internal.core.pdom.indexer;x-friends:="org.eclipse.cdt.ui",
+ org.eclipse.cdt.internal.core.remoteproxy;x-friends:="org.eclipse.cdt.managedbuilder.core,org.eclipse.cdt.rdt.proxy",
  org.eclipse.cdt.internal.core.resources;x-friends:="org.eclipse.cdt.ui,org.eclipse.cdt.make.core,org.eclipse.cdt.codan.ui.cxx",
  org.eclipse.cdt.internal.core.settings.model;x-internal:=true,
  org.eclipse.cdt.internal.core.util;x-internal:=true,
diff --git a/core/org.eclipse.cdt.core/model/org/eclipse/cdt/internal/core/model/CModelManager.java b/core/org.eclipse.cdt.core/model/org/eclipse/cdt/internal/core/model/CModelManager.java
index 16deb2d..2c47e7d 100644
--- a/core/org.eclipse.cdt.core/model/org/eclipse/cdt/internal/core/model/CModelManager.java
+++ b/core/org.eclipse.cdt.core/model/org/eclipse/cdt/internal/core/model/CModelManager.java
@@ -61,6 +61,8 @@ import org.eclipse.cdt.core.settings.model.ICProjectDescriptionListener;
 import org.eclipse.cdt.core.settings.model.ICSettingObject;
 import org.eclipse.cdt.internal.core.CCoreInternals;
 import org.eclipse.cdt.internal.core.LocalProjectScope;
+import org.eclipse.cdt.internal.core.remoteproxy.IRemoteFileProxy;
+import org.eclipse.cdt.internal.core.remoteproxy.RemoteProxyManager;
 import org.eclipse.cdt.internal.core.resources.ResourceLookup;
 import org.eclipse.cdt.internal.core.settings.model.CProjectDescription;
 import org.eclipse.cdt.internal.core.settings.model.CProjectDescriptionManager;
@@ -170,9 +172,9 @@ public class CModelManager implements IResourceChangeListener, IContentTypeChang
 	 */
 	private HashMap<ICProject, SourceMapper> sourceMappers = new HashMap<ICProject, SourceMapper>();
 
-	public static final IWorkingCopy[] NoWorkingCopy = {};
+	public static final IWorkingCopy[] NoWorkingCopy = new IWorkingCopy[0];
 
-	static volatile CModelManager factory;
+	static volatile CModelManager factory = null;
 
 	private CModelManager() {
 	}
@@ -731,8 +733,17 @@ public class CModelManager implements IResourceChangeListener, IContentTypeChang
 			}
 		}
 
-		IPath location = file.getLocation();
+//		IPath location = file.getLocation();
 
+		IRemoteFileProxy proxy;
+		try {
+			proxy = RemoteProxyManager.getInstance().getFileProxy(file.getProject());
+		} catch (CoreException e1) {
+			return null;
+		}
+		URI fileLocationURI = file.getLocationURI();
+		IPath location = new Path(proxy.toPath(fileLocationURI));
+		
 		for (BinaryParserConfig parser2 : parsers) {
 			try {
 				IBinaryParser parser = parser2.getBinaryParser();
diff --git a/core/org.eclipse.cdt.core/parser/org/eclipse/cdt/internal/core/pdom/indexer/ProjectIndexerInputAdapter.java b/core/org.eclipse.cdt.core/parser/org/eclipse/cdt/internal/core/pdom/indexer/ProjectIndexerInputAdapter.java
index e24dce8..9499771 100644
--- a/core/org.eclipse.cdt.core/parser/org/eclipse/cdt/internal/core/pdom/indexer/ProjectIndexerInputAdapter.java
+++ b/core/org.eclipse.cdt.core/parser/org/eclipse/cdt/internal/core/pdom/indexer/ProjectIndexerInputAdapter.java
@@ -318,7 +318,7 @@ public class ProjectIndexerInputAdapter extends IndexerInputAdapter {
 	@Override
 	public FileContent getCodeReader(Object tuo) {
 		ITranslationUnit tu= (ITranslationUnit) tuo;
-		if (tu.getLocation() == null)
+		if (tu.getLocationURI() == null)
 			return null;
 
 		final FileContent reader= FileContent.create(tu);
diff --git a/core/org.eclipse.cdt.core/plugin.xml b/core/org.eclipse.cdt.core/plugin.xml
index bb1125c..6515a15 100644
--- a/core/org.eclipse.cdt.core/plugin.xml
+++ b/core/org.eclipse.cdt.core/plugin.xml
@@ -673,6 +673,7 @@
    <extension-point id="RefreshExclusionFactory" name="%refreshExclusionFactory.name" schema="schema/RefreshExclusionFactory.exsd"/>
    <extension-point id="LanguageSettingsProvider" name="%LanguageSettingsProvider.name" schema="schema/LanguageSettingsProvider.exsd"/>
    <extension-point id="UNCPathConverter" name="%uncPathConverter.name" schema="schema/UNCPathConverter.exsd"/>
+   <extension-point id="RemoteProxyManager" name="RemoteProxyManager" schema="schema/RemoteProxyManager.exsd"/>
 
    <extension
          point="org.eclipse.cdt.core.templateProcessTypes">
diff --git a/core/org.eclipse.cdt.core/schema/RemoteProxyManager.exsd b/core/org.eclipse.cdt.core/schema/RemoteProxyManager.exsd
new file mode 100644
index 0000000..31a1868
--- /dev/null
+++ b/core/org.eclipse.cdt.core/schema/RemoteProxyManager.exsd
@@ -0,0 +1,114 @@
+<?xml version='1.0' encoding='UTF-8'?>
+<!-- Schema file written by PDE -->
+<schema targetNamespace="org.eclipse.cdt.core" xmlns="http://www.w3.org/2001/XMLSchema">
+<annotation>
+      <appinfo>
+         <meta.schema plugin="org.eclipse.cdt.core" id="RemoteProxyManager" name="Remote Proxy Manager"/>
+      </appinfo>
+      <documentation>
+         Use this to identify a Remote Proxy Manager object of type IRemoteProxyManager.
+      </documentation>
+   </annotation>
+
+   <element name="extension">
+      <annotation>
+         <appinfo>
+            <meta.element />
+         </appinfo>
+      </annotation>
+      <complexType>
+         <sequence>
+            <element ref="manager"/>
+         </sequence>
+         <attribute name="point" type="string" use="required">
+            <annotation>
+               <documentation>
+                  
+               </documentation>
+            </annotation>
+         </attribute>
+         <attribute name="id" type="string">
+            <annotation>
+               <documentation>
+                  
+               </documentation>
+            </annotation>
+         </attribute>
+         <attribute name="name" type="string">
+            <annotation>
+               <documentation>
+                  
+               </documentation>
+               <appinfo>
+                  <meta.attribute translatable="true"/>
+               </appinfo>
+            </annotation>
+         </attribute>
+      </complexType>
+   </element>
+
+   <element name="manager">
+      <annotation>
+         <documentation>
+            A class which implements IRemoteProxyManager.
+         </documentation>
+      </annotation>
+      <complexType>
+         <attribute name="class" type="string" use="required">
+            <annotation>
+               <documentation>
+                  Identifier of class which implements IRemoteProxyManager interface.
+               </documentation>
+               <appinfo>
+                  <meta.attribute kind="java" basedOn=":org.eclipse.linuxtools.profiling.launch.IRemoteProxyManager"/>
+               </appinfo>
+            </annotation>
+         </attribute>
+         <attribute name="scheme" type="string" use="required">
+            <annotation>
+               <documentation>
+                  Connection type that this RemoteProxyManager supports.
+               </documentation>
+            </annotation>
+         </attribute>
+      </complexType>
+   </element>
+
+   <annotation>
+      <appinfo>
+         <meta.section type="since"/>
+      </appinfo>
+      <documentation>
+         1.1.0
+      </documentation>
+   </annotation>
+
+   <annotation>
+      <appinfo>
+         <meta.section type="examples"/>
+      </appinfo>
+      <documentation>
+         [Enter extension point usage example here.]
+      </documentation>
+   </annotation>
+
+   <annotation>
+      <appinfo>
+         <meta.section type="apiinfo"/>
+      </appinfo>
+      <documentation>
+         [Enter API information here.]
+      </documentation>
+   </annotation>
+
+   <annotation>
+      <appinfo>
+         <meta.section type="implementation"/>
+      </appinfo>
+      <documentation>
+         [Enter information about supplied implementation of this extension point.]
+      </documentation>
+   </annotation>
+
+
+</schema>
diff --git a/core/org.eclipse.cdt.core/src/org/eclipse/cdt/core/CommandLauncher.java b/core/org.eclipse.cdt.core/src/org/eclipse/cdt/core/CommandLauncher.java
index a5e0555..5a8b946 100644
--- a/core/org.eclipse.cdt.core/src/org/eclipse/cdt/core/CommandLauncher.java
+++ b/core/org.eclipse.cdt.core/src/org/eclipse/cdt/core/CommandLauncher.java
@@ -19,6 +19,7 @@ import org.eclipse.cdt.internal.core.Cygwin;
 import org.eclipse.cdt.internal.core.Messages;
 import org.eclipse.cdt.internal.core.ProcessClosure;
 import org.eclipse.cdt.utils.PathUtil;
+import org.eclipse.cdt.utils.pty.PTY;
 import org.eclipse.cdt.utils.spawner.EnvironmentReader;
 import org.eclipse.cdt.utils.spawner.ProcessFactory;
 import org.eclipse.core.resources.IProject;
@@ -45,6 +46,8 @@ public class CommandLauncher implements ICommandLauncher {
 	private Properties fEnvironment = null;
 
 	protected String fErrorMessage = ""; //$NON-NLS-1$
+
+	private String lineSeparator;
 	private IProject fProject;
 
 	/**
@@ -60,6 +63,7 @@ public class CommandLauncher implements ICommandLauncher {
 	public CommandLauncher() {
 		fProcess = null;
 		fShowCommand = false;
+		lineSeparator = System.getProperty("line.separator", "\n"); //$NON-NLS-1$ //$NON-NLS-2$
 	}
 
 	/* (non-Javadoc)
@@ -157,7 +161,32 @@ public class CommandLauncher implements ICommandLauncher {
 		return null;
 	}
 
-
+	/**
+	 * @since 8.0.1
+	 * @see org.eclipse.cdt.core.ICommandLauncher#execute(IPath, String[], String[], IPath, IProgressMonitor)
+	 */
+	public Process execute(IPath commandPath, String[] args, String[] env, IPath changeToDirectory, 
+			boolean usePTY, IProgressMonitor monitor) throws CoreException {
+		try {
+			// add platform specific arguments (shell invocation)
+			fCommandArgs = constructCommandArray(commandPath.toOSString(), args);
+			
+			File file = null;
+			
+			if(changeToDirectory != null)
+				file = changeToDirectory.toFile();
+			
+			if (usePTY && PTY.isSupported())
+				fProcess = ProcessFactory.getFactory().exec(fCommandArgs, env, file, new PTY());
+			else
+				fProcess = ProcessFactory.getFactory().exec(fCommandArgs, env, file);
+			fErrorMessage = ""; //$NON-NLS-1$
+		} catch (IOException e) {
+			setErrorMessage(e.getMessage());
+			fProcess = null;
+		}
+		return fProcess;
+	}
 	/**
 	 * @since 5.1
 	 * @see org.eclipse.cdt.core.ICommandLauncher#execute(IPath, String[], String[], IPath, IProgressMonitor)
diff --git a/core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/IRemoteCommandLauncher.java b/core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/IRemoteCommandLauncher.java
new file mode 100644
index 0000000..09a7d9e
--- /dev/null
+++ b/core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/IRemoteCommandLauncher.java
@@ -0,0 +1,31 @@
+/*******************************************************************************
+ * Copyright (c) 2011 Red Hat Inc..
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ *     Red Hat Incorporated - initial API and implementation
+ *******************************************************************************/
+package org.eclipse.cdt.internal.core.remoteproxy;
+
+import java.io.OutputStream;
+
+import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.IPath;
+import org.eclipse.core.runtime.IProgressMonitor;
+
+public interface IRemoteCommandLauncher {
+	
+	public final static int OK = 0;
+	public final static int COMMAND_CANCELED = 1;
+	public final static int ILLEGAL_COMMAND = -1;
+	
+	public Process execute(String commandPath, String[] args, String[] env, String changeToDirectory, IProgressMonitor monitor) throws CoreException;
+	public Process execute(String commandPath, String[] args, String[] env, String changeToDirectory, boolean usePTY, IProgressMonitor monitor) throws CoreException;
+	public int waitAndRead(OutputStream output, OutputStream err, IProgressMonitor monitor);
+	public String getErrorMessage();
+	public String getCommandLine();
+	
+}
\ No newline at end of file
diff --git a/core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/IRemoteFileProxy.java b/core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/IRemoteFileProxy.java
new file mode 100644
index 0000000..cac25b3
--- /dev/null
+++ b/core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/IRemoteFileProxy.java
@@ -0,0 +1,26 @@
+/*******************************************************************************
+ * Copyright (c) 2011 Red Hat Inc..
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ *     Red Hat Incorporated - initial API and implementation
+ *******************************************************************************/
+package org.eclipse.cdt.internal.core.remoteproxy;
+
+import java.net.URI;
+
+import org.eclipse.core.filesystem.IFileStore;
+import org.eclipse.core.runtime.IPath;
+
+public interface IRemoteFileProxy {
+	
+	public URI toURI(IPath path);
+	public URI toURI(String path);
+	public String toPath(URI uri);
+	public String getDirectorySeparator();
+	public IFileStore getResource(String path);
+
+}
diff --git a/core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/IRemoteProxyManager.java b/core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/IRemoteProxyManager.java
new file mode 100644
index 0000000..cc8c0cd
--- /dev/null
+++ b/core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/IRemoteProxyManager.java
@@ -0,0 +1,23 @@
+/*******************************************************************************
+ * Copyright (c) 2011 Red Hat Inc..
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ *     Red Hat Incorporated - initial API and implementation
+ *******************************************************************************/
+package org.eclipse.cdt.internal.core.remoteproxy;
+
+import org.eclipse.core.resources.IProject;
+import org.eclipse.core.runtime.CoreException;
+
+public interface IRemoteProxyManager {
+	String EXTENSION_POINT_ID = "RemoteProxyManager"; //$NON-NLS-1$
+	String MANAGER_NAME = "manager"; //$NON-NLS-1$
+	String SCHEME_ID = "scheme"; //$NON-NLS-1$ 
+	public IRemoteFileProxy getFileProxy(IProject project) throws CoreException;
+	public IRemoteCommandLauncher getLauncher(IProject project) throws CoreException;
+	public String getOS(IProject project) throws CoreException;
+}
diff --git a/core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/LocalFileProxy.java b/core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/LocalFileProxy.java
new file mode 100644
index 0000000..e39a636
--- /dev/null
+++ b/core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/LocalFileProxy.java
@@ -0,0 +1,54 @@
+/*******************************************************************************
+ * Copyright (c) 2011 Red Hat Inc..
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ *     Red Hat Incorporated - initial API and implementation
+ *******************************************************************************/
+package org.eclipse.cdt.internal.core.remoteproxy;
+
+import java.net.URI;
+import java.net.URISyntaxException;
+
+import org.eclipse.core.filesystem.EFS;
+import org.eclipse.core.filesystem.IFileStore;
+import org.eclipse.core.runtime.IPath;
+import org.eclipse.core.runtime.Path;
+
+public class LocalFileProxy implements IRemoteFileProxy {
+
+	@Override
+	public URI toURI(IPath path) {
+		return path.toFile().toURI();
+	}
+
+	@Override
+	public URI toURI(String path) {
+		try {
+			return new URI(path);
+		} catch (URISyntaxException e) {
+			return null;
+		}
+	}
+
+	@Override
+	public String toPath(URI uri) {
+		return uri.getPath();
+	}
+
+	@Override
+	public String getDirectorySeparator() {
+		// TODO Auto-generated method stub
+		return System.getProperty("file.separator"); //$NON-NLS-1$
+	}
+
+	@Override
+	public IFileStore getResource(String path) {
+		// TODO Auto-generated method stub
+		return EFS.getLocalFileSystem().getStore(new Path(path));
+	}
+
+}
diff --git a/core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/LocalLauncher.java b/core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/LocalLauncher.java
new file mode 100644
index 0000000..aa83cb8
--- /dev/null
+++ b/core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/LocalLauncher.java
@@ -0,0 +1,62 @@
+/*******************************************************************************
+ * Copyright (c) 2011 Red Hat Inc..
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ *     Red Hat Incorporated - initial API and implementation
+ *******************************************************************************/
+package org.eclipse.cdt.internal.core.remoteproxy;
+
+import java.io.OutputStream;
+
+import org.eclipse.cdt.core.CommandLauncher;
+import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.core.runtime.Path;
+
+public class LocalLauncher implements IRemoteCommandLauncher {
+
+	private CommandLauncher launcher;
+	
+	public LocalLauncher() {
+		launcher = new CommandLauncher();
+	}
+	
+	@Override
+	public Process execute(String commandPath, String[] args, String[] env,
+			String changeToDirectory, IProgressMonitor monitor)
+			throws CoreException {
+		launcher.showCommand(true);
+		Process p = launcher.execute(new Path(commandPath), args, env, new Path(changeToDirectory), monitor);
+		return p;
+	}
+
+	@Override
+	public Process execute(String commandPath, String[] args, String[] env,
+			String changeToDirectory, boolean usePTY, IProgressMonitor monitor)
+					throws CoreException {
+		launcher.showCommand(true);
+		Process p = launcher.execute(new Path(commandPath), args, env, new Path(changeToDirectory), usePTY, monitor);
+		return p;
+	}
+	
+	@Override
+	public int waitAndRead(OutputStream output, OutputStream err,
+			IProgressMonitor monitor) {
+		return launcher.waitAndRead(output, err, monitor);
+	}
+	
+	@Override
+	public String getErrorMessage() {
+		return launcher.getErrorMessage();
+	}
+
+	@Override
+	public String getCommandLine() {
+		return launcher.getCommandLine();
+	}
+
+}
diff --git a/core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/RemoteProxyManager.java b/core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/RemoteProxyManager.java
new file mode 100644
index 0000000..bcc20cd
--- /dev/null
+++ b/core/org.eclipse.cdt.core/src/org/eclipse/cdt/internal/core/remoteproxy/RemoteProxyManager.java
@@ -0,0 +1,112 @@
+/*******************************************************************************
+ * Copyright (c) 2011 Red Hat Inc..
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ *     Red Hat Incorporated - initial API and implementation
+ *******************************************************************************/
+package org.eclipse.cdt.internal.core.remoteproxy;
+
+import java.net.URI;
+import java.util.HashMap;
+import java.util.Map;
+
+import org.eclipse.cdt.core.CCorePlugin;
+import org.eclipse.core.resources.IProject;
+import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.IConfigurationElement;
+import org.eclipse.core.runtime.IExtensionPoint;
+import org.eclipse.core.runtime.Platform;
+
+public class RemoteProxyManager implements IRemoteProxyManager {
+	
+	private static final String EXT_ATTR_CLASS = "class"; //$NON-NLS-1$
+	private static final String LocalHost = "LOCALHOST"; //$NON-NLS-1$
+	
+	private static RemoteProxyManager manager;
+	private LocalFileProxy lfp;
+	private Map<String, IRemoteProxyManager> remoteManagers = new HashMap<String, IRemoteProxyManager>();
+	
+	private RemoteProxyManager() {
+		// do nothing
+	}
+	
+	public static RemoteProxyManager getInstance() {
+		if (manager == null)
+			manager = new RemoteProxyManager();
+		return manager;
+	}
+	
+	LocalFileProxy getLocalFileProxy() {
+		if (lfp == null)
+			lfp = new LocalFileProxy();
+		return lfp;
+	}
+	
+	private IRemoteProxyManager getRemoteManager(String schemeId) throws CoreException {
+		IRemoteProxyManager remoteManager = remoteManagers.get(schemeId);
+		if (remoteManager == null) {
+			IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(CCorePlugin.PLUGIN_ID, IRemoteProxyManager.EXTENSION_POINT_ID);
+			IConfigurationElement[] infos = extensionPoint.getConfigurationElements();
+			for(int i = 0; i < infos.length; i++) {
+				IConfigurationElement configurationElement = infos[i];
+				if (configurationElement.getName().equals(IRemoteProxyManager.MANAGER_NAME)) {
+					if (configurationElement.getAttribute(IRemoteProxyManager.SCHEME_ID).equals(schemeId)) {
+						Object obj = configurationElement.createExecutableExtension(EXT_ATTR_CLASS);
+						if (obj instanceof IRemoteProxyManager) {
+							remoteManager = (IRemoteProxyManager)obj;
+							remoteManagers.put(schemeId, remoteManager);
+							break;
+						}
+					}
+				}
+			}
+		}
+		return remoteManager;
+	}
+	
+	@Override
+	public IRemoteFileProxy getFileProxy(IProject project) throws CoreException {
+		URI projectURI = project.getLocationURI();
+		String scheme = projectURI.getScheme();
+		if (scheme != null) {
+		   IRemoteProxyManager manager = getRemoteManager(scheme);
+		   if (manager != null)
+		      return manager.getFileProxy(project);
+		}
+		if (LocalHost.equals(projectURI.getHost()))
+			return getLocalFileProxy();
+		return null;
+	}
+	
+	@Override
+	public IRemoteCommandLauncher getLauncher(IProject project) throws CoreException {
+		URI projectURI = project.getLocationURI();
+		String scheme = projectURI.getScheme();
+		if (scheme != null) {
+			IRemoteProxyManager manager = getRemoteManager(scheme);
+			if (manager != null)
+		       return manager.getLauncher(project);
+		}
+		if (LocalHost.equals(projectURI.getHost()))
+			return new LocalLauncher();
+		return null;
+	}
+
+	@Override
+	public String getOS(IProject project) throws CoreException {
+		URI projectURI = project.getLocationURI();
+		String scheme = projectURI.getScheme();
+		if (scheme != null && !LocalHost.equals(projectURI.getHost())) {
+			IRemoteProxyManager manager = getRemoteManager(scheme);
+			if (manager != null)
+			  return manager.getOS(project);
+		}		
+		if (LocalHost.equals(projectURI.getHost()))
+			return Platform.getOS();
+		return null;
+	}
+}
diff --git a/core/org.eclipse.cdt.rdt.proxy/.classpath b/core/org.eclipse.cdt.rdt.proxy/.classpath
new file mode 100644
index 0000000..ad32c83
--- /dev/null
+++ b/core/org.eclipse.cdt.rdt.proxy/.classpath
@@ -0,0 +1,7 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<classpath>
+	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.6"/>
+	<classpathentry kind="con" path="org.eclipse.pde.core.requiredPlugins"/>
+	<classpathentry kind="src" path="src"/>
+	<classpathentry kind="output" path="bin"/>
+</classpath>
diff --git a/core/org.eclipse.cdt.rdt.proxy/.project b/core/org.eclipse.cdt.rdt.proxy/.project
new file mode 100644
index 0000000..0da1ab2
--- /dev/null
+++ b/core/org.eclipse.cdt.rdt.proxy/.project
@@ -0,0 +1,28 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<projectDescription>
+	<name>org.eclipse.cdt.rdt.proxy</name>
+	<comment></comment>
+	<projects>
+	</projects>
+	<buildSpec>
+		<buildCommand>
+			<name>org.eclipse.jdt.core.javabuilder</name>
+			<arguments>
+			</arguments>
+		</buildCommand>
+		<buildCommand>
+			<name>org.eclipse.pde.ManifestBuilder</name>
+			<arguments>
+			</arguments>
+		</buildCommand>
+		<buildCommand>
+			<name>org.eclipse.pde.SchemaBuilder</name>
+			<arguments>
+			</arguments>
+		</buildCommand>
+	</buildSpec>
+	<natures>
+		<nature>org.eclipse.pde.PluginNature</nature>
+		<nature>org.eclipse.jdt.core.javanature</nature>
+	</natures>
+</projectDescription>
diff --git a/core/org.eclipse.cdt.rdt.proxy/.settings/org.eclipse.jdt.core.prefs b/core/org.eclipse.cdt.rdt.proxy/.settings/org.eclipse.jdt.core.prefs
new file mode 100644
index 0000000..b249467
--- /dev/null
+++ b/core/org.eclipse.cdt.rdt.proxy/.settings/org.eclipse.jdt.core.prefs
@@ -0,0 +1,8 @@
+#Mon Nov 21 18:56:58 EST 2011
+eclipse.preferences.version=1
+org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode=enabled
+org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.6
+org.eclipse.jdt.core.compiler.compliance=1.6
+org.eclipse.jdt.core.compiler.problem.assertIdentifier=error
+org.eclipse.jdt.core.compiler.problem.enumIdentifier=error
+org.eclipse.jdt.core.compiler.source=1.6
diff --git a/core/org.eclipse.cdt.rdt.proxy/META-INF/MANIFEST.MF b/core/org.eclipse.cdt.rdt.proxy/META-INF/MANIFEST.MF
new file mode 100644
index 0000000..1242325
--- /dev/null
+++ b/core/org.eclipse.cdt.rdt.proxy/META-INF/MANIFEST.MF
@@ -0,0 +1,15 @@
+Manifest-Version: 1.0
+Bundle-ManifestVersion: 2
+Bundle-Name: CDT Remote Proxy
+Bundle-SymbolicName: org.eclipse.cdt.rdt.proxy;singleton:=true
+Bundle-Version: 1.0.0.qualifier
+Bundle-Activator: org.eclipse.cdt.rdt.proxy.Activator
+Require-Bundle: org.eclipse.core.runtime,
+ org.eclipse.ptp.rdt.core;bundle-version="3.1.100",
+ org.eclipse.ptp.remote.core;bundle-version="5.0.0",
+ org.eclipse.cdt.core;bundle-version="5.4.0",
+ org.eclipse.core.resources;bundle-version="3.7.100",
+ org.eclipse.core.filesystem;bundle-version="1.3.100",
+ org.eclipse.ui;bundle-version="3.7.0"
+Bundle-ActivationPolicy: lazy
+Bundle-RequiredExecutionEnvironment: JavaSE-1.6
diff --git a/core/org.eclipse.cdt.rdt.proxy/build.properties b/core/org.eclipse.cdt.rdt.proxy/build.properties
new file mode 100644
index 0000000..e9863e2
--- /dev/null
+++ b/core/org.eclipse.cdt.rdt.proxy/build.properties
@@ -0,0 +1,5 @@
+source.. = src/
+output.. = bin/
+bin.includes = META-INF/,\
+               .,\
+               plugin.xml
diff --git a/core/org.eclipse.cdt.rdt.proxy/plugin.xml b/core/org.eclipse.cdt.rdt.proxy/plugin.xml
new file mode 100644
index 0000000..1c0d7d3
--- /dev/null
+++ b/core/org.eclipse.cdt.rdt.proxy/plugin.xml
@@ -0,0 +1,19 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<?eclipse version="3.4"?>
+<plugin>
+   <extension
+         point="org.eclipse.cdt.core.RemoteProxyManager">
+      <manager
+            class="org.eclipse.cdt.rdt.proxy.RDTProxyManager"
+            scheme="rse">
+      </manager>
+   </extension>
+   <extension
+         point="org.eclipse.cdt.core.RemoteProxyManager">
+      <manager
+            class="org.eclipse.cdt.rdt.proxy.RDTProxyManager"
+            scheme="remotetools">
+      </manager>
+   </extension>
+
+</plugin>
diff --git a/core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/cdt/rdt/proxy/Activator.java b/core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/cdt/rdt/proxy/Activator.java
new file mode 100644
index 0000000..fad503c
--- /dev/null
+++ b/core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/cdt/rdt/proxy/Activator.java
@@ -0,0 +1,81 @@
+package org.eclipse.cdt.rdt.proxy;
+
+import java.util.MissingResourceException;
+import java.util.ResourceBundle;
+
+import org.eclipse.ui.plugin.AbstractUIPlugin;
+import org.osgi.framework.BundleContext;
+
+public class Activator extends AbstractUIPlugin {
+
+	// The plug-in ID
+	public static final String PLUGIN_ID = "org.eclipse.cdt.rdt.proxy"; //$NON-NLS-1$
+
+	// The shared instance
+	private static Activator plugin;
+
+	private ResourceBundle resourceBundle;
+
+	
+	private static BundleContext context;
+
+	static BundleContext getContext() {
+		return context;
+	}
+
+	/*
+	 * (non-Javadoc)
+	 * @see org.eclipse.ui.plugin.AbstractUIPlugin#start(org.osgi.framework.BundleContext)
+	 */
+	public void start(BundleContext context) throws Exception {
+		super.start(context);
+		plugin = this;
+		try {
+			resourceBundle = ResourceBundle.getBundle(PLUGIN_ID + ".Resources"); //$NON-NLS-1$
+		} catch (MissingResourceException x) {
+			resourceBundle = null;
+		}
+	}
+
+	/*
+	 * (non-Javadoc)
+	 * @see org.eclipse.ui.plugin.AbstractUIPlugin#stop(org.osgi.framework.BundleContext)
+	 */
+	public void stop(BundleContext context) throws Exception {
+		plugin = null;
+		super.stop(context);
+	}
+
+	/**
+	 * Returns the plugin's resource bundle,
+	 */
+	public ResourceBundle getResourceBundle() {
+		return resourceBundle;
+	}
+
+	/**
+	 * Returns the string from the plugin's resource bundle,
+	 * or 'key' if not found.
+	 * 
+	 * @param key the message key
+	 * @return the resource bundle message
+	 */
+	public static String getResourceString(String key) {
+		ResourceBundle bundle = plugin.getResourceBundle();
+		try {
+			return bundle.getString(key);
+		} catch (MissingResourceException e) {
+			return key;
+		}
+	}
+
+	/**
+	 * Returns the shared instance
+	 *
+	 * @return the shared instance
+	 */
+	public static Activator getDefault() {
+		return plugin;
+	}
+
+}
diff --git a/core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/cdt/rdt/proxy/RDTProxyManager.java b/core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/cdt/rdt/proxy/RDTProxyManager.java
new file mode 100644
index 0000000..5986e60
--- /dev/null
+++ b/core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/cdt/rdt/proxy/RDTProxyManager.java
@@ -0,0 +1,44 @@
+/*******************************************************************************
+ * Copyright (c) 2011 Red Hat Inc..
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ *     Red Hat Incorporated - initial API and implementation
+ *******************************************************************************/
+package org.eclipse.cdt.rdt.proxy;
+
+import org.eclipse.cdt.internal.core.remoteproxy.IRemoteCommandLauncher;
+import org.eclipse.cdt.internal.core.remoteproxy.IRemoteFileProxy;
+import org.eclipse.cdt.internal.core.remoteproxy.IRemoteProxyManager;
+import org.eclipse.core.resources.IProject;
+import org.eclipse.core.runtime.CoreException;
+import org.eclipse.rdt.internal.rdt.proxy.RDTCommandLauncher;
+import org.eclipse.rdt.internal.rdt.proxy.RDTFileProxy;
+
+
+public class RDTProxyManager implements IRemoteProxyManager {
+
+	@Override
+	public IRemoteFileProxy getFileProxy(IProject project) throws CoreException {
+		return new RDTFileProxy(project);
+	}
+
+	@Override
+	public IRemoteCommandLauncher getLauncher(IProject project)
+			throws CoreException {
+		return new RDTCommandLauncher(project);
+	}
+
+	@Override
+	public String getOS(IProject project) throws CoreException {
+//		// TODO Auto-generated method stub
+//		URI uri = project.getLocationURI();
+//		IRemoteServices services = PTPRemoteCorePlugin.getDefault().getRemoteServices(uri);
+//		IRemoteConnection connection = services.getConnectionManager().getConnection(uri);
+		return "linux"; //FIXME: why doesn't getProperty("os.name") work?
+	}
+
+}
diff --git a/core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/cdt/rdt/proxy/Resources.properties b/core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/cdt/rdt/proxy/Resources.properties
new file mode 100644
index 0000000..dd85f8f
--- /dev/null
+++ b/core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/cdt/rdt/proxy/Resources.properties
@@ -0,0 +1,11 @@
+#*******************************************************************************
+# Copyright (c) 2011 Red Hat Inc..
+# All rights reserved. This program and the accompanying materials
+# are made available under the terms of the Eclipse Public License v1.0
+# which accompanies this distribution, and is available at
+# http://www.eclipse.org/legal/epl-v10.html
+#
+# Contributors:
+#     Red Hat Incorporated - initial API and implementation
+#*******************************************************************************/
+CommandLauncher.error.commandCanceled=Command canceled
\ No newline at end of file
diff --git a/core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/rdt/internal/rdt/proxy/RDTCommandLauncher.java b/core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/rdt/internal/rdt/proxy/RDTCommandLauncher.java
new file mode 100644
index 0000000..4a298c4
--- /dev/null
+++ b/core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/rdt/internal/rdt/proxy/RDTCommandLauncher.java
@@ -0,0 +1,227 @@
+/*******************************************************************************
+ * Copyright (c) 2005, 2009, 2011 IBM Corporation and others.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ *     IBM Corporation - initial API and implementation
+ *     Red Hat Inc. - modify to use with RDT
+ *******************************************************************************/
+package org.eclipse.rdt.internal.rdt.proxy;
+
+import java.io.IOException;
+import java.io.OutputStream;
+import java.net.URI;
+import java.util.Arrays;
+import java.util.Map;
+
+import org.eclipse.cdt.internal.core.remoteproxy.IRemoteCommandLauncher;
+import org.eclipse.cdt.rdt.proxy.Activator;
+import org.eclipse.core.resources.IProject;
+import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.IPath;
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.core.runtime.Path;
+import org.eclipse.ptp.remote.core.IRemoteConnection;
+import org.eclipse.ptp.remote.core.IRemoteFileManager;
+import org.eclipse.ptp.remote.core.IRemoteProcess;
+import org.eclipse.ptp.remote.core.IRemoteProcessBuilder;
+import org.eclipse.ptp.remote.core.IRemoteServices;
+import org.eclipse.ptp.remote.core.PTPRemoteCorePlugin;
+import org.eclipse.ptp.remote.core.RemoteProcessAdapter;
+
+/**
+ * @noextend This class is not intended to be subclassed by clients.
+ */
+public class RDTCommandLauncher implements IRemoteCommandLauncher {
+
+	public final static int COMMAND_CANCELED = IRemoteCommandLauncher.COMMAND_CANCELED;
+	public final static int ILLEGAL_COMMAND = IRemoteCommandLauncher.ILLEGAL_COMMAND;
+	public final static int OK = IRemoteCommandLauncher.OK;
+
+	
+	protected IRemoteProcess fProcess;
+	protected boolean fShowCommand;
+	protected String[] fCommandArgs;
+
+	protected String fErrorMessage = ""; //$NON-NLS-1$
+
+	private String lineSeparator;
+	private IProject fProject;
+
+	/**
+	 * The number of milliseconds to pause between polling.
+	 */
+	protected static final long DELAY = 50L;
+
+	/**
+	 * Creates a new launcher Fills in stderr and stdout output to the given
+	 * streams. Streams can be set to <code>null</code>, if output not
+	 * required
+	 */
+	public RDTCommandLauncher(IProject project) {
+		fProcess = null;
+		fShowCommand = false;
+		fProject = project;
+		lineSeparator = System.getProperty("line.separator", "\n"); //$NON-NLS-1$ //$NON-NLS-2$
+	}
+
+	public void showCommand(boolean show) {
+		fShowCommand = show;
+	}
+
+	/* (non-Javadoc)
+	 * @see org.eclipse.cdt.core.ICommandLauncher#getErrorMessage()
+	 */
+	public String getErrorMessage() {
+		return fErrorMessage;
+	}
+
+	/* (non-Javadoc)
+	 * @see org.eclipse.cdt.core.ICommandLauncher#setErrorMessage(java.lang.String)
+	 */
+	public void setErrorMessage(String error) {
+		fErrorMessage = error;
+	}
+
+	/* (non-Javadoc)
+	 * @see org.eclipse.cdt.core.ICommandLauncher#getCommandArgs()
+	 */
+	public String[] getCommandArgs() {
+		return fCommandArgs;
+	}
+
+	/* (non-Javadoc)
+	 * @see org.eclipse.cdt.core.ICommandLauncher#getCommandLine()
+	 */
+	public String getCommandLine() {
+		return getCommandLine(getCommandArgs());
+	}
+
+	/**
+	 * Constructs a command array that will be passed to the process
+	 */
+	protected String[] constructCommandArray(String command, String[] commandArgs) {
+		String[] args = new String[1 + commandArgs.length];
+		args[0] = command;
+		System.arraycopy(commandArgs, 0, args, 1, commandArgs.length);
+		return args;
+	}
+
+	
+	/**
+	 * @see org.eclipse.cdt.core.IRemoteCommandLauncher#execute(IPath, String[], String[], IPath, IProgressMonitor)
+	 */
+	public Process execute(IPath commandPath, String[] args, String[] env, IPath changeToDirectory, IProgressMonitor monitor) throws CoreException {
+		try {
+			// add platform specific arguments (shell invocation)
+			fCommandArgs = constructCommandArray(commandPath.toOSString(), args);
+			fShowCommand = true;
+			URI uri = fProject.getLocationURI();
+			IRemoteServices services = PTPRemoteCorePlugin.getDefault().getRemoteServices(uri);
+			IRemoteConnection connection = services.getConnectionManager().getConnection(uri);
+			IRemoteFileManager fm = services.getFileManager(connection);
+			IRemoteProcessBuilder builder = services.getProcessBuilder(connection, Arrays.asList(fCommandArgs));
+
+			if (changeToDirectory != null)
+				builder.directory(fm.getResource(changeToDirectory.toString()));
+			
+			Map<String,String> envMap = builder.environment();
+			
+			for (int i = 0; i < env.length; ++i) {
+				String s = env[i];
+				String[] tokens = s.split("=", 2);
+				envMap.put(tokens[0], tokens[1]);
+			}
+			
+			fProcess = builder.start();
+			fErrorMessage = ""; //$NON-NLS-1$
+		} catch (IOException e) {
+			setErrorMessage(e.getMessage());
+			return null;
+		}
+		return new RemoteProcessAdapter(fProcess);
+	}
+
+	/* (non-Javadoc)
+	 * @see org.eclipse.cdt.core.IRemoteCommandLauncher#waitAndRead(java.io.OutputStream, java.io.OutputStream, org.eclipse.core.runtime.IProgressMonitor)
+	 */
+	public int waitAndRead(OutputStream output, OutputStream err, IProgressMonitor monitor) {
+		if (fShowCommand) {
+			printCommandLine(output);
+		}
+
+		if (fProcess == null) {
+			return ILLEGAL_COMMAND;
+		}
+
+		RemoteProcessClosure closure = new RemoteProcessClosure(fProcess, output, err);
+		closure.runNonBlocking();
+		while (!monitor.isCanceled() && closure.isAlive()) {
+			try {
+				Thread.sleep(DELAY);
+			} catch (InterruptedException ie) {
+				// ignore
+			}
+		}
+
+		int state = OK;
+
+		// Operation canceled by the user, terminate abnormally.
+		if (monitor.isCanceled()) {
+			closure.terminate();
+			state = COMMAND_CANCELED;
+			setErrorMessage(Activator.getResourceString("CommandLauncher.error.commandCanceled")); //$NON-NLS-1$
+		}
+
+		try {
+			fProcess.waitFor();
+		} catch (InterruptedException e) {
+			// ignore
+		}
+		return state;
+	}
+
+	protected void printCommandLine(OutputStream os) {
+		if (os != null) {
+			String cmd = getCommandLine(getCommandArgs());
+			try {
+				os.write(cmd.getBytes());
+				os.flush();
+			} catch (IOException e) {
+				// ignore;
+			}
+		}
+	}
+
+	protected String getCommandLine(String[] commandArgs) {
+		StringBuffer buf = new StringBuffer();
+		if (fCommandArgs != null) {
+			for (String commandArg : commandArgs) {
+				buf.append(commandArg);
+				buf.append(' ');
+			}
+			buf.append(lineSeparator);
+		}
+		return buf.toString();
+	}
+
+	@Override
+	public Process execute(String commandPath, String[] args, String[] env,
+			String changeToDirectory, IProgressMonitor monitor)
+			throws CoreException {
+		// TODO Auto-generated method stub
+		return execute(new Path(commandPath), args, env, new Path(changeToDirectory), monitor);
+	}
+
+	@Override
+	public Process execute(String commandPath, String[] args, String[] env,
+			String changeToDirectory, boolean usePTY, IProgressMonitor monitor)
+			throws CoreException {
+		// TODO Auto-generated method stub
+		return execute(new Path(commandPath), args, env, new Path(changeToDirectory), monitor);
+	}
+
+}
\ No newline at end of file
diff --git a/core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/rdt/internal/rdt/proxy/RDTFileProxy.java b/core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/rdt/internal/rdt/proxy/RDTFileProxy.java
new file mode 100644
index 0000000..997484b
--- /dev/null
+++ b/core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/rdt/internal/rdt/proxy/RDTFileProxy.java
@@ -0,0 +1,51 @@
+package org.eclipse.rdt.internal.rdt.proxy;
+
+import java.net.URI;
+
+import org.eclipse.cdt.internal.core.remoteproxy.IRemoteFileProxy;
+import org.eclipse.core.filesystem.IFileStore;
+import org.eclipse.core.resources.IProject;
+import org.eclipse.core.runtime.IPath;
+import org.eclipse.ptp.remote.core.IRemoteConnection;
+import org.eclipse.ptp.remote.core.IRemoteFileManager;
+import org.eclipse.ptp.remote.core.IRemoteServices;
+import org.eclipse.ptp.remote.core.PTPRemoteCorePlugin;
+
+public class RDTFileProxy implements IRemoteFileProxy {
+
+	private IRemoteFileManager manager;
+	
+	public RDTFileProxy(IProject project) {
+		URI uri = project.getLocationURI();
+		IRemoteServices services = PTPRemoteCorePlugin.getDefault().getRemoteServices(uri);
+		services.initialize();
+		IRemoteConnection connection = services.getConnectionManager().getConnection(uri);
+		manager = services.getFileManager(connection);
+	}
+	
+	@Override
+	public URI toURI(IPath path) {
+		return manager.toURI(path);
+	}
+
+	@Override
+	public URI toURI(String path) {
+		return manager.toURI(path);
+	}
+
+	@Override
+	public String toPath(URI uri) {
+		return manager.toPath(uri);
+	}
+
+	@Override
+	public String getDirectorySeparator() {
+		return manager.getDirectorySeparator();
+	}
+
+	@Override
+	public IFileStore getResource(String path) {
+		return manager.getResource(path);
+	}
+
+}
diff --git a/core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/rdt/internal/rdt/proxy/RemoteProcessClosure.java b/core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/rdt/internal/rdt/proxy/RemoteProcessClosure.java
new file mode 100644
index 0000000..cbc7677
--- /dev/null
+++ b/core/org.eclipse.cdt.rdt.proxy/src/org/eclipse/rdt/internal/rdt/proxy/RemoteProcessClosure.java
@@ -0,0 +1,234 @@
+/*******************************************************************************
+ * Copyright (c) 2000, 2008 IBM Corporation and others.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ *     IBM Corporation - initial API and implementation
+ *******************************************************************************/
+
+package org.eclipse.rdt.internal.rdt.proxy;
+
+import java.io.BufferedReader;
+import java.io.IOException;
+import java.io.InputStream;
+import java.io.InputStreamReader;
+import java.io.OutputStream;
+
+import org.eclipse.ptp.remote.core.IRemoteProcess;
+
+/**
+ * Bundled state of a launched process including the threads linking the process
+ * in/output to console documents.
+ */
+public class RemoteProcessClosure {
+
+	/**
+	 * Thread which continuously reads from a input stream and pushes the read
+	 * data to an output stream which is immediately flushed afterwards.
+	 */
+	protected static class ReaderThread extends Thread {
+
+		private InputStream fInputStream;
+		private OutputStream fOutputStream;
+		private boolean fFinished = false;
+		private String lineSeparator;
+		/*
+		 * outputStream can be null
+		 */
+		public ReaderThread(ThreadGroup group, String name, InputStream in, OutputStream out) {
+			super(group, name);
+			fOutputStream = out;
+			fInputStream = in;
+			setDaemon(true);
+			lineSeparator = System.getProperty("line.separator"); //$NON-NLS-1$
+		}
+
+		@Override
+		public void run() {
+			try {
+				try {
+					BufferedReader reader = new BufferedReader(new InputStreamReader(fInputStream));
+					String line;
+					while ((line = reader.readLine()) != null) {
+						line += lineSeparator;
+						fOutputStream.write(line.getBytes());
+					}
+				} catch (IOException x) {
+					// ignore
+				} finally {
+					try {
+						//					writer.flush();
+						fOutputStream.flush();
+					} catch (IOException e) {
+						// ignore
+					}
+					try {
+						fInputStream.close();
+					} catch (IOException e) {
+						// ignore
+					}
+				}
+			} finally {
+				complete();
+			}
+		}
+
+		public synchronized boolean finished() {
+			return fFinished;
+		}
+
+		public synchronized void waitFor() {
+			while (!fFinished) {
+				try {
+					wait();
+				} catch (InterruptedException e) {
+				}
+			}
+		}
+
+		public synchronized void complete() {
+			fFinished = true;
+			notify();
+		}
+
+		public void close() {
+			try {
+				fOutputStream.close();
+			} catch (IOException e) {
+				// ignore
+			}
+		}
+	}
+
+	protected static int fCounter = 0;
+
+	protected IRemoteProcess fProcess;
+
+	protected OutputStream fOutput;
+	protected OutputStream fError;
+
+	protected ReaderThread fOutputReader;
+	protected ReaderThread fErrorReader;
+
+	/**
+	 * Creates a process closure and connects the launched process with a
+	 * console document.
+	 * 
+	 * @param outputStream
+	 *            prcess stdout is written to this stream. Can be
+	 *            <code>null</code>, if not interested in reading the output
+	 * @param errorStream
+	 *            prcess stderr is written to this stream. Can be
+	 *            <code>null</code>, if not interested in reading the output
+	 */
+	public RemoteProcessClosure(IRemoteProcess process, OutputStream outputStream, OutputStream errorStream) {
+		fProcess = process;
+		fOutput = outputStream;
+		fError = errorStream;
+	}
+
+	/**
+	 * Live links the launched process with the configured in/out streams using
+	 * reader threads.
+	 */
+	public void runNonBlocking() {
+		ThreadGroup group = new ThreadGroup("CBuilder" + fCounter++); //$NON-NLS-1$
+
+		InputStream stdin = fProcess.getInputStream();
+		InputStream stderr = fProcess.getErrorStream();
+
+		fOutputReader = new ReaderThread(group, "OutputReader", stdin, fOutput); //$NON-NLS-1$
+		fErrorReader = new ReaderThread(group, "ErrorReader", stderr, fError); //$NON-NLS-1$
+
+		fOutputReader.start();
+		fErrorReader.start();
+	}
+
+	public void runBlocking() {
+		runNonBlocking();
+
+		boolean finished = false;
+		while (!finished) {
+			try {
+				fProcess.waitFor();
+			} catch (InterruptedException e) {
+				//System.err.println("Closure exception " +e);
+			}
+			try {
+				fProcess.exitValue();
+				finished = true;
+			} catch (IllegalThreadStateException e) {
+				//System.err.println("Closure exception " +e);
+			}
+		}
+
+		// @@@FIXME: Windows 2000 is screwed; double-check using output threads
+		if (!fOutputReader.finished()) {
+			fOutputReader.waitFor();
+		}
+
+		if (!fErrorReader.finished()) {
+			fErrorReader.waitFor();
+		}
+
+		fOutputReader.close();
+		fErrorReader.close();
+		// it seems that thread termination and stream closing is working
+		// without
+		// any help
+		fProcess = null;
+		fOutputReader = null;
+		fErrorReader = null;
+	}
+
+	public boolean isAlive() {
+		if (fProcess != null) {
+			if (fOutputReader.isAlive() || fErrorReader.isAlive()) {
+				return true;
+			}
+			fProcess = null;
+			fOutputReader.close();
+			fErrorReader.close();
+			fOutputReader = null;
+			fErrorReader = null;
+		}
+		return false;
+	}
+
+	/**
+	 * The same functionality as "isAlive()"
+	 * but does not affect out streams,
+	 * because they can be shared among processes
+	 */
+	public boolean isRunning() {
+		if (fProcess != null) {
+			if (fOutputReader.isAlive() || fErrorReader.isAlive()) {
+				return true;
+			}
+			fProcess = null;
+		}
+		return false;
+	}
+	/**
+	 * Forces the termination the launched process
+	 */
+	public void terminate() {
+		if (fProcess != null) {
+			fProcess.destroy();
+			fProcess = null;
+		}
+		if (!fOutputReader.finished()) {
+			fOutputReader.waitFor();
+		}
+		if (!fErrorReader.finished()) {
+			fErrorReader.waitFor();
+		}
+		fOutputReader.close();
+		fErrorReader.close();
+		fOutputReader = null;
+		fErrorReader = null;
+	}
+}
diff --git a/debug/org.eclipse.cdt.debug.core/src/org/eclipse/cdt/debug/core/CDebugUtils.java b/debug/org.eclipse.cdt.debug.core/src/org/eclipse/cdt/debug/core/CDebugUtils.java
index f88761e..4d92884 100644
--- a/debug/org.eclipse.cdt.debug.core/src/org/eclipse/cdt/debug/core/CDebugUtils.java
+++ b/debug/org.eclipse.cdt.debug.core/src/org/eclipse/cdt/debug/core/CDebugUtils.java
@@ -15,6 +15,8 @@ package org.eclipse.cdt.debug.core;
 import java.io.ByteArrayOutputStream;
 import java.io.FileNotFoundException;
 import java.io.IOException;
+import java.net.URI;
+import java.net.URISyntaxException;
 import java.nio.charset.Charset;
 import java.nio.charset.CharsetDecoder;
 import java.util.ArrayList;
@@ -41,6 +43,10 @@ import org.eclipse.cdt.debug.core.model.ICValue;
 import org.eclipse.cdt.debug.core.model.ICWatchpoint;
 import org.eclipse.cdt.debug.core.model.ICWatchpoint2;
 import org.eclipse.cdt.debug.internal.core.model.CFloatingPointValue;
+import org.eclipse.cdt.internal.core.remoteproxy.IRemoteFileProxy;
+import org.eclipse.cdt.internal.core.remoteproxy.RemoteProxyManager;
+import org.eclipse.core.filesystem.EFS;
+import org.eclipse.core.filesystem.IFileStore;
 import org.eclipse.core.resources.IFile;
 import org.eclipse.core.resources.IMarker;
 import org.eclipse.core.resources.IProject;
@@ -663,6 +669,98 @@ public class CDebugUtils {
 		}
 		return programPath;
 	}
+	/**
+	 * Returns a String path for the file referenced in the <i>C/C++ Application</i>
+	 * setting of a CDT launch configuration. Typically, the file is obtained by
+	 * combining the <i>C/C++ Application</i> setting with the <i>Project</i>
+	 * setting. If unable to combine and resolve these settings to a valid file,
+	 * a CoreException is thrown that provides the reason why. There are many
+	 * such possible reasons (a problem with the <i>Project</i> setting, an
+	 * empty <i>C/C++ Application</i> setting, the combined settings doesn't
+	 * resolve to an existing file, etc).
+	 * 
+	 * @param config
+	 *            the launch configuration
+	 * @param ignoreProjectSetting
+	 *            if true, resolve the file using only the <i>C/C++
+	 *            Application</i> setting. Do not take the <i>Project</i>
+	 *            setting into account.
+	 * @return the path as String
+	 * @throws CoreException
+	 * @since 8.0.1
+	 */
+	public static String verifyProgramURI(ILaunchConfiguration config, boolean ignoreProjectSetting) throws CoreException {
+		ICProject cproject = null;
+		if (!ignoreProjectSetting) {
+			cproject = verifyCProject(config);	// will throw exception if project setting not valid
+		}
+		IPath programPath = CDebugUtils.getProgramPath(config);
+		if (programPath == null || programPath.isEmpty()) {
+			throwCoreException(DebugCoreMessages.getString("CDebugUtils.Program_file_not_specified"), //$NON-NLS-1$
+					ICDTLaunchConfigurationConstants.ERR_UNSPECIFIED_PROGRAM);
+		}
+		
+		String progPath = null;
+		if (programPath != null) {	// this check is here only to avoid warning; compiler can't tell we'll throw an exception above
+			progPath = programPath.toString();
+			IFileStore progFile = null;
+			if (!programPath.isAbsolute() && (cproject != null)) {
+				// See if we can brute-force append the program path to the
+				// project location. This allows us to support the program file
+				// being outside the project, even outside the workspace, without
+				// requiring a linked resource (e.g., the setting could be 
+				// "..\..\some\dir\myprogram.exe")
+				URI projectURI = cproject.getProject().getLocationURI();
+				String location = projectURI.toString();
+				//FIXME: should we use proxy getDirectorySeparator()?
+				String projectPath = projectURI.getPath();
+				URI programURI = null;
+				if (projectPath.endsWith("/")) //$NON-NLS-1$
+				    programURI = projectURI.resolve("./" + programPath); //$NON-NLS-1$
+				else
+				    programURI = projectURI.resolve("./" + cproject.getProject().getName() + "/" + programPath); //$NON-NLS-1$ //$NON-NLS-2$
+				IRemoteFileProxy proxy = RemoteProxyManager.getInstance().getFileProxy(cproject.getProject());
+				progPath = proxy.toPath(programURI);
+				progFile = proxy.getResource(progPath);
+				if (!progFile.fetchInfo().exists()) {
+					// Try looking in the project for the file. This
+					// supports linked resources.
+					IFile projFile = null;
+					try {
+						projFile = cproject.getProject().getFile(CDebugUtils.getProgramPath(config));
+					} catch (IllegalArgumentException exc) {
+						// thrown if relative path that resolves to a root file (e.g., "..\somefile")							
+					}	
+					if (projFile != null && projFile.exists()) {
+						URI projFileURI = projFile.getLocationURI();
+						progPath = proxy.toPath(projFileURI);
+					}
+				}
+			}
+			
+			if (progPath != null) {
+				if (cproject != null) {
+					IRemoteFileProxy proxy = RemoteProxyManager.getInstance().getFileProxy(cproject.getProject());
+					progFile = proxy.getResource(progPath);
+				} else {
+					try {
+						progFile = EFS.getStore(new URI(progPath));
+					} catch (URISyntaxException e) {
+						progPath = null;
+					}
+				}
+			}
+			
+			if (progPath == null || !progFile.fetchInfo().exists()) {
+				throwCoreException(
+						DebugCoreMessages.getString("CDebugUtils.Program_file_does_not_exist"), //$NON-NLS-1$
+						new FileNotFoundException(
+								DebugCoreMessages.getFormattedString("CDebugUtils.PROGRAM_PATH_not_found", programPath.toOSString())), //$NON-NLS-1$
+						ICDTLaunchConfigurationConstants.ERR_PROGRAM_NOT_EXIST);
+			}
+		}
+		return progPath;
+	}
 
 	/**
 	 * Variant that expects (requires) the launch configuration to have a valid
@@ -674,6 +772,17 @@ public class CDebugUtils {
 	public static IPath verifyProgramPath(ILaunchConfiguration config) throws CoreException {
 		return verifyProgramPath(config, false); 
 	}
+
+	/**
+	 * Variant that expects (requires) the launch configuration to have a valid
+	 * <i>Project</i> setting. See
+	 * {@link #verifyProgramURI(ILaunchConfiguration, boolean)}
+	 * 
+	 * @since 8.0.1
+	 * 	 */
+	public static String verifyProgramURI(ILaunchConfiguration config) throws CoreException {
+		return verifyProgramURI(config, false); 
+	}
 	
 	/** Throws a CoreException. Clutter-reducing utility method. */
 	private static void throwCoreException(String msg, int code) throws CoreException {
diff --git a/launch/org.eclipse.cdt.launch/META-INF/MANIFEST.MF b/launch/org.eclipse.cdt.launch/META-INF/MANIFEST.MF
index d3de935..262af36 100644
--- a/launch/org.eclipse.cdt.launch/META-INF/MANIFEST.MF
+++ b/launch/org.eclipse.cdt.launch/META-INF/MANIFEST.MF
@@ -23,7 +23,8 @@ Require-Bundle: org.eclipse.ui.ide;bundle-version="[3.2.0,4.0.0)",
  org.eclipse.cdt.debug.ui;bundle-version="[7.0.0,8.1.0)",
  org.eclipse.core.runtime;bundle-version="[3.2.0,4.0.0)",
  org.eclipse.core.variables;bundle-version="[3.1.100,4.0.0)",
- org.eclipse.ltk.core.refactoring;bundle-version="[3.5.0,4.0.0)"
+ org.eclipse.ltk.core.refactoring;bundle-version="[3.5.0,4.0.0)",
+ org.eclipse.core.filesystem;bundle-version="1.3.100"
 Bundle-ActivationPolicy: lazy
 Bundle-RequiredExecutionEnvironment: JavaSE-1.6
 Import-Package: com.ibm.icu.text
diff --git a/launch/org.eclipse.cdt.launch/src/org/eclipse/cdt/launch/AbstractCLaunchDelegate.java b/launch/org.eclipse.cdt.launch/src/org/eclipse/cdt/launch/AbstractCLaunchDelegate.java
index ca52c71..4990b64 100644
--- a/launch/org.eclipse.cdt.launch/src/org/eclipse/cdt/launch/AbstractCLaunchDelegate.java
+++ b/launch/org.eclipse.cdt.launch/src/org/eclipse/cdt/launch/AbstractCLaunchDelegate.java
@@ -17,6 +17,7 @@ package org.eclipse.cdt.launch;
 
 import java.io.File;
 import java.io.FileNotFoundException;
+import java.net.URI;
 import java.util.ArrayList;
 import java.util.Arrays;
 import java.util.Date;
@@ -39,9 +40,12 @@ import org.eclipse.cdt.debug.core.CDebugUtils;
 import org.eclipse.cdt.debug.core.ICDTLaunchConfigurationConstants;
 import org.eclipse.cdt.debug.core.ICDebugConfiguration;
 import org.eclipse.cdt.debug.ui.CDebugUIPlugin;
+import org.eclipse.cdt.internal.core.remoteproxy.IRemoteFileProxy;
+import org.eclipse.cdt.internal.core.remoteproxy.RemoteProxyManager;
 import org.eclipse.cdt.launch.internal.ui.LaunchMessages;
 import org.eclipse.cdt.launch.internal.ui.LaunchUIPlugin;
 import org.eclipse.cdt.ui.newui.CDTPropertyManager;
+import org.eclipse.core.filesystem.IFileStore;
 import org.eclipse.core.resources.IContainer;
 import org.eclipse.core.resources.IFile;
 import org.eclipse.core.resources.IMarker;
@@ -197,6 +201,21 @@ abstract public class AbstractCLaunchDelegate extends LaunchConfigurationDelegat
 	}
 
 	/**
+	 * Returns the working directory specified by the given launch
+	 * configuration, or <code>null</code> if none.
+	 * 
+	 * @param configuration
+	 *            launch configuration
+	 * @return the working directory specified by the given launch
+	 *         configuration, or <code>null</code> if none
+	 * @exception CoreException
+	 *                if unable to retrieve the attribute
+	 */
+	public String getWorkingDirectoryLocation(ILaunchConfiguration configuration) throws CoreException {
+		return verifyWorkingDirectoryLocation(configuration);
+	}
+
+	/**
 	 * Expands and returns the working directory attribute of the given launch
 	 * configuration. Returns <code>null</code> if a working directory is not
 	 * specified. If specified, the working is verified to point to an existing
@@ -222,6 +241,31 @@ abstract public class AbstractCLaunchDelegate extends LaunchConfigurationDelegat
 	}
 
 	/**
+	 * Expands and returns the working directory attribute of the given launch
+	 * configuration. Returns <code>null</code> if a working directory is not
+	 * specified. If specified, the working is verified to point to an existing
+	 * directory in the local file system.
+	 * 
+	 * @param configuration launch configuration
+	 * @return an absolute path to a directory in the local file system, or
+	 * <code>null</code> if unspecified
+	 * @throws CoreException if unable to retrieve the associated launch
+	 * configuration attribute, if unable to resolve any variables, or if the
+	 * resolved location does not point to an existing directory in the local
+	 * file system
+	 */
+	protected String getWorkingDirectoryPathLocation(ILaunchConfiguration config) throws CoreException {
+		String location = config.getAttribute(ICDTLaunchConfigurationConstants.ATTR_WORKING_DIRECTORY, (String)null);
+		if (location != null) {
+			String expandedLocation = LaunchUtils.getStringVariableManager().performStringSubstitution(location);
+			if (expandedLocation.length() > 0) {
+				return expandedLocation;
+			}
+		}
+		return null;
+	}
+
+	/**
 	 * Throws a core exception with an error status object built from the given
 	 * message, lower level exception, and error code.
 	 * 
@@ -467,7 +511,10 @@ abstract public class AbstractCLaunchDelegate extends LaunchConfigurationDelegat
 			ICProject cp = CDebugUtils.getCProject(configuration);
 			if (cp != null) {
 				IProject p = cp.getProject();
-				return p.getLocation().toFile();
+				IRemoteFileProxy proxy = RemoteProxyManager.getInstance().getFileProxy(p);
+				String projPath = proxy.toPath(p.getLocationURI());
+				path = new Path(projPath);
+				return path.toFile();
 			}
 		} else {
 			if (path.isAbsolute()) {
@@ -483,7 +530,10 @@ abstract public class AbstractCLaunchDelegate extends LaunchConfigurationDelegat
 			} else {
 				IResource res = ResourcesPlugin.getWorkspace().getRoot().findMember(path);
 				if (res instanceof IContainer && res.exists()) {
-					return res.getLocation().toFile();
+					URI uri = res.getLocationURI();
+					IRemoteFileProxy proxy = RemoteProxyManager.getInstance().getFileProxy(res.getProject());
+					path = new Path(proxy.toPath(uri));
+					return path.toFile();
 				}
 				abort(LaunchMessages.AbstractCLaunchDelegate_Working_directory_does_not_exist,
 						new FileNotFoundException(
@@ -495,6 +545,73 @@ abstract public class AbstractCLaunchDelegate extends LaunchConfigurationDelegat
 		}
 		return null;
 	}
+	
+	/**
+	 * Verifies the working directory specified by the given launch
+	 * configuration exists, and returns the working directory, or
+	 * <code>null</code> if none is specified.
+	 * 
+	 * @param configuration
+	 *            launch configuration
+	 * @return the working directory specified by the given launch
+	 *         configuration, or <code>null</code> if none
+	 * @exception CoreException
+	 *                if unable to retrieve the attribute
+	 */
+	public String verifyWorkingDirectoryLocation(ILaunchConfiguration configuration) throws CoreException {
+		String path = getWorkingDirectoryPathLocation(configuration);
+		if (path == null) {
+			// default working dir is the project if this config has a project
+			ICProject cp = CDebugUtils.getCProject(configuration);
+			if (cp != null) {
+				IProject p = cp.getProject();
+				IRemoteFileProxy proxy = RemoteProxyManager.getInstance().getFileProxy(p);
+				String projPath = proxy.toPath(p.getLocationURI());
+				return projPath;
+			}
+		} else {
+			// default working dir is the project if this config has a project
+			ICProject cp = CDebugUtils.getCProject(configuration);
+			if (cp != null) {
+				IProject p = cp.getProject();
+				IRemoteFileProxy proxy = RemoteProxyManager.getInstance().getFileProxy(p);
+				IFileStore f = proxy.getResource(path);
+				if (f.fetchInfo().isDirectory())
+					return path;
+				abort(LaunchMessages.AbstractCLaunchDelegate_Working_directory_does_not_exist,
+						new FileNotFoundException(
+								NLS.bind(LaunchMessages.AbstractCLaunchDelegate_WORKINGDIRECTORY_PATH_not_found,
+										path)),
+						ICDTLaunchConfigurationConstants.ERR_WORKING_DIRECTORY_DOES_NOT_EXIST);
+			}
+			Path p = new Path(path);
+			if (p.isAbsolute()) {
+				File dir = new File(p.toOSString());
+				if (dir.isDirectory()) {
+					return p.toOSString();
+				}
+				abort(LaunchMessages.AbstractCLaunchDelegate_Working_directory_does_not_exist,
+						new FileNotFoundException(
+								NLS.bind(LaunchMessages.AbstractCLaunchDelegate_WORKINGDIRECTORY_PATH_not_found,
+										path)),
+						ICDTLaunchConfigurationConstants.ERR_WORKING_DIRECTORY_DOES_NOT_EXIST);
+			} else {
+				IResource res = ResourcesPlugin.getWorkspace().getRoot().findMember(path);
+				if (res instanceof IContainer && res.exists()) {
+					URI uri = res.getLocationURI();
+					IRemoteFileProxy proxy = RemoteProxyManager.getInstance().getFileProxy(res.getProject());
+					return proxy.toPath(uri);
+				}
+				abort(LaunchMessages.AbstractCLaunchDelegate_Working_directory_does_not_exist,
+						new FileNotFoundException(
+								NLS.bind(
+										LaunchMessages.AbstractCLaunchDelegate_WORKINGDIRECTORY_PATH_not_found,
+										path)),
+						ICDTLaunchConfigurationConstants.ERR_WORKING_DIRECTORY_DOES_NOT_EXIST);
+			}
+		}
+		return null;
+	}
 
 	/**
 	 * Recursively creates a set of projects referenced by the current project
diff --git a/launch/org.eclipse.cdt.launch/src/org/eclipse/cdt/launch/internal/LocalCDILaunchDelegate.java b/launch/org.eclipse.cdt.launch/src/org/eclipse/cdt/launch/internal/LocalCDILaunchDelegate.java
index 7be45a8..ad36a0f 100644
--- a/launch/org.eclipse.cdt.launch/src/org/eclipse/cdt/launch/internal/LocalCDILaunchDelegate.java
+++ b/launch/org.eclipse.cdt.launch/src/org/eclipse/cdt/launch/internal/LocalCDILaunchDelegate.java
@@ -32,6 +32,8 @@ import org.eclipse.cdt.debug.core.cdi.CDIException;
 import org.eclipse.cdt.debug.core.cdi.ICDISession;
 import org.eclipse.cdt.debug.core.cdi.model.ICDIRuntimeOptions;
 import org.eclipse.cdt.debug.core.cdi.model.ICDITarget;
+import org.eclipse.cdt.internal.core.remoteproxy.IRemoteCommandLauncher;
+import org.eclipse.cdt.internal.core.remoteproxy.RemoteProxyManager;
 import org.eclipse.cdt.launch.AbstractCLaunchDelegate;
 import org.eclipse.cdt.launch.internal.ui.LaunchMessages;
 import org.eclipse.cdt.launch.internal.ui.LaunchUIPlugin;
@@ -82,21 +84,48 @@ public class LocalCDILaunchDelegate extends AbstractCLaunchDelegate {
 		}
 		monitor.worked(1);
 		try {
-			IPath exePath = CDebugUtils.verifyProgramPath(config);
-			File wd = getWorkingDirectory(config);
+			//IPath exePath = CDebugUtils.verifyProgramPath(config);
+			//File wd = getWorkingDirectory(config);
+			//if (wd == null) {
+			//	wd = new File(System.getProperty("user.home", ".")); //$NON-NLS-1$ //$NON-NLS-2$
+			//}
+			//String arguments[] = getProgramArgumentsArray(config);
+			//ArrayList command = new ArrayList(1 + arguments.length);
+			//command.add(exePath.toOSString());
+			//command.addAll(Arrays.asList(arguments));
+			//String[] commandArray = (String[])command.toArray(new String[command.size()]);
+			//boolean usePty = config.getAttribute(ICDTLaunchConfigurationConstants.ATTR_USE_TERMINAL, ICDTLaunchConfigurationConstants.USE_TERMINAL_DEFAULT);
+			//monitor.worked(2);
+			//Process process = exec(commandArray, getEnvironment(config), wd, usePty);
+			//monitor.worked(6);
+			//DebugPlugin.newProcess(launch, process, renderProcessLabel(commandArray[0]));
+			String exePath = CDebugUtils.verifyProgramURI(config);
+			String wd = getWorkingDirectoryLocation(config);
 			if (wd == null) {
-				wd = new File(System.getProperty("user.home", ".")); //$NON-NLS-1$ //$NON-NLS-2$
+				wd = System.getProperty("user.home", "."); //$NON-NLS-1$ //$NON-NLS-2$
 			}
 			String arguments[] = getProgramArgumentsArray(config);
 			ArrayList command = new ArrayList(1 + arguments.length);
-			command.add(exePath.toOSString());
+			command.add(exePath);
 			command.addAll(Arrays.asList(arguments));
 			String[] commandArray = (String[])command.toArray(new String[command.size()]);
 			boolean usePty = config.getAttribute(ICDTLaunchConfigurationConstants.ATTR_USE_TERMINAL, ICDTLaunchConfigurationConstants.USE_TERMINAL_DEFAULT);
 			monitor.worked(2);
-			Process process = exec(commandArray, getEnvironment(config), wd, usePty);
-			monitor.worked(6);
-			DebugPlugin.newProcess(launch, process, renderProcessLabel(commandArray[0]));
+			// default working dir is the project if this config has a project
+			ICProject cp = CDebugUtils.getCProject(config);
+			if (cp != null) {
+				IProject p = cp.getProject();
+				IRemoteCommandLauncher proxy = RemoteProxyManager.getInstance().getLauncher(p);
+				Process process = proxy.execute(exePath, arguments, getEnvironment(config), wd, usePty, monitor);
+				monitor.worked(6);
+				DebugPlugin.newProcess(launch, process, renderProcessLabel(commandArray[0]));
+		} else {
+				Path wdPath = new Path(wd);
+				File f = wdPath.toFile();
+				Process process = exec(commandArray, getEnvironment(config), f, usePty);
+				monitor.worked(6);
+				DebugPlugin.newProcess(launch, process, renderProcessLabel(commandArray[0]));
+			}
 		} finally {
 			monitor.done();
 		}		
-- 
1.7.9.5


