Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68077E01554
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2013 16:56:19 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Jun 2013 16:54:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,818,1363158000"; d="scan'208";a="325524581"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga001.jf.intel.com with ESMTP; 06 Jun 2013 16:56:17 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 6 Jun 2013 16:56:15 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.22]) by
	ORSMSX154.amr.corp.intel.com ([169.254.11.48]) with mapi id
	14.03.0123.003; Thu, 6 Jun 2013 16:56:15 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [Refactor RFC 3/9] Remove ICommandResponseHandler from
	plugin and use org.yocto.remote.utils implementation
Thread-Index: AQHOYSo9+PSW38UAo0acsMdeZDryn5kpYG3Q
Date: Thu, 6 Jun 2013 23:56:15 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C38070@ORSMSX103.amr.corp.intel.com>
References: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
	<1370352368-18730-4-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1370352368-18730-4-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Refactor RFC 3/9] Remove ICommandResponseHandler from	plugin and use org.yocto.remote.utils implementation
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
X-List-Received-Date: Thu, 06 Jun 2013 23:56:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Please fix the license for the files.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Tuesday, June 04, 2013 6:26 AM
To: yocto@yoctoproject.org
Subject: [yocto] [Refactor RFC 3/9] Remove ICommandResponseHandler from plu=
gin and use org.yocto.remote.utils implementation

- add dependency to remote common plugin
- update all references to use the common interface

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |    3 +-
 .../yocto/bc/bitbake/ICommandResponseHandler.java  |   15 ----------
 .../src/org/yocto/bc/bitbake/ShellSession.java     |    2 ++
 .../ui/actions/AbstractBitbakeCommandAction.java   |    3 +-
 .../yocto/bc/ui/wizards/install/InstallWizard.java |   30 ++++++----------=
----
 5 files changed, 13 insertions(+), 40 deletions(-)  delete mode 100644 plu=
gins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ICommandResponseHandler.java

diff --git a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF b/plugins/org.yoc=
to.bc.ui/META-INF/MANIFEST.MF
index 6366424..3ca62df 100644
--- a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
@@ -14,6 +14,7 @@ Require-Bundle: org.eclipse.ui,
  org.eclipse.ui.editors,
  org.eclipse.ui.ide,
  org.eclipse.ui.console,
- org.eclipse.core.filesystem
+ org.eclipse.core.filesystem,
+ org.yocto.remote.utils;bundle-version=3D"1.0.0"
 Eclipse-LazyStart: true
 Bundle-ClassPath: .
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ICommandRespo=
nseHandler.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ICommand=
ResponseHandler.java
deleted file mode 100644
index 4c44352..0000000
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ICommandResponseHand=
ler.java
+++ /dev/null
@@ -1,15 +0,0 @@
-/*************************************************************************=
****
- * Copyright (c) 2009 Ken Gilmer
- * All rights reserved. This program and the accompanying materials
- * are made available under the terms of the Eclipse Public License v1.0
- * which accompanies this distribution, and is available at
- * http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- *     Ken Gilmer - initial API and implementation
- *************************************************************************=
******/
-package org.yocto.bc.bitbake;
-
-public interface ICommandResponseHandler {
-       public void response(String line, boolean isError);
-}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.=
java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index 4719865..db8f564 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -18,6 +18,8 @@ import java.io.InputStreamReader;  import java.io.OutputS=
tream;  import java.io.Writer;

+import org.yocto.remote.utils.ICommandResponseHandler;
+
 /**
  * A class for Linux shell sessions.
  * @author kgilmer
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/AbstractBi=
tbakeCommandAction.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actio=
ns/AbstractBitbakeCommandAction.java
index 41d5c73..cd4f4c9 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/AbstractBitbakeCo=
mmandAction.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/AbstractBitbak
+++ eCommandAction.java
@@ -29,12 +29,11 @@ import org.eclipse.ui.IWorkbenchWindow;  import org.ecl=
ipse.ui.IWorkbenchWindowActionDelegate;
 import org.eclipse.ui.console.MessageConsole;
 import org.eclipse.ui.console.MessageConsoleStream;
-
 import org.yocto.bc.bitbake.BBLanguageHelper;
 import org.yocto.bc.bitbake.BBSession;
-import org.yocto.bc.bitbake.ICommandResponseHandler;
 import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.builder.BitbakeCommanderNature;
+import org.yocto.remote.utils.ICommandResponseHandler;

 public abstract class AbstractBitbakeCommandAction implements IWorkbenchWi=
ndowActionDelegate {

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/In=
stallWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/inst=
all/InstallWizard.java
index f2cb1da..3130cbf 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWi=
zard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/Instal
+++ lWizard.java
@@ -2,53 +2,39 @@ package org.yocto.bc.ui.wizards.install;

 import java.io.BufferedReader;
 import java.io.File;
-import java.io.FileInputStream;
-import java.io.FileDescriptor;
-import java.io.InputStream;
 import java.io.IOException;
 import java.io.InputStreamReader;
-import java.io.OutputStream;
 import java.io.Writer;
-import java.util.ArrayList;
+import java.lang.reflect.InvocationTargetException;
 import java.util.Hashtable;
 import java.util.Map;
 import java.util.regex.Matcher;
 import java.util.regex.Pattern;
-import java.lang.reflect.InvocationTargetException;
-import java.net.URL;

 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.IStatus; -import org.eclipse.core.runtime.=
NullProgressMonitor;
-import org.eclipse.core.runtime.Path;
 import org.eclipse.core.runtime.Status;  import org.eclipse.jface.operatio=
n.IRunnableWithProgress;
 import org.eclipse.jface.viewers.IStructuredSelection;
-import org.eclipse.jface.wizard.IWizardPage;
 import org.eclipse.jface.wizard.WizardPage;
-
-import org.eclipse.ui.PlatformUI;
 import org.eclipse.ui.IWorkbench;
-import org.eclipse.ui.IWorkbenchWizard;  import org.eclipse.ui.IWorkbenchP=
age;  import org.eclipse.ui.IWorkbenchWindow; -import org.eclipse.ui.consol=
e.IConsoleConstants;
-import org.eclipse.ui.console.MessageConsole;
-import org.eclipse.ui.console.MessageConsoleStream;
+import org.eclipse.ui.IWorkbenchWizard; import
+org.eclipse.ui.PlatformUI;
 import org.eclipse.ui.console.ConsolePlugin;
-import org.eclipse.ui.console.IConsoleManager;
 import org.eclipse.ui.console.IConsole;
+import org.eclipse.ui.console.IConsoleConstants;
+import org.eclipse.ui.console.IConsoleManager;
 import org.eclipse.ui.console.IConsoleView;
-import org.eclipse.ui.progress.IProgressService;
-
-import org.yocto.bc.bitbake.ICommandResponseHandler;
-import org.yocto.bc.bitbake.ShellSession;
+import org.eclipse.ui.console.MessageConsole;
+import org.eclipse.ui.console.MessageConsoleStream;
 import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.model.ProjectInfo;
 import org.yocto.bc.ui.wizards.FiniteStateWizard;
-
 import org.yocto.bc.ui.wizards.newproject.BBConfigurationInitializeOperati=
on;
 import org.yocto.bc.ui.wizards.newproject.CreateBBCProjectOperation;
+import org.yocto.remote.utils.ICommandResponseHandler;

 /**
  * A wizard for installing a fresh copy of an OE system.
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

