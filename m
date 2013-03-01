Return-Path: <mail@timomueller.eu>
Received: from h1954115.stratoserver.net (h1954115.stratoserver.net
	[85.214.246.27])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 84ADEE006F6
	for <yocto@yoctoproject.org>; Fri,  1 Mar 2013 01:37:13 -0800 (PST)
Received: from [192.168.101.79] (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher DHE-RSA-CAMELLIA256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: mail@timomueller.eu)
	by h1954115.stratoserver.net (mailserver) with ESMTPSA id 7895D6E9411B; 
	Fri,  1 Mar 2013 10:37:08 +0100 (CET)
Message-ID: <513076C3.1060700@timomueller.eu>
Date: Fri, 01 Mar 2013 10:37:07 +0100
From: =?ISO-8859-1?Q?Timo_M=FCller?= <mail@timomueller.eu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130219 Thunderbird/17.0.3
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <cover.1361954280.git.timo.mueller@bmw-carit.de>
	<C6510F6D410BB64A8C15398EDC6B847C6F3FB213@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C6F3FB213@ORSMSX101.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [PATCH 0/5][eclipse-poky] Refactor handling of SDK check errors
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
X-List-Received-Date: Fri, 01 Mar 2013 09:37:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Jessica,

Zhang, Jessica wrote, On 27.02.2013 23:04:
> Hi Timo,
>
> Thanks for initiating the cleanup in this area that I agree
> definitely need some work.  There're couple issues I'm seeing with
> your patch set that probably need some refinements:
>
> 1. After seeing the error message, if I go into the field correct the
> error, I have to explicit click on "Apply" to make it revalidate,
> probably we should track the fields change and do automatic
> re-validation

Yes, I agree it can be confusing. I already played around with enabling 
Listeners on the YoctoUISetting element but stopped because I thought 
that rechecking the SDK everytime you type in a new character will slow 
down the ui to much.

One idea I have in mind is, if the settings are changed (on type) we 
delete the error message and show a message telling the user that the 
new settings have to be revalidated again. Do you think that would be 
sufficient?

Nevertheless I will extend the YoctoUISetting to be able to notify 
registered listeners on change. Then we can decide on how we want to 
react to this change.

>
> 2. For a scenario that I have 2 toolchains (for different arch, e.g.
> arm and x86) installed under same directory, which means there're 2
> environment setup scripts under the same directory.  In this case,
> the Target Architecture drop down list will contain 2 entries for the
> arches.  In this case, I'm getting an error message for missing
> environment script file which is not true.  By looking at the code,
> the logic basically checking the elem's target architecture setting,
> if there's none, report missing environment script.  I think for this
> case, we do need to check the size of the target arch option list to
> see whether it's empty or not.

True, this calls for a separate error message.

>
> 3. For the case of Poky.Env.Script.Nonexist, there's
> Poky.Env.ScriptNoexist.Advise which is more meaningful to user what
> to do if running into the error.  But I don't see that Advice is
> posted and by looking at code, it seems it's not being used as well?

I'll try to rephrase the error message.

Regarding the advice I'm not quite sure if I follow correctly. If you 
choose "Build system derived toolchain" and the location doesn't contain 
a toolchain (so the drop-down is empty) the SDK check fails with 
ENV_SETUP_SCRIPT_NONEXIST. If a dialog pops up showing the error, the 
advice will also be used and added to the message.

>
> Thanks, Jessica
>
> -----Original Message----- From: yocto-bounces@yoctoproject.org
> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Timo Mueller
> Sent: Wednesday, February 27, 2013 6:37 AM To:
> yocto@yoctoproject.org Cc: Timo Mueller Subject: [yocto] [PATCH
> 0/5][eclipse-poky] Refactor handling of SDK check errors
>
> From: Timo Mueller <timo.mueller@bmw-carit.de>
>
> Hi,
>
> I tried to display the messages resulting from validating the
> YoctoUISettings in the message area of the properties/preference
> pages instead of showing a dialog. This led to some refactoring of
> the validation functionality and also the messages.
>
> If for example the user entered a SDK toolchain directory that
> doesn't exist in the global preferences a dialog will show up showing
> the error and telling him how he can do "IDE-wide settings". As he is
> currently trying to do "IDE-wide settings" this advice is not really
> necessary and the dialog can be really annoying.
>
> I split up the messages into a one line error message and an advice.
> This message can be shown in the page's message area instead of
> opening a dialog with every configuration error. The advice can still
> be used when we want to show a dialog to help the user, e.g. when
> creating a new project.
>
> On a side note I reactivated the YoctoSDKChecker class and moved all
> the validation code from the utils, getting rid of some duplicated
> and inconsistent code.
>
> Best regards, Timo
>
> PS: This patch set is based on "plugins/sdk.ide: Remove profile edit
> buttons from property page"

Best regards
Timo



