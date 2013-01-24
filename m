Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7F42E0146D
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 14:26:23 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 24 Jan 2013 14:26:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,532,1355126400"; d="scan'208";a="194871143"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by AZSMGA002.ch.intel.com with ESMTP; 24 Jan 2013 14:26:20 -0800
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 24 Jan 2013 14:26:07 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.3]) with mapi id
	14.01.0421.002; Thu, 24 Jan 2013 14:26:07 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH v5] Fix race conditions for reading output from
	local processes
Thread-Index: AQHN+k8R2K2GlFDL+02kT86pUQMe8phZDryw
Date: Thu, 24 Jan 2013 22:26:07 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C57DD7735@ORSMSX101.amr.corp.intel.com>
References: <1359040770-11262-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1359040770-11262-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH v5] Fix race conditions for reading output from	local processes
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
X-List-Received-Date: Thu, 24 Jan 2013 22:26:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ioana,

As we discussed, please send this patch to upstream.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Thursday, January 24, 2013 7:20 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH v5] Fix race conditions for reading output from loc=
al processes

When running a command using RSE Api, using a Local connection from a linux=
 host a new LocalHostShell is created.
When this is created, a new LocalHostThread is launched, along side with tw=
o LocalShellOutputReaders (output and error). The constructors for the Outp=
utReaders will receive a reference to the reader created by the LocalHostTh=
read.

When calling runCommandRemote, the newly creared IHostShell is returned, ma=
king it possible to create an adapter(IHostShellProcessAdapter) that  will =
then be used to read all available output from the readers.
When the LocalHostThread finishes running its run() method, it will perform=
 a cleanup causing both readers (output and error) to be closed. If at this=
 point, there are any readers, or handlers to the readers that are still tr=
ying to read data (using internalReadLine or read on handlers), obviously, =
an error will be thrown saying that the the pipe to the stream is closed ("=
Ensure open stream"/ "Pipe closed" errors).
After inspecting the internalReadLine, it seems that it expects a null refe=
rence of the reader in order to consider that the reading is done. In order=
 to ensure that this will happen once the LocalHostThread closes the stream=
(s), we will make sure that the reference to the readers is set to null, an=
d that LocalShellOutputReaders use the same reference. For this to happen, =
a reference of the thread must be kept in the reader, in order to retrieve =
the correct reference of the underlying reader.
Since there can still be race conditions in this solution, all operations t=
hat involve the reference to now the only reader, must be performed under m=
utual exclusion using a shared lock between the LocalShellOutputReader and =
LocalHostThread.

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
Acked-by: Jessica Zhang<jessica.zhang@intel.com>
---
 .../dstore/shells/DStoreShellOutputReader.java     |   14 +++++-
 .../services/local/shells/LocalHostShell.java      |    6 +--
 .../local/shells/LocalShellOutputReader.java       |   46 ++++++++++++++--=
----
 .../services/local/shells/LocalShellThread.java    |   18 ++++++++
 .../.settings/.api_filters                         |   38 ++++++++++++----
 .../shells/TerminalServiceShellOutputReader.java   |   13 ++++++
 .../services/shells/IHostShellOutputReader.java    |   11 +++++
 7 files changed, 121 insertions(+), 25 deletions(-)

diff --git a/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rs=
e/internal/services/dstore/shells/DStoreShellOutputReader.java b/rse/plugin=
s/org.eclipse.rse.services.dstore/src/org/eclipse/rse/internal/services/dst=
ore/shells/DStoreShellOutputReader.java
index 84c9bb9..281e240 100644
--- a/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/inter=
nal/services/dstore/shells/DStoreShellOutputReader.java
+++ b/rse/plugins/org.eclipse.rse.services.dstore/src/org/eclipse/rse/in
+++ ternal/services/dstore/shells/DStoreShellOutputReader.java
@@ -17,6 +17,9 @@

 package org.eclipse.rse.internal.services.dstore.shells;

+import java.io.BufferedReader;
+import java.util.concurrent.locks.Lock;
+
 import org.eclipse.dstore.core.model.DataElement;
 import org.eclipse.dstore.extra.DomainEvent;
 import org.eclipse.dstore.extra.IDomainListener;
@@ -167,7 +170,16 @@ public class DStoreShellOutputReader extends AbstractH=
ostShellOutputReader imple
                super.finish();
                notifyResponse();
        }
