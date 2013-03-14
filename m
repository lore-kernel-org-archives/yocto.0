Return-Path: <mail@timomueller.eu>
Received: from h1954115.stratoserver.net (h1954115.stratoserver.net
	[85.214.246.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B0CEE0121B
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 03:36:31 -0700 (PDT)
Received: from [192.168.101.93] (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher DHE-RSA-CAMELLIA256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: mail@timomueller.eu)
	by h1954115.stratoserver.net (mailserver) with ESMTPSA id DCC5D6E9411B; 
	Thu, 14 Mar 2013 11:36:29 +0100 (CET)
Message-ID: <5141A82C.5040400@timomueller.eu>
Date: Thu, 14 Mar 2013 11:36:28 +0100
From: =?ISO-8859-1?Q?Timo_M=FCller?= <mail@timomueller.eu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130219 Thunderbird/17.0.3
MIME-Version: 1.0
To: Ioana Grigoropol <ioanax.grigoropol@intel.com>
References: <1363252002-16769-1-git-send-email-ioanax.grigoropol@intel.com>
	<5141A68D.5020601@timomueller.eu>
In-Reply-To: <5141A68D.5020601@timomueller.eu>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 14 Mar 2013 10:36:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

Hi Ioana,

Timo Müller wrote, On 14.03.2013 11:29:
> Hi Ioana,
>
> Ioana Grigoropol wrote, On 14.03.2013 10:06:
>> [Yocto #4008]
>>
>> Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
>> ---
>>   .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |   34
>> +++++++++++++++++---
>>   1 file changed, 29 insertions(+), 5 deletions(-)
>>
>> diff --git
>> a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
>> b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
>>
>> index 5ffd6b7..8ab5972 100644
>> ---
>> a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
>>
>> +++
>> b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
>>
>> @@ -10,6 +10,8 @@
>>
>> *******************************************************************************/
>>
>>   package org.yocto.sdk.ide.wizard;
>>
>> +import java.util.ArrayList;
>> +import java.util.Arrays;
>>   import java.util.LinkedHashMap;
>>   import java.util.List;
>>
>> @@ -46,11 +48,11 @@ import org.yocto.sdk.ide.YoctoProfileElement;
>>   import org.yocto.sdk.ide.YoctoSDKChecker;
>>   import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
>>   import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
>> +import org.yocto.sdk.ide.YoctoSDKPlugin;
>> +import org.yocto.sdk.ide.YoctoUIElement;
>>   import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;
>>   import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
>>   import org.yocto.sdk.ide.utils.YoctoSDKUtils;
>> -import org.yocto.sdk.ide.YoctoSDKPlugin;
>> -import org.yocto.sdk.ide.YoctoUIElement;
>>
>>
>>   @SuppressWarnings("restriction")
>> @@ -58,11 +60,20 @@ public class NewYoctoCProjectTemplate extends
>> ProcessRunner {
>>       protected boolean savedAutoBuildingValue;
>>       protected ProjectCreatedActions pca;
>>       protected IManagedBuildInfo info;
>> +    protected List<Character> illegalChars = Arrays.asList('$',
>> '"','#','%','&','\'','(',')','*', '+',
>> ',','.','/',':',';','<','=','>','?','@','[','\\',']','^','`','{','|','}','~');
>>
>>
>>       public NewYoctoCProjectTemplate() {
>>           pca = new ProjectCreatedActions();
>>       }
>> -
>> +    private String printIllegalChars(){
>> +        String print = "";
>> +        for (int i = 0; i < illegalChars.size(); i++) {
>> +            print += illegalChars.get(i);
>> +            if (i != illegalChars.size() - 1)
>> +                print += " ,";
>> +        }
>> +        return print;
>> +    }
>
> I think the contained "if" isn't really necessary. You can remove the
> last ", " afterwards. Then you can also use a for each loop to append
> the characters.
>
> private String printIllegalChars(){
>      String print = "";
>
>      for (Character character : illegalChars) {
>          print += character + ", ";
>      }
>
>      if (!illegalChars.isEmpty()) {
>          print = print.substring(0, print.lastIndexOf(",") - 1);
>      }
>
>      return print;
> }
>
>>       public void process(TemplateCore template, ProcessArgument[]
>> args, String processId, IProgressMonitor monitor) throws
>> ProcessFailureException {
>>
>>           String projectName = args[0].getSimpleValue();
>> @@ -74,9 +85,10 @@ public class NewYoctoCProjectTemplate extends
>> ProcessRunner {
>>           boolean isEmptryProject =
>> Boolean.valueOf(isEmptyProjetValue).booleanValue();
>>           IProject project =
>> ResourcesPlugin.getWorkspace().getRoot().getProject(projectName);
>>           try {
>> -            if (projectName.contains(" ")) {
>> +            if (!isValidProjectName(projectName)) {
>>                   project.delete(true, null);
>> -                throw new ProcessFailureException(projectName + "
>> contains space(s).  Project name can't contain space(s)");
>> +                throw new ProcessFailureException("Project name " +
>> "\""+ projectName +"\"" +" is invalid! " +
>> +                        "\nNone of these characters are accepted
>> inside project names: whitespaces, " + printIllegalChars());
>
> Would be nice if we can wrap this up with the YoctoSDKMessages to be
> able to internationalize the string later.
>
>>               }
>>               if (!project.exists()) {
>>                   IWorkspace workspace = ResourcesPlugin.getWorkspace();
>> @@ -166,6 +178,18 @@ public class NewYoctoCProjectTemplate extends
>> ProcessRunner {
>>               throw new
>> OperationCanceledException(Messages.getString("NewManagedProject.3") +
>> e.getMessage());
>>           }
>>       }
>> +    private boolean isValidProjectName(String projectName) {
>> +        if (projectName.contains("\\s+"))
>> +            return false;
>> +
>> +        char[] chars = projectName.toCharArray();
>> +        if (!Character.isJavaIdentifierStart(chars[0]))
>> +            return false;
>> +        for (int i = 1; i < chars.length; i++)
>> +            if (illegalChars.contains(chars[i]))
>> +                return false;
>> +        return true;
>> +}
>
> I think it would be better to use functionality from java.util.regex to
> do the name checking. The Pattern could be compiled once as a static
> member and we could than use the matcher to check whether the project
> name is fine.
>
> Something like this:
>
> private static Pattern pattern = Pattern.compile(".*(\\$|\").*");
>
> private boolean isValidProjectName(String projectName) {
>    Matcher matcher = pattern.matcher(projectName);
>
>    if (matcher.matches()) {
>      return false;
>    }
>
>    return true;
> }
>
>>
>>       protected final void turnOffAutoBuild(IWorkspace workspace)
>> throws CoreException {
>>           IWorkspaceDescription workspaceDesc =
>> workspace.getDescription();
>>
>
> Best regards,
> Timo


I forgot to mention. I found a way to create projects with invalid names.

# Create a new Yocto C Project
# Enter a wrong name eg. Test"
# Press next
# Press finish
# --> Error Message is shown, press ok
# Press back
# Change the name to an also invalid name eg. Test$
# Click finish

Best regards,
Timo


