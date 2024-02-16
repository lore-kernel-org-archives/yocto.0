Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECE0C48260
	for <webhook@archiver.kernel.org>; Fri, 16 Feb 2024 07:32:28 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web11.14013.1708068742822146008
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Feb 2024 23:32:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=NvnGWzba;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id C5C131C0007;
	Fri, 16 Feb 2024 07:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1708068741;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gUMQxpaIQjYzC3xGdNRV0sLJ3BV/GgIU5BL+LvHHT/Y=;
	b=NvnGWzba6KUlEH5vTVKb9ditG+CaXNFcvTVfa97t7zKr/g8tCPe8GJMoQfFh2nEmyTxcZX
	D5nME+qgFz1tANgg1Hxbjq5SLATscR93Tkg7g6hWPSdxMaucsLr4FKRXg169U4lI5ZVRCb
	xjs7fMQQaZKwMVqUnjqrTqXPfwqlMiLgx0U+vm5YYOrD2DOqFDHoSIADElLpvS0rgrfpxH
	D/KQ+5jd3GkJNnIDK0DvbiAz39GYz2gqNA079xqX8cCEr+mbY5cmQ9y4GyaDqilrQizmvm
	eUTA5xs2VokZWgfdYDNA+FEpOsW3EOJ4vOK5LPWbfvYM302Qi1kLN0DJ7QZcug==
Message-ID: <3d7ead69-9f5b-4c6b-9215-195b397e3d19@bootlin.com>
Date: Fri, 16 Feb 2024 08:32:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: f.lahoudere@technologyandstrategy.com,
 BELOUARGA Mohamed <m.belouarga@technologyandstrategy.com>
Subject: Re: [yocto] [PATCH] lynis: Add missing runtime dependencies
Content-Language: en-US
To: yocto@lists.yoctoproject.org, belouargamohamed@gmail.com
References: <20240215225757.307579-1-m.belouarga@technologyandstrategy.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <20240215225757.307579-1-m.belouarga@technologyandstrategy.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Feb 2024 07:32:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62510

Hi Mohamed

On 2/15/24 at 23:57, belouargamohamed@gmail.com wrote:
> From: BELOUARGA Mohamed <m.belouarga@technologyandstrategy.com>
>
> Lynis tool needs ip, ss, tr and netstat.
> If they are missing Lynis skips some important audit tests.
>
> Signed-off-by: BELOUARGA Mohamed <m.belouarga@technologyandstrategy.com>
> ---
>   recipes-compliance/lynis/lynis_3.0.9.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-compliance/lynis/lynis_3.0.9.bb b/recipes-compliance/lynis/lynis_3.0.9.bb
> index 5b5864c..b8b97a5 100644
> --- a/recipes-compliance/lynis/lynis_3.0.9.bb
> +++ b/recipes-compliance/lynis/lynis_3.0.9.bb
> @@ -41,4 +41,4 @@ do_install () {
>   FILES:${PN} += "${sysconfdir}/developer.prf ${sysconfdir}/default.prf"
>   FILES:${PN}-doc += "lynis.8 FAQ README CHANGELOG.md CONTRIBUTIONS.md CONTRIBUTORS.md"
>   
> -RDEPENDS:${PN} += "procps findutils"
> +RDEPENDS:${PN} += "procps findutils coreutils iproute2-ip iproute2-ss net-tools"


Thanks for the patch!
Maybe you should send it again with the "[meta-security]" prefix, 
otherwise, the meta-security maintainers may miss it.

See https://git.yoctoproject.org/meta-security/tree/README.md
Thanks again
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


