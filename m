Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B2B2E0156B
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2013 06:10:04 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Jun 2013 06:09:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,814,1363158000"; d="scan'208";a="313209292"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by azsmga001.ch.intel.com with ESMTP; 06 Jun 2013 06:09:38 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Jun 2013 15:47:31 +0300
Message-Id: <1370522855-22772-2-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370522855-22772-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370522855-22772-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC Refactor 1/5] Remove unused ConsoleWriter
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
X-List-Received-Date: Thu, 06 Jun 2013 13:10:05 -0000

- remove unused inner class ConsoleWriter from InstallWizard

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../yocto/bc/ui/wizards/install/InstallWizard.java |   33 --------------------
 1 file changed, 33 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
index f4bc99b..1fc90a4 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
@@ -198,37 +198,4 @@ public class InstallWizard extends FiniteStateWizard implements
 	public void init(IWorkbench workbench, IStructuredSelection selection) {
 	}
 
-	private class ConsoleWriter extends Writer {
-
-		private StringBuffer sb;
-
-		public ConsoleWriter() {
-			sb = new StringBuffer();
-		}
-
-		@Override
-		public void close() throws IOException {
-		}
-
-		public String getContents() {
-			return sb.toString();
-		}
-
-		@Override
-		public void flush() throws IOException {
-		}
-
-		@Override
-		public void write(char[] cbuf, int off, int len) throws IOException {
-			// txtConsole.getText().concat(new String(cbuf));
-			sb.append(cbuf);
-		}
-
-		@Override
-		public void write(String str) throws IOException {
-			sb.append(str);
-		}
-
-	}
-
 }
-- 
1.7.9.5


