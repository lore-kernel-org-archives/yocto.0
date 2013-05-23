Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-ea0-f169.google.com (mail-ea0-f169.google.com
	[209.85.215.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8F07E01489
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:06 -0700 (PDT)
Received: by mail-ea0-f169.google.com with SMTP id m14so1612176eaj.14
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=Y5X5kxTnYw4LfRGcUBoqdR4BQCHib2VGstlnyiRjRaw=;
	b=SL+zgpedr1xEBOJqWlVIQ+sU98kz6JCJbrCUSCTx7T+l4FKIFOo3uB5q/PrCZLeRFS
	v/RFRucZ0iChgADtd2MdcclTFe3DPjjSKRYV8Fa3EtgjXFG4aupBjmPEBsWW7NUCB2qB
	MBhDfe8iZj/mIVw9H8/nZHEYusUEyXh81jRxxpi/7xCeJA007kSq0t6Hmf3L1/LbWTgb
	ildlZt8Qm/aLUu6s8V63+aceqzBdek5eUVglIqa43dxr9VDbuQKAOiZMIqgTHk+UGrVl
	+TDqTWw/BwIlEUG9kidawT3Q/BTSsl43sVPoEiYqmQ+k4cyJGIf+28c6ohQqazDJIOen
	051w==
X-Received: by 10.15.24.72 with SMTP id i48mr28819004eeu.37.1369298405948;
	Thu, 23 May 2013 01:40:05 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id c41sm11438848eeu.8.2013.05.23.01.40.05
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 23 May 2013 01:40:05 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 23 May 2013 10:39:45 +0200
Message-Id: <1369298392-4076-7-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 06/13] plugins/cmake: Added a Makefile generator
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
X-List-Received-Date: Thu, 23 May 2013 08:40:07 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Defined a ManagedBuilder and a corresponding
Makefile generator class. In order to create
Makefiles the cmake configure job is run. By now
it is assumed that the required toolchain.cmake
file is provided by the user. The next patch adds
the toolchain.cmake generation.
---
 .../OSGI-INF/l10n/bundle.properties                |    3 +
 plugins/org.yocto.cmake.managedbuilder/plugin.xml  |    9 +
 .../YoctoCMakeMakefileGenerator.java               |  174 ++++++++++++++++++++
 .../managedbuilder/YoctoCMakeMessages.properties   |    9 +
 4 files changed, 195 insertions(+)
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMakefileGenerator.java

diff --git a/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties b/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties
index ff9b374..c66fcb9 100644
--- a/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties
+++ b/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties
@@ -15,6 +15,9 @@ Bundle-Name = Yocto CMake Plugin
 # Extension name
 extension.name=Yocto CMake Managed Builder
 
+# Builder
+builder.name=Yocto CMake Environment Builder
+
 # CMake configure
 cmakeconfigure.name=CMake configure
 cmakeconfigure.options=CMake Options
diff --git a/plugins/org.yocto.cmake.managedbuilder/plugin.xml b/plugins/org.yocto.cmake.managedbuilder/plugin.xml
index 5b56628..e8faadd 100644
--- a/plugins/org.yocto.cmake.managedbuilder/plugin.xml
+++ b/plugins/org.yocto.cmake.managedbuilder/plugin.xml
@@ -8,6 +8,15 @@
         <managedBuildRevision
             fileVersion="4.0.0">
         </managedBuildRevision>
+        <builder
+            id="org.yocto.cmake.managedbuilder.builder"
+            name="%builder.name"
+            buildfileGenerator="org.yocto.cmake.managedbuilder.YoctoCMakeMakefileGenerator"
+            cleanBuildTarget="clean"
+            command="make"
+            isVariableCaseSensitive="false"
+            supportsManagedBuild="true">
+        </builder>
         <tool
             id="org.yocto.cmake.managedbuilder.cmakeconfigure"
             name="%cmakeconfigure.name"
diff --git a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMakefileGenerator.java b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMakefileGenerator.java
new file mode 100644
index 0000000..d80f603
--- /dev/null
+++ b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMakefileGenerator.java
@@ -0,0 +1,174 @@
+/*******************************************************************************
+ * Copyright (c) 2013 BMW Car IT GmbH.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * BMW Car IT - initial API and implementation
+ *******************************************************************************/
+package org.yocto.cmake.managedbuilder;
+
+import java.io.ByteArrayInputStream;
+import java.io.InputStream;
+
+import org.eclipse.cdt.managedbuilder.core.IBuilder;
+import org.eclipse.cdt.managedbuilder.core.IConfiguration;
+import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;
+import org.eclipse.cdt.managedbuilder.core.ManagedBuildManager;
+import org.eclipse.cdt.managedbuilder.core.ManagedBuilderCorePlugin;
+import org.eclipse.cdt.managedbuilder.makegen.IManagedBuilderMakefileGenerator2;
+import org.eclipse.core.resources.IFile;
+import org.eclipse.core.resources.IProject;
+import org.eclipse.core.resources.IResource;
+import org.eclipse.core.resources.IResourceDelta;
+import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.IPath;
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.core.runtime.IStatus;
+import org.eclipse.core.runtime.MultiStatus;
+import org.eclipse.core.runtime.jobs.Job;
+import org.yocto.cmake.managedbuilder.job.ExecuteConfigureJob;
+import org.yocto.sdk.ide.utils.YoctoSDKUtils;
+
+public class YoctoCMakeMakefileGenerator implements IManagedBuilderMakefileGenerator2 {
+
+	private static final String TOOLCHAINCMAKE_FILE_NAME = "toolchain.cmake"; //$NON-NLS-1$
+	private static final String MAKEFILE_NAME = "Makefile"; //$NON-NLS-1$
+	private static final String CMAKE_FILE_NAME = "CMakeLists.txt"; //$NON-NLS-1$
+	private static final String CMAKECACHE_FILE_NAME = "CMakeCache.txt"; //$NON-NLS-1$
+
+	private IProject project;
+	private int lastBuildInfoChecksum = 0;
+	private IConfiguration configuration;
+	private IProgressMonitor monitor;
+	private IPath buildDir = null;
+
+	@Override
+	public String getMakefileName() {
+		return MAKEFILE_NAME;
+	}
+
+	@Override
+	public IPath getBuildWorkingDir() {
+		IPath buildWorkingDir = null;
+
+		if (buildDir != null) {
+			buildWorkingDir = buildDir.removeFirstSegments(1);
+		}
+
+		return buildWorkingDir;
+	}
+
+	@Override
+	public boolean isGeneratedResource(IResource resource) {
+		return false;
+	}
+
+	@Override
+	public void initialize(IProject project, IManagedBuildInfo info,
+			IProgressMonitor monitor) {
+		this.project = project;
+		this.configuration = info.getDefaultConfiguration();
+		this.monitor = monitor;
+
+		if (info.getDefaultConfiguration() != null) {
+			buildDir = project.getFolder(info.getConfigurationName()).getFullPath();
+		}
+	}
+
+	@Override
+	public void initialize(int buildKind, IConfiguration configuration, IBuilder builder,
+			IProgressMonitor monitor) {
+		this.project = configuration.getOwner().getProject();
+		this.configuration = configuration;
+		this.monitor = monitor;
+		this.buildDir = project.getFolder(configuration.getName()).getFullPath();
+	}
+
+	@Override
+	public void generateDependencies() throws CoreException {
+		// nothing to do here
+	}
+
+	@Override
+	public void regenerateDependencies(boolean force) throws CoreException {
+		generateDependencies();
+	}
+
+	@Override
+	public MultiStatus generateMakefiles(IResourceDelta delta)
+			throws CoreException {
+		int currentBuildInfoChecksum = ManagedBuildManager.getBuildInfo(project).hashCode();
+
+		IFile cmakeFile = project.getFile(CMAKE_FILE_NAME);
+		IResourceDelta cmakeDelta = delta.findMember(cmakeFile.getProjectRelativePath());
+		IResourceDelta[] deltas = delta
+				.getAffectedChildren(IResourceDelta.ADDED | IResourceDelta.REMOVED);
+
+		if (deltas.length > 0 || cmakeDelta != null || currentBuildInfoChecksum != lastBuildInfoChecksum) {
+			lastBuildInfoChecksum = currentBuildInfoChecksum;
+			return regenerateMakefiles();
+		} else {
+			// CMake is not needed to run prior to building
+			// just return that makefile generation is completed
+			return new MultiStatus(
+					ManagedBuilderCorePlugin.getUniqueIdentifier(), IStatus.OK,
+					new String(YoctoCMakeMessages.getString("YoctoCMakeMakefileGenerator.ok.makefilesStillValid")), null); //$NON-NLS-1$
+		}
+	}
+
+	@Override
+	public MultiStatus regenerateMakefiles() throws CoreException {
+		String taskName =
+				YoctoCMakeMessages.getString("YoctoCMakeMakefileGenerator.configure.creatingMakefiles"); //$NON-NLS-1$
+		monitor.beginTask(taskName, 20);
+
+		IFile cmakeFile = project.getFile(CMAKE_FILE_NAME);
+		if (!cmakeFile.exists()) {
+			return new MultiStatus(ManagedBuilderCorePlugin.getUniqueIdentifier(), IStatus.CANCEL,
+					new String(YoctoCMakeMessages.getString("YoctoCMakeMakefileGenerator.cancel.missingCMakeList")), null); //$NON-NLS-1$
+		}
+
+		// Retrieve Build directory
+		IPath workingDir = getBuildWorkingDir();
+		IPath location = project.getLocation().append(workingDir);
+		monitor.worked(1);
+
+		// Create build directory if it doesn't exist
+		if (!location.toFile().exists()) {
+			monitor.subTask(
+					YoctoCMakeMessages.getString("YoctoCMakeMakefileGenerator.creatingBuildDirectory")); //$NON-NLS-1$
+			location.toFile().mkdirs();
+		} else {
+			monitor.subTask(
+					YoctoCMakeMessages.getString("YoctoCMakeMakefileGenerator.removingCacheFiles")); //$NON-NLS-1$
+			IFile cmakeCache = project.getFile(workingDir.append(CMAKECACHE_FILE_NAME));
+			cmakeCache.delete(true, monitor);
+		}
+		monitor.setTaskName(taskName);
+
+		// Create the Makefiles by executing cmake
+		ExecuteConfigureJob job =
+				new ExecuteConfigureJob(
+						YoctoCMakeMessages.getString("YoctoCMakeMakefileGenerator.configureJob.name"), //$NON-NLS-1$
+						project, configuration, location);
+		job.setPriority(Job.BUILD);
+		job.setUser(false);
+
+		job.schedule();
+		try {
+			job.join();
+			monitor.done();
+			return new MultiStatus(
+					Activator.PLUGIN_ID, job.getResult().getSeverity(),
+					job.getResult().getMessage(), null);
+		} catch (InterruptedException e) {
+			return new MultiStatus(
+					Activator.PLUGIN_ID,
+					IStatus.ERROR, new String(
+							YoctoCMakeMessages.getString("YoctoCMakeMakefileGenerator.error.makeFileGenerationFailed")), null); //$NON-NLS-1$
+		}
+	}
+}
diff --git a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.properties b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.properties
index ac5dad8..82a5c79 100644
--- a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.properties
+++ b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.properties
@@ -16,3 +16,12 @@ ExecuteConfigureJob.buildingMakefile=Building Makefile
 ExecuteConfigureJob.warning.aborted=Build of project has been aborted
 ExecuteConfigureJob.error.couldNotStart=Build of project could not be started
 ExecuteConfigureJob.error.buildFailed=Build of project failed
+
+# File generator
+YoctoCMakeMakefileGenerator.configureJob.name=Configuring project
+YoctoCMakeMakefileGenerator.configure.creatingMakefiles=Generating Makefiles using CMake
+YoctoCMakeMakefileGenerator.cancel.missingCMakeList=CMakeLists.txt file is missing
+YoctoCMakeMakefileGenerator.creatingBuildDirectory=Creating build directory
+YoctoCMakeMakefileGenerator.error.makeFileGenerationFailed=Makefile generation failed during configuration process
+YoctoCMakeMakefileGenerator.ok.makefilesStillValid=Makefiles are still valid.
+YoctoCMakeMakefileGenerator.removingCacheFiles=Removing cache files
-- 
1.7.9.5


