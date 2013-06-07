Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D344DE0155A
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2013 17:02:07 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 06 Jun 2013 17:02:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,818,1363158000"; d="scan'208";a="346105666"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga001.fm.intel.com with ESMTP; 06 Jun 2013 17:02:29 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 6 Jun 2013 17:02:06 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.22]) by
	ORSMSX157.amr.corp.intel.com ([169.254.9.198]) with mapi id
	14.03.0123.003; Thu, 6 Jun 2013 17:02:06 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [Refactor RFC 5/9] Remove storing of init script location
Thread-Index: AQHOYSpNFGeN0MZoGUilwSAu8Sg3iJkpYeVw
Date: Fri, 7 Jun 2013 00:02:05 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C38091@ORSMSX103.amr.corp.intel.com>
References: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
	<1370352368-18730-6-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1370352368-18730-6-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Refactor RFC 5/9] Remove storing of init script location
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
X-List-Received-Date: Fri, 07 Jun 2013 00:02:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Why we want to remove this project info file, since it's not used now but i=
t stated it's used for future.

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Tuesday, June 04, 2013 6:26 AM
To: yocto@yoctoproject.org
Subject: [yocto] [Refactor RFC 5/9] Remove storing of init script location

- when create a new bitbake commander project and when initializing the con=
figuration - the location of the init bitbake script is stored in a file ca=
lled .eclipse-data
- the information stored here is never used

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org/yocto/bc/bitbake/ProjectInfoHelper.java    |   23 ----------------=
----
 .../BBConfigurationInitializeOperation.java        |    1 -
 .../newproject/CreateBBCProjectOperation.java      |    6 -----
 3 files changed, 30 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHe=
lper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHel=
per.java
index 25dac97..b8d4b29 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHelper.ja=
va
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHelper.ja=
va
@@ -79,27 +79,4 @@ public class ProjectInfoHelper {

                return null;
        }
-
-       /**
-        * This method will store the path to the bitbake init script for f=
uture
-        * reference.
-        *
-        * @param path
-        * @param projInfo
-        * @throws IOException
-        */
-       public static void store(String path, ProjectInfo projInfo) throws =
IOException {
-               writeToFile(path, projInfo.getInitScriptPath());
-       }
-
-       private static void writeToFile(String path, String init) throws IO=
Exception {
-               File outFile =3D new File(path, ".eclipse-data");
-               FileOutputStream fos =3D new FileOutputStream(outFile);
-
-               fos.write(init.getBytes());
-
-               fos.flush();
-               fos.close();
-       }
-
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject=
/BBConfigurationInitializeOperation.java b/plugins/org.yocto.bc.ui/src/org/=
yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
index 4f15107..64c3e6e 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConf=
igurationInitializeOperation.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConf=
igurationInitializeOperation.java
@@ -39,7 +39,6 @@ public class BBConfigurationInitializeOperation implement=
s IRunnableWithProgress
        public void run(IProgressMonitor monitor) throws InvocationTargetEx=
ception, InterruptedException {
                BBSession session;
                try {
-                       ProjectInfoHelper.store(pinfo.getRootPath(), pinfo)=
;
                        session =3D Activator.getBBSession(pinfo.getRootPat=
h(), writer);
                        session.initialize();

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject=
/CreateBBCProjectOperation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/=
ui/wizards/newproject/CreateBBCProjectOperation.java
index dc0153b..1d54ea3 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/Create=
BBCProjectOperation.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/Create=
BBCProjectOperation.java
@@ -85,12 +85,6 @@ public class CreateBBCProjectOperation extends Workspace=
ModifyOperation {

                IProject proj =3D wsroot.getProject(projInfo.getProjectName=
());
                proj.create(desc, monitor);
-               try {
-                       ProjectInfoHelper.store(proj.getLocationURI().getPa=
th(), projInfo);
-               } catch (IOException e) {
-                       throw new InvocationTargetException(e);
-               }
-
                proj.open(monitor);

                addNatures(proj, monitor);
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

