Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20DBCE006EB
	for <yocto@yoctoproject.org>; Fri,  1 Feb 2013 07:34:20 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Feb 2013 07:34:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,579,1355126400"; d="scan'208";a="256271818"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga001.jf.intel.com with ESMTP; 01 Feb 2013 07:34:19 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.83]) with mapi id
	14.01.0355.002; Fri, 1 Feb 2013 07:34:19 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH v7] [399231] Fix race conditions when reading
	using	LocalShellOutputReader(s)
Thread-Index: AQHOAGsutK8gQ33hiEy/qwqJr4lfjJhlIPBQ
Date: Fri, 1 Feb 2013 15:34:18 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C57DDD2D8@ORSMSX101.amr.corp.intel.com>
References: <1359715463-19614-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1359715463-19614-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH v7] [399231] Fix race conditions when reading using	LocalShellOutputReader(s)
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
X-List-Received-Date: Fri, 01 Feb 2013 15:34:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ioana,

Seems your patch is introducing more changes than just add lock, you also a=
dded the getReader function which in your patch description you need to exp=
lain it as well.  The other thing is do we really need to introduce the cha=
nge at the IHostShell interface level, which will enforce the changes to cl=
asses that implement it besides LocalHostShell?  Keep in mind, this is an u=
pstream patch which we want to limit the impact to the existing code.

- Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Friday, February 01, 2013 2:44 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH v7] [399231] Fix race conditions when reading using=
 LocalShellOutputReader(s)

When running a remote command with a Local connection from a Linux host a n=
ew LocalHostShell is created.
At this time, a new LocalHostThread is launched, along side with two LocalS=
hellOutputReaders (output and error). The constructors for the OutputReader=
s will receive a reference to the reader created by the LocalHostThread.

When calling runCommandRemote, the newly created IHostShell is returned, ma=
king it possible to create an adapter(IHostShellProcessAdapter) that  will =
then be used to read all available output from the readers.
When the LocalShellThread finishes running its run() method, it will perfor=
m a cleanup causing both readers (output and error) to be closed.
If at this point, there are any readers, or handlers to the readers that ar=
e still trying to read data (read using handlers readers), an error will be=
 thrown saying that the the pipe to the stream is closed ("Ensure open stre=
am"/ "Pipe closed" errors).
After inspecting the internalReadLine, it seems that it expects a null refe=
rence of the reader in order to consider that the reading is done.
In order to ensure that this will happen once the LocalShellThread closes t=
he stream(s), we will make sure that the reference to the readers is set to=
 null, and that LocalShellOutputReader(s) use the same reference of the rea=
der as the LocalShellThread. For this to happen, a reference of the thread =
must be kept in the reader, in order to retrieve the correct reference of t=
he underlying reader.
Since there can still be race conditions in this solution, all operations t=
hat involve the reference to now the only reader, must be performed under m=
utual exclusion using a shared lock between the LocalShellOutputReader and =
LocalShellThread.

[update]: do not modify any of the readers;use the shell instead

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../services/dstore/shells/DStoreHostShell.java    |   10 ++++++++
 .../services/local/shells/LocalHostShell.java      |   15 +++++++++++-
 .../services/local/shells/LocalShellThread.java    |   18 +++++++++++++++
 .../.settings/.api_filters                         |   22 ++++++++++++++++=
++
 .../services/shells/TerminalServiceHostShell.java  |   24 ++++++++++++++--=
----
 .../eclipse/rse/services/shells/IHostShell.java    |   14 ++++++++++--
 6 files changed, 93 insertions(+), 10 deletions(-)

diff --git a/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rs=
e/internal/services/dstore/shells/DStoreHostShell.java b/rse/plugins/org.ec=
lipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dstore/shel=
ls/DStoreHostShell.java
index 06763d3..f220581 100644
--- a/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/inter=
nal/services/dstore/shells/DStoreHostShell.java
+++ b/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/in
+++ ternal/services/dstore/shells/DStoreHostShell.java
@@ -14,10 +14,13 @@
  * Contributors:
  * David McKnight   (IBM)  [251619] [dstore] shell output readers not clea=
ned up on disconnect
  * David McKnight   (IBM)  [244070] [dstore] DStoreHostShell#exit() does n=
ot terminate child processes
+ * Ioana Grigoropol (Intel) - [399231] Race conditions occur when
+ trying to read from local processes using LocalShellOutputReader
  *************************************************************************=
******/

 package org.eclipse.rse.internal.services.dstore.shells;

+import java.io.BufferedReader;
+import java.util.concurrent.locks.Lock;
 import org.eclipse.dstore.core.model.DE;  import org.eclipse.dstore.core.m=
odel.DataElement;
 import org.eclipse.dstore.core.model.DataStore;
@@ -92,5 +95,12 @@ public class DStoreHostShell extends AbstractHostShell i=
mplements IHostShell

        }

