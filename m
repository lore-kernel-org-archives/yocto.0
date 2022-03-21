Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 322B9C433EF
	for <webhook@archiver.kernel.org>; Mon, 21 Mar 2022 09:07:39 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
 [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web09.28443.1647853658238689429
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Mar 2022 02:07:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=ox4PfOFU;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197,
 mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 397DB1C0006;
	Mon, 21 Mar 2022 09:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1647853656;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3cS9kYbdQz6VCctaePwmJgTYS1VaBU4ZAyFaDCz2dfs=;
	b=ox4PfOFUYn7OaS2sRZPW/BLT/BC1y0H7Qn4UpkIX7fuouGu7+SDC5hqQjsmqPT18vGlBLi
	QwyvHis4kNK0PUe8DNDe1WiABowvUzfUMRMYyiA84LhFjtX717dCQdOz+uRtNhGVg8MeW+
	uOJ/xFIooDn6FTY7sy87lhZjtSDJ8iVn/ZuQ8U5fsHgJqSqaqwo85+YxWBaNVdYflAgNmx
	dA1OhSzv+3MaLwAssl2dA4lWdjcEgkO8nd3WyRXXECVdO5gFz0dFPw7Eds2RKrwzD2O8lr
	odvNnYJgyk3QB65DjGkY8CRMILsHW5xQawFC3PZD5rdL3a3lH274UAEd3/Bjew==
Message-ID: <d946b67a-9576-f2a0-56cb-d37847114d81@bootlin.com>
Date: Mon, 21 Mar 2022 10:07:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Quentin Schulz <foss+yocto@0leil.net>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 4/6] scripts:
 run-docs-build: automatically build new yocto-docs branches
Content-Language: en-US
To: Quentin Schulz <foss@0leil.net>, yocto@lists.yoctoproject.org
References: <20220318163651.3016936-1-foss+yocto@0leil.net>
 <20220318163651.3016936-4-foss+yocto@0leil.net>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <20220318163651.3016936-4-foss+yocto@0leil.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Mar 2022 09:07:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56513


On 3/18/22 17:36, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
>
> Since commit 01dd5af7954e24552aca022917669b27bb0541ed, all later
> releases of yocto-docs can be built with Sphinx. Instead of manually
> updating this list, let's have git return the list of remote branches
> which contains the commit.
>
> dunfell branch was initially released without Sphinx support but was
> later patched, hence why it's explicitly listed.
>
> Cc: Quentin Schulz <foss+yocto@0leil.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
>  scripts/run-docs-build | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)


Reviewed-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
Many thanks
Michael.
-- 

Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


