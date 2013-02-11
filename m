Return-Path: <mail@timomueller.eu>
Received: from h1954115.stratoserver.net (h1954115.stratoserver.net
	[85.214.246.27])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 05436E01482
	for <yocto@yoctoproject.org>; Mon, 11 Feb 2013 02:01:31 -0800 (PST)
Received: from [192.168.101.53] (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher DHE-RSA-CAMELLIA256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: mail@timomueller.eu)
	by h1954115.stratoserver.net (mailserver) with ESMTPSA id A31266E940ED; 
	Mon, 11 Feb 2013 11:01:27 +0100 (CET)
Message-ID: <5118C175.303@timomueller.eu>
Date: Mon, 11 Feb 2013 11:01:25 +0100
From: =?ISO-8859-1?Q?Timo_M=FCller?= <mail@timomueller.eu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130110 Thunderbird/17.0.2
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <cover.1360326418.git.timo.mueller@bmw-carit.de>
	<C6510F6D410BB64A8C15398EDC6B847C57DE28B9@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C57DE28B9@ORSMSX101.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [RFC v1 0/5][eclipse-poky] Enable target profiles for projects
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
X-List-Received-Date: Mon, 11 Feb 2013 10:01:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Jessica,

Zhang, Jessica wrote, On 08.02.2013 23:56:
> Hi Timo,
>
> Couple comments:
>
> 1.  I really like the way that the global profile and project profile
> are linked together.  But it also introduce an out of sync issue.
> Say I use a profile compiled my project with one set of toolchain and
> sysroot setup.  Then I change the  toolchain and sysroot settings for
> the profile.  But unless we inform/enforce the user to rebuild the
> project with the new profile settings.  The built out in the project
> directory is using one set of setting, but by looking at the project
> profile setting is another set.  So, I think we need to add a
> notification to user like we're doing for "remove".  When user change
> a profile and if there're projects using the profile, we need to
> prompt the user  with something like: "The profile settings have been
> changed and there're projects using this profile which will be
> impacted.  If you want to pursue the changes, please rebuild those
> projects with the new profile settings".  And in those projects, we
> need a sign the inform the user that the underline profile has
> changed, they need to rebuild to resync.  Make sense?

Yes, makes sense. I haven't thought about this. Maybe I can also set the 
"dirty" flag on those projects, so they're automatically reconfigured 
when the build is started.

>
> 2. Seems we only allow user to choose profiles in project settings,
> can eliminate those grayed out "save as...", "remove", etc buttons?

The idea was to reuse the code from the global settings, but you're 
right, it would make sense to get rid of these button here as they are 
never activated.

>
> 3.  Also since the profile are really cross development setting
> profiles.  Can we change "Target profile" to "Cross development
> profile"?

Sure, this should be an easy one. I'll make the changes in the next 
version of the patch set.

>
> Thanks, Jessica
>
> -----Original Message----- From: yocto-bounces@yoctoproject.org
> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Timo Mueller
> Sent: Friday, February 08, 2013 5:28 AM To: yocto@yoctoproject.org
> Cc: Timo Mueller Subject: [yocto] [RFC v1 0/5][eclipse-poky] Enable
> target profiles for projects
>
> From: Timo Mueller <timo.mueller@bmw-carit.de>
>
> Hi,
>
> this patch set enables projects to make use of the target profiles
> proposed in "[RFC v4 00/17][eclipse-poky] Storing yocto settings as
> target profiles".
>
> Currently the target profiles are only used to determine the default
> settings when creating a new project. Changing the used profile on an
> already created projects is not possible, also if the target profile
> is changed the projects are not affected. This patch set enables the
> use of target profiles in the projects. You can select the used
> global profile within the projet properties or use a project specific
> configuration. If a global target profile is used and its values are
> changed in the eclipse preferences, the projects using this profile
> are updated accordingly.
>
> Best regards Timo

Thanks for the comments,
Timo



