Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF349E00831; Thu, 19 Feb 2015 08:54:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46DE4E00827
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 08:54:54 -0800 (PST)
Received: by mail-vc0-f173.google.com with SMTP id hy4so1583299vcb.4
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 08:54:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=9HL1A1XvEQmpUKui6WwN+TowA+O0uhAS6A1h5VRnRy4=;
	b=I1qdIzZicfBBD5LB24wh9VCB4rC4qlZnR8Ipi0ew7Rcp8LXIbwVQQN3ycDK7VjNWNo
	h7HACXhCf3EhaVJiW75V02RDWLb6wokkx31FQlX2R6zTiNBnF9kzOeIAIfqrY9vwPIH6
	RApeQ5su9K0fcYOnPcfmgThU1cxe6YtJqDBq3PtAwEoSJl7xV6rtNvVgO4oYTsA82WBB
	3xfQZCCzBjV3G1YbHxjYtBpTG7KafHyNNqI7orXxZqwewU93eIwUtvKEftFQm2A3w5I/
	NPxujLMOsZ6ZONHj3a3jZUIayjLXZ91Q2YBEa486uRF6u22Li2BC5yf0W/Wuv2tMn0q3
	5K9A==
X-Gm-Message-State: ALoCoQlJa6jJ0W5HWrjE/Ht9ucSgeHXdQIjpqD+SR0GF9esPsPViMVHKfm08HwjZrbCRQPPshYER
MIME-Version: 1.0
X-Received: by 10.53.8.38 with SMTP id dh6mr2484290vdd.89.1424364893813; Thu,
	19 Feb 2015 08:54:53 -0800 (PST)
Received: by 10.52.124.76 with HTTP; Thu, 19 Feb 2015 08:54:53 -0800 (PST)
In-Reply-To: <1424209275-12304-1-git-send-email-joe_macdonald@mentor.com>
References: <1424209275-12304-1-git-send-email-joe_macdonald@mentor.com>
Date: Thu, 19 Feb 2015 16:54:53 +0000
Message-ID: <CAPhnLPAS1i0YV_rHqdjPkq9uCegc4Y1sQ=-USZoAeNwGF79QFw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Joe MacDonald <joe_macdonald@mentor.com>
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
X-List-Received-Date: Thu, 19 Feb 2015 16:54:56 -0000
Content-Type: text/plain; charset=UTF-8

Pulled to master. Production this evening. Thanks!

On 17 February 2015 at 21:41, Joe MacDonald <joe_macdonald@mentor.com> wrote:
> The main README points at conf/autobuilder.conf and conf/yoctoAB.conf,
> both of which aren't the current places where the autobuilder looks for
> these files anymore.
>
> README-NEW-AUTOBUILDER has a bit of whitespace damage, in the text and in
> the examples, so clean that up to make it more paste-friendly.
>
> Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> ---
>  README                 |  6 +++---
>  README-NEW-AUTOBUILDER | 14 +++++++-------
>  2 files changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/README b/README
> index 94dae28..06b9cbc 100644
> --- a/README
> +++ b/README
> @@ -97,13 +97,13 @@ Setting up build history requires the following steps:
>  Files used for Yocto-Autobuilder Configuration
>  ==============================================
>
> -Name: conf/autobuilder.conf
> +Name: config/autobuilder.conf
>  Purpose:
>  This file is used to set autobuilder wide parameters, like where various build
>  artifacts are published to, DL_DIR, SSTATE_DIR or if build artifacts should be
>  published (needed for production autobuilders, not needed for desktop builders)
>
> -Name: conf/yoctoAB.conf
> +Name: buildset-config/yoctoAB.conf
>  Purpose:
>  This is the main yocto autobuilder config. Documentation for this and associated
> -format is in README_CONFIG
> +format is in README-NEW-AUTOBUILDER
> diff --git a/README-NEW-AUTOBUILDER b/README-NEW-AUTOBUILDER
> index 97bbe61..73be208 100644
> --- a/README-NEW-AUTOBUILDER
> +++ b/README-NEW-AUTOBUILDER
> @@ -170,12 +170,12 @@ scheduler: A list of dicts. Each item defines a scheduler associated with this
>                      This defaults to '*', meaning every month.
>                 dayOfWeek: The day of the week in which to start the build, with
>                      Monday = 1.  This defaults to '*', meaning every day.
> -              hour: The hour of the day in which to start the build, with
> +               hour: The hour of the day in which to start the build, with
>                      12:00 AM = 0.  This must be set by the user.
> -              minute: The minute of the hour in which to start the build, with
> +               minute: The minute of the hour in which to start the build, with
>                      0 to 59 as valid values.  This must be set by the user.
>
> -         SingleBranchScheduler properties:
> +       SingleBranchScheduler properties:
>                 repository: the repository to attach the scheduler to; this
>                      is the repo name from the 'repos' section; the branch which
>                      the scheduler is attached to matches that in the repo
> @@ -185,7 +185,7 @@ scheduler: A list of dicts. Each item defines a scheduler associated with this
>                      triggering build to allow for changes to settle.  Defaults
>                      to 60 seconds.
>
> -              change-user: the user name which the remote hook will use; the
> +               change-user: the user name which the remote hook will use; the
>                      default value is the repository name as per the 'repository'
>                      property.
>
> @@ -209,7 +209,7 @@ scheduler: A list of dicts. Each item defines a scheduler associated with this
>             Extra Notes on SingleBranchScheduler setup
>             ------------------------------------------
>
> -          There is one SBS scheduler for each repository in the buildset, i.e.,
> +           There is one SBS scheduler for each repository in the buildset, i.e.,
>             if your buildset contains more repositories, and you want build
>             triggered by changes to any of them, you need to define a scheduler
>             for each. This also means that you can mix and match, e.g., only
> @@ -272,8 +272,8 @@ steps: [{'SetDest':{}},
>          {'PublishArtifacts': {'artifacts': ['qemux86', 'atom-pc']}}]
>  scheduler: [{'dev-branch-scheduler' :
>                  {'type':'SingleBranchScheduler',
> -                'repository':'poky',
> -                'stable-timer':30,
> +                 'repository':'poky',
> +                 'stable-timer':30,
>                   'change-password':'secret_change_password'}}]
>
>  Adding Buildsteps
> --
> 1.9.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