+       public Lock getLock() {
+               return null;
+       }
+
+       public BufferedReader getReader(boolean isErrorReader) {
+               return null;
+       }

 }
diff --git a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse=
/internal/services/local/shells/LocalHostShell.java b/rse/plugins/org.eclip=
se.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/Lo=
calHostShell.java
index 250a904..1ddb0ae 100644
--- a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/intern=
al/services/local/shells/LocalHostShell.java
+++ b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/int
+++ ernal/services/local/shells/LocalHostShell.java
@@ -13,10 +13,13 @@
  *
  * Contributors:
  * Martin Oberhuber (Wind River) - [161838] local shell reports isActive()=
 wrong
+ * Ioana Grigoropol (Intel) - [399231] Race conditions occur when
+ trying to read from local processes using LocalShellOutputReader
  *************************************************************************=
******/

 package org.eclipse.rse.internal.services.local.shells;

+import java.io.BufferedReader;
+import java.util.concurrent.locks.Lock;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.rse.internal.services.local.shells.LocalShellOutputRead=
er;
 import org.eclipse.rse.internal.services.local.shells.LocalShellThread;
@@ -38,7 +41,7 @@ public class LocalHostShell extends AbstractHostShell imp=
lements IHostShell
        {
                _shellThread =3D new LocalShellThread(initialWorkingDirecto=
ry, invocation, encoding, environment);
                _stdoutHandler =3D new LocalShellOutputReader(this, _shellT=
hread.getOutputStream(), false);
-               _stderrHandler =3D new LocalShellOutputReader(this, _shellT=
hread.getErrorStream(),true);
+               _stderrHandler =3D new LocalShellOutputReader(this,
+_shellThread.getErrorStream(), true);
        }

        protected void run(IProgressMonitor monitor) @@ -84,5 +87,15 @@ pub=
lic class LocalHostShell extends AbstractHostShell implements IHostShell
                writeToShell("exit"); //$NON-NLS-1$
        }

+       public Lock getLock() {
+               return _shellThread.getLock();
+       }
+
+       public BufferedReader getReader(boolean isErrorReader) {
+               if (isErrorReader)
+                       return _shellThread.getErrorStream();
+               else
+                       return _shellThread.getOutputStream();
+       }

 }
diff --git a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse=
/internal/services/local/shells/LocalShellThread.java b/rse/plugins/org.ecl=
ipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/=
LocalShellThread.java
index 0a33ad4..28e8ad9 100644
--- a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/intern=
al/services/local/shells/LocalShellThread.java
+++ b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/int
+++ ernal/services/local/shells/LocalShellThread.java
@@ -17,6 +17,7 @@
  * David McKnight       (IBM)    - [189387] Use specified encoding for she=
ll output
  * Martin Oberhuber (Wind River) - [161838] local shell reports isActive()=
 wrong
  * Anna Dushistova  (MontaVsita) - [249354] Incorrect behaviour of local s=
hells subsystem runCommand method
+ * Ioana Grigoropol (Intel) - [399231] Race conditions occur when
+ trying to read from local processes using LocalShellOutputReader
  *************************************************************************=
******/

 package org.eclipse.rse.internal.services.local.shells;