-
+
+       public BufferedReader getReader() {
+               // TODO Auto-generated method stub
+               return null;
+       }
+
+       public Lock getReaderLock() {
+               return null;
+       }
+
        /*
        private void handleInput()
        {
diff --git a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse=
/internal/services/local/shells/LocalHostShell.java b/rse/plugins/org.eclip=
se.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/Lo=
calHostShell.java
index 250a904..3179bab 100644
--- a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/intern=
al/services/local/shells/LocalHostShell.java
+++ b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/int
+++ ernal/services/local/shells/LocalHostShell.java
@@ -36,9 +36,9 @@ public class LocalHostShell extends AbstractHostShell imp=
lements IHostShell

        public LocalHostShell(String initialWorkingDirectory, String invoca=
tion, String encoding, String[] environment)
        {
-               _shellThread =3D new LocalShellThread(initialWorkingDirecto=
ry, invocation, encoding, environment);
-               _stdoutHandler =3D new LocalShellOutputReader(this, _shellT=
hread.getOutputStream(), false);
-               _stderrHandler =3D new LocalShellOutputReader(this, _shellT=
hread.getErrorStream(),true);
+               _shellThread =3D new LocalShellThread(initialWorkingDirecto=
ry, invocation, encoding, environment);
+               _stdoutHandler =3D new LocalShellOutputReader(this, _shellT=
hread.getOutputStream(), _shellThread, false);
+               _stderrHandler =3D new LocalShellOutputReader(this,
+_shellThread.getErrorStream(), _shellThread, true);
        }

        protected void run(IProgressMonitor monitor) diff --git a/rse/plugi=
ns/org.eclipse.rse.services.local/src/org/eclipse/rse/internal/services/loc=
al/shells/LocalShellOutputReader.java b/rse/plugins/org.eclipse.rse.service=
s.local/src/org/eclipse/rse/internal/services/local/shells/LocalShellOutput=
Reader.java
index ab8ff5c..8dd91a3 100644
--- a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/intern=
al/services/local/shells/LocalShellOutputReader.java
+++ b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/int
+++ ernal/services/local/shells/LocalShellOutputReader.java
@@ -19,6 +19,7 @@ package org.eclipse.rse.internal.services.local.shells;

 import java.io.BufferedReader;
 import java.io.IOException;
+import java.util.concurrent.locks.Lock;

 import org.eclipse.rse.internal.services.local.Activator;
 import org.eclipse.rse.services.shells.AbstractHostShellOutputReader;
@@ -33,14 +34,16 @@ import org.eclipse.rse.services.shells.SimpleHostOutput=
;
  */
 public class LocalShellOutputReader extends AbstractHostShellOutputReader =
