Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8953CC433EF
	for <webhook@archiver.kernel.org>; Wed, 16 Mar 2022 09:51:21 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net
 [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web08.23317.1647424279921015963
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Mar 2022 02:51:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=aBozMv+O;
 spf=pass (domain: bootlin.com, ip: 217.70.178.230,
 mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 6F244240011;
	Wed, 16 Mar 2022 09:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1647424278;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pk+aojZacXmLp69diKIWI+JjzlFXvtntKOOG9gatuxU=;
	b=aBozMv+Ozqg10o4WiZkXeqPEJKHBywlkkU+8f3wxsGAzvWkED6sFox5dCrUCQqBTw2oIHM
	98/eH8kdyOLGuai0UzZ1QYXgeLp/KV5s2DMWC/bWgNvBIGP4177seLTbtx4pSTIFxx8hhk
	MglgalZu1SbvakFiJWr5+ujlQFgO20aWEJ6mGUAyo6uHeg4uJkYZXRc/zG5XJL1ameDUBc
	Nhtlm0pbCtOeVsl6bgVG/ec9TYMok0YCKREjVGHc5XnwqvjaNACzHU0tqwZa+9+zRkKJnv
	8udOMsqZ4WOVjf5GWjDEzrBZoahDED3sgmdiC7LfKbGYUsX63l7Zj/BVHdCogg==
Message-ID: <ff7d1ef9-bdad-fd16-1e25-eccd46ab9e93@bootlin.com>
Date: Wed, 16 Mar 2022 10:51:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Quentin Schulz <foss+yocto@0leil.net>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 1/4] scripts:
 run-docs-build: simplify patching logic
Content-Language: en-US
To: Quentin Schulz <foss@0leil.net>, yocto@lists.yoctoproject.org
References: <20220315163115.2186540-1-foss+yocto@0leil.net>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <20220315163115.2186540-1-foss+yocto@0leil.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Mar 2022 09:51:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56459

Hi Quentin,

On 3/15/22 17:31, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
>
> There's no need to keep a list of tags requiring to be patched since the
> tag is part of the path where patches are stored.
>
> Therefore, let's only check if there's a patch directory for a given tag
> and if so, apply all patches in there.


Too late to give you a "Reviewed-by", but thanks for the corrections and
simplifications!
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


