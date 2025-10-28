Return-Path: <denis@denix.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD843CCF9E0
	for <webhook@archiver.kernel.org>; Tue, 28 Oct 2025 15:51:19 +0000 (UTC)
Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web11.12483.1761666678193842357
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Oct 2025 08:51:18 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 992E940C2E;
	Tue, 28 Oct 2025 15:51:16 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YBCNhOZmswWn; Tue, 28 Oct 2025 15:51:16 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-87-159.washdc.fios.verizon.net [100.15.87.159])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 7B6BC407DA;
	Tue, 28 Oct 2025 15:51:15 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id CE6CF16E436; Tue, 28 Oct 2025 11:51:14 -0400 (EDT)
Date: Tue, 28 Oct 2025 11:51:14 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: yocto@lists.yoctoproject.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json: add
 meta-beagle sublayer of meta-ti to check-layer
Message-ID: <20251028155114.GD3125@denix.org>
References: <18692C680F0ED8BC.31910@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <18692C680F0ED8BC.31910@lists.yoctoproject.org>
User-Agent: Mutt/1.5.20 (2009-06-14)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Oct 2025 15:51:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65979

Hi Richard,

I know you are overloaded with the release and getting bitbake-setup working 
on the AB. While this change is not critical, I just wanted to make sure it's 
in for the YP Compat v3 launch. Thanks.


On Sat, Sep 27, 2025 at 11:12:20AM -0400, Denys Dmytriyenko wrote:
> From: Denys Dmytriyenko <denys@konsulko.com>
> 
> Also run nightly yocto-check-layer for meta-beagle sublayer of meta-ti.
> 
> Signed-off-by: Denys Dmytriyenko <denys@konsulko.com>
> ---
>  config.json | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/config.json b/config.json
> index 90cb791..ce1fdc8 100644
> --- a/config.json
> +++ b/config.json
> @@ -1221,7 +1221,7 @@
>              },
>              "step5" : {
>                  "shortname" : "Test meta-ti YP Compatibility",
> -                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-ti/meta-ti-bsp ../meta-ti/meta-ti-extras --dependency ../meta-arm --no-auto-dependency"]
> +                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-ti/meta-ti-bsp ../meta-ti/meta-ti-extras ../meta-ti/meta-beagle --dependency ../meta-arm --no-auto-dependency"]
>              },
>              "step6" : {
>                  "shortname" : "Test meta-oe YP Compatibility",
> -- 
> 2.25.1