implements IHostShellOutputReader  {
-       protected BufferedReader _reader;
+//     protected BufferedReader _reader;
+       private LocalShellThread _shellThread;
        private String fPromptChars =3D ">$%#]"; //Characters we accept as =
the end of a prompt //$NON-NLS-1$;

-
-       public LocalShellOutputReader(IHostShell hostShell, BufferedReader =
reader, boolean isErrorReader)
+
+       public LocalShellOutputReader(IHostShell hostShell, BufferedReader
+reader, LocalShellThread shellThread, boolean isErrorReader)
        {
                super(hostShell, isErrorReader);
-               _reader =3D reader;
+//             _reader =3D reader;
+               _shellThread =3D shellThread;
        }
        /*
        protected Object internalReadLine()
@@ -137,9 +140,11 @@ public class LocalShellOutputReader extends AbstractHo=
stShellOutputReader implem
        }
 */
        protected IHostOutput internalReadLine() {
-               if (_reader =3D=3D null) {
+               getLock().lock();
+               if (getReader() =3D=3D null) {
                        //Our workaround sets the stderr reader to null, so=
 we never give any stderr output.
                        //TODO Check if ssh supports some method of having =
separate stdout and stderr streams
+                       getLock().unlock();
                        return null;
                }
                StringBuffer theLine =3D new StringBuffer(); @@ -149,12 +15=
4,14 @@ public class LocalShellOutputReader extends AbstractHostShellOutput=
Reader implem
                boolean done =3D false;
                while (!done && !isFinished()) {
                        try {
-                               ch =3D _reader.read();
+                               ch =3D getReader().read();
                                switch (ch) {
                                case -1:
                                case 65535:
-                                       if (theLine.length() =3D=3D 0) // E=
nd of Reader
+                                       if (theLine.length() =3D=3D 0) {// =
End of Reader
+                                               getLock().unlock();
                                                return null;
+                                       }
                                        done =3D true;
                                        break;
                                case '\b': //backspace
@@ -185,13 +192,13 @@ public class LocalShellOutputReader extends AbstractH=
ostShellOutputReader implem
                                                theLine.append(tch); // Any=
 other character
                                        } else if (ch =3D=3D 27) {
                                                // Escape: ignore next char=
 too
-                                               int nch =3D _reader.read();
+                                               int nch =3D getReader().rea=
d();
                                                if (theDebugLine!=3Dnull) t=
heDebugLine.append((char)nch);
                                                if (nch =3D=3D 91) {
                                                        //vt100 escape sequ=
ence: read until end-of-command (skip digits and semicolon)
                                                        //e.g. \x1b;13;m --=
> ignore the entire command, including the trailing m
                                                        do {
-                                                               nch =3D _re=
ader.read();
+                                                               nch =3D get=
Reader().read();
                                                                if (theDebu=
gLine!=3Dnull) theDebugLine.append((char)nch);
                                                        } while (Character.=
isDigit((char)nch) || nch =3D=3D ';');
                                                }
@@ -202,9 +209,9 @@ public class LocalShellOutputReader extends AbstractHos=
tShellOutputReader implem
                                // there are more characters
                                // in the Buffer...If not, then we assume i=
t is waiting for
                                // input.
-                               if (!done && !_reader.ready()) {
-                                       // wait to make sure -- max. 500 ms=
ec to wait for new chars
-                                       // if we are not at a CRLF seems to=
 be appropriate for the
+                               if (!done && !getReader().ready()) {
+                                       // wait to make sure -- max. 500 ms=
ec to wait for new chars
+                                       // if we are not at a CRLF seems to=
 be appropriate for the
                                        // Pipes and Threads in ssh.
                                        long waitIncrement =3D 500;
                                        // Check if we think we are at a pr=
ompt @@ -219,7 +226,7 @@ public class LocalShellOutputReader extends Abstra=
ctHostShellOutputReader implem
                                                Thread.sleep(waitIncrement)=
;
                                        } catch (InterruptedException e) {
                                        }
-                                       if (!_reader.ready()) {
+                                       if (!getReader().ready()) {
                                                done =3D true;
                                        }
                                }
@@ -228,6 +235,7 @@ public class LocalShellOutputReader extends AbstractHos=
tShellOutputReader implem
                                //our reader thread completely... the excep=
tion could just be
                                //temporary, and we should keep running!
                                Activator.getDefault().logException(e);
+                               getLock().unlock();
                                return null;
                        }
                }
@@ -235,8 +243,20 @@ public class LocalShellOutputReader extends AbstractHo=
stShellOutputReader implem
                        String debugLine =3D theDebugLine.toString();
                        debugLine.compareTo(""); //$NON-NLS-1$
                }
+               getLock().unlock();
                return new SimpleHostOutput(theLine.toString());
        }
+       private Lock getLock() {
+               return _shellThread.getLock();
+       }
+       public BufferedReader getReader() {
+               if (isErrorReader())
+                       return _shellThread.getErrorStream();
+               return _shellThread.getOutputStream();
+       }
+       public Lock getReaderLock() {
+               return _shellThread.getLock();
+       }


 }
diff --git a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse=
/internal/services/local/shells/LocalShellThread.java b/rse/plugins/org.ecl=
ipse.rse.services.local/src/org/eclipse/rse/internal/services/local/shells/=
LocalShellThread.java
index 0a33ad4..18f1373 100644
--- a/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/intern=
al/services/local/shells/LocalShellThread.java
+++ b/rse/plugins/org.eclipse.rse.services.local/src/org/eclipse/rse/int
+++ ernal/services/local/shells/LocalShellThread.java
@@ -29,6 +29,8 @@ import java.io.InputStreamReader;  import java.io.OutputS=
tream;  import java.io.OutputStreamWriter;  import java.net.URL;
+import java.util.concurrent.locks.Lock; import
+java.util.concurrent.locks.ReentrantLock;

 import org.eclipse.core.runtime.FileLocator;

@@ -62,6 +64,7 @@ public class LocalShellThread extends Thread
        private BufferedReader _stdInput;
        private BufferedReader _stdError;

+       private Lock _lock;
        /**
         * constructor for local command shell monitor
         *
@@ -260,6 +263,7 @@ public class LocalShellThread extends Thread

                        _stdError =3D new BufferedReader(new InputStreamRea=
der(_theProcess.getErrorStream()));

+                       _lock =3D new ReentrantLock();
                }
                catch (IOException e)
                {
@@ -438,9 +442,14 @@ public class LocalShellThread extends Thread
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

@@ -511,4 +520,13 @@ public class LocalShellThread extends Thread
        }


+       public Lock getLock() {
+               return _lock;
+       }
+
+
+       public void setLock(Lock _lock) {
+               this._lock =3D _lock;
+       }
+
 }
diff --git a/rse/plugins/org.eclipse.rse.services/.settings/.api_filters b/=
rse/plugins/org.eclipse.rse.services/.settings/.api_filters
index 19273c2..da9417a 100644
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
@@ -32,13 +40,13 @@
         <filter id=3D"305324134">
             <message_arguments>
                 <message_argument value=3D"org.eclipse.rse.internal.servic=
es.terminals.BaseShellDecorator"/>
-                <message_argument value=3D"org.eclipse.rse.services_3.1.1"=
/>
+                <message_argument
+ value=3D"org.eclipse.rse.services_3.1.0"/>
             </message_arguments>
         </filter>
         <filter id=3D"305324134">
             <message_arguments>
                 <message_argument value=3D"org.eclipse.rse.internal.servic=
es.terminals.BaseShellDecorator"/>
-                <message_argument value=3D"org.eclipse.rse.services_3.1.0"=
/>
+                <message_argument
+ value=3D"org.eclipse.rse.services_3.1.1"/>
             </message_arguments>
         </filter>
     </resource>
@@ -46,13 +54,13 @@
         <filter id=3D"305324134">
             <message_arguments>
                 <message_argument value=3D"org.eclipse.rse.internal.servic=
es.terminals.IBaseShell"/>
-                <message_argument value=3D"org.eclipse.rse.services_3.1.1"=
/>
+                <message_argument
+ value=3D"org.eclipse.rse.services_3.1.0"/>
             </message_arguments>
         </filter>
         <filter id=3D"305324134">
             <message_arguments>
                 <message_argument value=3D"org.eclipse.rse.internal.servic=
es.terminals.IBaseShell"/>
-                <message_argument value=3D"org.eclipse.rse.services_3.1.0"=
/>
+                <message_argument
+ value=3D"org.eclipse.rse.services_3.1.1"/>
             </message_arguments>
         </filter>
     </resource>
@@ -88,13 +96,13 @@
         <filter id=3D"305324134">
             <message_arguments>
                 <message_argument value=3D"org.eclipse.rse.internal.servic=
es.terminals.TerminalShellDecorator"/>
-                <message_argument value=3D"org.eclipse.rse.services_3.1.1"=
/>
+                <message_argument
+ value=3D"org.eclipse.rse.services_3.1.0"/>
             </message_arguments>
         </filter>
         <filter id=3D"305324134">
             <message_arguments>
                 <message_argument value=3D"org.eclipse.rse.internal.servic=
es.terminals.TerminalShellDecorator"/>
-                <message_argument value=3D"org.eclipse.rse.services_3.1.0"=
/>
+                <message_argument
+ value=3D"org.eclipse.rse.services_3.1.1"/>
             </message_arguments>
         </filter>
     </resource>
@@ -109,13 +117,27 @@
         <filter id=3D"305365105">
             <message_arguments>
                 <message_argument value=3D"org.eclipse.rse.internal.servic=
es.terminals.ProcessBaseShell"/>
-                <message_argument value=3D"org.eclipse.rse.services_3.1.1"=
/>
+                <message_argument
+ value=3D"org.eclipse.rse.services_3.1.0"/>
             </message_arguments>
         </filter>
         <filter id=3D"305365105">
             <message_arguments>
                 <message_argument value=3D"org.eclipse.rse.internal.servic=
es.terminals.ProcessBaseShell"/>
-                <message_argument value=3D"org.eclipse.rse.services_3.1.0"=
/>
+                <message_argument value=3D"org.eclipse.rse.services_3.1.1"=
/>
+            </message_arguments>
+        </filter>
+    </resource>
+    <resource path=3D"src/org/eclipse/rse/services/shells/IHostShellOutput=
Reader.java" type=3D"org.eclipse.rse.services.shells.IHostShellOutputReader=
">
+        <filter id=3D"403804204">
+            <message_arguments>
+                <message_argument value=3D"org.eclipse.rse.services.shells=
.IHostShellOutputReader"/>
+                <message_argument value=3D"getReader()"/>
+            </message_arguments>
+        </filter>
+        <filter id=3D"403804204">
+            <message_arguments>
+                <message_argument value=3D"org.eclipse.rse.services.shells=
.IHostShellOutputReader"/>
+                <message_argument value=3D"getReaderLock()"/>
             </message_arguments>
         </filter>
     </resource>
diff --git a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/inter=
nal/services/shells/TerminalServiceShellOutputReader.java b/rse/plugins/org=
.eclipse.rse.services/src/org/eclipse/rse/internal/services/shells/Terminal=
ServiceShellOutputReader.java
index 16364e1..0edcc35 100644
--- a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/ser=
vices/shells/TerminalServiceShellOutputReader.java
+++ b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/
+++ services/shells/TerminalServiceShellOutputReader.java
@@ -23,6 +23,8 @@ package org.eclipse.rse.internal.services.shells;

 import java.io.BufferedReader;
 import java.io.IOException;
+import java.util.concurrent.locks.Lock; import
+java.util.concurrent.locks.ReentrantLock;

 import org.eclipse.rse.internal.services.Activator;
 import org.eclipse.rse.services.shells.AbstractHostShellOutputReader;
@@ -36,6 +38,7 @@ import org.eclipse.rse.services.shells.SimpleHostOutput;
 public class TerminalServiceShellOutputReader extends
                AbstractHostShellOutputReader {
        protected BufferedReader fReader;
+       protected Lock lock;
        private volatile Thread fReaderThread =3D null;
        private volatile boolean isCanceled =3D false;
        private String fPromptChars =3D ">$%#]"; //Characters we accept as =
the end of a prompt //$NON-NLS-1$; @@ -174,4 +177,14 @@ public class Termin=
alServiceShellOutputReader extends
                        fReaderThread.interrupt();
                }
        }
+
+       public BufferedReader getReader() {
+               return fReader;
+       }
+
+       public Lock getReaderLock() {
+               if (lock =3D=3D null)
+                       lock =3D new ReentrantLock();
+               return lock;
+       }
 }
diff --git a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/servi=
ces/shells/IHostShellOutputReader.java b/rse/plugins/org.eclipse.rse.servic=
es/src/org/eclipse/rse/services/shells/IHostShellOutputReader.java
index 103c31f..5f8bf78 100644
--- a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/she=
lls/IHostShellOutputReader.java
+++ b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/
+++ shells/IHostShellOutputReader.java
@@ -16,6 +16,9 @@

 package org.eclipse.rse.services.shells;

+import java.io.BufferedReader;
+import java.util.concurrent.locks.Lock;
+
 public interface IHostShellOutputReader extends IHostShellOutputNotifier  =
{
        public IHostOutput readLine();
@@ -23,4 +26,12 @@ public interface IHostShellOutputReader extends IHostShe=
llOutputNotifier
        public void addOutputListener(IHostShellOutputListener listener);
        public boolean isErrorReader();
        public void finish();
+       /**
+        * @since 3.2
+        */
+       public BufferedReader getReader();
+       /**
+        * @since 3.2
+        */
+       public Lock getReaderLock();
 }
\ No newline at end of file
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

