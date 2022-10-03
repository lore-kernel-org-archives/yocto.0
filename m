Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05194C433FE
	for <webhook@archiver.kernel.org>; Mon,  3 Oct 2022 17:11:42 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net
 [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web08.194.1664817097378802132
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Oct 2022 10:11:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=iAZFlMky;
 spf=pass (domain: bootlin.com, ip: 217.70.178.230,
 mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 17DE024000D;
	Mon,  3 Oct 2022 17:11:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1664817095;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Qzs5CeJCVj+L4JOXAUQOTAdvGOFgq96D3CfcntzWyOg=;
	b=iAZFlMkyUDlyO/zQ8CYopS0JSPa/U46O9aAZQkM1L4ZfHDjFTqejiVDoQR/HtNgAXqxFXJ
	w18j++AcBag2Dy7Mc/vi+5SJ2Q4NcXu+Q6K7lnEIN4147U9VNI+2muBhwtxBN5nEV7mrlj
	NlR2QPhxx2THwVfs6iAUo/lx10RxbCxdX4UDeCQPaSph3gRxoPwd1NE3vBC7I+2rKog0qu
	7aJhzsZYGVr0rHvScAOW5F5ZnKAQ6tMfxKc6aczzi6mxXhEIQXsyOwR4lYLkXv/OhwHWwy
	74/qgyt4eN2/ScoTYWHmRd85ntEwjthSK8xQjeQgV9DpeDUQLaDGjdE/WBohyQ==
Message-ID: <124108e8-9019-82e7-da8a-9cab66325d40@bootlin.com>
Date: Mon, 3 Oct 2022 19:11:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Quentin Schulz <foss+yocto@0leil.net>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] scripts: run-docs-build:
 make the workdir pristine between builds
Content-Language: en-US
To: Quentin Schulz <foss@0leil.net>, yocto@lists.yoctoproject.org
References: <20221003170401.12827-1-foss+yocto@0leil.net>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <20221003170401.12827-1-foss+yocto@0leil.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Oct 2022 17:11:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58254

Hi Quentin,

On 03.10.22 19:04, Quentin Schulz wrote:
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
>   scripts/run-docs-build | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/scripts/run-docs-build b/scripts/run-docs-build
> index c6b3965..69e3257 100755
> --- a/scripts/run-docs-build
> +++ b/scripts/run-docs-build
> @@ -61,6 +61,7 @@ for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --for
>   
>       echo Building bitbake $branch branch
>       git checkout $branch
> +    git clean -ffdx
>       git checkout origin/master releases.rst
>       make clean
>       SPHINXOPTS="-j auto" make publish
> @@ -80,7 +81,7 @@ for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --for
>       fi
>   
>       cp -r ./_build/final/* $outputdir/bitbake/$branch
> -    git reset --hard
> +    git clean -ffdx


In both cases, why "-ffdx"? Isn't it the same as "-fdx" (just checking 
the manual page).

Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


