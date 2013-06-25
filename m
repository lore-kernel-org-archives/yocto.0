Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15A42E00734
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 01:46:03 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 25 Jun 2013 01:46:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,935,1363158000"; d="scan'208";a="355347152"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga001.fm.intel.com with ESMTP; 25 Jun 2013 01:46:32 -0700
Received: from irsmsx106.ger.corp.intel.com (163.33.3.31) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 25 Jun 2013 09:45:44 +0100
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.204]) by
	IRSMSX106.ger.corp.intel.com ([169.254.8.91]) with mapi id
	14.03.0123.003; Tue, 25 Jun 2013 09:45:44 +0100
From: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [RFC PATCH v2 upstream org.eclipse.tm] [411343]Provide
	access to readers in host shell
Thread-Index: AQHObqawVx9//FLLWku5CtP3FIGVxZlGIuuq
Date: Tue, 25 Jun 2013 08:45:43 +0000
Message-ID: <3E179CF0D7162B4AA4E2B324209A4639160097AA@IRSMSX101.ger.corp.intel.com>
References: <1371827919-18181-1-git-send-email-ioanax.grigoropol@intel.com>,
	<C6510F6D410BB64A8C15398EDC6B847C73C46E28@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C73C46E28@ORSMSX103.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.86.135]
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
X-List-Received-Date: Tue, 25 Jun 2013 08:46:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jessica,=0A=
=0A=
I have just tested with a clean master & my upstream patch. Everything comp=
iles fine.=0A=
There are no changes made to IHostShell what so ever. In this patch, I only=
 change AbstractHostShell and TerminalServiceHostShell.=0A=
=0A=
Please make sure that your TM &Yocto plugin sources are up to date and refr=
eshed in you workspace.=0A=
=0A=
Thanks,=0A=
Ioana=0A=
________________________________________=0A=
From: Zhang, Jessica=0A=
Sent: Friday, June 21, 2013 8:42 PM=0A=
To: Grigoropol, IoanaX; yocto@yoctoproject.org=0A=
Subject: RE: [yocto] [RFC PATCH v2 upstream org.eclipse.tm] [411343]Provide=
     access to readers in host shell=0A=
=0A=
Hi Ioana,=0A=
=0A=
Unfortunately we have to introduce the API getReader in IHostShell interfac=
e, otherwise, when I applied the patch to my clean upstream RSE master and =
open a project I'm getting:=0A=
=0A=
An internal error occurred during "Open Project"=0A=
Unresolved compilation problems:=0A=
The method getReader(Boolean) is undefined for the type IHostShell....=0A=
=0A=
Please do some local verification when sending patches upstream.=0A=
=0A=
Thanks,=0A=
Jessica=0A=
=0A=
-----Original Message-----=0A=
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol=0A=
Sent: Friday, June 21, 2013 8:19 AM=0A=
To: yocto@yoctoproject.org=0A=
Subject: [yocto] [RFC PATCH v2 upstream org.eclipse.tm] [411343]Provide acc=
ess to readers in host shell=0A=
=0A=
- add a plain getter in the AbstractHostShell class:=0A=
        - the compilation is not broken for subclasses of this class since =
it always returns null=0A=
        - the targeted classes (local and remote) can implement the getter =
(local implementation is already there)=0A=
        - the reader can be accessed and the output can be read in a synchr=
onous way=0A=
- add implementation of getReader in TerminaServiceHostShell=0A=
        - store the underlying reader as a field of this class & return it=
=0A=
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>=0A=
---=0A=
 .../services/shells/TerminalServiceHostShell.java  |   20 ++++++++++++----=
----=0A=
 .../rse/services/shells/AbstractHostShell.java     |    9 +++++++--=0A=
 2 files changed, 19 insertions(+), 10 deletions(-)=0A=
=0A=
diff --git a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/inter=
nal/services/shells/TerminalServiceHostShell.java b/rse/plugins/org.eclipse=
.rse.services/src/org/eclipse/rse/internal/services/shells/TerminalServiceH=
ostShell.java=0A=
index 2a461ad..0775894 100644=0A=
--- a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/ser=
vices/shells/TerminalServiceHostShell.java=0A=
+++ b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/internal/=0A=
+++ services/shells/TerminalServiceHostShell.java=0A=
@@ -22,6 +22,7 @@=0A=
  * Anna Dushistova  (MontaVista) - [258720] SshHostShell fails to run comm=
and if initialWorkingDirectory supplied=0A=
  * Rob Stryker (JBoss) - [335059] TerminalServiceShellOutputReader logs er=
ror when hostShell.exit() is called=0A=
  * Martin Oberhuber (Wind River) - [356132] wait for initial output=0A=
