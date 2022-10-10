Return-Path: <luca.ceresoli@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3714C4332F
	for <webhook@archiver.kernel.org>; Mon, 10 Oct 2022 14:34:45 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
 [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web08.6971.1665412483807382300
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Oct 2022 07:34:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=Hlm9Z+H7;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194,
 mailfrom: luca.ceresoli@bootlin.com)
Received: from booty (unknown [77.244.183.192])
	(Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 196384000B;
	Mon, 10 Oct 2022 14:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1665412481;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=36xhF0Yp9IKWSUJZcSvJqxz7ExJygNbOXddjwNm748k=;
	b=Hlm9Z+H7S7crUs0s2nkXtEHFmNVc0I5ABeo0TfdmcLAMdozScA28QdsIPP9B5I1Nusf8p5
	z1ltKrxxvqOApX1WlXJXUXuJQTZtryID+P5/S58OcIS+GI1FSy6BDa7+7VpQP6kGN1aIM3
	Snc54V/mCiAkLDWjVG7IqeYSvjQq7PvmV9XqpL5h2WTz1aN3j2E0rR+/G6jxwUr6FT5XRY
	Crlo3ttYqXcC5ySMhKkTEUFIW/Ch3J4vRdFRr9BvpiLkUN+dk7SbkLQqr42iI/k/ZyI2F9
	9SwFkhoVl783DwW2w8Ev9IRYJYOjoBi5+B6czH9dpHzWD19exYXadEFu4zmy3Q==
Date: Mon, 10 Oct 2022 16:34:38 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org, Quentin Schulz <foss+yocto@0leil.net>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] scripts:
 run-docs-build: make the workdir pristine between builds
Message-ID: <20221010163438.6c2bda32@booty>
In-Reply-To: <4b6d09f7-f555-7238-e629-78585019a4a1@theobroma-systems.com>
References: <20221003170401.12827-1-foss+yocto@0leil.net>
	<20221003231505.0f16377d@booty>
	<38d89bc7-1317-9670-a07c-64d28c8baff9@theobroma-systems.com>
	<20221004225444.07132057@booty>
	<4b6d09f7-f555-7238-e629-78585019a4a1@theobroma-systems.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Oct 2022 14:34:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58309

Hi Quentin,

On Wed, 5 Oct 2022 10:55:44 +0200
Quentin Schulz <quentin.schulz@theobroma-systems.com> wrote:

> Hi Luka,
> 
> On 10/4/22 22:54, Luca Ceresoli wrote:
> > Hi Quentin,
> > 
> > On Tue, 4 Oct 2022 10:15:20 +0200
> > Quentin Schulz <quentin.schulz@theobroma-systems.com> wrote:
> >   
> >> Hi Luca,
> >>
> >> On 10/3/22 23:15, Luca Ceresoli wrote:  
> >>> Hi Quentin,
> >>>
> >>> On Mon,  3 Oct 2022 19:04:01 +0200
> >>> "Quentin Schulz" <foss@0leil.net> wrote:
> >>>      
> >>>> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> >>>>
> >>>> It happened that the git repositories were dirty and resulted in
> >>>> incorrect files being used. Let's use git clean -ffdx to force a
> >>>> completely clean git repositories before and after checking out a branch
> >>>> so that nothing is left from or to another branch build
> >>>>
> >>>> Cc: Quentin Schulz <foss+yocto@0leil.net>
> >>>> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> >>>> ---
> >>>>    scripts/run-docs-build | 10 +++++-----
> >>>>    1 file changed, 5 insertions(+), 5 deletions(-)
> >>>>
> >>>> diff --git a/scripts/run-docs-build b/scripts/run-docs-build
> >>>> index c6b3965..69e3257 100755
> >>>> --- a/scripts/run-docs-build
> >>>> +++ b/scripts/run-docs-build
> >>>> @@ -61,6 +61,7 @@ for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --for
> >>>>    
> >>>>        echo Building bitbake $branch branch
> >>>>        git checkout $branch
> >>>> +    git clean -ffdx
> >>>>        git checkout origin/master releases.rst
> >>>>        make clean
> >>>>        SPHINXOPTS="-j auto" make publish
> >>>> @@ -80,7 +81,7 @@ for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --for
> >>>>        fi
> >>>>    
> >>>>        cp -r ./_build/final/* $outputdir/bitbake/$branch
> >>>> -    git reset --hard
> >>>> +    git clean -ffdx  
> >>>
> >>> Sure this is correct? 'git clean -ffdx' does not revert changes to
> >>> tracked files, be them staged or not.
> >>>      
> >>
> >> Nope, not sure this is correct. I misread git clean manpage, we should
> >> have a git reset --hard and git clean -ffdx. Now the question is when
> >> those are necessary because with this patch we do it twice, before and
> >> after the git checkout. I did this because I remember doing checkouts
> >> between branches of U-Boot/kernel and while the pre-checkout branch was
> >> not dirty, the after-checkout branch was dirty. I assume this might have
> >> something to do with build artifacts of the pre-checkout build that
> >> weren't .gitignored in the afer-checkout branch? Something that git
> >> clean -ffdx should tackle I think.
> >>
> >> Sooo, I guess only having git reset --hard and git clean -ffdx before a
> >> checkout should be enough and we don't need them both before and after
> >> the checkout like I did in this patch?  
> > 
> > I think 'reset --hard' + 'clean -ffdx' only before the checkout should
> > be enough. However I'm not sure whether there are corner cases such as
> > a file that is .gitignored in commit A and versioned in commit B or
> > similar. Perhaps worth trying with reset+clean only before, and see  
> 
> I guess it does not hurt to be on the safe side by having them before 
> and after the git checkout then? Since the current issue went unnoticed 
> for months...

Sorry for the delayed reply. It took a while before I found a little
time to look at the script code...

Indeed cleaning before _and_ after would be safe, even though perhaps
unneeded.

> > what happens. However I don't know exactly the initial problem you're
> > trying to fix.
> >   
> 
> https://lore.kernel.org/yocto-docs/e50abe3c777e4a23a752a3ec25ad0b2a@axis.com/T/#t

Ah, interesting. Thanks for the link. Why not adding it to your commit
message, for reference?

Best regards.
-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

