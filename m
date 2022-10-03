Return-Path: <luca.ceresoli@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CDCBC4332F
	for <webhook@archiver.kernel.org>; Mon,  3 Oct 2022 21:15:23 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
 [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web10.3085.1664831714512091358
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Oct 2022 14:15:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=S7vth19f;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195,
 mailfrom: luca.ceresoli@bootlin.com)
Received: from booty (unknown [77.244.183.192])
	(Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id A71BE60005;
	Mon,  3 Oct 2022 21:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1664831712;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2YZWAUwcJUGHRCwMCJSZS8B5IJLtt9wsjOaCV+iDjDg=;
	b=S7vth19fW+t0Xar93BJWweOp3xBSTau1Tv22wvozdZac6TckFM5BUVKQcOLDocR7XzZtkQ
	lfm3RRoAqr2p1IfEUbKxOJcIhW+Ceti6DMNYajoBoSqBa1qX9CO8aU5zwjz2y59awvP387
	1+n2fuaVNpVnXIPX/CoCJbLmXoYFp2pjEnnUB1L2/C4QYtXrfxS7vgN7jlq1yP9wiZR8W5
	aA8d6DTejmy9F2CFfMeI+9Y3I0ZoHPrge9liW2CKv+3QS84UAAMr3YGt3wCucML+XQvrP3
	OwH8ygcn5dW6+pgKjP+ed9Uz/LK6Nyvew2SO5BTTvHC/TdU+2X/kykhazj1DuA==
Date: Mon, 3 Oct 2022 23:15:09 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: "Michael Opdenacker via lists.yoctoproject.org"
 <michael.opdenacker=bootlin.com@lists.yoctoproject.org>
Cc: michael.opdenacker@bootlin.com, Quentin Schulz <foss@0leil.net>,
 yocto@lists.yoctoproject.org, Quentin Schulz
 <quentin.schulz@theobroma-systems.com>, Quentin Schulz
 <foss+yocto@0leil.net>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] scripts:
 run-docs-build: make the workdir pristine between builds
Message-ID: <20221003231509.2155cdf8@booty>
In-Reply-To: <124108e8-9019-82e7-da8a-9cab66325d40@bootlin.com>
References: <20221003170401.12827-1-foss+yocto@0leil.net>
	<124108e8-9019-82e7-da8a-9cab66325d40@bootlin.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Oct 2022 21:15:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58256

On Mon, 3 Oct 2022 19:11:34 +0200
"Michael Opdenacker via lists.yoctoproject.org"
<michael.opdenacker=bootlin.com@lists.yoctoproject.org> wrote:

> Hi Quentin,
> 
> On 03.10.22 19:04, Quentin Schulz wrote:
> > From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> >
> > It happened that the git repositories were dirty and resulted in
> > incorrect files being used. Let's use git clean -ffdx to force a
> > completely clean git repositories before and after checking out a branch
> > so that nothing is left from or to another branch build
> >
> > Cc: Quentin Schulz <foss+yocto@0leil.net>
> > Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> > ---
> >   scripts/run-docs-build | 10 +++++-----
> >   1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/scripts/run-docs-build b/scripts/run-docs-build
> > index c6b3965..69e3257 100755
> > --- a/scripts/run-docs-build
> > +++ b/scripts/run-docs-build
> > @@ -61,6 +61,7 @@ for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --for
> >   
> >       echo Building bitbake $branch branch
> >       git checkout $branch
> > +    git clean -ffdx
> >       git checkout origin/master releases.rst
> >       make clean
> >       SPHINXOPTS="-j auto" make publish
> > @@ -80,7 +81,7 @@ for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --for
> >       fi
> >   
> >       cp -r ./_build/final/* $outputdir/bitbake/$branch
> > -    git reset --hard
> > +    git clean -ffdx  
> 
> 
> In both cases, why "-ffdx"? Isn't it the same as "-fdx" (just checking 
> the manual page).

The manpage for git 2.34.1 has this extra detail:

> Git will refuse to modify untracked nested git repositories
> (directories with a .git subdirectory) unless a second -f is given.

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

