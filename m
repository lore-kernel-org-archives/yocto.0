Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 803A1E00344
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 17:30:09 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Aug 2012 17:30:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,782,1336374000"; d="scan'208";a="187470966"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 16 Aug 2012 17:30:01 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 16 Aug 2012 17:30:01 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.138]) with mapi id
	14.01.0355.002; Thu, 16 Aug 2012 17:30:01 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 2/3] [PATCH]Fixed bug 2922 - Yocto-BSP main
	page	checks for build/output location generate error pop-up
	on	properties pages
Thread-Index: AQHNe8H/JsjeuPb/GUmSyxhTDFZaj5ddJa2Q
Date: Fri, 17 Aug 2012 00:30:00 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46ADF45B@ORSMSX101.amr.corp.intel.com>
References: <1345130026-11104-2-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1345130026-11104-2-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
Subject: Re: [PATCH 2/3] [PATCH]Fixed bug 2922 - Yocto-BSP main page	checks for build/output location generate error pop-up on	properties pages
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
X-List-Received-Date: Fri, 17 Aug 2012 00:30:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The patch is missing signed-off.

Also for the case - if a directory is specified
                - if it does not exist -> create it under metadataLocation
It should be if it doesn't exist source oe-init-build-env will create the d=
irectory at the specified location instead of creating it under metadataloc=
ation.  When testing this patch, it created a "h", "ho" and "hom" directori=
es under my metadatalocation, and in the property page triggered a tracebac=
k.  So please fix these issues.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Thursday, August 16, 2012 8:14 AM
To: yocto@yoctoproject.org
Cc: Grigoropol, IoanaX
Subject: [yocto] [PATCH 2/3] [PATCH]Fixed bug 2922 - Yocto-BSP main page ch=
ecks for build/output location generate error pop-up on properties pages

checks for build location :
        - if no location is specified, use metadataLocation/build
        - if a directory is specified
                - if it does not exist -> create it under metadataLocation
                - if it does exist -> oe-init-build-env - create conf/ hier=
achy
                        - skip if already there
        - collect error output for build directory creation
- checks for output location :
        - if the output directory already exists -> show error & disable ne=
xt(the yocto-bsp script will fail if the directory already exists)

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/wizards/bsp/MainPage.java      |   96 +++++++++++++---=
----
 1 file changed, 64 insertions(+), 32 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/wizards/bsp/MainPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yoc=
to/sdk/remotetools/wizards/bsp/MainPage.java
index b729ad1..e5a21d1 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizar=
ds/bsp/MainPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wi
+++ zards/bsp/MainPage.java
@@ -251,28 +251,33 @@ public class MainPage extends WizardPage {
                                 labelQArch.setEnabled(false);
                                 comboQArch.setEnabled(false);
                         }
+                } else if (widget =3D=3D textBuildLoc){
+                        status =3D checkBuildDir();
                 }
-
-                checkBuildDir();
-
-                String build_dir =3D textBuildLoc.getText();
-                String output_dir =3D textBspOutputLoc.getText();
-                String bsp_name =3D textBspName.getText();

