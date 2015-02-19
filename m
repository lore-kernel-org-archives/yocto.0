Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF42DE00831; Thu, 19 Feb 2015 12:23:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 921ABE00827
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 12:23:49 -0800 (PST)
Received: by mail-vc0-f181.google.com with SMTP id im6so2045283vcb.12
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 12:23:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=Zyev7RXW06njE4ShnA6dNHMMK2GkbVq65rXxwWkEgoY=;
	b=AOJY+c/p+Pe5AetBdUmnPeeWaiMv+cvnJkAGZU+8lwsGFzvwLwtkVigRejLnld4d1C
	1C+zTKrYpE1uD5ftUz4O74sHBaSnUotZceaUnvOuKNldq/wzFQ+412tIJNpOvOV/Hqmt
	SYwTbI+vkpS18uoWqZXpH0lBMan60TxQnjEBhYq9S4WagOI9R+fbKw9v/Zkr1pq1ptZc
	xlHH0DxYRKOOj/tTjtDv0vJRQ6U7Q4QRRyUxKNQJ99UCjJhS1QZmiEJv+Ux1dISUeEVW
	paRClbkbjD9D1GVuN2CpLmYR58zSbOsjlZfAKbNOU1mqBHzZ/haF2DqMfb9ty6IqWJsP
	zHyw==
X-Gm-Message-State: ALoCoQkZG1Wq2/LyNpSx61k08R4nprx2gQsEwGfoNExhCkclGOiHUt35jUo+XjZNO7O3ilIAQYjG
MIME-Version: 1.0
X-Received: by 10.52.240.174 with SMTP id wb14mr3176989vdc.48.1424377428641;
	Thu, 19 Feb 2015 12:23:48 -0800 (PST)
Received: by 10.52.124.76 with HTTP; Thu, 19 Feb 2015 12:23:48 -0800 (PST)
In-Reply-To: <20150219193007.GO5134@mentor.com>
References: <1424209275-12304-1-git-send-email-joe_macdonald@mentor.com>
	<CAPhnLPAS1i0YV_rHqdjPkq9uCegc4Y1sQ=-USZoAeNwGF79QFw@mail.gmail.com>
	<20150219193007.GO5134@mentor.com>
Date: Thu, 19 Feb 2015 20:23:48 +0000
Message-ID: <CAPhnLPAupZOo1Dj3rGwjU6V0xVEMn0sTx4u8O0Td3Uw48JhuBw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Joe MacDonald <Joe_MacDonald@mentor.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [autobuilder][PATCH 1/4] README: update filenames and locations
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
X-List-Received-Date: Thu, 19 Feb 2015 20:23:52 -0000
Content-Type: text/plain; charset=UTF-8

On 19 February 2015 at 19:30, Joe MacDonald <Joe_MacDonald@mentor.com> wrote:
> [Re: [yocto] [autobuilder][PATCH 1/4] README: update filenames and locations] On 15.02.19 (Thu 16:54) Flanagan, Elizabeth wrote:
>
>> Pulled to master. Production this evening. Thanks!
>
> Cool, thanks.  If you haven't already, please drop my 'templates' patch
> from consideration, I figure I'll send out the completed version,
> including external configuration support, for consideration soon.  It
> works well for me and I don't know that the half-step is really worth
> it.
>

I haven't gotten that far in my email backlog yet, so I'll just wait
for the resend.

> FWIW, it'll still be two separate patches, if you opt to pick the first
> and not the second, I'll just include both in a single thread.

Please do.

