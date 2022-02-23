Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9D4C433EF
	for <webhook@archiver.kernel.org>; Wed, 23 Feb 2022 13:05:40 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net
 [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web08.7212.1645621539116605104
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Feb 2022 05:05:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=njaiwur0;
 spf=pass (domain: bootlin.com, ip: 217.70.178.230,
 mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id F06E1240002;
	Wed, 23 Feb 2022 13:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1645621537;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MHO5SHns7oW+fP227vl0aXVt7JvwOEHpclfObOsC/FI=;
	b=njaiwur0MsvQ6oQir6P6eQjPigGNly/pun76nX6J3xkQw4WudWmg9+GE4dPCsppwH74R7Z
	GdeZwf2x50Gw2G/can0iNJiuksZqwPNqmQUUOphb8hY3TUvwsnCcX1yPDZl0cZJYv9e6HA
	bP/uiWwiFQdPOmFiSdQQK6Rjx5umDqIsemyL2WUYkrDTOZaf3rVHWKajsjLnWp8ZvHIMmN
	9H+y3EPtIa7lrEmu9+YrvSdE8YxCIEbGlP8fpZ3ErTfuCUgL3sCLt2UZ7sIXcgQXH94a9u
	bEn7sQ49dCYnBf+GXnQm1pah78WAdvoBE8A8BfD226vHeslIboMlLamZ9jSeIQ==
Message-ID: <a5f7761a-6d02-6fb1-e998-2a5b6633ca1e@bootlin.com>
Date: Wed, 23 Feb 2022 14:05:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Quentin Schulz <foss+yocto@0leil.net>
Subject: Re: [yocto] [RFC] [PATCH yocto-autobuilder-helper] scripts:
 run-docs-build: make the script fail hard ASAP when there's an error
Content-Language: en-US
To: Quentin Schulz <foss@0leil.net>, yocto@lists.yoctoproject.org
References: <20220223113106.2781516-1-foss+yocto@0leil.net>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <20220223113106.2781516-1-foss+yocto@0leil.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Feb 2022 13:05:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56262

Hi Quentin,

On 2/23/22 12:31, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
>
> There are some intermittent issues with the script not publishing all
> versions. So let's go extreme and fail the script if any error happens:
>  - a command returns a non-zero code, even if piped,
>  - a variable is used uninitialized,
>
> This also makes the script print each and every command being run so we
> have a better idea where the script struggles.
>
> Cc: Quentin Schulz <foss+yocto@0leil.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
>
> RFC:
>  - I highly suspect this change to break the building script because
>  Sphinx probably throws errors at old doc builds,
>  - Also, with Sphinx updates, new warnings might arrise on
>  old/unmaintained branches, we probably want to use virtualenv with
>  specific Sphinx versions to make sure this is not an issue in the
>  future? (and allows to bump Sphinx (or other dependencies) requirement
>  for newer doc branches),
>
>  scripts/run-docs-build | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/scripts/run-docs-build b/scripts/run-docs-build
> index 3bc35b3..b7b5773 100755
> --- a/scripts/run-docs-build
> +++ b/scripts/run-docs-build
> @@ -2,6 +2,12 @@
>  # Called with $1 as the build directory
>  #             $2 as the path to yocto-docs
>  #             $3 as the path to bitbake
> +
> +set -e
> +set -u
> +set -o pipefail
> +set -x
> +
>  builddir=$1
>  ypdocs=$2/documentation/
>  bbdocs=$3/doc/

Agreeing with the change.
How would we get the script output?

Thanks
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


