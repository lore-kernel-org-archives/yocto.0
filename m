Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3118E014EF
	for <yocto@yoctoproject.org>; Fri, 26 Apr 2013 07:51:03 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 26 Apr 2013 07:51:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,559,1363158000"; d="scan'208";a="293621286"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by azsmga001.ch.intel.com with ESMTP; 26 Apr 2013 07:51:02 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 26 Apr 2013 17:32:00 +0300
Message-Id: <1366986723-27748-2-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1366986723-27748-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1366986723-27748-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 1/4] Initial commit for remote separate plugin
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
X-List-Received-Date: Fri, 26 Apr 2013 14:51:04 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 plugins/org.yocto.remote.utils/.classpath          |    7 +++
 plugins/org.yocto.remote.utils/.project            |   28 +++++++++++
 .../.settings/org.eclipse.jdt.core.prefs           |    7 +++
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |   10 ++++
 plugins/org.yocto.remote.utils/build.properties    |    4 ++
 .../src/org/yocto/remote/utils/Activator.java      |   50 ++++++++++++++++++++
 6 files changed, 106 insertions(+)
 create mode 100644 plugins/org.yocto.remote.utils/.classpath
 create mode 100644 plugins/org.yocto.remote.utils/.project
 create mode 100644 plugins/org.yocto.remote.utils/.settings/org.eclipse.jdt.core.prefs
 create mode 100644 plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
 create mode 100644 plugins/org.yocto.remote.utils/build.properties
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Activator.java

diff --git a/plugins/org.yocto.remote.utils/.classpath b/plugins/org.yocto.remote.utils/.classpath
new file mode 100644
index 0000000..ad32c83
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/.classpath
@@ -0,0 +1,7 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<classpath>
+	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.6"/>
+	<classpathentry kind="con" path="org.eclipse.pde.core.requiredPlugins"/>
+	<classpathentry kind="src" path="src"/>
+	<classpathentry kind="output" path="bin"/>
+</classpath>
diff --git a/plugins/org.yocto.remote.utils/.project b/plugins/org.yocto.remote.utils/.project
new file mode 100644
index 0000000..29a2a5a
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/.project
@@ -0,0 +1,28 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<projectDescription>
+	<name>org.yocto.remote.utils</name>
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
diff --git a/plugins/org.yocto.remote.utils/.settings/org.eclipse.jdt.core.prefs b/plugins/org.yocto.remote.utils/.settings/org.eclipse.jdt.core.prefs
new file mode 100644
index 0000000..c537b63
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/.settings/org.eclipse.jdt.core.prefs
@@ -0,0 +1,7 @@
+eclipse.preferences.version=1
+org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode=enabled
+org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.6
+org.eclipse.jdt.core.compiler.compliance=1.6
+org.eclipse.jdt.core.compiler.problem.assertIdentifier=error
+org.eclipse.jdt.core.compiler.problem.enumIdentifier=error
+org.eclipse.jdt.core.compiler.source=1.6
diff --git a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
new file mode 100644
index 0000000..03224aa
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
@@ -0,0 +1,10 @@
+Manifest-Version: 1.0
+Bundle-ManifestVersion: 2
+Bundle-Name: Yocto Remote Utils
+Bundle-SymbolicName: org.yocto.remote
+Bundle-Version: 1.0.0.qualifier
+Bundle-Activator: org.yocto.remote.Activator
+Require-Bundle: org.eclipse.ui,
+ org.eclipse.core.runtime
+Bundle-ActivationPolicy: lazy
+Bundle-RequiredExecutionEnvironment: JavaSE-1.6
diff --git a/plugins/org.yocto.remote.utils/build.properties b/plugins/org.yocto.remote.utils/build.properties
new file mode 100644
index 0000000..34d2e4d
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/build.properties
@@ -0,0 +1,4 @@
+source.. = src/
+output.. = bin/
+bin.includes = META-INF/,\
+               .
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Activator.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Activator.java
new file mode 100644
index 0000000..9e19b8a
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Activator.java
@@ -0,0 +1,50 @@
+package org.yocto.remote.utils;
+
+import org.eclipse.ui.plugin.AbstractUIPlugin;
+import org.osgi.framework.BundleContext;
+
+/**
+ * The activator class controls the plug-in life cycle
+ */
+public class Activator extends AbstractUIPlugin {
+
+	// The plug-in ID
+	public static final String PLUGIN_ID = "org.yocto.remote.utils"; //$NON-NLS-1$
+
+	// The shared instance
+	private static Activator plugin;
+	
+	/**
+	 * The constructor
+	 */
+	public Activator() {
+	}
+
+	/*
+	 * (non-Javadoc)
+	 * @see org.eclipse.ui.plugin.AbstractUIPlugin#start(org.osgi.framework.BundleContext)
+	 */
+	public void start(BundleContext context) throws Exception {
+		super.start(context);
+		plugin = this;
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
+	 * Returns the shared instance
+	 *
+	 * @return the shared instance
+	 */
+	public static Activator getDefault() {
+		return plugin;
+	}
+
+}
-- 
1.7.9.5


