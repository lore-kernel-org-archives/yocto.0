Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 164CDC433F5
	for <webhook@archiver.kernel.org>; Mon, 21 Mar 2022 09:04:27 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
 [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web09.28416.1647853465733537112
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Mar 2022 02:04:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=cGNXla5Q;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197,
 mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 4B7F11C0006;
	Mon, 21 Mar 2022 09:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1647853463;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iNqxBbh42Ro6vRL/s2pnmmp2WPWim+mAHd3PmNb/Xuw=;
	b=cGNXla5QI0wCxC6HI28vuUr74oJVAuyrsW0MkY4VcdRevOlQMyu2r4aPu4U/405tqPTpH5
	6IwiMMf8bP6BitUOSobizMpMcPGVHVTMiy1M1mnpL5ENe5nj3RxUpLVELWKjYkuTz7DoNj
	eefiEfqnYQUX8kgEfAyEelQ56DA/CnQPPQqBu2aM8jvItGCFRmANjmIk5ENw5/KXL9JvW+
	ujqZvUTrv53fd7IIofLNOnvHCDF5Hl81/FL1X3NgXXcj4QZfsuYnNU4fjVMlTtEygjneWg
	3A12Yw7DPGEQU3YEiyhw2Rlo5q1lIdOaRPqTzhqxT6YvdVBGD+cQQS5Xheoxzw==
Message-ID: <c41572b3-642a-ef97-10a2-a74187b06d92@bootlin.com>
Date: Mon, 21 Mar 2022 10:04:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Quentin Schulz <foss+yocto@0leil.net>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 2/6] scripts:
 run-docs-build: automatically build new Bitbake branches
Content-Language: en-US
To: Quentin Schulz <foss@0leil.net>, yocto@lists.yoctoproject.org
References: <20220318163651.3016936-1-foss+yocto@0leil.net>
 <20220318163651.3016936-2-foss+yocto@0leil.net>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <20220318163651.3016936-2-foss+yocto@0leil.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Mar 2022 09:04:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56511


On 3/18/22 17:36, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
>
> Since commit 84ccba0f4aff91528f764523fe1205a354c889ed, docs of all later
> releases can be built with Sphinx. Instead of manually updating this
> list, let's have git return the list of remote branches which contains
> this commit.
>
> 1.46 branch was initially released without Sphinx support but was later
> patched, hence why it's explicitly listed.
>
> Cc: Quentin Schulz <foss+yocto@0leil.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
>  scripts/run-docs-build | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/scripts/run-docs-build b/scripts/run-docs-build
> index f7b5f97..d8d77c7 100755
> --- a/scripts/run-docs-build
> +++ b/scripts/run-docs-build
> @@ -37,7 +37,12 @@ mkdir $outputdir/bitbake
>  # https://lists.yoctoproject.org/g/docs/message/2193
>  # We copy the releases.rst file from master so that all versions of the docs
>  # see the latest releases.
> -for branch in 1.46 1.48 1.50 1.52 master master-next; do
> +first_sphinx_commit=84ccba0f4aff91528f764523fe1205a354c889ed
> +for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --format '%(refname:lstrip=3)'); do
> +    if [ "$branch" = "HEAD" ]; then
> +        continue
> +    fi
> +
>      echo Building bitbake $branch branch
>      git checkout $branch
>      git checkout master releases.rst


Very good idea! I learned a new git option today.
Reviewed-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
Thanks!
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


