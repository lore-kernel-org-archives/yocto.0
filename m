Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C519E01481
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 05:35:21 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 May 2013 05:35:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,641,1363158000"; d="scan'208";a="334914154"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by fmsmga002.fm.intel.com with ESMTP; 09 May 2013 05:35:08 -0700
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.244]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.73]) with mapi id
	14.01.0355.002; Thu, 9 May 2013 13:35:07 +0100
From: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [PATCH v2] Move RSEHelper to a separate plugin
Thread-Index: AQHOTLBs0EhwQS/s0EGk4G3GsZtpyZj8ybdV
Date: Thu, 9 May 2013 12:35:07 +0000
Message-ID: <3E179CF0D7162B4AA4E2B324209A46391560F1B5@IRSMSX102.ger.corp.intel.com>
References: <1368101183-29416-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1368101183-29416-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.19.9.42]
MIME-Version: 1.0
Subject: Re: [PATCH v2] Move RSEHelper to a separate plugin
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
X-List-Received-Date: Thu, 09 May 2013 12:35:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have sent a v3 of this patch that includes also the clean-up  for remotet=
ools plugin.=0A=
Please disregard this one.=0A=
________________________________________=0A=
From: Grigoropol, IoanaX=0A=
Sent: Thursday, May 09, 2013 3:06 PM=0A=
To: yocto@yoctoproject.org=0A=
Cc: Grigoropol, IoanaX=0A=
Subject: [PATCH v2] Move RSEHelper to a separate plugin=0A=
=0A=
- move RSEHelper to newly created separate plugin org.yocto.remote.utils=0A=
- clean-up RSEHelper code by removing all unused methods=0A=
- moved message strings that are relevant for this plugin to the correspond=
ing class=0A=
- modify remotetools plugin to use RSEHelper from org.yocto.remote.utils=0A=
- add plugin resources need for RSEHelper=0A=
=0A=
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>=0A=
---=0A=
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |   10 +=0A=
 .../org.yocto.remote.utils/resources/ust_tar.sh    |   19 +=0A=
 .../org.yocto.remote.utils/resources/yocto_tool.sh |  125 ++++++=0A=
 .../org.yocto.remote.utils/resources/yocto_ust.sh  |   35 ++=0A=
 .../src/org/yocto/remote/utils/Activator.java      |    4 +-=0A=
 .../src/org/yocto/remote/utils/Messages.java       |   35 ++=0A=
 .../src/org/yocto/remote/utils/RSEHelper.java      |  344 ++++++++++++++++=
=0A=
 .../org.yocto.sdk.remotetools/META-INF/MANIFEST.MF |    3 +-=0A=
 .../src/org/yocto/sdk/remotetools/RSEHelper.java   |  419 ----------------=
----=0A=
 .../yocto/sdk/remotetools/actions/BaseModel.java   |    2 +-=0A=
 .../sdk/remotetools/actions/BaseSettingDialog.java |    2 +-=0A=
 .../sdk/remotetools/actions/TerminalHandler.java   |    2 +-=0A=
 .../sdk/remotetools/remote/RemoteShellExec.java    |    2 +-=0A=
 13 files changed, 577 insertions(+), 425 deletions(-)=0A=
 create mode 100755 plugins/org.yocto.remote.utils/resources/ust_tar.sh=0A=
 create mode 100755 plugins/org.yocto.remote.utils/resources/yocto_tool.sh=
=0A=
 create mode 100755 plugins/org.yocto.remote.utils/resources/yocto_ust.sh=
=0A=
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/Messages.java=0A=
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/RSEHelper.java=0A=
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/rem=
otetools/RSEHelper.java=0A=
=0A=
diff --git a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF b/plugins/=
org.yocto.remote.utils/META-INF/MANIFEST.MF=0A=
index eff0356..9616484 100644=0A=
--- a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF=0A=
+++ b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF=0A=
@@ -8,3 +8,13 @@ Require-Bundle: org.eclipse.ui,=0A=
  org.eclipse.core.runtime=0A=
 Bundle-ActivationPolicy: lazy=0A=
 Bundle-RequiredExecutionEnvironment: JavaSE-1.7=0A=
