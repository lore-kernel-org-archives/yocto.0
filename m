Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B131C433EF
	for <webhook@archiver.kernel.org>; Mon, 21 Mar 2022 09:11:58 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net
 [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web11.27866.1647853916556617089
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Mar 2022 02:11:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=PFav61sy;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201,
 mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 65F301BF209;
	Mon, 21 Mar 2022 09:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1647853914;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=udiIPIp+Nd706bj+BG5rf/4nU2E2wPwYaEIU1MDKg48=;
	b=PFav61syFEnylWKkrM695aBJCMmtadjApIDzBsslLwKZbiPkGPcKQW/Lmfeg2G9qLLCLCl
	7+uAzobu63dz1iZVBOYQeclavsmZ2AfLKFdk2tWI4/b1LxCsyS8nT6x3R+KvG/aJ9/N/ua
	6e8o1ATGqoEydFi4VuWWRNY35XO9R38KrLegOp27U6RJ9tOWPShZoWMx1/pqxDI74H/vV+
	pclsAHpXYhGIWVnB8yUFwpg372ffavv7nxzvSrb0iN9YwoVsQV0i2PtZ5wQ+e1D0KGq6mk
	TdsU+4o6N9tdnJwrE9V1II9a+L94lCRd40NcUYZLoqxrMZTNeQbkqKSkMs13Zg==
Message-ID: <a6bb4b75-e8f3-286b-cc66-7a683efce97e@bootlin.com>
Date: Mon, 21 Mar 2022 10:11:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Quentin Schulz <foss+yocto@0leil.net>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 5/6] scripts:
 run-docs-build: simplify sphinx-buildable yocto-docs tag list fetching
Content-Language: en-US
To: Quentin Schulz <foss@0leil.net>, yocto@lists.yoctoproject.org
References: <20220318163651.3016936-1-foss+yocto@0leil.net>
 <20220318163651.3016936-5-foss+yocto@0leil.net>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <20220318163651.3016936-5-foss+yocto@0leil.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Mar 2022 09:11:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56514


On 3/18/22 17:36, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
>
> The commit that introduced Sphinx support in yocto-docs is
> 01dd5af7954e24552aca022917669b27bb0541ed. Any tag containing this commit
> is buildable by sphinx.
>
> Dunfell tags don't all have Sphinx support. However, all tags containing
> the introducing commit c25fe058b88b893b0d146f3ed27320b47cdec236 are
> buildable by sphinx.
>
> Therefore, let's just list all tags which contains either of those two
> commits instead of the complex series of pipes and shell commands.
>
> Cc: Quentin Schulz <foss+yocto@0leil.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
>  scripts/run-docs-build | 36 +++++++++++++++++-------------------
>  1 file changed, 17 insertions(+), 19 deletions(-)


Thanks for the simplification!
Reviewed-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


