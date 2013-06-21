Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44C01E01409
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2013 10:42:24 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 21 Jun 2013 10:42:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,914,1363158000"; d="scan'208";a="258359761"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Jun 2013 10:42:23 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 21 Jun 2013 10:42:22 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.83]) by
	ORSMSX156.amr.corp.intel.com ([169.254.8.233]) with mapi id
	14.03.0123.003; Fri, 21 Jun 2013 10:42:23 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [RFC PATCH v2 upstream org.eclipse.tm] [411343]Provide
	access to readers in host shell
Thread-Index: AQHObpWbHQpiiWHwtkK+dkMKZVfEkplAb3fw
Date: Fri, 21 Jun 2013 17:42:21 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C46E28@ORSMSX103.amr.corp.intel.com>
References: <1371827919-18181-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1371827919-18181-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [RFC PATCH v2 upstream org.eclipse.tm] [411343]Provide	access to readers in host shell
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
X-List-Received-Date: Fri, 21 Jun 2013 17:42:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ioana,

Unfortunately we have to introduce the API getReader in IHostShell interfac=
e, otherwise, when I applied the patch to my clean upstream RSE master and =
open a project I'm getting:

An internal error occurred during "Open Project"
Unresolved compilation problems:
The method getReader(Boolean) is undefined for the type IHostShell....

Please do some local verification when sending patches upstream.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Friday, June 21, 2013 8:19 AM
To: yocto@yoctoproject.org
Subject: [yocto] [RFC PATCH v2 upstream org.eclipse.tm] [411343]Provide acc=
ess to readers in host shell

- add a plain getter in the AbstractHostShell class:
	- the compilation is not broken for subclasses of this class since it alwa=
ys returns null
        - the targeted classes (local and remote) can implement the getter =
(local implementation is already there)
        - the reader can be accessed and the output can be read in a synchr=
onous way
- add implementation of getReader in TerminaServiceHostShell
        - store the underlying reader as a field of this class & return it
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../services/shells/TerminalServiceHostShell.java  |   20 ++++++++++++----=
----
 .../rse/services/shells/AbstractHostShell.java     |    9 +++++++--
 2 files changed, 19 insertions(+), 10 deletions(-)

diff --git a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/inter=
nal/services/shells/TerminalServiceHostShell.java b/rse/plugins/org.eclipse=
.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceH=
ostShell.java
index 2a461ad..0775894 100644
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
+ * Ioana Grigoropol (Intel)      - [411343] Provide access to readers in h=
ost shell
  *************************************************************************=
******/
=20
 package org.eclipse.rse.internal.services.shells;
@@ -47,7 +48,7 @@ public class TerminalServiceHostShell extends AbstractHos=
tShell {
 	public static final String SHELL_INVOCATION =3D ">"; //$NON-NLS-1$
=20
 	ITerminalShell fTerminalShell;
-=09
+	BufferedReader fBufReader;
 	private TerminalServiceShellOutputReader fStdoutHandler;
 =09
 	private TerminalServiceShellOutputReader fStderrHandler; @@ -60,21 +61,21=
 @@ public class TerminalServiceHostShell extends AbstractHostShell {
 		try {
 			fTerminalShell =3D terminalShell;
 			String encoding =3D fTerminalShell.getDefaultEncoding();
-			BufferedReader bufReader;
+
 			if (encoding !=3D null) {
-				bufReader =3D new BufferedReader(new InputStreamReader(fTerminalShell
+				fBufReader =3D new BufferedReader(new=20
+InputStreamReader(fTerminalShell
 						.getInputStream(), encoding));=20
 			} else {
-				bufReader =3D new BufferedReader(new InputStreamReader(fTerminalShell
+				fBufReader =3D new BufferedReader(new=20
+InputStreamReader(fTerminalShell
 								.getInputStream()));
 			}
 			//bug 356132: wait for initial output before sending any command
 			//FIXME this should likely move into the TerminalServiceShellWriterThre=
ad, so wait can be canceled
-			bufReader.mark(1);
-			bufReader.read();
-			bufReader.reset();
+			fBufReader.mark(1);
+			fBufReader.read();
+			fBufReader.reset();
 		=09
-			fStdoutHandler =3D new TerminalServiceShellOutputReader(this, bufReader=
, false);
+			fStdoutHandler =3D new TerminalServiceShellOutputReader(this,=20
+fBufReader, false);
 			fStderrHandler =3D new TerminalServiceShellOutputReader(this, null, tru=
e);
 			OutputStream outputStream =3D fTerminalShell.getOutputStream();
 			if (encoding !=3D null) {
@@ -170,4 +171,7 @@ public class TerminalServiceHostShell extends AbstractH=
ostShell {
 		return "echo $PWD'>'"; //$NON-NLS-1$
 	}
=20
+	public BufferedReader getReader(boolean isErrorReader) {
+		return fBufReader;
+	}
 }
diff --git a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/servi=
ces/shells/AbstractHostShell.java b/rse/plugins/org.eclipse.rse.services/sr=
c/org/eclipse/rse/services/shells/AbstractHostShell.java
index 0ac8e3f..4d189b6 100644
--- a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/she=
lls/AbstractHostShell.java
+++ b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/
+++ shells/AbstractHostShell.java
@@ -11,11 +11,13 @@
  * Emily Bruner, Mazen Faraj, Adrian Storisteanu, Li Ding, and Kent Hawley=
.
  *
  * Contributors:
- * {Name} (company) - description of contribution.
+ *   Ioana Grigoropol (Intel)      - [411343] Provide access to readers in=
 host shell
  *************************************************************************=
*******/
=20
 package org.eclipse.rse.services.shells;
=20
+import java.io.BufferedReader;
+
=20
 public abstract class AbstractHostShell implements IHostShell  { @@ -34,4 =
+36,7 @@ public abstract class AbstractHostShell implements IHostShell
 		}
 	}
=20
-}
\ No newline at end of file
+	public BufferedReader getReader(boolean isErrorReader){
+		return null;
+	}
+}
--
1.7.10.4

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

