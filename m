Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0D2BE014EF
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2013 04:14:09 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 02 Apr 2013 04:14:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,393,1363158000"; d="scan'208";a="221815594"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by AZSMGA002.ch.intel.com with ESMTP; 02 Apr 2013 04:14:07 -0700
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 2 Apr 2013 12:14:06 +0100
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.73]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.185]) with mapi id
	14.01.0355.002; Tue, 2 Apr 2013 12:13:59 +0100
From: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH v2] [eclipse-poky][master]Add more
	comprehensive	error message for invalid project name
Thread-Index: AQHOKvLpCsJGb40YHUunPBqa5ZMaTZjC0Fid
Date: Tue, 2 Apr 2013 11:14:06 +0000
Message-ID: <3E179CF0D7162B4AA4E2B324209A4639B2D90E@IRSMSX101.ger.corp.intel.com>
References: <1363261812-20167-1-git-send-email-ioanax.grigoropol@intel.com>,
	<C6510F6D410BB64A8C15398EDC6B847C6F409FFF@ORSMSX101.amr.corp.intel.com>,
	<3E179CF0D7162B4AA4E2B324209A4639B1E12A@IRSMSX102.ger.corp.intel.com>
In-Reply-To: <3E179CF0D7162B4AA4E2B324209A4639B1E12A@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.19.9.46]
MIME-Version: 1.0
Subject: Re: [PATCH v2] [eclipse-poky][master]Add more	comprehensive	error message for invalid project name
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
X-List-Received-Date: Tue, 02 Apr 2013 11:14:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Opened upstream bug: https://bugs.eclipse.org/bugs/show_bug.cgi?id=3D404710=
=0A=
=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on be=
half of Grigoropol, IoanaX [ioanax.grigoropol@intel.com]=0A=
Sent: Wednesday, March 27, 2013 3:55 PM=0A=
To: Zhang, Jessica; yocto@yoctoproject.org=0A=
Subject: Re: [yocto] [PATCH v2] [eclipse-poky][master]Add more  comprehensi=
ve   error message for invalid project name=0A=
=0A=
Hi Jessica,=0A=
=0A=
What is the issue that Time found you are referring to ?=0A=
=0A=
Regarding the way you found to allow creating projects with invalid names, =
this comes from the org.eclipse.cdt.core.templates, and in my opinion is a =
bug.=0A=
What happens is that the template arguments, in our case the project name, =
is resolved the first time we press finish, with the invalid name we have s=
et.=0A=
When we receive an error and choose to go back, and change the project name=
 to yet a new invalid project name, the argument of the template(project na=
me), is not updated(for some sort of cache reasons) and thus by using the o=
ld project name, it surpasses the exception received in the first case.=0A=
I will open a bug for this on the cdt bugzilla.=0A=
=0A=
=0A=
Thanks,=0A=
Ioana=0A=
=0A=
________________________________________=0A=
From: Zhang, Jessica=0A=
Sent: Friday, March 15, 2013 2:06 AM=0A=
To: Grigoropol, IoanaX; yocto@yoctoproject.org=0A=
Subject: RE: [yocto] [PATCH v2] [eclipse-poky][master]Add more comprehensiv=
e    error message for invalid project name=0A=
=0A=
Hi Ioana,=0A=
=0A=
This patch still can't address the situation that found by Timo as followin=
g....=0A=
=0A=
Thanks,=0A=
Jessica=0A=
=0A=
I forgot to mention. I found a way to create projects with invalid names.=
=0A=
=0A=
# Create a new Yocto C Project=0A=
# Enter a wrong name eg. Test"=0A=
# Press next=0A=
# Press finish=0A=
# --> Error Message is shown, press ok=0A=
# Press back=0A=
# Change the name to an also invalid name eg. Test$ # Click finish=0A=
=0A=
-----Original Message-----=0A=
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol=0A=
Sent: Thursday, March 14, 2013 4:50 AM=0A=
To: yocto@yoctoproject.org=0A=
Subject: [yocto] [PATCH v2] [eclipse-poky][master]Add more comprehensive er=
ror message for invalid project name=0A=
=0A=
[Yocto #4008]=0A=
=0A=
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>=0A=
---=0A=
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |    1 +=0A=
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |   27 ++++++++++++++++=
----=0A=
 2 files changed, 23 insertions(+), 5 deletions(-)=0A=
=0A=
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessag=
es.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMes=
sages.properties=0A=
index 8596123..fc9813f 100644=0A=
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.prop=
erties=0A=
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.p=0A=
+++ roperties=0A=
@@ -10,6 +10,7 @@=0A=
  * BMW Car IT - added keys for target profiles=0A=
  *************************************************************************=
******/=0A=
 Wizard.SDK.Warning.Title =3D Invalid Yocto Project ADT Location=0A=
+Wizard.SDK.Error.ProjecName =3D Project name "{0}" is invalid! \nNone of=
=0A=
+these characters are accepted inside project names: whitespaces, {1}=0A=
=0A=
 Poky.SDK.Location.Empty =3D Specified Toolchain Root Location is empty.=0A=
 Poky.SDK.Location.Empty.Advice =3D You need specify Toolchain Root Locatio=
n before building any project.=0A=
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoct=
oCProjectTemplate.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wi=
zard/NewYoctoCProjectTemplate.java=0A=
index 5ffd6b7..4d1684a 100644=0A=
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProje=
ctTemplate.java=0A=
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCPr=0A=
+++ ojectTemplate.java=0A=
@@ -10,8 +10,11 @@=0A=
  *************************************************************************=
******/=0A=
 package org.yocto.sdk.ide.wizard;=0A=
=0A=
+import java.util.Arrays;=0A=
 import java.util.LinkedHashMap;=0A=
 import java.util.List;=0A=
+import java.util.regex.Matcher;=0A=
+import java.util.regex.Pattern;=0A=
=0A=
 import org.eclipse.cdt.autotools.core.AutotoolsNewProjectNature;=0A=
 import org.eclipse.cdt.core.CCorePlugin; @@ -46,11 +49,12 @@ import org.yo=
cto.sdk.ide.YoctoProfileElement;=0A=
 import org.yocto.sdk.ide.YoctoSDKChecker;=0A=
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;=0A=
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;=0A=
+import org.yocto.sdk.ide.YoctoSDKMessages;=0A=
+import org.yocto.sdk.ide.YoctoSDKPlugin; import=0A=
+org.yocto.sdk.ide.YoctoUIElement;=0A=
 import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;=0A=
 import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;=0A=
 import org.yocto.sdk.ide.utils.YoctoSDKUtils;=0A=
-import org.yocto.sdk.ide.YoctoSDKPlugin; -import org.yocto.sdk.ide.YoctoUI=
Element;=0A=
=0A=
=0A=
 @SuppressWarnings("restriction")=0A=
@@ -58,11 +62,19 @@ public class NewYoctoCProjectTemplate extends ProcessRu=
nner {=0A=
        protected boolean savedAutoBuildingValue;=0A=
        protected ProjectCreatedActions pca;=0A=
        protected IManagedBuildInfo info;=0A=
+       protected List<Character> illegalChars =3D Arrays.asList('$', '"','=
#','%','&','\'','(',')','*', '+', ',','.','/',':',';','<','=3D','>','?','@'=
,'[','\\',']','^','`','{','|','}','~');=0A=
+       private static final String PROJECT_NAME_ERROR =3D=0A=
+"Wizard.SDK.Error.ProjecName";=0A=
=0A=
        public NewYoctoCProjectTemplate() {=0A=
                pca =3D new ProjectCreatedActions();=0A=
        }=0A=
-=0A=
+       private String printIllegalChars(){=0A=
+               String print =3D "";=0A=
+               for (Character ch : illegalChars)=0A=
+                       print +=3D ch + ", ";=0A=
+               print =3D print.substring(0, print.length() - 2);=0A=
+               return print;=0A=
+       }=0A=
        public void process(TemplateCore template, ProcessArgument[] args, =
String processId, IProgressMonitor monitor) throws ProcessFailureException =
{=0A=
=0A=
                String projectName =3D args[0].getSimpleValue(); @@ -74,9 +=
86,9 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {=0A=
                boolean isEmptryProject =3D Boolean.valueOf(isEmptyProjetVa=
lue).booleanValue();=0A=
                IProject project =3D ResourcesPlugin.getWorkspace().getRoot=
().getProject(projectName);=0A=
                try {=0A=
-                       if (projectName.contains(" ")) {=0A=
+                       if (!isValidProjectName(projectName)) {=0A=
                                project.delete(true, null);=0A=
-                               throw new ProcessFailureException(projectNa=
me + " contains space(s).  Project name can't contain space(s)");=0A=
+                               throw new=0A=
+ProcessFailureException(YoctoSDKMessages.getFormattedString(PROJECT_NAM=0A=
+E_ERROR, new Object[]{projectName, printIllegalChars()}));=0A=
                        }=0A=
                        if (!project.exists()) {=0A=
                                IWorkspace workspace =3D ResourcesPlugin.ge=
tWorkspace(); @@ -166,6 +178,11 @@ public class NewYoctoCProjectTemplate ex=
tends ProcessRunner {=0A=
                        throw new OperationCanceledException(Messages.getSt=
ring("NewManagedProject.3") + e.getMessage());=0A=
                }=0A=
        }=0A=
+       private boolean isValidProjectName(String projectName) {=0A=
+               Pattern pattern =3D Pattern.compile("^[a-zA-Z][a-zA-Z0-9_\\=
-]*$");=0A=
+               Matcher matcher =3D pattern.matcher(projectName);=0A=
+               return matcher.find();=0A=
+}=0A=
=0A=
        protected final void turnOffAutoBuild(IWorkspace workspace) throws =
CoreException {=0A=
                IWorkspaceDescription workspaceDesc =3D workspace.getDescri=
ption();=0A=
--=0A=
1.7.9.5=0A=
=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

