Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-ea0-f170.google.com (mail-ea0-f170.google.com
	[209.85.215.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79FECE01493
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:05 -0700 (PDT)
Received: by mail-ea0-f170.google.com with SMTP id f15so1739840eak.29
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=9d8fys+MNaAQlz3uaOEHPyjQAE2h3jlZqh7p3ZPkkDc=;
	b=i/+b0Y7wva60yxTZ4Afiu7Da3sbU6n19nYGR/X+BN4wweRrGSWnDjeB6cult97f4pd
	V5/mUhpBmzDMhewJtIKPMGQquPbZ9J2LH4PW7QSvCzm9TM56f7uzk+lyLy66iOWlkSX4
	M5ThBgc1kIO69uj4nytJVfLeCvXF4KDyhMCIBfl6aqkx5YdpQ6mLvf3n3jLrHGLbv9YM
	hwrFS6g8XEpbw+mGOZxxLQaw2oGFBn8nzHVOMvt1XS3UtqsQNes5jOBJFGpf729K8HSN
	bpmEjWCqarb2rJQ6N04rwS51XgUbSIkRBV6r19oUTith23wlIOurswefaOknrk7SymiA
	Fg8w==
X-Received: by 10.14.107.200 with SMTP id o48mr29000037eeg.35.1369298404288;
	Thu, 23 May 2013 01:40:04 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id c41sm11438848eeu.8.2013.05.23.01.40.03
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 23 May 2013 01:40:03 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 23 May 2013 10:39:43 +0200
Message-Id: <1369298392-4076-5-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 04/13] plugins/cmake: Preparing a configure Job
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
X-List-Received-Date: Thu, 23 May 2013 08:40:05 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

This job will execute the configure step for the
CMake projects. It uses the command defined by the
CMake tool ("cmake") and gets the provided options
from the user to assemble the command line.
---
 .../managedbuilder/YoctoCMakeMessages.properties   |   18 +++
 .../managedbuilder/job/ExecuteConfigureJob.java    |  124 ++++++++++++++++++++
 .../cmake/managedbuilder/util/SystemProcess.java   |  118 +++++++++++++++++++
 3 files changed, 260 insertions(+)
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.properties
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/util/SystemProcess.java

diff --git a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.properties b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.properties
new file mode 100644
index 0000000..ac5dad8
--- /dev/null
+++ b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.properties
@@ -0,0 +1,18 @@
+#/*******************************************************************************
+# * Copyright (c) 2013 BMW Car IT GmbH.
+# * All rights reserved. This program and the accompanying materials
+# * are made available under the terms of the Eclipse Public License v1.0
+# * which accompanies this distribution, and is available at
+# * http://www.eclipse.org/legal/epl-v10.html
+# *
+# * Contributors:
+# * BMW Car IT - initial implementation
+# *******************************************************************************/
+
+# Job
+ExecuteConfigureJob.runConfigure=Running configure
+ExecuteConfigureJob.consoleName=Configure using CMake [{0}]
+ExecuteConfigureJob.buildingMakefile=Building Makefile
+ExecuteConfigureJob.warning.aborted=Build of project has been aborted
+ExecuteConfigureJob.error.couldNotStart=Build of project could not be started
+ExecuteConfigureJob.error.buildFailed=Build of project failed
diff --git a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java
new file mode 100644
index 0000000..ebed4bb
--- /dev/null
+++ b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java
@@ -0,0 +1,124 @@
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
+package org.yocto.cmake.managedbuilder.job;
+
+import java.io.IOException;
+import java.util.Arrays;
+import java.util.LinkedList;
+
+import org.eclipse.cdt.managedbuilder.core.BuildException;
+import org.eclipse.cdt.managedbuilder.core.IConfiguration;
+import org.eclipse.cdt.managedbuilder.core.ITool;
+import org.eclipse.core.resources.IProject;
+import org.eclipse.core.runtime.IPath;
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.core.runtime.IStatus;
+import org.eclipse.core.runtime.Status;
+import org.eclipse.core.runtime.jobs.Job;
+import org.eclipse.ui.console.IOConsoleOutputStream;
+import org.yocto.cmake.managedbuilder.Activator;
+import org.yocto.cmake.managedbuilder.YoctoCMakeMessages;
+import org.yocto.cmake.managedbuilder.util.ConsoleUtility;
+import org.yocto.cmake.managedbuilder.util.SystemProcess;
+import org.yocto.sdk.ide.utils.YoctoSDKUtils;
+
+
+public class ExecuteConfigureJob extends Job {
+	private SystemProcess configureProcess;
+	private LinkedList<String> configureCommand;
+	private IProject project;
+	private IConfiguration configuration;
+	private IPath location;
+
+
+	public ExecuteConfigureJob(String name,
+			IProject project, IConfiguration configuration, IPath location) {
+		super(name);
+		this.project = project;
+		this.configuration = configuration;
+		this.location = location;
+		createCommands();
+		createProcesses();
+	}
+
+	protected void createCommands() {
+		configureCommand = new LinkedList<String>();
+
+		ITool[] configure = configuration
+				.getToolsBySuperClassId("org.yocto.cmake.managedbuilder.cmakeconfigure.gnu.exe"); //$NON-NLS-1$
+
+		addCommand(configure[0]);
+
+		try {
+			addFlags(configure[0]);
+		} catch (BuildException e) {
+			// ignore this exception
+		}
+	}
+
+	private void addCommand(ITool configure) {
+		String command = configuration.getToolCommand(configure);
+		configureCommand.add(command);
+	}
+
+	private void addFlags(ITool configure) throws BuildException {
+		String[] flags = configure.getToolCommandFlags(
+				project.getLocation(), location);
+		for (String flag : flags) {
+			if (flag.contains(" ")) { //$NON-NLS-1$
+				String[] separatedFlags = flag.trim().split(" "); //$NON-NLS-1$
+				configureCommand.addAll(Arrays.asList(separatedFlags));
+			} else {
+				configureCommand.add(flag);
+			}
+		}
+	}
+
+	protected void createProcesses() {
+		configureProcess =
+				new SystemProcess(configureCommand, location.toFile(), YoctoSDKUtils.getEnvVariablesAsMap(project));
+	}
+
+	/* (non-Javadoc)
+	 * @see org.eclipse.core.runtime.jobs.Job#run(org.eclipse.core.runtime.IProgressMonitor)
+	 */
+	@Override
+	protected IStatus run(IProgressMonitor monitor) {
+	}
+
+	private IStatus buildProject(IProgressMonitor monitor,
+			IOConsoleOutputStream cos) throws IOException, InterruptedException {
+		monitor.subTask(
+				YoctoCMakeMessages.getString("ExecuteConfigureJob.buildingMakefile")); //$NON-NLS-1$
+		configureProcess.start(cos);
+		int exitValue = configureProcess.waitForResultAndStop();
+		monitor.worked(15);
+
+		if (exitValue != 0) {
+			return new Status(Status.ERROR, Activator.PLUGIN_ID,
+					YoctoCMakeMessages.getString("ExecuteConfigureJob.error.buildFailed") + " " + exitValue); //$NON-NLS-1$ //$NON-NLS-2$
+		}
+
+		return Status.OK_STATUS;
+	}
+
+	/* (non-Javadoc)
+	 * @see org.eclipse.core.runtime.jobs.Job#canceling()
+	 */
+	/**
+	 * Cancels the job and interrupts the system process.
+	 * {@inheritDoc}
+	 */
+	@Override
+	protected void canceling() {
+		configureProcess.interrupt();
+	}
+}
diff --git a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/util/SystemProcess.java b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/util/SystemProcess.java
new file mode 100644
index 0000000..9ca6e60
--- /dev/null
+++ b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/util/SystemProcess.java
@@ -0,0 +1,118 @@
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
+package org.yocto.cmake.managedbuilder.util;
+
+import java.io.File;
+import java.io.IOException;
+import java.io.InputStream;
+import java.io.OutputStream;
+import java.util.LinkedList;
+import java.util.Map;
+
+public class SystemProcess {
+
+	private LinkedList<String> command = new LinkedList<String>();
+	private File workingDirectory;
+	private ProcessBuilder builder;
+	private Process process;
+	private StreamPipe outputRedirector;
+
+	public SystemProcess(LinkedList<String> command) {
+		this(command, null);
+	}
+
+	public SystemProcess(LinkedList<String> command, File directory) {
+		this(command, directory, null);
+	}
+
+	public SystemProcess(LinkedList<String> command, File directory, Map<String, String> additionalEnvironmentVariables) {
+		super();
+		this.command = command;
+		if (directory != null) {
+			this.workingDirectory = directory;
+		}
+		setUpProcessBuilder(additionalEnvironmentVariables);
+	}
+
+	private void setUpProcessBuilder(Map<String, String> additionalEnvironmentVariables) {
+		builder = new ProcessBuilder(command);
+		if (workingDirectory != null) {
+			builder.directory(workingDirectory);
+		}
+		builder.redirectErrorStream(true);
+
+		if(additionalEnvironmentVariables != null && !additionalEnvironmentVariables.isEmpty()) {
+			builder.environment().putAll(additionalEnvironmentVariables);
+		}
+	}
+
+	public void start(OutputStream out) throws IOException {
+		if (builder != null) {
+			process = builder.start();
+			outputRedirector = redirectOutput(process, out);
+		}
+	}
+
+	public int waitForResultAndStop() throws InterruptedException {
+		if (process == null) {
+			return -1;
+		}
+
+		process.waitFor();
+		outputRedirector.interrupt();
+
+		return process.exitValue();
+	}
+
+	public void interrupt() {
+		process.destroy();
+	}
+
+	private StreamPipe redirectOutput(Process process, OutputStream out) {
+		InputStream in = process.getInputStream();
+		StreamPipe stdoutPipe = new StreamPipe(in, out);
+		stdoutPipe.start();
+
+		return stdoutPipe;
+	}
+
+
+	private class StreamPipe extends Thread {
+		private InputStream in;
+		private OutputStream out;
+		boolean shutdown = false;
+
+		public StreamPipe(InputStream in, OutputStream out) {
+			this.in = in;
+			this.out = out;
+		}
+
+		@Override
+		public void run() {
+			byte[] buffer = new byte[1024];
+			int length = 0;
+
+			try {
+				while(!shutdown && ((length = in.read(buffer)) > -1)) {
+					out.write(buffer, 0, length);
+				}
+			} catch (IOException e) {
+				e.printStackTrace();
+			}
+		}
+
+		@Override
+		public void interrupt() {
+			shutdown = true;
+			super.interrupt();
+		}
+	}
+}
-- 
1.7.9.5