-                if (!output_dir.isEmpty() && output_dir.matches(build_dir)=
) {
-                        status =3D new Status(IStatus.ERROR, "not_used", 0=
,
-                                        "You've set BSP output directory t=
he same as build directory, please leave output directory empty for this sc=
enario!", null);
-                }
+                String buildDir =3D textBuildLoc.getText();
+                String outputDir =3D textBspOutputLoc.getText();
+                String bspName =3D textBspName.getText();

-                if (build_dir.startsWith(metadataLoc) && output_dir.isEmpt=
y() && !bsp_name.isEmpty()) {
-                        String bsp_dir_str =3D metadataLoc + "/meta-" + bs=
p_name;
-                        File bsp_dir =3D new File(bsp_dir_str);
-                        if (bsp_dir.exists()) {
+                if (!outputDir.isEmpty()){
+                        if (outputDir.matches(buildDir)) {
+                                status =3D new Status(IStatus.ERROR, "not_=
used", 0,
+                                                "You've set BSP output dir=
ectory the same as build directory, please leave output directory empty for=
 this scenario!", null);
+                        } else {
+                                File outputDirectory =3D new File(outputDi=
r);
+                                if (outputDirectory.exists()){
+                                       status =3D new Status(IStatus.ERROR=
, "not_used", 0,
+                                                        "Your BSP output d=
irectory points to an exiting directory!", null);
+                                }
+                        }
+                } else if (buildDir.startsWith(metadataLoc) && !bspName.is=
Empty()) {
+                        String bspDirStr =3D metadataLoc + "/meta-" + bspN=
ame;
+                        File bspDir =3D new File(bspDirStr);
+                        if (bspDir.exists()) {
                                 status =3D new Status(IStatus.ERROR, "not_=
used", 0,
-                                                "Your BSP with name: " + b=
sp_name + " already exist under directory: " + bsp_dir_str + ", please chan=
ge your bsp name!", null);
+                                                "Your BSP with name: " + b=
spName + " already exist under
+directory: " + bspDirStr + ", please change your bsp name!", null);
                         }
                 }
-                validatePage();

                 if (status.getSeverity() =3D=3D IStatus.ERROR)
                         setErrorMessage(status.getMessage());
@@ -281,25 +286,52 @@ public class MainPage extends WizardPage {
                 canFlipToNextPage();
        }

-       private void checkBuildDir() {
-               String metadata_dir =3D textMetadataLoc.getText();
-               String builddir_str =3D textBuildLoc.getText();
+       private Status checkBuildDir() {
+
+               String metadataLoc =3D textMetadataLoc.getText();
+               String buildLoc =3D textBuildLoc.getText();
+
+               if (buildLoc.isEmpty()) {
+                        buildLoc =3D metadataLoc + "/build";
+                        return createBuildDir(buildLoc);
+               } else {
+                        File buildLocDir =3D new File(buildLoc);
+                        if (!buildLocDir.exists()) {
+                                return createBuildDir(metadataLoc + "/" + =
buildLoc);
+                        } else if (buildLocDir.isDirectory()) {
+                               return createBuildDir(buildLoc);
+                        } else {
+                                return new Status(IStatus.ERROR, "not_used=
", 0, "Invalid build location: Make sure the build location is a directory!=
", null);
+                        }
+                }
+       }
+
+       private Status createBuildDir(String buildLoc) {
+               String metadataDir =3D textMetadataLoc.getText();

-               File build_dir =3D null;
-               if ((builddir_str =3D=3D null) || builddir_str.isEmpty())
-                       builddir_str =3D metadata_dir + "/build";
-
-               build_dir =3D new File(builddir_str);
+               // if we do  not change the directory to metadata location =
the script will be looked into the directory indicated by user.dir system p=
roperty
+               // system.property usually points to the location from wher=
e eclipse was started
+               String createBuildDirCmd =3D "cd " + metadataDir + ";source=
 " +
+metadataDir + "/oe-init-build-env " + buildLoc;

-               if (!build_dir.exists()) {
-                       String create_builddir_cmd =3D metadata_dir + "/oe-=
init-build-env " + builddir_str;
-                       try {
-                               Runtime rt =3D Runtime.getRuntime();
-                               Process proc =3D rt.exec(new String[] {"sh"=
, "-c", create_builddir_cmd});
-                               proc.waitFor();
-                       } catch (Throwable t) {
-                               t.printStackTrace();
+               System.out.println(createBuildDirCmd);
+               try {
+                       ProcessBuilder builder =3D new ProcessBuilder(new S=
tring[] {"sh", "-c", createBuildDirCmd});
+                       Process proc =3D builder.start();
+
+                       InputStream errorStream =3D proc.getErrorStream();
+                       InputStreamReader isr =3D new InputStreamReader(err=
orStream);
+                       BufferedReader br =3D new BufferedReader(isr);
+                       String line =3D null;
+                       String status =3D "";
+                       while ( (line =3D br.readLine()) !=3D null) {
+                               status +=3D line;
                        }
+
+                       if (proc.waitFor() !=3D 0)
+                               return new Status(IStatus.ERROR, "not_used"=
, 0, status, null);;
+                       return new Status(IStatus.OK, "not_used", 0, "", nu=
ll);
+               } catch (Exception e) {
+                       return  new Status(IStatus.ERROR, "not_used", 0, e.=
getMessage(),
+null);
                }
        }

--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

