Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E3BFE0156F
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 10:22:50 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jun 2013 10:23:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,808,1363158000"; d="scan'208";a="348629454"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2013 10:22:49 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Jun 2013 20:00:22 +0300
Message-Id: <1370451622-10619-22-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC refactor 21/21] Create separated class for ConsoleWriter
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
X-List-Received-Date: Wed, 05 Jun 2013 17:22:50 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org/yocto/bc/remote/utils/ConsoleWriter.java   |   36 ++++++++++++++++++++
 .../yocto/bc/ui/wizards/install/InstallWizard.java |    1 +
 2 files changed, 37 insertions(+)
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ConsoleWriter.java

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ConsoleWriter.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ConsoleWriter.java
new file mode 100644
index 0000000..3bb364b
--- /dev/null
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ConsoleWriter.java
@@ -0,0 +1,36 @@
+package org.yocto.bc.remote.utils;
+
+import java.io.IOException;
+import java.io.Writer;
+
+public class ConsoleWriter extends Writer {
+
+	private StringBuffer sb;
+
+	public ConsoleWriter() {
+		sb = new StringBuffer();
+	}
+
+	@Override
+	public void close() throws IOException {
+	}
+
+	public String getContents() {
+		return sb.toString();
+	}
+
+	@Override
+	public void flush() throws IOException {
+	}
+
+	@Override
+	public void write(char[] cbuf, int off, int len) throws IOException {
+		sb.append(cbuf);
+	}
+
+	@Override
+	public void write(String str) throws IOException {
+		sb.append(str);
+	}
+
+}
\ No newline at end of file
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
index 42a3bef..f4bc99b 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
@@ -44,6 +44,7 @@ import org.yocto.remote.utils.CommandResponseHandler;
 import org.yocto.remote.utils.ICommandResponseHandler;
 import org.yocto.remote.utils.RemoteHelper;
 import org.yocto.remote.utils.YoctoCommand;
+import org.yocto.bc.remote.utils.ConsoleWriter;
 
 /**
  * A wizard for installing a fresh copy of an OE system.
-- 
1.7.9.5


