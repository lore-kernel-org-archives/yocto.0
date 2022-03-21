Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4234C433F5
	for <webhook@archiver.kernel.org>; Mon, 21 Mar 2022 08:54:37 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
 [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web11.27742.1647852876531088339
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Mar 2022 01:54:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=ml1zHcLb;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196,
 mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id A11C5E0012;
	Mon, 21 Mar 2022 08:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1647852874;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=P2OzcG7WhM9uLdBeRCT16XGnqfw9t4CNbC5k3CKlcSA=;
	b=ml1zHcLbut55Va6LH7ZauWMqL5SnJ/LWNvCcitW5r9NZ5LPIyjsqiI4fSF7U0Pg5mpzyCy
	QUBKy7LDgQApw7bNVKSY4uQnmnv6ST3tISr6M4M5Satb2nFeG7Eopzg/AYmo5BHidRthTn
	lQEXtAiS4Ut01s6JR+NY8MW8GZRNH6zGPq/VVzGH7ZodCrCShbfHS1+fOecm9Zl+bbslzA
	eYvlteWg84Vd9SUjcYRThBG7gcr4+rvMT7dgbri3s8DdyV5P+KM2dCNSg4Ls0AWi820+HU
	yf7xozR417s75IMHY6khE+zWZMF+frmvM6F9PAgzwqkh607ocmunvUCYXoA77Q==
Message-ID: <6a80f311-0fe0-78be-855c-10c09798b0f0@bootlin.com>
Date: Mon, 21 Mar 2022 09:54:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Quentin Schulz <foss+yocto@0leil.net>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 1/6] scripts:
 run-docs-build: factor out all bitbake branches building
Content-Language: en-US
To: Quentin Schulz <foss@0leil.net>, yocto@lists.yoctoproject.org
References: <20220318163651.3016936-1-foss+yocto@0leil.net>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <20220318163651.3016936-1-foss+yocto@0leil.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Mar 2022 08:54:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56510

Hi Quentin

On 3/18/22 17:36, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
>
> master and master-next only differ from other branches by their output
> directory name. Let's put everything in common and only have a check on
> whether the branch is master or master-next and modify the output dir in
> those cases.
>
> Cc: Quentin Schulz <foss+yocto@0leil.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Thanks for the useful patch!

Reviewed-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


