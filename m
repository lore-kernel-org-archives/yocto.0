Return-Path: <mail@timomueller.eu>
Received: from h1954115.stratoserver.net (h1954115.stratoserver.net
	[85.214.246.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 494BDE00527
	for <yocto@yoctoproject.org>; Sun,  3 Feb 2013 23:28:48 -0800 (PST)
Received: from [192.168.101.53] (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher DHE-RSA-CAMELLIA256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: mail@timomueller.eu)
	by h1954115.stratoserver.net (mailserver) with ESMTPSA id D72EC6E940A8; 
	Mon,  4 Feb 2013 08:28:45 +0100 (CET)
Message-ID: <510F632C.3050100@timomueller.eu>
Date: Mon, 04 Feb 2013 08:28:44 +0100
From: =?ISO-8859-1?Q?Timo_M=FCller?= <mail@timomueller.eu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130110 Thunderbird/17.0.2
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <cover.1359468548.git.timo.mueller@bmw-carit.de>
	<C6510F6D410BB64A8C15398EDC6B847C57DDCD3B@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C57DDCD3B@ORSMSX101.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [RFC v2 00/18][eclipse-poky] Storing yocto settings as target profiles
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
X-List-Received-Date: Mon, 04 Feb 2013 07:28:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Jessica,

Zhang, Jessica wrote, On 31.01.2013 20:28:
> Hi Timo,
>
> I'm having a hard time figuring out the sequence of this patch series.
> You have 01/18-09/18, then 10/17 is obsolete, then you have things
 > like 12/18 and 12/17 and some have XX/18 and some have XX/17.

Sorry, for this mess! I accidentally mixed two versions of the patch
set in the folder I was running git send-email in.

 > Can you do some cleanup and resend?

Sure. I will resend as v3.

>
> Thanks,
> Jessica
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Timo Mueller
> Sent: Wednesday, January 30, 2013 5:56 AM
> To: yocto@yoctoproject.org
> Cc: Timo Mueller
> Subject: [yocto] [RFC v2 00/18][eclipse-poky] Storing yocto settings as target profiles
>
> From: Timo Mueller <timo.mueller@bmw-carit.de>
>
> Hi,
>
> thanks for the feedback, I did some changes to the patch series accordingly.
>
> First of all I've fixed the issues with the patches (duplicate method, missing fix for NewYoctoCProjectTemplate.java).
>
> I also changed the functionality of the "new" button according to Jessica's feedback. The logic is changed to a "Save as ..."
> approach. If the button is clicked the current values of the form are checked. If these are valid, the user can enter a name to store them as a new profile.
>
> The last patch moves the "Save as ..." button to the bottom of the preference page alongside with the "perform defaults" and the "apply"
> button. I created this patch as a proof of concept because I thought it would be a good idea to move it.
> I used the contributeButtons hook of the preference page to achieve this, but this only allows adding the "Save as ..." button left to the "perform defaults" button. So the order of the buttons is a bit confusing.
> I further checked several other preference pages of eclipse and it seems like none of them is using this hook to add new buttons. Instead all have a new button next to the comboboxes (e.g. Formatter for CDT and JDT).
> So I would plead against moving it to the bottom to have a more consistent and less confusing ui.
>
>  From the original cover letter:
> <snip>
> currently the yocto settings can be changed globally through eclipse's preferences or locally in the project properties. But the standard configuration stored in the global preferences sometimes changes, e.g. if a new version of the toolchain or the sysroot is released.
> If you change the global settings to the updated toolchain or sysroot your old working configuration is gone. If you want to reuse this configuration at a later point in time you have to (remember and) re-enter everthing.
> This patch set introduces the possiblity to store a configuration under a unique name, a so called target profile, and be able to select the default target profile that is used for new projects.
> Building upon this change the target profiles could later also be used in the project settings and be able to quickly build and debug your software for different hard- and software combinations.
> </snip>
>
> Best regards,
> Timo

Best regards,
Timo

