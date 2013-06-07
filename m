Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 502F4E003E3
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2013 05:18:39 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 07 Jun 2013 05:18:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,821,1363158000"; d="scan'208";a="313704521"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by azsmga001.ch.intel.com with ESMTP; 07 Jun 2013 05:18:37 -0700
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.105]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.45]) with mapi id
	14.03.0123.003; Fri, 7 Jun 2013 13:18:22 +0100
From: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [Refactor RFC 5/9] Remove storing of init script location
Thread-Index: AQHOYSo8YaUf9lpOpEm2rsaGXz+hG5kpUWWAgADdm7o=
Date: Fri, 7 Jun 2013 12:18:22 +0000
Message-ID: <3E179CF0D7162B4AA4E2B324209A463915FF43DD@IRSMSX101.ger.corp.intel.com>
References: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
	<1370352368-18730-6-git-send-email-ioanax.grigoropol@intel.com>,
	<C6510F6D410BB64A8C15398EDC6B847C73C38091@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C73C38091@ORSMSX103.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.86.135]
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
X-List-Received-Date: Fri, 07 Jun 2013 12:18:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jessica,=0A=
=0A=
The reason I have remove this is that we can always find it on git.=0A=
So if we at some point decide that we need to save the location of the init=
 script, we can just look in the git log, and add it again. =0A=
I do not see the point in keeping classes, methods that are not used, and w=
hich at this point need to be fixed due to the changes I have introduced, o=
therwise they will not compile.=0A=
=0A=
Thanks,=0A=
Ioana=0A=
________________________________________=0A=
From: Zhang, Jessica=0A=
Sent: Friday, June 07, 2013 3:02 AM=0A=
To: Grigoropol, IoanaX; yocto@yoctoproject.org=0A=
Subject: RE: [yocto] [Refactor RFC 5/9] Remove storing of init script locat=
ion=0A=
=0A=
Why we want to remove this project info file, since it's not used now but i=
t stated it's used for future.=0A=
=0A=
-----Original Message-----=0A=
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol=0A=
Sent: Tuesday, June 04, 2013 6:26 AM=0A=
To: yocto@yoctoproject.org=0A=
Subject: [yocto] [Refactor RFC 5/9] Remove storing of init script location=
=0A=
=0A=
- when create a new bitbake commander project and when initializing the con=
figuration - the location of the init bitbake script is stored in a file ca=
lled .eclipse-data=0A=
- the information stored here is never used=0A=
=0A=
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>=0A=
---=0A=
 .../org/yocto/bc/bitbake/ProjectInfoHelper.java    |   23 ----------------=
----=0A=
 .../BBConfigurationInitializeOperation.java        |    1 -=0A=
 .../newproject/CreateBBCProjectOperation.java      |    6 -----=0A=
 3 files changed, 30 deletions(-)=0A=
=0A=
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHe=
lper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHel=
per.java=0A=
index 25dac97..b8d4b29 100644=0A=
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHelper.ja=
va=0A=
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ProjectInfoHelper.ja=
va=0A=
@@ -79,27 +79,4 @@ public class ProjectInfoHelper {=0A=
=0A=
                return null;=0A=
        }=0A=
-=0A=
-       /**=0A=
-        * This method will store the path to the bitbake init script for f=
uture=0A=
-        * reference.=0A=
-        *=0A=
-        * @param path=0A=
-        * @param projInfo=0A=
-        * @throws IOException=0A=
-        */=0A=
-       public static void store(String path, ProjectInfo projInfo) throws =
IOException {=0A=
-               writeToFile(path, projInfo.getInitScriptPath());=0A=
-       }=0A=
-=0A=
-       private static void writeToFile(String path, String init) throws IO=
Exception {=0A=
-               File outFile =3D new File(path, ".eclipse-data");=0A=
-               FileOutputStream fos =3D new FileOutputStream(outFile);=0A=
-=0A=
-               fos.write(init.getBytes());=0A=
-=0A=
-               fos.flush();=0A=
-               fos.close();=0A=
-       }=0A=
-=0A=
 }=0A=
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject=
/BBConfigurationInitializeOperation.java b/plugins/org.yocto.bc.ui/src/org/=
yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java=0A=
index 4f15107..64c3e6e 100644=0A=
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConf=
igurationInitializeOperation.java=0A=
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConf=
igurationInitializeOperation.java=0A=
@@ -39,7 +39,6 @@ public class BBConfigurationInitializeOperation implement=
s IRunnableWithProgress=0A=
        public void run(IProgressMonitor monitor) throws InvocationTargetEx=
ception, InterruptedException {=0A=
                BBSession session;=0A=
                try {=0A=
-                       ProjectInfoHelper.store(pinfo.getRootPath(), pinfo)=
;=0A=
                        session =3D Activator.getBBSession(pinfo.getRootPat=
h(), writer);=0A=
                        session.initialize();=0A=
=0A=
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject=
/CreateBBCProjectOperation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/=
ui/wizards/newproject/CreateBBCProjectOperation.java=0A=
index dc0153b..1d54ea3 100644=0A=
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/Create=
BBCProjectOperation.java=0A=
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/Create=
BBCProjectOperation.java=0A=
@@ -85,12 +85,6 @@ public class CreateBBCProjectOperation extends Workspace=
ModifyOperation {=0A=
=0A=
                IProject proj =3D wsroot.getProject(projInfo.getProjectName=
());=0A=
                proj.create(desc, monitor);=0A=
-               try {=0A=
-                       ProjectInfoHelper.store(proj.getLocationURI().getPa=
th(), projInfo);=0A=
-               } catch (IOException e) {=0A=
-                       throw new InvocationTargetException(e);=0A=
-               }=0A=
-=0A=
                proj.open(monitor);=0A=
=0A=
                addNatures(proj, monitor);=0A=
--=0A=
1.7.9.5=0A=
=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

