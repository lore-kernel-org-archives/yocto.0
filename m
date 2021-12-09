Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71AB6C433F5
	for <webhook@archiver.kernel.org>; Thu,  9 Dec 2021 02:04:36 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
 [209.85.222.180])
 by mx.groups.io with SMTP id smtpd.web12.5913.1639015475461610712
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Dec 2021 18:04:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ff4dUuY+;
 spf=pass (domain: gmail.com, ip: 209.85.222.180,
 mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f180.google.com with SMTP id t83so3767845qke.8
        for <yocto@lists.yoctoproject.org>;
 Wed, 08 Dec 2021 18:04:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=NSLcFnkU2OonXRyYfBNDNmQBA1ajTMGBChDRN76Pu4w=;
        b=ff4dUuY+qfRssyVsb+dRg25pLGoeIyL3Qn/BXm1U2B3Z4Gc0gcK2RDukoKS7qt4u0n
         X8R87w+sHnlANDxbaK2F2d4CHNCZCOs/ej3AoeQn9Wb/ynblLudo0oPbI4V6BymlDqPZ
         vyvgoJhE/qVEnC+tl6d7FIkfcMHEWiVaKmz5nv7ySmfUMLxYFNnUxH5mYIK56h5Q/cON
         PXxUY7eaeQuoEmsMu5f1JmgPgt5lsaXDkIyxYcPlDKAuEeM6/hym+yYdLQMNN0BUdDC1
         VGD6ocd+y8z03TJ8214aNFDw+uTCUpcQ+TeBf6GHN49T4vGVeZU4lwLWSd6S6IFd+3PI
         Hc2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=NSLcFnkU2OonXRyYfBNDNmQBA1ajTMGBChDRN76Pu4w=;
        b=POrYeRkY2j4v6uzg2P4lCEWn3QoC/Hyf459lDw3pkTbw0uooAvL/ODv9PoFokm3clD
         iwCJ55R+AhLhHQsB+uddAJrKNTVX/dGNklNxvwAuWT0NzuxZe+UfBa16gGTbI7kNsKnQ
         Hy39lQVOx54O7GRV5hvDU417Iq1DVei4qAl9w9ZpM8ZSiFhhprV6Cd1CbmN7K+qDSJVo
         7t5SQ7MaZ0+ZMI03T2bskLt82xuc1UG2/Pfx24zWWp+qPJudEPcz5n+FGmyjmH7Xpg5m
         0fgVBG7p6ym1MI+/UujB+welElKnZJp6P147bO9ykiYc+FlRYeQU35yNesK61R5p9zA/
         Vhow==
X-Gm-Message-State: AOAM531JE29166nbVUSdYmoCRV0+EEjJdEXSuxIV9WdILhjx1ZWXorcn
	XthyD/hi1DfjtQlOKwslCSOI797PEh4=
X-Google-Smtp-Source: 
 ABdhPJwqRvYuCTIGcz8lUQRdGkDI3BI5cXd121LaNV6pBARzwoDhoe2xXDNkj49NlKYmDnsCLoWLgQ==
X-Received: by 2002:a37:8d84:: with SMTP id
 p126mr10949925qkd.684.1639015474442;
        Wed, 08 Dec 2021 18:04:34 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 o21sm2788884qta.89.2021.12.08.18.04.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Dec 2021 18:04:33 -0800 (PST)
Date: Wed, 8 Dec 2021 21:04:32 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] u-boot: remove "virtual" keyword in
 dependency
Message-ID: <20211209020432.GC4676@localhost>
References: <20211208202914.3860-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211208202914.3860-1-twoerner@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Dec 2021 02:04:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55529

On Wed 2021-12-08 @ 03:29:14 PM, Trevor Woerner wrote:
> The latest trusted-firmware-a recipe in meta-arm no longer considers
> trusted-firmware-a to have potentially multiple providers.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  recipes-bsp/u-boot/u-boot%.bbappend | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied to meta-rockchip (with Khem's SoB added) master.