+Import-Package: org.eclipse.rse.core,=0A=
+ org.eclipse.rse.core.model,=0A=
+ org.eclipse.rse.core.subsystems,=0A=
+ org.eclipse.rse.services,=0A=
+ org.eclipse.rse.services.files,=0A=
+ org.eclipse.rse.services.shells,=0A=
+ org.eclipse.rse.subsystems.files.core.servicesubsystem,=0A=
+ org.eclipse.rse.subsystems.shells.core.subsystems.servicesubsystem,=0A=
+ org.eclipse.rse.subsystems.terminals.core=0A=
+Export-Package: org.yocto.remote.utils=0A=
diff --git a/plugins/org.yocto.remote.utils/resources/ust_tar.sh b/plugins/=
org.yocto.remote.utils/resources/ust_tar.sh=0A=
new file mode 100755=0A=
index 0000000..20a8039=0A=
--- /dev/null=0A=
+++ b/plugins/org.yocto.remote.utils/resources/ust_tar.sh=0A=
@@ -0,0 +1,19 @@=0A=
+#!/bin/sh=0A=
+=0A=
+#set PATH to include sbin dirs=0A=
+export PATH=3D"$PATH:/usr/local/sbin:/usr/sbin:/sbin"=0A=
+=0A=
+if [ ! -d "$@" ] || [ -z "$@" ]; then=0A=
+  exit 1=0A=
+fi=0A=
+=0A=
+DATESTRING=3D"$(date +%Y%m%d%H%M%S%N)"=0A=
+BASENAME=3D`basename $@`=0A=
+DATAFILE=3D/tmp/${BASENAME}-${DATESTRING}.tar=0A=
+cd $@=0A=
+cd ..=0A=
+=0A=
+tar -cf  ${DATAFILE} ${BASENAME} &> /dev/null || exit $?=0A=
+=0A=
+echo -e "ustfile:$DATAFILE\n"=0A=
+=0A=
diff --git a/plugins/org.yocto.remote.utils/resources/yocto_tool.sh b/plugi=
ns/org.yocto.remote.utils/resources/yocto_tool.sh=0A=
new file mode 100755=0A=
index 0000000..099e481=0A=
--- /dev/null=0A=
+++ b/plugins/org.yocto.remote.utils/resources/yocto_tool.sh=0A=
@@ -0,0 +1,125 @@=0A=
+#!/bin/sh=0A=
+=0A=
+help ()=0A=
+{=0A=
+  echo "Usage $0 command [options] application [application argument]"=0A=
+  echo "command:"=0A=
+  echo "  start - start an application"=0A=
+  echo "  stop - stop an application"=0A=
+  echo "  restart - restart an application"=0A=
+  echo ""=0A=
+  echo "options: -d | -l <log file>"=0A=
+  echo "  -d  - start an application as a singleton daemon"=0A=
+  echo "  -l <log file name> - redirect the standard output/error in the t=
he file"=0A=
+  echo "  note: Option -d and -l are exclusive to each other"=0A=
+  exit 1=0A=
+}=0A=
+=0A=
+killproc() {        # kill the named process(es)=0A=
+    pid=3D`/bin/pidof $1`=0A=
+    [ "x$pid" !=3D "x" ] && kill $pid=0A=
+}=0A=
+=0A=
+start ()=0A=
+{=0A=
+        pid=3D`/bin/pidof $APP`=0A=
+        [ "x$pid" !=3D "x" ] && return 0=0A=
+=0A=
+        if [ "x$DAEMON" !=3D "x" ]; then=0A=
+            if [ "x$APPARG" !=3D "x" ]; then=0A=
+                start-stop-daemon -S -b --oknodo -x $APP -- $APPARG=0A=
+            else=0A=
+                start-stop-daemon -S -b --oknodo -x $APP=0A=
+            fi=0A=
+=0A=
+            #wait for sometime for the backend app to bring up & daemonzie=
=0A=
+            ret=3D$?=0A=
+            if [ $ret -eq 0 ]; then=0A=
+               sleep 1=0A=
+            fi=0A=
+            return $ret=0A=
+        elif [ "x$LOGFILE" !=3D "x" ]; then=0A=
+            $APP $APPARG $>${LOGFILE}=0A=
+        else=0A=
+            $APP $APPARG=0A=
+        fi=0A=
+}=0A=
+=0A=
+stop ()=0A=
+{=0A=
+  if [ "x$DAEMON" !=3D "x" ]; then=0A=
+    start-stop-daemon -K -x $APP=0A=
+  else=0A=
+    count=3D0=0A=
+    while [ -n "`/bin/pidof $APP`" -a $count -lt 10 ] ; do=0A=
+      killproc $APP >& /dev/null=0A=
+      sleep 1=0A=
+      RETVAL=3D$?=0A=
+      if [ $RETVAL !=3D 0 -o -n "`/bin/pidof $APP`" ] ; then=0A=
+          sleep 3=0A=
+      fi=0A=
+      count=3D`expr $count + 1`=0A=
+    done=0A=
+  fi=0A=
+}=0A=
+=0A=
+restart ()=0A=
+{=0A=
+  stop=0A=
+  sleep 1=0A=
+  start=0A=
+}=0A=
+=0A=
+#set PATH to include sbin dirs=0A=
+export PATH=3D"$PATH:/usr/local/sbin:/usr/sbin:/sbin"=0A=
+=0A=
+#get command=0A=
+case $1 in=0A=
+start) CMD=3D$1; shift 1=0A=
+    ;;=0A=
+stop)  CMD=3D$1; shift 1=0A=
+    ;;=0A=
+*)  help=0A=
+    ;;=0A=
+esac=0A=
+=0A=
+#get options=0A=
+while [ $# -gt 0 ]; do=0A=
+  case $1 in=0A=
+  -d) DAEMON=3Dtrue; shift 1=0A=
+    ;;=0A=
+  -l) LOGFILE=3D$2; shift 2=0A=
+    ;;=0A=
+  *) break=0A=
+    ;;=0A=
+  esac=0A=
+done=0A=
+=0A=
+#get application=0A=
+APP=3D$1=0A=
+shift 1=0A=
+=0A=
+#get app argument=0A=
+APPARG=3D"$@"=0A=
+=0A=
+#validate options=0A=
+if [ "x$DAEMON" !=3D "x" -a "x$LOGFILE" !=3D "x" ]; then=0A=
+  help=0A=
+fi=0A=
+if [ "x$DAEMON" !=3D "x" ]; then=0A=
+  APP=3D`which $APP`=0A=
+fi=0A=
+if [ "x$APP" =3D=3D "x" ]; then=0A=
+  help=0A=
+fi=0A=
+=0A=
+#run script=0A=
+case $CMD in=0A=
+start) start=0A=
+    ;;=0A=
+stop) stop=0A=
+    ;;=0A=
+restart)=0A=
+    restart=0A=
+    ;;=0A=
+esac=0A=
diff --git a/plugins/org.yocto.remote.utils/resources/yocto_ust.sh b/plugin=
s/org.yocto.remote.utils/resources/yocto_ust.sh=0A=
new file mode 100755=0A=
index 0000000..a1637db=0A=
--- /dev/null=0A=
+++ b/plugins/org.yocto.remote.utils/resources/yocto_ust.sh=0A=
@@ -0,0 +1,35 @@=0A=
+#!/bin/sh=0A=
+=0A=
+#set PATH to include sbin dirs=0A=
+export PATH=3D"$PATH:/usr/local/sbin:/usr/sbin:/sbin"=0A=
+=0A=
+DATESTRING=3D"$(date +%Y%m%d%H%M%S%N)"=0A=
+TEMPFILE=3D"/tmp/yocto-ust-tmp-$DATESTRING"=0A=
+=0A=
+rm -f ${TEMPFILE}=0A=
+usttrace $@ &> ${TEMPFILE}=0A=
+ret=3D$?=0A=
+=0A=
+if [ $ret -ne 0 ]; then=0A=
+  cat $TEMPFILE=0A=
+  rm -f $TEMPFILE=0A=
+  exit $ret=0A=
+fi=0A=
+=0A=
+#search for output dir=0A=
+USTDIR=3D`cat ${TEMPFILE} | awk '/^Trace was output in:/ { print $5}'`=0A=
+rm -f ${TEMPFILE}=0A=
+=0A=
+if [ -z "$USTDIR" ]; then=0A=
+  exit 1=0A=
+fi=0A=
+=0A=
+BASENAME=3D`basename $USTDIR`=0A=
+DATAFILE=3D/tmp/${BASENAME}.tar=0A=
+cd $USTDIR=0A=
+cd ..=0A=
+=0A=
+tar -cf  ${DATAFILE} ${BASENAME} &> /dev/null || exit $?=0A=
+=0A=
+echo -e "ustfile:$DATAFILE\n"=0A=
+=0A=
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Acti=
vator.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Acti=
vator.java=0A=
index 047d900..da66a3e 100644=0A=
--- a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Activator.j=
ava=0A=
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Activator.j=
ava=0A=
@@ -23,7 +23,7 @@ public class Activator extends AbstractUIPlugin {=0A=
=0A=
        // The shared instance=0A=
        private static Activator plugin;=0A=
-=0A=
+=0A=
        /**=0A=
         * The constructor=0A=
         */=0A=
@@ -34,6 +34,7 @@ public class Activator extends AbstractUIPlugin {=0A=
         * (non-Javadoc)=0A=
         * @see org.eclipse.ui.plugin.AbstractUIPlugin#start(org.osgi.frame=
work.BundleContext)=0A=
         */=0A=
+       @Override=0A=
        public void start(BundleContext context) throws Exception {=0A=
                super.start(context);=0A=
                plugin =3D this;=0A=
@@ -43,6 +44,7 @@ public class Activator extends AbstractUIPlugin {=0A=
         * (non-Javadoc)=0A=
         * @see org.eclipse.ui.plugin.AbstractUIPlugin#stop(org.osgi.framew=
ork.BundleContext)=0A=
         */=0A=
+       @Override=0A=
        public void stop(BundleContext context) throws Exception {=0A=
                plugin =3D null;=0A=
                super.stop(context);=0A=
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Mess=
ages.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Messa=
ges.java=0A=
new file mode 100644=0A=
index 0000000..fc696d6=0A=
--- /dev/null=0A=
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Messages.ja=
va=0A=
@@ -0,0 +1,35 @@=0A=
+/*************************************************************************=
******=0A=
+ * Copyright (c) 2013 Intel Corporation.=0A=
+ * All rights reserved. This program and the accompanying materials=0A=
+ * are made available under the terms of the Eclipse Public License v1.0=
=0A=
+ * which accompanies this distribution, and is available at=0A=
+ * http://www.eclipse.org/legal/epl-v10.html=0A=
+ *=0A=
+ * Contributors:=0A=
+ * Intel - initial API and implementation=0A=
+ *************************************************************************=
******/=0A=
+package org.yocto.remote.utils;=0A=
+=0A=
+import org.eclipse.osgi.util.NLS;=0A=
+=0A=
+public class Messages extends NLS {=0A=
+=0A=
+       private static final String BUNDLE_NAME =3D "org.yocto.remote.utils=
.messages"; //$NON-NLS-1$=0A=
+=0A=
+       public static String ErrorNoSubsystem;=0A=
+       public static String ErrorConnectSubsystem;=0A=
+=0A=
+       public static String InfoDownload;=0A=
+       public static String InfoUpload;=0A=
+=0A=
+       public static String RemoteShellExec_1;=0A=
+       public static String RemoteShellExec_2;=0A=
+=0A=
+       static {=0A=
+               // initialize resource bundle=0A=
+               NLS.initializeMessages(BUNDLE_NAME, Messages.class);=0A=
+       }=0A=
+=0A=
+       private Messages() {=0A=
+       }=0A=
+}=0A=
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RSEH=
elper.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RSEH=
elper.java=0A=
new file mode 100644=0A=
index 0000000..201c944=0A=
--- /dev/null=0A=
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RSEHelper.j=
ava=0A=
@@ -0,0 +1,344 @@=0A=
+/*************************************************************************=
*******=0A=
+ * Copyright (c) 2013 MontaVista Software, Inc and Others.=0A=
+ * This program and the accompanying materials are made available under th=
e terms=0A=
+ * of the Eclipse Public License v1.0 which accompanies this distribution,=
 and is=0A=
+ * available at http://www.eclipse.org/legal/epl-v10.html=0A=
+ *=0A=
+ * Contributors:=0A=
+ * Anna Dushistova (MontaVista) - initial API and implementation=0A=
+ * Lianhao Lu (Intel)                  - Modified to add other file operat=
ions.=0A=
+ * Ioana Grigoropol (Intel)     - Separated remote functionality=0A=
+ *************************************************************************=
*******/=0A=
+package org.yocto.remote.utils;=0A=
+=0A=
+import java.io.BufferedInputStream;=0A=
+import java.io.BufferedOutputStream;=0A=
+import java.io.File;=0A=
+import java.io.FileOutputStream;=0A=
+import java.io.InputStream;=0A=
+import java.util.ArrayList;=0A=
+import java.util.Arrays;=0A=
+import java.util.Iterator;=0A=
+=0A=
+import org.eclipse.core.runtime.CoreException;=0A=
+import org.eclipse.core.runtime.FileLocator;=0A=
+import org.eclipse.core.runtime.IProgressMonitor;=0A=
+import org.eclipse.core.runtime.IStatus;=0A=
+import org.eclipse.core.runtime.MultiStatus;=0A=
+import org.eclipse.core.runtime.OperationCanceledException;=0A=
+import org.eclipse.core.runtime.Path;=0A=
+import org.eclipse.core.runtime.Status;=0A=
+import org.eclipse.core.runtime.SubProgressMonitor;=0A=
+import org.eclipse.osgi.util.NLS;=0A=
+import org.eclipse.rse.core.IRSECoreStatusCodes;=0A=
+import org.eclipse.rse.core.IRSESystemType;=0A=
+import org.eclipse.rse.core.RSECorePlugin;=0A=
+import org.eclipse.rse.core.model.IHost;=0A=
+import org.eclipse.rse.core.model.ISubSystemConfigurationCategories;=0A=
+import org.eclipse.rse.core.model.ISystemRegistry;=0A=
+import org.eclipse.rse.core.subsystems.ISubSystem;=0A=
+import org.eclipse.rse.services.IService;=0A=
+import org.eclipse.rse.services.files.IFileService;=0A=
+import org.eclipse.rse.services.shells.HostShellProcessAdapter;=0A=
+import org.eclipse.rse.services.shells.IHostShell;=0A=
+import org.eclipse.rse.services.shells.IShellService;=0A=
+import org.eclipse.rse.subsystems.files.core.servicesubsystem.IFileService=
SubSystem;=0A=
+import org.eclipse.rse.subsystems.shells.core.subsystems.servicesubsystem.=
IShellServiceSubSystem;=0A=
+import org.eclipse.rse.subsystems.terminals.core.ITerminalServiceSubSystem=
;=0A=
+=0A=
+public class RSEHelper {=0A=
+       private final static String EXIT_CMD =3D "exit"; //$NON-NLS-1$=0A=
+       private final static String CMD_DELIMITER =3D ";"; //$NON-NLS-1$=0A=
+=0A=
+       public static IHost getRemoteConnectionByName(String remoteConnecti=
on) {=0A=
+               if (remoteConnection =3D=3D null)=0A=
+                       return null;=0A=
+               IHost[] connections =3D RSECorePlugin.getTheSystemRegistry(=
).getHosts();=0A=
+               for (int i =3D 0; i < connections.length; i++)=0A=
+                       if (connections[i].getAliasName().equals(remoteConn=
ection))=0A=
+                               return connections[i];=0A=
+               return null; // TODO Connection is not found in the list--n=
eed to react=0A=
+               // somehow, throw the exception?=0A=
+=0A=
+       }=0A=
+=0A=
+       public static IService getConnectedRemoteFileService(=0A=
+                       IHost currentConnection, IProgressMonitor monitor) =
throws Exception {=0A=
+               final ISubSystem subsystem =3D getFileSubsystem(currentConn=
ection);=0A=
+=0A=
+               if (subsystem =3D=3D null)=0A=
+                       throw new Exception(Messages.ErrorNoSubsystem);=0A=
+=0A=
+               try {=0A=
+                       subsystem.connect(monitor, false);=0A=
+               } catch (CoreException e) {=0A=
+                       throw e;=0A=
+               } catch (OperationCanceledException e) {=0A=
+                       throw new CoreException(Status.CANCEL_STATUS);=0A=
+               }=0A=
+=0A=
+               if (!subsystem.isConnected())=0A=
+                       throw new Exception(Messages.ErrorConnectSubsystem)=
;=0A=
+=0A=
+               return ((IFileServiceSubSystem) subsystem).getFileService()=
;=0A=
+       }=0A=
+=0A=
+       public static ISubSystem getFileSubsystem(IHost host) {=0A=
+               if (host =3D=3D null)=0A=
+                       return null;=0A=
+               ISubSystem[] subSystems =3D host.getSubSystems();=0A=
+               for (int i =3D 0; i < subSystems.length; i++) {=0A=
+                       if (subSystems[i] instanceof IFileServiceSubSystem)=
=0A=
+                               return subSystems[i];=0A=
+               }=0A=
+               return null;=0A=
+       }=0A=
+=0A=
+       public static IService getConnectedShellService(=0A=
+                       IHost currentConnection, IProgressMonitor monitor) =
throws Exception {=0A=
+               final ISubSystem subsystem =3D getShellSubsystem(currentCon=
nection);=0A=
+=0A=
+               if (subsystem =3D=3D null)=0A=
+                       throw new Exception(Messages.ErrorNoSubsystem);=0A=
+=0A=
+               try {=0A=
+                       subsystem.connect(monitor, false);=0A=
+               } catch (CoreException e) {=0A=
+                       throw e;=0A=
+               } catch (OperationCanceledException e) {=0A=
+                       throw new CoreException(Status.CANCEL_STATUS);=0A=
+               }=0A=
+=0A=
+               if (!subsystem.isConnected())=0A=
+                       throw new Exception(Messages.ErrorConnectSubsystem)=
;=0A=
+=0A=
+               return ((IShellServiceSubSystem) subsystem).getShellService=
();=0A=
+       }=0A=
+=0A=
+       public static ISubSystem getShellSubsystem(IHost host) {=0A=
+               if (host =3D=3D null)=0A=
+                       return null;=0A=
+               ISubSystem[] subSystems =3D host.getSubSystems();=0A=
+               for (int i =3D 0; i < subSystems.length; i++) {=0A=
+                       if (subSystems[i] instanceof IShellServiceSubSystem=
)=0A=
+                               return subSystems[i];=0A=
+               }=0A=
+               return null;=0A=
+       }=0A=
+=0A=
+       public static IHost[] getSuitableConnections() {=0A=
+=0A=
+               //we only get RSE connections with files&cmds subsystem=0A=
+               ArrayList <IHost> filConnections =3D new ArrayList <IHost>(=
Arrays.asList(RSECorePlugin.getTheSystemRegistry()=0A=
+                               .getHostsBySubSystemConfigurationCategory(I=
SubSystemConfigurationCategories.SUBSYSTEM_CATEGORY_FILES))); //$NON-NLS-1$=
=0A=
+=0A=
+               ArrayList <IHost> terminalConnections =3D new ArrayList <IH=
ost>(Arrays.asList(RSECorePlugin.getTheSystemRegistry()=0A=
+                               .getHostsBySubSystemConfigurationCategory("=
terminal")));//$NON-NLS-1$=0A=
+=0A=
+               ArrayList <IHost> shellConnections =3D new ArrayList <IHost=
>(Arrays.asList(RSECorePlugin.getTheSystemRegistry()=0A=
+                               .getHostsBySubSystemConfigurationCategory("=
shells"))); //$NON-NLS-1$=0A=
+=0A=
+               Iterator <IHost>iter =3D filConnections.iterator();=0A=
+               while(iter.hasNext()){=0A=
+                       IHost fileConnection =3D iter.next();=0A=
+                       if(!terminalConnections.contains(fileConnection) &&=
 !shellConnections.contains(fileConnection)){=0A=
+                               iter.remove();=0A=
+                       }=0A=
+                       IRSESystemType sysType =3D fileConnection.getSystem=
Type();=0A=
+                       if (sysType =3D=3D null || !sysType.isEnabled()) {=
=0A=
+                               iter.remove();=0A=
+                       }=0A=
+               }=0A=
+=0A=
+               return filConnections.toArray(new IHost[filConnections.size=
()]);=0A=
+       }=0A=
+=0A=
+       public static void putRemoteFileInPlugin(IHost connection, String l=
ocaPathInPlugin, String remoteExePath,=0A=
+                       IProgressMonitor monitor) throws Exception {=0A=
+=0A=
+               assert(connection !=3D null);=0A=
+               monitor.beginTask(Messages.InfoUpload, 100);=0A=
+=0A=
+               IFileService fileService;=0A=
+               try {=0A=
+                       fileService =3D (IFileService) getConnectedRemoteFi=
leService(=0A=
+                                                       connection,=0A=
+                                                       new SubProgressMoni=
tor(monitor, 5));=0A=
+                       InputStream  inputStream =3D FileLocator.openStream=
(=0A=
+                                   Activator.getDefault().getBundle(), new=
 Path(locaPathInPlugin), false);=0A=
+                       Path remotePath =3D new Path(remoteExePath);=0A=
+=0A=
+                       //TODO workaround for now=0A=
+                       //in case the underlying scp file service doesn't s=
upport inputStream upload=0A=
+                       BufferedInputStream bis =3D new BufferedInputStream=
(inputStream);=0A=
+                       File tempFile =3D File.createTempFile("scp", "temp"=
); //$NON-NLS-1$ //$NON-NLS-2$=0A=
+                       FileOutputStream os =3D new FileOutputStream(tempFi=
le);=0A=
+                       BufferedOutputStream bos =3D new BufferedOutputStre=
am(os);=0A=
+                       byte[] buffer =3D new byte[1024];=0A=
+                       int readCount;=0A=
+                       while( (readCount =3D bis.read(buffer)) > 0)=0A=
+                       {=0A=
+                               bos.write(buffer, 0, readCount);=0A=
+                       }=0A=
+                       bos.close();=0A=
+                       fileService.upload(tempFile, remotePath.removeLastS=
egments(1)=0A=
+                                       .toString(), remotePath.lastSegment=
(), true, null, null,=0A=
+                                       new SubProgressMonitor(monitor, 80)=
);=0A=
+                       // Need to change the permissions to match the orig=
inal file=0A=
+                       // permissions because of a bug in upload=0A=
+                       remoteShellExec(=0A=
+                                       connection,=0A=
+                                       "", "chmod", "+x " + spaceEscapify(=
remotePath.toString()), new SubProgressMonitor(monitor, 5)); //$NON-NLS-1$ =
//$NON-NLS-2$ //$NON-NLS-3$=0A=
+=0A=
+               } finally {=0A=
+                       monitor.done();=0A=
+               }=0A=
+               return;=0A=
+       }=0A=
+=0A=
+       public static void getRemoteFile(IHost connection, String localExeP=
ath, String remoteExePath,=0A=
+                       IProgressMonitor monitor) throws Exception {=0A=
+=0A=
+               assert(connection!=3Dnull);=0A=
+               monitor.beginTask(Messages.InfoDownload, 100);=0A=
+=0A=
+               IFileService fileService;=0A=
+               try {=0A=
+                       fileService =3D (IFileService) getConnectedRemoteFi=
leService(=0A=
+                                                       connection,=0A=
+                                                       new SubProgressMoni=
tor(monitor, 10));=0A=
+                       File file =3D new File(localExePath);=0A=
+                       file.deleteOnExit();=0A=
+                       monitor.worked(5);=0A=
+                       Path remotePath =3D new Path(remoteExePath);=0A=
+                       fileService.download(remotePath.removeLastSegments(=
1).toString(),=0A=
+                                       remotePath.lastSegment(),file,true,=
 null,=0A=
+                                       new SubProgressMonitor(monitor, 85)=
);=0A=
+                       // Need to change the permissions to match the orig=
inal file=0A=
+                       // permissions because of a bug in upload=0A=
+                       //RemoteApplication p =3D remoteShellExec(=0A=
+                       //              config,=0A=
+                       //              "", "chmod", "+x " + spaceEscapify(=
remotePath.toString()), new SubProgressMonitor(monitor, 5)); //$NON-NLS-1$ =
//$NON-NLS-2$ //$NON-NLS-3$=0A=
+                       //Thread.sleep(500);=0A=
+                       //p.destroy();=0A=
+=0A=
+               } finally {=0A=
+                       monitor.done();=0A=
+               }=0A=
+               return;=0A=
+       }=0A=
+=0A=
+       public static ITerminalServiceSubSystem getTerminalSubSystem(=0A=
+            IHost connection) {=0A=
+        ISystemRegistry systemRegistry =3D RSECorePlugin.getTheSystemRegis=
try();=0A=
+        ISubSystem[] subsystems =3D systemRegistry.getSubSystems(connectio=
n);=0A=
+        for (int i =3D 0; i < subsystems.length; i++) {=0A=
+               if (subsystems[i] instanceof ITerminalServiceSubSystem) {=
=0A=
+                ITerminalServiceSubSystem subSystem =3D (ITerminalServiceS=
ubSystem) subsystems[i];=0A=
+                return subSystem;=0A=
+            }=0A=
+        }=0A=
+        return null;=0A=
+    }=0A=
+=0A=
+       public static String spaceEscapify(String inputString) {=0A=
+               if (inputString =3D=3D null)=0A=
+                       return null;=0A=
+=0A=
+               return inputString.replaceAll(" ", "\\\\ "); //$NON-NLS-1$ =
//$NON-NLS-2$=0A=
+       }=0A=
+=0A=
+       public static Process remoteShellExec(IHost connection,=0A=
+                       String prelaunchCmd, String remoteCommandPath, Stri=
ng arguments,=0A=
+                       IProgressMonitor monitor) throws CoreException {=0A=
+=0A=
+               monitor.beginTask(NLS.bind(Messages.RemoteShellExec_1,=0A=
+                               remoteCommandPath, arguments), 10);=0A=
+               String realRemoteCommand =3D arguments =3D=3D null ? spaceE=
scapify(remoteCommandPath)=0A=
+                               : spaceEscapify(remoteCommandPath) + " " + =
arguments; //$NON-NLS-1$=0A=
+=0A=
+               String remoteCommand =3D realRemoteCommand + CMD_DELIMITER =
+ EXIT_CMD;=0A=
+=0A=
+               if(prelaunchCmd !=3D null) {=0A=
+                       if (!prelaunchCmd.trim().equals("")) //$NON-NLS-1$=
=0A=
+                               remoteCommand =3D prelaunchCmd + CMD_DELIMI=
TER + remoteCommand;=0A=
+               }=0A=
+=0A=
+               IShellService shellService;=0A=
+               Process p =3D null;=0A=
+               try {=0A=
+                       shellService =3D (IShellService) getConnectedShellS=
ervice(=0A=
+                                                       connection,=0A=
+                                                       new SubProgressMoni=
tor(monitor, 7));=0A=
+=0A=
+                       // This is necessary because runCommand does not ac=
tually run the=0A=
+                       // command right now.=0A=
+                       String env[] =3D new String[0];=0A=
+                       try {=0A=
+                               IHostShell hostShell =3D shellService.launc=
hShell(=0A=
+                                               "", env, new SubProgressMon=
itor(monitor, 3)); //$NON-NLS-1$=0A=
+                               hostShell.writeToShell(remoteCommand);=0A=
+                               p =3D new HostShellProcessAdapter(hostShell=
);=0A=
+                       } catch (Exception e) {=0A=
+                               if (p !=3D null) {=0A=
+                                       p.destroy();=0A=
+                               }=0A=
+                               abort(Messages.RemoteShellExec_2, e,=0A=
+                                               IRSECoreStatusCodes.EXCEPTI=
ON_OCCURRED);=0A=
+                       }=0A=
+               } catch (Exception e1) {=0A=
+                       abort(e1.getMessage(), e1,=0A=
+                                       IRSECoreStatusCodes.EXCEPTION_OCCUR=
RED);=0A=
+               }=0A=
+=0A=
+               monitor.done();=0A=
+               return p;=0A=
+       }=0A=
+=0A=
+       /**=0A=
+        * Throws a core exception with an error status object built from t=
he given=0A=
+        * message, lower level exception, and error code.=0A=
+        *=0A=
+        * @param message=0A=
+        *            the status message=0A=
+        * @param exception=0A=
+        *            lower level exception associated with the error, or=
=0A=
+        *            <code>null</code> if none=0A=
+        * @param code=0A=
+        *            error code=0A=
+        */=0A=
+       public static void abort(String message, Throwable exception, int c=
ode) throws CoreException {=0A=
+               IStatus status;=0A=
+               if (exception !=3D null) {=0A=
+                       MultiStatus multiStatus =3D new MultiStatus(Activat=
or.PLUGIN_ID, code, message, exception);=0A=
+                       multiStatus.add(new Status(IStatus.ERROR, Activator=
.PLUGIN_ID, code, exception.getLocalizedMessage(), exception));=0A=
+                       status =3D multiStatus;=0A=
+               } else {=0A=
+                       status =3D new Status(IStatus.ERROR, Activator.PLUG=
IN_ID, code, message, null);=0A=
+               }=0A=
+               throw new CoreException(status);=0A=
+       }=0A=
+       /**=0A=
+        * Checks whether a IHost associated system's is enabled and not a =
local one=0A=
+        * @param host=0A=
+        * @return=0A=
+        */=0A=
+       public static boolean isHostViable(IHost host) {=0A=
+               IRSESystemType sysType =3D host.getSystemType();=0A=
+               if (sysType !=3D null && sysType.isEnabled() && !sysType.is=
Local())=0A=
+                       return true;=0A=
+               return false;=0A=
+       }=0A=
+=0A=
+       /**=0A=
+        * Ensures that RSECorePlugin is initialized before performing any =
actions=0A=
+        */=0A=
+       public static void waitForRSEInitCompletition() {=0A=
+               if (!RSECorePlugin.isInitComplete(RSECorePlugin.INIT_MODEL)=
)=0A=
+                       try {=0A=
+                               RSECorePlugin.waitForInitCompletion(RSECore=
Plugin.INIT_MODEL);=0A=
+                       } catch (InterruptedException e) {=0A=
+                               return;=0A=
+                       }=0A=
+       }=0A=
+}=0A=
diff --git a/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF b/plugi=
ns/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF=0A=
index d10a56e..c34ad9e 100644=0A=
--- a/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF=0A=
+++ b/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF=0A=
@@ -24,7 +24,8 @@ Bundle-RequiredExecutionEnvironment: JavaSE-1.6=0A=
 Import-Package: org.eclipse.core.resources,=0A=
  org.eclipse.debug.internal.ui,=0A=
  org.eclipse.rse.shells.ui,=0A=
- org.eclipse.ui.forms.widgets=0A=
+ org.eclipse.ui.forms.widgets,=0A=
+ org.yocto.remote.utils=0A=
 Bundle-Vendor: %Bundle-Vendor=0A=
 Bundle-ClassPath: lib/json-simple-1.1.1.jar,=0A=
  .=0A=
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/RSEHelper.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remo=
tetools/RSEHelper.java=0A=
deleted file mode 100644=0A=
index 569b00d..0000000=0A=
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/RSEHe=
lper.java=0A=
+++ /dev/null=0A=
@@ -1,419 +0,0 @@=0A=
-/*************************************************************************=
*******=0A=
- * Copyright (c) 2009, 2010 MontaVista Software, Inc and Others.=0A=
- * This program and the accompanying materials are made available under th=
e terms=0A=
- * of the Eclipse Public License v1.0 which accompanies this distribution,=
 and is=0A=
- * available at http://www.eclipse.org/legal/epl-v10.html=0A=
- *=0A=
- * Contributors:=0A=
- * Anna Dushistova (MontaVista) - initial API and implementation=0A=
- * Lianhao Lu (Intel)                  - Modified to add other file operat=
ions.=0A=
- *************************************************************************=
*******/=0A=
-package org.yocto.sdk.remotetools;=0A=
-=0A=
-import java.io.BufferedInputStream;=0A=
-import java.io.BufferedOutputStream;=0A=
-import java.io.File;=0A=
-import java.io.FileOutputStream;=0A=
-import java.io.InputStream;=0A=
-import java.util.ArrayList;=0A=
-import java.util.Arrays;=0A=
-import java.util.Iterator;=0A=
-=0A=
-import org.eclipse.core.runtime.CoreException;=0A=
-import org.eclipse.core.runtime.IStatus;=0A=
-import org.eclipse.core.runtime.MultiStatus;=0A=
-import org.eclipse.core.runtime.OperationCanceledException;=0A=
-import org.eclipse.core.runtime.IProgressMonitor;=0A=
-import org.eclipse.core.runtime.Path;=0A=
-import org.eclipse.core.runtime.Status;=0A=
-import org.eclipse.core.runtime.SubProgressMonitor;=0A=
-import org.eclipse.core.runtime.FileLocator;=0A=
-import org.eclipse.osgi.util.NLS;=0A=
-import org.eclipse.rse.core.IRSECoreStatusCodes;=0A=
-import org.eclipse.rse.core.RSECorePlugin;=0A=
-import org.eclipse.rse.core.model.IHost;=0A=
-import org.eclipse.rse.core.model.ISubSystemConfigurationCategories;=0A=
-import org.eclipse.rse.core.model.ISystemRegistry;=0A=
-import org.eclipse.rse.core.subsystems.ISubSystem;=0A=
-import org.eclipse.rse.subsystems.shells.core.subsystems.servicesubsystem.=
IShellServiceSubSystem;=0A=
-import org.eclipse.rse.services.IService;=0A=
-import org.eclipse.rse.services.files.IFileService;=0A=
-import org.eclipse.rse.services.shells.HostShellProcessAdapter;=0A=
-import org.eclipse.rse.services.shells.IHostShell;=0A=
-import org.eclipse.rse.services.shells.IShellService;=0A=
-import org.eclipse.rse.subsystems.files.core.servicesubsystem.IFileService=
SubSystem;=0A=
-import org.eclipse.rse.subsystems.terminals.core.ITerminalServiceSubSystem=
;=0A=
-import org.eclipse.rse.core.IRSESystemType;=0A=
-=0A=
-public class RSEHelper {=0A=
-=0A=
-       public static IHost getRemoteConnectionByName(String remoteConnecti=
on) {=0A=
-               if (remoteConnection =3D=3D null)=0A=
-                       return null;=0A=
-               IHost[] connections =3D RSECorePlugin.getTheSystemRegistry(=
).getHosts();=0A=
-               for (int i =3D 0; i < connections.length; i++)=0A=
-                       if (connections[i].getAliasName().equals(remoteConn=
ection))=0A=
-                               return connections[i];=0A=
-               return null; // TODO Connection is not found in the list--n=
eed to react=0A=
-               // somehow, throw the exception?=0A=
-=0A=
-       }=0A=
-=0A=
-       public static String getRemoteHostName(String remoteConnection)=0A=
-       {=0A=
-               final IHost host=3DgetRemoteConnectionByName(remoteConnecti=
on);=0A=
-               if(host =3D=3D null)=0A=
-                       return null;=0A=
-               else=0A=
-                       return host.getHostName();=0A=
-       }=0A=
-=0A=
-       public static IService getConnectedRemoteFileService(=0A=
-                       IHost currentConnection, IProgressMonitor monitor) =
throws Exception {=0A=
-               final ISubSystem subsystem =3D getFileSubsystem(currentConn=
ection);=0A=
-=0A=
-               if (subsystem =3D=3D null)=0A=
-                       throw new Exception(Messages.ErrorNoSubsystem);=0A=
-=0A=
-               try {=0A=
-                       subsystem.connect(monitor, false);=0A=
-               } catch (CoreException e) {=0A=
-                       throw e;=0A=
-               } catch (OperationCanceledException e) {=0A=
-                       throw new CoreException(Status.CANCEL_STATUS);=0A=
-               }=0A=
-=0A=
-               if (!subsystem.isConnected())=0A=
-                       throw new Exception(Messages.ErrorConnectSubsystem)=
;=0A=
-=0A=
-               return ((IFileServiceSubSystem) subsystem).getFileService()=
;=0A=
-       }=0A=
-=0A=
-       public static ISubSystem getFileSubsystem(IHost host) {=0A=
-               if (host =3D=3D null)=0A=
-                       return null;=0A=
-               ISubSystem[] subSystems =3D host.getSubSystems();=0A=
-               for (int i =3D 0; i < subSystems.length; i++) {=0A=
-                       if (subSystems[i] instanceof IFileServiceSubSystem)=
=0A=
-                               return subSystems[i];=0A=
-               }=0A=
-               return null;=0A=
-       }=0A=
-=0A=
-       public static IService getConnectedShellService(=0A=
-                       IHost currentConnection, IProgressMonitor monitor) =
throws Exception {=0A=
-               final ISubSystem subsystem =3D getShellSubsystem(currentCon=
nection);=0A=
-=0A=
-               if (subsystem =3D=3D null)=0A=
-                       throw new Exception(Messages.ErrorNoSubsystem);=0A=
-=0A=
-               try {=0A=
-                       subsystem.connect(monitor, false);=0A=
-               } catch (CoreException e) {=0A=
-                       throw e;=0A=
-               } catch (OperationCanceledException e) {=0A=
-                       throw new CoreException(Status.CANCEL_STATUS);=0A=
-               }=0A=
-=0A=
-               if (!subsystem.isConnected())=0A=
-                       throw new Exception(Messages.ErrorConnectSubsystem)=
;=0A=
-=0A=
-               return ((IShellServiceSubSystem) subsystem).getShellService=
();=0A=
-       }=0A=
-=0A=
-       public static ISubSystem getShellSubsystem(IHost host) {=0A=
-               if (host =3D=3D null)=0A=
-                       return null;=0A=
-               ISubSystem[] subSystems =3D host.getSubSystems();=0A=
-               for (int i =3D 0; i < subSystems.length; i++) {=0A=
-                       if (subSystems[i] instanceof IShellServiceSubSystem=
)=0A=
-                               return subSystems[i];=0A=
-               }=0A=
-               return null;=0A=
-       }=0A=
-=0A=
-       public static IHost[] getSuitableConnections() {=0A=
-=0A=
-               //we only get RSE connections with files&cmds subsystem=0A=
-               ArrayList <IHost> filConnections =3D new ArrayList <IHost>(=
Arrays.asList(RSECorePlugin.getTheSystemRegistry()=0A=
-                               .getHostsBySubSystemConfigurationCategory(I=
SubSystemConfigurationCategories.SUBSYSTEM_CATEGORY_FILES))); //$NON-NLS-1$=
=0A=
-=0A=
-               ArrayList <IHost> terminalConnections =3D new ArrayList <IH=
ost>(Arrays.asList(RSECorePlugin.getTheSystemRegistry()=0A=
-                               .getHostsBySubSystemConfigurationCategory("=
terminal")));//$NON-NLS-1$=0A=
-=0A=
-               ArrayList shellConnections =3D new ArrayList(Arrays.asList(=
RSECorePlugin.getTheSystemRegistry()=0A=
-                               .getHostsBySubSystemConfigurationCategory("=
shells"))); //$NON-NLS-1$=0A=
-=0A=
-               Iterator <IHost>iter =3D filConnections.iterator();=0A=
-               while(iter.hasNext()){=0A=
-                       IHost fileConnection =3D iter.next();=0A=
-                       if(!terminalConnections.contains(fileConnection) &&=
 !shellConnections.contains(fileConnection)){=0A=
-                               iter.remove();=0A=
-                       }=0A=
-                       IRSESystemType sysType =3D fileConnection.getSystem=
Type();=0A=
-                       if (sysType =3D=3D null || !sysType.isEnabled()) {=
=0A=
-                               iter.remove();=0A=
-                       }=0A=
-               }=0A=
-=0A=
-               return (IHost[]) filConnections.toArray(new IHost[filConnec=
tions.size()]);=0A=
-       }=0A=
-=0A=
-       public static void deleteRemoteFile(IHost connection, String remote=
ExePath,=0A=
-                       IProgressMonitor monitor) throws Exception {=0A=
-=0A=
-               assert(connection!=3Dnull);=0A=
-               monitor.beginTask(Messages.InfoUpload, 100);=0A=
-=0A=
-               IFileService fileService;=0A=
-               try {=0A=
-                       fileService =3D (IFileService) getConnectedRemoteFi=
leService(=0A=
-                                                       connection,=0A=
-                                                       new SubProgressMoni=
tor(monitor, 5));=0A=
-=0A=
-                       Path remotePath =3D new Path(remoteExePath);=0A=
-                       if(fileService.getFile(remotePath.removeLastSegment=
s(1).toString(),=0A=
-                                       remotePath.lastSegment(),=0A=
-                                       new SubProgressMonitor(monitor, 5))=
.exists()) {=0A=
-                               fileService.delete(remotePath.removeLastSeg=
ments(1).toString(),=0A=
-                                               remotePath.lastSegment(),=
=0A=
-                                               new SubProgressMonitor(moni=
tor, 10));=0A=
-                       }=0A=
-               } finally {=0A=
-                       monitor.done();=0A=
-               }=0A=
-               return;=0A=
-       }=0A=
-=0A=
-       public static void putRemoteFile(IHost connection, String localExeP=
ath, String remoteExePath,=0A=
-                       IProgressMonitor monitor) throws Exception {=0A=
-=0A=
-               assert(connection!=3Dnull);=0A=
-               monitor.beginTask(Messages.InfoUpload, 100);=0A=
-=0A=
-               IFileService fileService;=0A=
-               try {=0A=
-                       fileService =3D (IFileService) getConnectedRemoteFi=
leService(=0A=
-                                                       connection,=0A=
-                                                       new SubProgressMoni=
tor(monitor, 5));=0A=
-                       File file =3D new File(localExePath);=0A=
-                       Path remotePath =3D new Path(remoteExePath);=0A=
-                       if(fileService.getFile(remotePath.removeLastSegment=
s(1).toString(),=0A=
-                                       remotePath.lastSegment(),=0A=
-                                       new SubProgressMonitor(monitor, 5))=
.exists()) {=0A=
-                               fileService.delete(remotePath.removeLastSeg=
ments(1).toString(),=0A=
-                                               remotePath.lastSegment(),=
=0A=
-                                               new SubProgressMonitor(moni=
tor, 10));=0A=
-                       }=0A=
-                       fileService.upload(file, remotePath.removeLastSegme=
nts(1)=0A=
-                                       .toString(), remotePath.lastSegment=
(), true, null, null,=0A=
-                                       new SubProgressMonitor(monitor, 80)=
);=0A=
-                       // Need to change the permissions to match the orig=
inal file=0A=
-                       // permissions because of a bug in upload=0A=
-                       //RemoteApplication p =3D remoteShellExec(=0A=
-                       //              config,=0A=
-                       //              "", "chmod", "+x " + spaceEscapify(=
remotePath.toString()), new SubProgressMonitor(monitor, 5)); //$NON-NLS-1$ =
//$NON-NLS-2$ //$NON-NLS-3$=0A=
-                       //Thread.sleep(500);=0A=
-                       //p.destroy();=0A=
-=0A=
-               } finally {=0A=
-                       monitor.done();=0A=
-               }=0A=
-               return;=0A=
-       }=0A=
-=0A=
-       public static void putRemoteFileInPlugin(IHost connection, String l=
ocaPathInPlugin, String remoteExePath,=0A=
-                       IProgressMonitor monitor) throws Exception {=0A=
-=0A=
-               assert(connection!=3Dnull);=0A=
-               monitor.beginTask(Messages.InfoUpload, 100);=0A=
-=0A=
-               IFileService fileService;=0A=
-               try {=0A=
-                       fileService =3D (IFileService) getConnectedRemoteFi=
leService(=0A=
-                                                       connection,=0A=
-                                                       new SubProgressMoni=
tor(monitor, 5));=0A=
-                       InputStream  inputStream =3D FileLocator.openStream=
(=0A=
-                                   Activator.getDefault().getBundle(), new=
 Path(locaPathInPlugin), false);=0A=
-                       Path remotePath =3D new Path(remoteExePath);=0A=
-                       /*=0A=
-                       if(!fileService.getFile(remotePath.removeLastSegmen=
ts(1).toString(),=0A=
-                                       remotePath.lastSegment(),=0A=
-                                       new SubProgressMonitor(monitor, 5))=
.exists()) {=0A=
-                       }=0A=
-                       */=0A=
-                       /*=0A=
-                       fileService.upload(inputStream, remotePath.removeLa=
stSegments(1)=0A=
-                                       .toString(), remotePath.lastSegment=
(), true, null,=0A=
-                                       new SubProgressMonitor(monitor, 80)=
);=0A=
-                                       */=0A=
-                       //TODO workaround for now=0A=
-                       //in case the underlying scp file service doesn't s=
upport inputStream upload=0A=
-                       BufferedInputStream bis =3D new BufferedInputStream=
(inputStream);=0A=
-                       File tempFile =3D File.createTempFile("scp", "temp"=
); //$NON-NLS-1$ //$NON-NLS-2$=0A=
-                       FileOutputStream os =3D new FileOutputStream(tempFi=
le);=0A=
-                       BufferedOutputStream bos =3D new BufferedOutputStre=
am(os);=0A=
-                       byte[] buffer =3D new byte[1024];=0A=
-                       int readCount;=0A=
-                       while( (readCount =3D bis.read(buffer)) > 0)=0A=
-                       {=0A=
-                               bos.write(buffer, 0, readCount);=0A=
-                       }=0A=
-                       bos.close();=0A=
-                       fileService.upload(tempFile, remotePath.removeLastS=
egments(1)=0A=
-                                       .toString(), remotePath.lastSegment=
(), true, null, null,=0A=
-                                       new SubProgressMonitor(monitor, 80)=
);=0A=
-                       // Need to change the permissions to match the orig=
inal file=0A=
-                       // permissions because of a bug in upload=0A=
-                       remoteShellExec(=0A=
-                                       connection,=0A=
-                                       "", "chmod", "+x " + spaceEscapify(=
remotePath.toString()), new SubProgressMonitor(monitor, 5)); //$NON-NLS-1$ =
//$NON-NLS-2$ //$NON-NLS-3$=0A=
-=0A=
-               } finally {=0A=
-                       monitor.done();=0A=
-               }=0A=
-               return;=0A=
-       }=0A=
-=0A=
-       public static void getRemoteFile(IHost connection, String localExeP=
ath, String remoteExePath,=0A=
-                       IProgressMonitor monitor) throws Exception {=0A=
-=0A=
-               assert(connection!=3Dnull);=0A=
-               monitor.beginTask(Messages.InfoDownload, 100);=0A=
-=0A=
-               IFileService fileService;=0A=
-               try {=0A=
-                       fileService =3D (IFileService) getConnectedRemoteFi=
leService(=0A=
-                                                       connection,=0A=
-                                                       new SubProgressMoni=
tor(monitor, 10));=0A=
-                       File file =3D new File(localExePath);=0A=
-                       file.deleteOnExit();=0A=
-                       monitor.worked(5);=0A=
-                       Path remotePath =3D new Path(remoteExePath);=0A=
-                       fileService.download(remotePath.removeLastSegments(=
1).toString(),=0A=
-                                       remotePath.lastSegment(),file,true,=
 null,=0A=
-                                       new SubProgressMonitor(monitor, 85)=
);=0A=
-                       // Need to change the permissions to match the orig=
inal file=0A=
-                       // permissions because of a bug in upload=0A=
-                       //RemoteApplication p =3D remoteShellExec(=0A=
-                       //              config,=0A=
-                       //              "", "chmod", "+x " + spaceEscapify(=
remotePath.toString()), new SubProgressMonitor(monitor, 5)); //$NON-NLS-1$ =
//$NON-NLS-2$ //$NON-NLS-3$=0A=
-                       //Thread.sleep(500);=0A=
-                       //p.destroy();=0A=
-=0A=
-               } finally {=0A=
-                       monitor.done();=0A=
-               }=0A=
-               return;=0A=
-       }=0A=
-=0A=
-       public static ITerminalServiceSubSystem getTerminalSubSystem(=0A=
-            IHost connection) {=0A=
-        ISystemRegistry systemRegistry =3D RSECorePlugin.getTheSystemRegis=
try();=0A=
-        ISubSystem[] subsystems =3D systemRegistry.getSubSystems(connectio=
n);=0A=
-        for (int i =3D 0; i < subsystems.length; i++) {=0A=
-               if (subsystems[i] instanceof ITerminalServiceSubSystem) {=
=0A=
-                ITerminalServiceSubSystem subSystem =3D (ITerminalServiceS=
ubSystem) subsystems[i];=0A=
-                return subSystem;=0A=
-            }=0A=
-        }=0A=
-        return null;=0A=
-    }=0A=
-=0A=
-       public static String spaceEscapify(String inputString) {=0A=
-               if (inputString =3D=3D null)=0A=
-                       return null;=0A=
-=0A=
-               return inputString.replaceAll(" ", "\\\\ "); //$NON-NLS-1$ =
//$NON-NLS-2$=0A=
-       }=0A=
-=0A=
-       private final static String EXIT_CMD =3D "exit"; //$NON-NLS-1$=0A=
-       private final static String CMD_DELIMITER =3D ";"; //$NON-NLS-1$=0A=
-=0A=
-       public static Process remoteShellExec(IHost connection,=0A=
-                       String prelaunchCmd, String remoteCommandPath, Stri=
ng arguments,=0A=
-                       IProgressMonitor monitor) throws CoreException {=0A=
-=0A=
-               monitor.beginTask(NLS.bind(Messages.RemoteShellExec_1,=0A=
-                               remoteCommandPath, arguments), 10);=0A=
-               String realRemoteCommand =3D arguments =3D=3D null ? spaceE=
scapify(remoteCommandPath)=0A=
-                               : spaceEscapify(remoteCommandPath) + " " + =
arguments; //$NON-NLS-1$=0A=
-=0A=
-               String remoteCommand =3D realRemoteCommand + CMD_DELIMITER =
+ EXIT_CMD;=0A=
-=0A=
-               if(prelaunchCmd !=3D null) {=0A=
-                       if (!prelaunchCmd.trim().equals("")) //$NON-NLS-1$=
=0A=
-                               remoteCommand =3D prelaunchCmd + CMD_DELIMI=
TER + remoteCommand;=0A=
-               }=0A=
-=0A=
-               IShellService shellService;=0A=
-               Process p =3D null;=0A=
-               try {=0A=
-                       shellService =3D (IShellService) getConnectedShellS=
ervice(=0A=
-                                                       connection,=0A=
-                                                       new SubProgressMoni=
tor(monitor, 7));=0A=
-=0A=
-                       // This is necessary because runCommand does not ac=
tually run the=0A=
-                       // command right now.=0A=
-                       String env[] =3D new String[0];=0A=
-                       try {=0A=
-                               IHostShell hostShell =3D shellService.launc=
hShell(=0A=
-                                               "", env, new SubProgressMon=
itor(monitor, 3)); //$NON-NLS-1$=0A=
-                               hostShell.writeToShell(remoteCommand);=0A=
-                               p =3D new HostShellProcessAdapter(hostShell=
);=0A=
-                       } catch (Exception e) {=0A=
-                               if (p !=3D null) {=0A=
-                                       p.destroy();=0A=
-                               }=0A=
-                               abort(Messages.RemoteShellExec_2, e,=0A=
-                                               IRSECoreStatusCodes.EXCEPTI=
ON_OCCURRED);=0A=
-                       }=0A=
-               } catch (Exception e1) {=0A=
-                       abort(e1.getMessage(), e1,=0A=
-                                       IRSECoreStatusCodes.EXCEPTION_OCCUR=
RED);=0A=
-               }=0A=
-=0A=
-               monitor.done();=0A=
-               return p;=0A=
-       }=0A=
-=0A=
-       /**=0A=
-        * Throws a core exception with an error status object built from t=
he given=0A=
-        * message, lower level exception, and error code.=0A=
-        *=0A=
-        * @param message=0A=
-        *            the status message=0A=
-        * @param exception=0A=
-        *            lower level exception associated with the error, or=
=0A=
-        *            <code>null</code> if none=0A=
-        * @param code=0A=
-        *            error code=0A=
-        */=0A=
-       public static void abort(String message, Throwable exception, int c=
ode) throws CoreException {=0A=
-               IStatus status;=0A=
-               if (exception !=3D null) {=0A=
-                       MultiStatus multiStatus =3D new MultiStatus(Activat=
or.PLUGIN_ID, code, message, exception);=0A=
-                       multiStatus.add(new Status(IStatus.ERROR, Activator=
.PLUGIN_ID, code, exception.getLocalizedMessage(), exception));=0A=
-                       status=3D multiStatus;=0A=
-               } else {=0A=
-                       status=3D new Status(IStatus.ERROR, Activator.PLUGI=
N_ID, code, message, null);=0A=
-               }=0A=
-               throw new CoreException(status);=0A=
-       }=0A=
-=0A=
-       public static boolean isHostViable(IHost host) {=0A=
-               IRSESystemType sysType =3D host.getSystemType();=0A=
-               if (sysType !=3D null && sysType.isEnabled() && !sysType.is=
Local())=0A=
-                       return true;=0A=
-               return false;=0A=
-       }=0A=
-=0A=
-       public static void waitForRSEInitCompletition() {=0A=
-               if (!RSECorePlugin.isInitComplete(RSECorePlugin.INIT_MODEL)=
)=0A=
-                       try {=0A=
-                               RSECorePlugin.waitForInitCompletion(RSECore=
Plugin.INIT_MODEL);=0A=
-                       } catch (InterruptedException e) {=0A=
-                               return;=0A=
-                       }=0A=
-       }=0A=
-}=0A=
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/BaseModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/=
sdk/remotetools/actions/BaseModel.java=0A=
index 2e15e48..08cb873 100644=0A=
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/BaseModel.java=0A=
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/BaseModel.java=0A=
@@ -18,7 +18,7 @@ import org.eclipse.core.runtime.IProgressMonitor;=0A=
 import org.eclipse.core.runtime.SubProgressMonitor;=0A=
 import org.eclipse.jface.operation.IRunnableWithProgress;=0A=
 import org.eclipse.rse.core.model.IHost;=0A=
-import org.yocto.sdk.remotetools.RSEHelper;=0A=
+import org.yocto.remote.utils.RSEHelper;=0A=
 import org.yocto.sdk.remotetools.remote.RemoteShellExec;=0A=
=0A=
 abstract public class BaseModel implements IRunnableWithProgress {=0A=
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/BaseSettingDialog.java b/plugins/org.yocto.sdk.remotetools/src/or=
g/yocto/sdk/remotetools/actions/BaseSettingDialog.java=0A=
index 962a20a..7845959 100644=0A=
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/BaseSettingDialog.java=0A=
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/BaseSettingDialog.java=0A=
@@ -21,9 +21,9 @@=0A=
=0A=
 package org.yocto.sdk.remotetools.actions;=0A=
=0A=
+import org.yocto.remote.utils.RSEHelper;=0A=
 import org.yocto.sdk.remotetools.Messages;=0A=
 import org.yocto.sdk.remotetools.SWTFactory;=0A=
-import org.yocto.sdk.remotetools.RSEHelper;=0A=
 import org.eclipse.jface.dialogs.Dialog;=0A=
 import org.eclipse.jface.dialogs.IDialogConstants;=0A=
 import org.eclipse.rse.core.model.IHost;=0A=
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/TerminalHandler.java b/plugins/org.yocto.sdk.remotetools/src/org/=
yocto/sdk/remotetools/actions/TerminalHandler.java=0A=
index 9e7c169..4ad8688 100644=0A=
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/TerminalHandler.java=0A=
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/TerminalHandler.java=0A=
@@ -33,8 +33,8 @@ import org.eclipse.swt.events.DisposeListener;=0A=
 import org.eclipse.swt.widgets.Shell;=0A=
 import org.eclipse.tm.internal.terminal.control.ITerminalViewControl;=0A=
 import org.eclipse.tm.internal.terminal.provisional.api.ITerminalConnector=
;=0A=
+import org.yocto.remote.utils.RSEHelper;=0A=
 import org.yocto.sdk.remotetools.CommonHelper;=0A=
-import org.yocto.sdk.remotetools.RSEHelper;=0A=
=0A=
 abstract public class TerminalHandler extends AbstractHandler {=0A=
=0A=
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/remote/RemoteShellExec.java b/plugins/org.yocto.sdk.remotetools/src/org/y=
octo/sdk/remotetools/remote/RemoteShellExec.java=0A=
index bb4859d..bfcbbfc 100644=0A=
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/remot=
e/RemoteShellExec.java=0A=
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/remot=
e/RemoteShellExec.java=0A=
@@ -22,7 +22,7 @@ import org.eclipse.core.runtime.IProgressMonitor;=0A=
 //import org.eclipse.tcf.services.IProcesses;=0A=
 //import org.eclipse.tcf.util.TCFTask;=0A=
 import org.eclipse.rse.core.model.IHost;=0A=
-import org.yocto.sdk.remotetools.RSEHelper;=0A=
+import org.yocto.remote.utils.RSEHelper;=0A=
=0A=
 public class RemoteShellExec {=0A=
=0A=
--=0A=
1.7.9.5=0A=
=0A=