@@ -29,6 +30,8 @@ import java.io.InputStreamReader;  import java.io.OutputS=
tream;  import java.io.OutputStreamWriter;  import java.net.URL;
+import java.util.concurrent.locks.Lock; import
+java.util.concurrent.locks.ReentrantLock;

 import org.eclipse.core.runtime.FileLocator;

@@ -62,6 +65,7 @@ public class LocalShellThread extends Thread
        private BufferedReader _stdInput;
        private BufferedReader _stdError;

+       private Lock _lock;
        /**
         * constructor for local command shell monitor
         *
@@ -260,6 +264,7 @@ public class LocalShellThread extends Thread

                        _stdError =3D new BufferedReader(new InputStreamRea=
der(_theProcess.getErrorStream()));

+                       _lock =3D new ReentrantLock();
                }
                catch (IOException e)
                {
@@ -438,9 +443,14 @@ public class LocalShellThread extends Thread
                _isDone =3D true;
                try
                {
+                       _lock.lock();
                        _stdInput.close();
                        _stdError.close();

+                       _stdInput =3D null;
+                       _stdError =3D null;
+
+                       _lock.unlock();
                        if (_theProcess !=3D null)
                        {

@@ -511,4 +521,12 @@ public class LocalShellThread extends Thread
        }


+       public Lock getLock() {
+               return _lock;
+       }
+
+       public void setLock(Lock _lock) {
+               this._lock =3D _lock;
+       }
+
 }
diff --git a/rse/plugins/org.eclipse.rse.services/.settings/.api_filters b/=
rse/plugins/org.eclipse.rse.services/.settings/.api_filters
index 19273c2..11a5ad4 100644
--- a/rse/plugins/org.eclipse.rse.services/.settings/.api_filters
+++ b/rse/plugins/org.eclipse.rse.services/.settings/.api_filters
@@ -1,5 +1,13 @@
 <?xml version=3D"1.0" encoding=3D"UTF-8" standalone=3D"no"?>  <component i=
d=3D"org.eclipse.rse.services" version=3D"2">
+    <resource path=3D"META-INF/MANIFEST.MF">
+        <filter id=3D"923795461">
+            <message_arguments>
+                <message_argument value=3D"3.2.200"/>
+                <message_argument value=3D"3.2.200"/>
+            </message_arguments>
+        </filter>
+    </resource>
     <resource path=3D"META-INF/MANIFEST.MF" type=3D"org.eclipse.rse.intern=
al.services.terminals.AbstractTerminalService">
         <filter id=3D"305324134">
             <message_arguments>
@@ -119,4 +127,18 @@
             </message_arguments>
         </filter>
     </resource>
+    <resource path=3D"src/org/eclipse/rse/services/shells/IHostShell.java"=
 type=3D"org.eclipse.rse.services.shells.IHostShell">
+        <filter id=3D"403804204">
+            <message_arguments>
+                <message_argument value=3D"org.eclipse.rse.services.shells=
.IHostShell"/>
+                <message_argument value=3D"getLock()"/>
+            </message_arguments>
+        </filter>
+        <filter id=3D"403804204">
+            <message_arguments>
+                <message_argument value=3D"org.eclipse.rse.services.shells=
.IHostShell"/>
+                <message_argument value=3D"getReader(boolean)"/>
+            </message_arguments>
+        </filter>
+    </resource>
 </component>
diff --git a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/inter=
nal/services/shells/TerminalServiceHostShell.java b/rse/plugins/org.eclipse=
.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceH=
ostShell.java
index 2a461ad..9699e3a 100644
--- a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/ser=
vices/shells/TerminalServiceHostShell.java
+++ b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/
+++ services/shells/TerminalServiceHostShell.java
@@ -22,6 +22,7 @@
  * Anna Dushistova  (MontaVista) - [258720] SshHostShell fails to run comm=
and if initialWorkingDirectory supplied
  * Rob Stryker (JBoss) - [335059] TerminalServiceShellOutputReader logs er=
ror when hostShell.exit() is called
  * Martin Oberhuber (Wind River) - [356132] wait for initial output
+ * Ioana Grigoropol (Intel) - [399231] Race conditions occur when
+ trying to read from local processes using LocalShellOutputReader
  *************************************************************************=
******/

 package org.eclipse.rse.internal.services.shells;
