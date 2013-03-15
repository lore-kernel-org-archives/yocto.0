Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13CDCE004FE
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 17:07:01 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Mar 2013 17:07:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,848,1355126400"; d="scan'208";a="303178998"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by fmsmga001.fm.intel.com with ESMTP; 14 Mar 2013 17:07:00 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.213]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.79]) with mapi id
	14.01.0355.002; Thu, 14 Mar 2013 17:06:57 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH v2] [eclipse-poky][master]Add more
	comprehensive	error message for invalid project name
Thread-Index: AQHOIKysMmZOeCbYEkOgQ9cucer4DJil4HRA
Date: Fri, 15 Mar 2013 00:06:56 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C6F409FFF@ORSMSX101.amr.corp.intel.com>
References: <1363261812-20167-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1363261812-20167-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [PATCH v2] [eclipse-poky][master]Add more comprehensive	error message for invalid project name
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
X-List-Received-Date: Fri, 15 Mar 2013 00:07:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ioana,

This patch still can't address the situation that found by Timo as followin=
g....

Thanks,
Jessica

I forgot to mention. I found a way to create projects with invalid names.

# Create a new Yocto C Project
# Enter a wrong name eg. Test"
# Press next
# Press finish
# --> Error Message is shown, press ok
# Press back
# Change the name to an also invalid name eg. Test$ # Click finish

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Thursday, March 14, 2013 4:50 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH v2] [eclipse-poky][master]Add more comprehensive er=
ror message for invalid project name

[Yocto #4008]

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |    1 +
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |   27 ++++++++++++++++=
----
 2 files changed, 23 insertions(+), 5 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessag=
es.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMes=
sages.properties
index 8596123..fc9813f 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.prop=
erties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.p
+++ roperties
@@ -10,6 +10,7 @@
  * BMW Car IT - added keys for target profiles
  *************************************************************************=
******/
 Wizard.SDK.Warning.Title =3D Invalid Yocto Project ADT Location
+Wizard.SDK.Error.ProjecName =3D Project name "{0}" is invalid! \nNone of
+these characters are accepted inside project names: whitespaces, {1}

 Poky.SDK.Location.Empty =3D Specified Toolchain Root Location is empty.
 Poky.SDK.Location.Empty.Advice =3D You need specify Toolchain Root Locatio=
n before building any project.
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoct=
oCProjectTemplate.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wi=
zard/NewYoctoCProjectTemplate.java
index 5ffd6b7..4d1684a 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProje=
ctTemplate.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCPr
+++ ojectTemplate.java
@@ -10,8 +10,11 @@
  *************************************************************************=
******/
 package org.yocto.sdk.ide.wizard;

+import java.util.Arrays;
 import java.util.LinkedHashMap;
 import java.util.List;
+import java.util.regex.Matcher;
+import java.util.regex.Pattern;

 import org.eclipse.cdt.autotools.core.AutotoolsNewProjectNature;
 import org.eclipse.cdt.core.CCorePlugin; @@ -46,11 +49,12 @@ import org.yo=
cto.sdk.ide.YoctoProfileElement;
 import org.yocto.sdk.ide.YoctoSDKChecker;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
+import org.yocto.sdk.ide.YoctoSDKMessages;
+import org.yocto.sdk.ide.YoctoSDKPlugin; import
+org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;
 import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
 import org.yocto.sdk.ide.utils.YoctoSDKUtils;
-import org.yocto.sdk.ide.YoctoSDKPlugin; -import org.yocto.sdk.ide.YoctoUI=
Element;


 @SuppressWarnings("restriction")
@@ -58,11 +62,19 @@ public class NewYoctoCProjectTemplate extends ProcessRu=
nner {
        protected boolean savedAutoBuildingValue;
        protected ProjectCreatedActions pca;
        protected IManagedBuildInfo info;
+       protected List<Character> illegalChars =3D Arrays.asList('$', '"','=
#','%','&','\'','(',')','*', '+', ',','.','/',':',';','<','=3D','>','?','@'=
,'[','\\',']','^','`','{','|','}','~');
+       private static final String PROJECT_NAME_ERROR =3D
+"Wizard.SDK.Error.ProjecName";

        public NewYoctoCProjectTemplate() {
                pca =3D new ProjectCreatedActions();
        }
-
+       private String printIllegalChars(){
+               String print =3D "";
+               for (Character ch : illegalChars)
+                       print +=3D ch + ", ";
+               print =3D print.substring(0, print.length() - 2);
+               return print;
+       }
        public void process(TemplateCore template, ProcessArgument[] args, =
String processId, IProgressMonitor monitor) throws ProcessFailureException =
{

                String projectName =3D args[0].getSimpleValue(); @@ -74,9 +=
86,9 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {
                boolean isEmptryProject =3D Boolean.valueOf(isEmptyProjetVa=
lue).booleanValue();
                IProject project =3D ResourcesPlugin.getWorkspace().getRoot=
().getProject(projectName);
                try {
-                       if (projectName.contains(" ")) {
+                       if (!isValidProjectName(projectName)) {
                                project.delete(true, null);
-                               throw new ProcessFailureException(projectNa=
me + " contains space(s).  Project name can't contain space(s)");
+                               throw new
+ProcessFailureException(YoctoSDKMessages.getFormattedString(PROJECT_NAM
+E_ERROR, new Object[]{projectName, printIllegalChars()}));
                        }
                        if (!project.exists()) {
                                IWorkspace workspace =3D ResourcesPlugin.ge=
tWorkspace(); @@ -166,6 +178,11 @@ public class NewYoctoCProjectTemplate ex=
tends ProcessRunner {
                        throw new OperationCanceledException(Messages.getSt=
ring("NewManagedProject.3") + e.getMessage());
                }
        }
+       private boolean isValidProjectName(String projectName) {
+               Pattern pattern =3D Pattern.compile("^[a-zA-Z][a-zA-Z0-9_\\=
-]*$");
+               Matcher matcher =3D pattern.matcher(projectName);
+               return matcher.find();
+}

        protected final void turnOffAutoBuild(IWorkspace workspace) throws =
CoreException {
                IWorkspaceDescription workspaceDesc =3D workspace.getDescri=
ption();
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

