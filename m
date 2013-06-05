Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11F6CE0156A
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 10:22:48 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jun 2013 10:23:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,808,1363158000"; d="scan'208";a="348629433"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2013 10:22:46 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Jun 2013 20:00:20 +0300
Message-Id: <1370451622-10619-20-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC refactor 19/21] Retrieve console from RemoteHelper instead of recreating it
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
X-List-Received-Date: Wed, 05 Jun 2013 17:22:48 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../yocto/bc/ui/wizards/install/InstallWizard.java |   25 +-------------------
 1 file changed, 1 insertion(+), 24 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
index a253f05..8294219 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
@@ -85,32 +85,9 @@ public class InstallWizard extends FiniteStateWizard implements
 		
 		setWindowTitle("Yocto Project BitBake Commander");
 		setNeedsProgressMonitor(true);
-		
-		myConsole = findConsole("Yocto Project Console");
-		IWorkbench wb = PlatformUI.getWorkbench();
-		IWorkbenchWindow win = wb.getActiveWorkbenchWindow();
-		IWorkbenchPage page = win.getActivePage();
-		String id = IConsoleConstants.ID_CONSOLE_VIEW;
-		try {
-			IConsoleView view = (IConsoleView) page.showView(id);
-			view.display(myConsole);
-		} catch (Exception e) {
-			e.printStackTrace();
-		}
 	}
 
-	private MessageConsole findConsole(String name) {
-		ConsolePlugin plugin = ConsolePlugin.getDefault();
-		IConsoleManager conMan = plugin.getConsoleManager();
-		IConsole[] existing = conMan.getConsoles();
-		for (int i = 0; i < existing.length; i++)
-			if (name.equals(existing[i].getName()))
-				return (MessageConsole) existing[i];
-		// no console found, so create a new one
-		MessageConsole myConsole = new MessageConsole(name, null);
-		conMan.addConsoles(new IConsole[] { myConsole });
-		return myConsole;
-	}
+
 
 	public InstallWizard(IStructuredSelection selection) {
 		model = new Hashtable();
-- 
1.7.9.5