+ * Ioana Grigoropol (Intel)      - [411343] Provide access to readers in h=
ost shell=0A=
  *************************************************************************=
******/=0A=
=0A=
 package org.eclipse.rse.internal.services.shells;=0A=
@@ -47,7 +48,7 @@ public class TerminalServiceHostShell extends AbstractHos=
tShell {=0A=
        public static final String SHELL_INVOCATION =3D ">"; //$NON-NLS-1$=
=0A=
=0A=
        ITerminalShell fTerminalShell;=0A=
-=0A=
+       BufferedReader fBufReader;=0A=
        private TerminalServiceShellOutputReader fStdoutHandler;=0A=
=0A=
        private TerminalServiceShellOutputReader fStderrHandler; @@ -60,21 =
+61,21 @@ public class TerminalServiceHostShell extends AbstractHostShell {=
=0A=
                try {=0A=
                        fTerminalShell =3D terminalShell;=0A=
                        String encoding =3D fTerminalShell.getDefaultEncodi=
ng();=0A=
-                       BufferedReader bufReader;=0A=
+=0A=
                        if (encoding !=3D null) {=0A=
-                               bufReader =3D new BufferedReader(new InputS=
treamReader(fTerminalShell=0A=
+                               fBufReader =3D new BufferedReader(new=0A=
+InputStreamReader(fTerminalShell=0A=
                                                .getInputStream(), encoding=
));=0A=
                        } else {=0A=
-                               bufReader =3D new BufferedReader(new InputS=
treamReader(fTerminalShell=0A=
+                               fBufReader =3D new BufferedReader(new=0A=
+InputStreamReader(fTerminalShell=0A=
                                                                .getInputSt=
ream()));=0A=
                        }=0A=
                        //bug 356132: wait for initial output before sendin=
g any command=0A=
                        //FIXME this should likely move into the TerminalSe=
rviceShellWriterThread, so wait can be canceled=0A=
-                       bufReader.mark(1);=0A=
-                       bufReader.read();=0A=
-                       bufReader.reset();=0A=
+                       fBufReader.mark(1);=0A=
+                       fBufReader.read();=0A=
+                       fBufReader.reset();=0A=
=0A=
-                       fStdoutHandler =3D new TerminalServiceShellOutputRe=
ader(this, bufReader, false);=0A=
+                       fStdoutHandler =3D new TerminalServiceShellOutputRe=
ader(this,=0A=
+fBufReader, false);=0A=
                        fStderrHandler =3D new TerminalServiceShellOutputRe=
ader(this, null, true);=0A=
                        OutputStream outputStream =3D fTerminalShell.getOut=
putStream();=0A=
                        if (encoding !=3D null) {=0A=
@@ -170,4 +171,7 @@ public class TerminalServiceHostShell extends AbstractH=
ostShell {=0A=
                return "echo $PWD'>'"; //$NON-NLS-1$=0A=
        }=0A=
=0A=
+       public BufferedReader getReader(boolean isErrorReader) {=0A=
+               return fBufReader;=0A=
+       }=0A=
 }=0A=
diff --git a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/servi=
ces/shells/AbstractHostShell.java b/rse/plugins/org.eclipse.rse.services/sr=
c/org/eclipse/rse/services/shells/AbstractHostShell.java=0A=
index 0ac8e3f..4d189b6 100644=0A=
--- a/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/she=
lls/AbstractHostShell.java=0A=
+++ b/rse/plugins/org.eclipse.rse.services/src/org/eclipse/rse/services/=0A=
+++ shells/AbstractHostShell.java=0A=
@@ -11,11 +11,13 @@=0A=
  * Emily Bruner, Mazen Faraj, Adrian Storisteanu, Li Ding, and Kent Hawley=
.=0A=
  *=0A=
  * Contributors:=0A=
- * {Name} (company) - description of contribution.=0A=
+ *   Ioana Grigoropol (Intel)      - [411343] Provide access to readers in=
 host shell=0A=
  *************************************************************************=
*******/=0A=
=0A=
 package org.eclipse.rse.services.shells;=0A=
=0A=
+import java.io.BufferedReader;=0A=
+=0A=
=0A=
 public abstract class AbstractHostShell implements IHostShell  { @@ -34,4 =
+36,7 @@ public abstract class AbstractHostShell implements IHostShell=0A=
                }=0A=
        }=0A=
=0A=
-}=0A=
\ No newline at end of file=0A=
+       public BufferedReader getReader(boolean isErrorReader){=0A=
+               return null;=0A=
+       }=0A=
+}=0A=
--=0A=
1.7.10.4=0A=
=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