@@ -32,6 +33,8 @@ import java.io.OutputStream;  import java.io.OutputStream=
Writer;  import java.io.PrintWriter;  import java.nio.charset.Charset;
+import java.util.concurrent.locks.Lock; import
+java.util.concurrent.locks.ReentrantLock;
 import java.util.regex.Pattern;

 import org.eclipse.rse.services.clientserver.PathUtility;
@@ -54,27 +57,27 @@ public class TerminalServiceHostShell extends AbstractH=
ostShell {

        private TerminalServiceShellWriterThread fShellWriter;

+       private BufferedReader fBufReader;
        public TerminalServiceHostShell(ITerminalShell terminalShell,
                        String initialWorkingDirectory, String commandToRun=
,
                        String[] environment) {
                try {
                        fTerminalShell =3D terminalShell;
                        String encoding =3D fTerminalShell.getDefaultEncodi=
ng();
-                       BufferedReader bufReader;
                        if (encoding !=3D null) {
-                               bufReader =3D new BufferedReader(new InputS=
treamReader(fTerminalShell
+                               fBufReader =3D new BufferedReader(new
+InputStreamReader(fTerminalShell
                                                .getInputStream(), encoding=
));
                        } else {
-                               bufReader =3D new BufferedReader(new InputS=
treamReader(fTerminalShell
+                               fBufReader =3D new BufferedReader(new
+InputStreamReader(fTerminalShell
                                                                .getInputSt=
ream()));
                        }
                        //bug 356132: wait for initial output before sendin=
g any command
                        //FIXME this should likely move into the TerminalSe=
rviceShellWriterThread, so wait can be canceled
-                       bufReader.mark(1);
-                       bufReader.read();
-                       bufReader.reset();
+                       fBufReader.mark(1);
+                       fBufReader.read();
+                       fBufReader.reset();

-                       fStdoutHandler =3D new TerminalServiceShellOutputRe=
ader(this, bufReader, false);
+                       fStdoutHandler =3D new TerminalServiceShellOutputRe=
ader(this,
+fBufReader, false);
                        fStderrHandler =3D new TerminalServiceShellOutputRe=
ader(this, null, true);
                        OutputStream outputStream =3D fTerminalShell.getOut=
putStream();
                        if (encoding !=3D null) {
@@ -170,4 +173,11 @@ public class TerminalServiceHostShell extends Abstract=
HostShell {
                return "echo $PWD'>'"; //$NON-NLS-1$
        }

+       public Lock getLock() {
+               return new ReentrantLock();
+       }
+
+       public BufferedReader getReader(boolean isErrorReader) {
+               return fBufReader;
+       }
 }
diff --git a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/servi=
ces/shells/IHostShell.java b/rse/plugins/org.eclipse.rse.services/src/org/e=
clipse/rse/services/shells/IHostShell.java
index 8139cfc..ed49c1d 100644
--- a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/she=
lls/IHostShell.java
+++ b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/
+++ shells/IHostShell.java
@@ -11,11 +11,13 @@
  * Emily Bruner, Mazen Faraj, Adrian Storisteanu, Li Ding, and Kent Hawley=
.
  *
  * Contributors:
- * {Name} (company) - description of contribution.
+ * Ioana Grigoropol (Intel) - [399231] Race conditions occur when
+ trying to read from local processes using LocalShellOutputReader
  *************************************************************************=
*******/

 package org.eclipse.rse.services.shells;

+import java.io.BufferedReader;
+import java.util.concurrent.locks.Lock;

 public interface IHostShell
 {
@@ -28,5 +30,13 @@ public interface IHostShell
        public IHostShellOutputReader getStandardErrorReader();

        public void exit();
+       /**
+        * @since 3.2
+        */
+       public Lock getLock();
+       /**
+        * @since 3.2
+        */
+       public BufferedReader getReader(boolean isErrorReader);

-}
\ No newline at end of file
+}
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

