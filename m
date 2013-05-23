Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-ea0-f169.google.com (mail-ea0-f169.google.com
	[209.85.215.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2C0EE01493
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:05 -0700 (PDT)
Received: by mail-ea0-f169.google.com with SMTP id m14so1727722eaj.28
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=LtKfnGvKeigQIbJb2q8DZG1YwY3yRrMD6whYWIfdiiM=;
	b=FPXe+nfgzx+hU5W/I3yUXK47+/B4EHtwJ/Vxt/e0Lu8BxMwPpAcgbVmuTsHdDpOWSd
	IchOP5uZPL0N2t+1Fs9bpmC8ScpNqVbw+Y1g9AkT9UaGHP1LxgHo4JCayUAkfLpVDh9H
	/JXJfFSyh9akh+07k8jjybMR2WSZLCOMIBi0LufvKGF0O44z8B9Z6iSbydSy7j4PGkID
	9Xrjhlcg7UGt4K1sBit/u2WZrZ0n8krSqiHP50WFGKkDScYA+BkC3BqbWGukLotdX8cW
	qQDf/3Meg2huAZtmhn5gIxuYFvAnBJUlatFvENG5vWHhNSc9uoJFWRA3+JnZk0dvuq0X
	6PfQ==
X-Received: by 10.14.3.4 with SMTP id 4mr28942365eeg.8.1369298405098;
	Thu, 23 May 2013 01:40:05 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id c41sm11438848eeu.8.2013.05.23.01.40.04
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 23 May 2013 01:40:04 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 23 May 2013 10:39:44 +0200
Message-Id: <1369298392-4076-6-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 05/13] plugins/cmake: Added run method to configure Job
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
X-List-Received-Date: Thu, 23 May 2013 08:40:06 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

The job executes the configure step of the project
using the "cmake" command. The output is
presented in a new console.
---
 .../managedbuilder/job/ExecuteConfigureJob.java    |   25 ++++++++++
 .../cmake/managedbuilder/util/ConsoleUtility.java  |   49 ++++++++++++++++++++
 2 files changed, 74 insertions(+)
 create mode 100644 plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/util/ConsoleUtility.java

diff --git a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java
index ebed4bb..29e708e 100644
--- a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java
+++ b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java
@@ -92,6 +92,31 @@ public class ExecuteConfigureJob extends Job {
 	 */
 	@Override
 	protected IStatus run(IProgressMonitor monitor) {
+		monitor.beginTask(
+				YoctoCMakeMessages.getString("ExecuteConfigureJob.runConfigure"), 20); //$NON-NLS-1$
+
+		IOConsoleOutputStream cos =
+				ConsoleUtility.getConsoleOutput(YoctoCMakeMessages.getFormattedString("ExecuteConfigureJob.consoleName", //$NON-NLS-1$
+						project.getName()));
+		monitor.worked(1);
+
+		try {
+			return buildProject(monitor, cos);
+		} catch (IOException e) {
+			return new Status(Status.ERROR,
+					Activator.PLUGIN_ID, Status.OK,
+					YoctoCMakeMessages.getString("ExecuteConfigureJob.error.couldNotStart"), e); //$NON-NLS-1$
+		} catch (InterruptedException e) {
+			return new Status(Status.WARNING,
+					Activator.PLUGIN_ID,
+					YoctoCMakeMessages.getString("ExecuteConfigureJob.warning.aborted")); //$NON-NLS-1$
+		} finally {
+			try {
+				cos.close();
+			} catch (IOException e) {
+				cos = null;
+			}
+		}
 	}
 
 	private IStatus buildProject(IProgressMonitor monitor,
diff --git a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/util/ConsoleUtility.java b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/util/ConsoleUtility.java
new file mode 100644
index 0000000..9fb31e5
--- /dev/null
+++ b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/util/ConsoleUtility.java
@@ -0,0 +1,49 @@
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
+import org.eclipse.ui.console.ConsolePlugin;
+import org.eclipse.ui.console.IConsole;
+import org.eclipse.ui.console.IOConsoleOutputStream;
+import org.eclipse.ui.console.MessageConsole;
+
+
+public class ConsoleUtility {
+
+	public static IOConsoleOutputStream getConsoleOutput(String consoleName) {
+		return getConsole(consoleName).newOutputStream();
+	}
+
+	public static MessageConsole getConsole(String consoleName) {
+		MessageConsole foundConsole = findConsole(consoleName);
+		if (foundConsole != null) {
+			foundConsole.clearConsole();
+		} else {
+			foundConsole = new MessageConsole(consoleName, null);
+			ConsolePlugin.getDefault().
+			getConsoleManager().addConsoles(new IConsole[] { foundConsole });
+		}
+
+		return foundConsole;
+	}
+
+	public static MessageConsole findConsole(String consoleName) {
+		IConsole[] consoles =
+				ConsolePlugin.getDefault().getConsoleManager().getConsoles();
+		for (IConsole console : consoles) {
+			if (console.getName().equals(consoleName)) {
+				return (MessageConsole) console;
+			}
+		}
+
+		return null;
+	}
+}
-- 
1.7.9.5