>
> -J.
>
>>
>> On 17 February 2015 at 21:41, Joe MacDonald <joe_macdonald@mentor.com> wrote:
>> > The main README points at conf/autobuilder.conf and conf/yoctoAB.conf,
>> > both of which aren't the current places where the autobuilder looks for
>> > these files anymore.
>> >
>> > README-NEW-AUTOBUILDER has a bit of whitespace damage, in the text and in
>> > the examples, so clean that up to make it more paste-friendly.
>> >
>> > Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>> > ---
>> >  README                 |  6 +++---
>> >  README-NEW-AUTOBUILDER | 14 +++++++-------
>> >  2 files changed, 10 insertions(+), 10 deletions(-)
>> >
>> > diff --git a/README b/README
>> > index 94dae28..06b9cbc 100644
>> > --- a/README
>> > +++ b/README
>> > @@ -97,13 +97,13 @@ Setting up build history requires the following steps:
>> >  Files used for Yocto-Autobuilder Configuration
>> >  ==============================================
>> >
>> > -Name: conf/autobuilder.conf
>> > +Name: config/autobuilder.conf
>> >  Purpose:
>> >  This file is used to set autobuilder wide parameters, like where various build
>> >  artifacts are published to, DL_DIR, SSTATE_DIR or if build artifacts should be
>> >  published (needed for production autobuilders, not needed for desktop builders)
>> >
>> > -Name: conf/yoctoAB.conf
>> > +Name: buildset-config/yoctoAB.conf
>> >  Purpose:
>> >  This is the main yocto autobuilder config. Documentation for this and associated
>> > -format is in README_CONFIG
>> > +format is in README-NEW-AUTOBUILDER
>> > diff --git a/README-NEW-AUTOBUILDER b/README-NEW-AUTOBUILDER
>> > index 97bbe61..73be208 100644
>> > --- a/README-NEW-AUTOBUILDER
>> > +++ b/README-NEW-AUTOBUILDER
>> > @@ -170,12 +170,12 @@ scheduler: A list of dicts. Each item defines a scheduler associated with this
>> >                      This defaults to '*', meaning every month.
>> >                 dayOfWeek: The day of the week in which to start the build, with
>> >                      Monday = 1.  This defaults to '*', meaning every day.
>> > -              hour: The hour of the day in which to start the build, with
>> > +               hour: The hour of the day in which to start the build, with
>> >                      12:00 AM = 0.  This must be set by the user.
>> > -              minute: The minute of the hour in which to start the build, with
>> > +               minute: The minute of the hour in which to start the build, with
>> >                      0 to 59 as valid values.  This must be set by the user.
>> >
>> > -         SingleBranchScheduler properties:
>> > +       SingleBranchScheduler properties:
>> >                 repository: the repository to attach the scheduler to; this
>> >                      is the repo name from the 'repos' section; the branch which
>> >                      the scheduler is attached to matches that in the repo
>> > @@ -185,7 +185,7 @@ scheduler: A list of dicts. Each item defines a scheduler associated with this
>> >                      triggering build to allow for changes to settle.  Defaults
>> >                      to 60 seconds.
>> >
>> > -              change-user: the user name which the remote hook will use; the
>> > +               change-user: the user name which the remote hook will use; the
>> >                      default value is the repository name as per the 'repository'
>> >                      property.
>> >
>> > @@ -209,7 +209,7 @@ scheduler: A list of dicts. Each item defines a scheduler associated with this
>> >             Extra Notes on SingleBranchScheduler setup
>> >             ------------------------------------------
>> >
>> > -          There is one SBS scheduler for each repository in the buildset, i.e.,
>> > +           There is one SBS scheduler for each repository in the buildset, i.e.,
>> >             if your buildset contains more repositories, and you want build
>> >             triggered by changes to any of them, you need to define a scheduler
>> >             for each. This also means that you can mix and match, e.g., only
>> > @@ -272,8 +272,8 @@ steps: [{'SetDest':{}},
>> >          {'PublishArtifacts': {'artifacts': ['qemux86', 'atom-pc']}}]
>> >  scheduler: [{'dev-branch-scheduler' :
>> >                  {'type':'SingleBranchScheduler',
>> > -                'repository':'poky',
>> > -                'stable-timer':30,
>> > +                 'repository':'poky',
>> > +                 'stable-timer':30,
>> >                   'change-password':'secret_change_password'}}]
>> >
>> >  Adding Buildsteps
>> > --
>> > 1.9.1
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
> --
> -Joe MacDonald.
> :wq



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

