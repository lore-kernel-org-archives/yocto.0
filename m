Return-Path: <luca.ceresoli@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DA79C4332F
	for <webhook@archiver.kernel.org>; Mon,  3 Oct 2022 21:15:13 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net
 [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web11.3174.1664831709386495442
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Oct 2022 14:15:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=XxfOFTEK;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201,
 mailfrom: luca.ceresoli@bootlin.com)
Received: from booty (unknown [77.244.183.192])
	(Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 76FEC1BF203;
	Mon,  3 Oct 2022 21:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1664831708;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=csgkAcf9prCOl3cWiafeujEairGduyBQ0S1KJGGlISU=;
	b=XxfOFTEK0sdvTy2q0irrY9NOQvGDhABP9F1LmW9ozT3ozSpIu+kLYsck0n/m+I2AXB7aCS
	4psm2YDHnurVyraNFC5h2lf1RPzsBe5rmLKHXbY8slfdag6k82BX1fcK7iembFVFmONox9
	TDJWEAr8cZi/csAiNEKlC4uq82YeMEwq8endTej2p/LGcsbj9qqok0j/Y/ti5xs+Nn6CSx
	VeKUED4uBJL1bXyoGHpO3Y/tn5vrCuN9wOUlti75MFJK0gCdev+krg9XOyPc7Pp7M3Dk4G
	B+fBwTlVailD2zG48wZWK9TpjdGttGg1kZ4wSz7nTwkA7j+RSQbUw4DZJ+PX5Q==
Date: Mon, 3 Oct 2022 23:15:05 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: "Quentin Schulz" <foss@0leil.net>
Cc: yocto@lists.yoctoproject.org, Quentin Schulz
 <quentin.schulz@theobroma-systems.com>, Quentin Schulz
 <foss+yocto@0leil.net>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] scripts:
 run-docs-build: make the workdir pristine between builds
Message-ID: <20221003231505.0f16377d@booty>
In-Reply-To: <20221003170401.12827-1-foss+yocto@0leil.net>
References: <20221003170401.12827-1-foss+yocto@0leil.net>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Oct 2022 21:15:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58255

Hi Quentin,

On Mon,  3 Oct 2022 19:04:01 +0200
"Quentin Schulz" <foss@0leil.net> wrote:

> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> It happened that the git repositories were dirty and resulted in
> incorrect files being used. Let's use git clean -ffdx to force a
> completely clean git repositories before and after checking out a branch
> so that nothing is left from or to another branch build
> 
> Cc: Quentin Schulz <foss+yocto@0leil.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
>  scripts/run-docs-build | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/scripts/run-docs-build b/scripts/run-docs-build
> index c6b3965..69e3257 100755
> --- a/scripts/run-docs-build
> +++ b/scripts/run-docs-build
> @@ -61,6 +61,7 @@ for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --for
>  
>      echo Building bitbake $branch branch
>      git checkout $branch
> +    git clean -ffdx
>      git checkout origin/master releases.rst
>      make clean
>      SPHINXOPTS="-j auto" make publish
> @@ -80,7 +81,7 @@ for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --for
>      fi
>  
>      cp -r ./_build/final/* $outputdir/bitbake/$branch
> -    git reset --hard
> +    git clean -ffdx

Sure this is correct? 'git clean -ffdx' does not revert changes to
tracked files, be them staged or not.

>  done
>  
>  if [ "$PUBLISH" -ne 0 ]; then
> @@ -100,8 +101,7 @@ first_dunfell_sphinx_commit=c25fe058b88b893b0d146f3ed27320b47cdec236
>  git checkout origin/master set_versions.py
>  #latest_tag=$(git tag --contains "$first_sphinx_commit" --contains "$first_dunfell_sphinx_commit" --sort="version:refname" 'yocto-*' | tail -1 | sed 's/yocto-//')
>  latest_tag=$(./set_versions.py getlatest)
> -git reset --hard
> -git clean -f
> +git clean -ffdx
>  
>  for branch in dunfell $(git branch --remote --contains "$first_sphinx_commit" --format '%(refname:lstrip=3)') $(git tag --contains "$first_sphinx_commit" --contains "$first_dunfell_sphinx_commit" 'yocto-*') transition; do
>      if [ "$branch" = "HEAD" ]; then
> @@ -116,6 +116,7 @@ for branch in dunfell $(git branch --remote --contains "$first_sphinx_commit" --
>  
>      echo Building $branch
>      git checkout $branch
> +    git clean -ffdx
>  
>      if [ -e "${scriptdir}/docs-build-patches/${branch}/" ]; then
>          echo Adding patch for $branch
> @@ -160,8 +161,7 @@ for branch in dunfell $(git branch --remote --contains "$first_sphinx_commit" --
>      fi
>  
>      cp -r ./_build/final/* $outputdir/$branch
> -    git reset --hard
> -    git clean -f
> +    git clean -ffdx

Same here.

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

