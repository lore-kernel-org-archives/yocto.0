Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A99CE013D9
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 05:08:14 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 Mar 2013 05:08:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,844,1355126400"; d="scan'208";a="306463664"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by fmsmga002.fm.intel.com with ESMTP; 14 Mar 2013 05:08:11 -0700
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.99]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.244]) with mapi id
	14.01.0355.002; Thu, 14 Mar 2013 12:08:08 +0000
From: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
To: =?iso-8859-1?Q?Timo_M=FCller?= <mail@timomueller.eu>
Thread-Topic: [yocto] [PATCH] [eclipse-poky][master]Add more comprehensive
	error message for invalid project name
Thread-Index: AQHOIJWsj7rejXwya0yGsg/XHmwRepik/HeAgAAbYhI=
Date: Thu, 14 Mar 2013 12:08:05 +0000
Message-ID: <3E179CF0D7162B4AA4E2B324209A4639B12949@IRSMSX101.ger.corp.intel.com>
References: <1363252002-16769-1-git-send-email-ioanax.grigoropol@intel.com>,
	<5141A68D.5020601@timomueller.eu>
In-Reply-To: <5141A68D.5020601@timomueller.eu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.19.9.41]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] [eclipse-poky][master]Add more comprehensive error message for invalid project name
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
X-List-Received-Date: Thu, 14 Mar 2013 12:08:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Timo,=0A=
=0A=
Thank you for the comments. I have sent a new version of the patch to the l=
ist.=0A=
=0A=
Ioana=0A=
________________________________________=0A=
From: Timo M=FCller [mail@timomueller.eu]=0A=
Sent: Thursday, March 14, 2013 12:29 PM=0A=
To: Grigoropol, IoanaX=0A=
Cc: yocto@yoctoproject.org=0A=
Subject: Re: [yocto] [PATCH] [eclipse-poky][master]Add more comprehensive e=
rror message for invalid project name=0A=
=0A=
Hi Ioana,=0A=
=0A=
Ioana Grigoropol wrote, On 14.03.2013 10:06:=0A=
> [Yocto #4008]=0A=
>=0A=
> Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>=0A=
> ---=0A=
>   .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |   34 +++++++++++++=
++++---=0A=
>   1 file changed, 29 insertions(+), 5 deletions(-)=0A=
>=0A=
> diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYo=
ctoCProjectTemplate.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/=
wizard/NewYoctoCProjectTemplate.java=0A=
> index 5ffd6b7..8ab5972 100644=0A=
> --- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCPro=
jectTemplate.java=0A=
> +++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCPro=
jectTemplate.java=0A=
> @@ -10,6 +10,8 @@=0A=
>    **********************************************************************=
*********/=0A=
>   package org.yocto.sdk.ide.wizard;=0A=
>=0A=
> +import java.util.ArrayList;=0A=
> +import java.util.Arrays;=0A=
>   import java.util.LinkedHashMap;=0A=
>   import java.util.List;=0A=
>=0A=
> @@ -46,11 +48,11 @@ import org.yocto.sdk.ide.YoctoProfileElement;=0A=
>   import org.yocto.sdk.ide.YoctoSDKChecker;=0A=
>   import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;=0A=
>   import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;=0A=
> +import org.yocto.sdk.ide.YoctoSDKPlugin;=0A=
> +import org.yocto.sdk.ide.YoctoUIElement;=0A=
>   import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;=0A=
>   import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;=0A=
>   import org.yocto.sdk.ide.utils.YoctoSDKUtils;=0A=
> -import org.yocto.sdk.ide.YoctoSDKPlugin;=0A=
> -import org.yocto.sdk.ide.YoctoUIElement;=0A=
>=0A=
>=0A=
>   @SuppressWarnings("restriction")=0A=
> @@ -58,11 +60,20 @@ public class NewYoctoCProjectTemplate extends Process=
Runner {=0A=
>       protected boolean savedAutoBuildingValue;=0A=
>       protected ProjectCreatedActions pca;=0A=
>       protected IManagedBuildInfo info;=0A=
> +     protected List<Character> illegalChars =3D Arrays.asList('$', '"','=
#','%','&','\'','(',')','*', '+', ',','.','/',':',';','<','=3D','>','?','@'=
,'[','\\',']','^','`','{','|','}','~');=0A=
>=0A=
>       public NewYoctoCProjectTemplate() {=0A=
>               pca =3D new ProjectCreatedActions();=0A=
>       }=0A=
> -=0A=
> +     private String printIllegalChars(){=0A=
> +             String print =3D "";=0A=
> +             for (int i =3D 0; i < illegalChars.size(); i++) {=0A=
> +                     print +=3D illegalChars.get(i);=0A=
> +                     if (i !=3D illegalChars.size() - 1)=0A=
> +                             print +=3D " ,";=0A=
> +             }=0A=
> +             return print;=0A=
> +     }=0A=
=0A=
I think the contained "if" isn't really necessary. You can remove the=0A=
last ", " afterwards. Then you can also use a for each loop to append=0A=
the characters.=0A=
=0A=
private String printIllegalChars(){=0A=
        String print =3D "";=0A=
=0A=
        for (Character character : illegalChars) {=0A=
                print +=3D character + ", ";=0A=
        }=0A=
=0A=
        if (!illegalChars.isEmpty()) {=0A=
                print =3D print.substring(0, print.lastIndexOf(",") - 1);=
=0A=
        }=0A=
=0A=
        return print;=0A=
}=0A=
=0A=
>       public void process(TemplateCore template, ProcessArgument[] args, =
String processId, IProgressMonitor monitor) throws ProcessFailureException =
{=0A=
>=0A=
>               String projectName =3D args[0].getSimpleValue();=0A=
> @@ -74,9 +85,10 @@ public class NewYoctoCProjectTemplate extends ProcessR=
unner {=0A=
>               boolean isEmptryProject =3D Boolean.valueOf(isEmptyProjetVa=
lue).booleanValue();=0A=
>               IProject project =3D ResourcesPlugin.getWorkspace().getRoot=
().getProject(projectName);=0A=
>               try {=0A=
> -                     if (projectName.contains(" ")) {=0A=
> +                     if (!isValidProjectName(projectName)) {=0A=
>                               project.delete(true, null);=0A=
> -                             throw new ProcessFailureException(projectNa=
me + " contains space(s).  Project name can't contain space(s)");=0A=
> +                             throw new ProcessFailureException("Project =
name " + "\""+ projectName +"\"" +" is invalid! " +=0A=
> +                                             "\nNone of these characters=
 are accepted inside project names: whitespaces, " + printIllegalChars());=
=0A=
=0A=
Would be nice if we can wrap this up with the YoctoSDKMessages to be=0A=
able to internationalize the string later.=0A=
=0A=
>                       }=0A=
>                       if (!project.exists()) {=0A=
>                               IWorkspace workspace =3D ResourcesPlugin.ge=
tWorkspace();=0A=
> @@ -166,6 +178,18 @@ public class NewYoctoCProjectTemplate extends Proces=
sRunner {=0A=
>                       throw new OperationCanceledException(Messages.getSt=
ring("NewManagedProject.3") + e.getMessage());=0A=
>               }=0A=
>       }=0A=
> +     private boolean isValidProjectName(String projectName) {=0A=
> +             if (projectName.contains("\\s+"))=0A=
> +                     return false;=0A=
> +=0A=
> +             char[] chars =3D projectName.toCharArray();=0A=
> +             if (!Character.isJavaIdentifierStart(chars[0]))=0A=
> +                     return false;=0A=
> +             for (int i =3D 1; i < chars.length; i++)=0A=
> +                     if (illegalChars.contains(chars[i]))=0A=
> +                             return false;=0A=
> +             return true;=0A=
> +}=0A=
=0A=
I think it would be better to use functionality from java.util.regex to=0A=
do the name checking. The Pattern could be compiled once as a static=0A=
member and we could than use the matcher to check whether the project=0A=
name is fine.=0A=
=0A=
Something like this:=0A=
=0A=
private static Pattern pattern =3D Pattern.compile(".*(\\$|\").*");=0A=
=0A=
private boolean isValidProjectName(String projectName) {=0A=
   Matcher matcher =3D pattern.matcher(projectName);=0A=
=0A=
   if (matcher.matches()) {=0A=
     return false;=0A=
   }=0A=
=0A=
   return true;=0A=
}=0A=
=0A=
>=0A=
>       protected final void turnOffAutoBuild(IWorkspace workspace) throws =
CoreException {=0A=
>               IWorkspaceDescription workspaceDesc =3D workspace.getDescri=
ption();=0A=
>=0A=
=0A=
Best regards,=0A=
Timo=0A=
=0A=

