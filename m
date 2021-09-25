Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8268BC433EF
	for <webhook@archiver.kernel.org>; Sat, 25 Sep 2021 15:03:56 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
 [209.85.222.180])
 by mx.groups.io with SMTP id smtpd.web10.7772.1632582235541753690
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Sep 2021 08:03:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=pF5oYEP8;
 spf=pass (domain: gmail.com, ip: 209.85.222.180,
 mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f180.google.com with SMTP id q125so17034759qkd.12
        for <yocto@lists.yoctoproject.org>;
 Sat, 25 Sep 2021 08:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=W5cBn5+txyrgNtjF9N1ZRhBcloHGOZEa4+OPoG2xrCk=;
        b=pF5oYEP8peaOpyIPKojj1duHLpkJ3A0/G86i33VLzFPIvLMyyv0kNCYDwK98fqyCKM
         CT6fhNCWtBvkllFSUsGF+H/KEm/FjpRkaH2yyqfzTVY7M/t4uQyU9nH8SY67bg+zl9yk
         cNA9UhCJemDA1tpSwAwsOs5r4YiyihQco+nxB0lYWNO6a8VhPeblw0vH0aXTJQJyQABp
         lmSE6iquC0bdaCXgQo2GMJQ5GvTeMMWZaBYkxn/2UF9/DnIZ91SMHy3cbsUuwjld44Kq
         RIWH/G6d1o8SpbvNON/QFrW+yvn73CCEWnR97YfRxgoutd0wEHkAB6UomodtI8tP8kUj
         hkDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=W5cBn5+txyrgNtjF9N1ZRhBcloHGOZEa4+OPoG2xrCk=;
        b=6MrNsGnskx66sCIEpsoOx6tgwcD4UIv6TbDsczkCI71yLblXhxEZK/XkSehrB8FxxE
         bgOT1K52P+xguCO5C1xffUGaDxzXeK7ULMRm7kjPxTu+EPdJo0arfP3homm26yKqe7vb
         eVsBjN+VpCVCXWvzn2PO7k7Un8CRfYVTz7KWoP42hw/2dxlDUfuL2htZGeWUlYKIQHpA
         7gpYdchSKuBjhgxIV9ivvGLNkCAuW+bY70Cydl4xagwIBQILg5JJKc5jbxFhQTzFtmPJ
         GMF52qXsOT0+LSUnAvP6hDDVVZc8DdfuyPbTyo3hakzzOIOySUcWcDUllSdxDaoQBvw6
         k3Yw==
X-Gm-Message-State: AOAM530n0WgtSDLeinrY7P3YP1PaMN+XLFxpEWtBNtxdGa2S5R3SlQHc
	N6U0AKWExJE6VYfjnIFAOqI=
X-Google-Smtp-Source: 
 ABdhPJw2ge36SFOcHFSVpatgSEr4V2HhjZJ/2KJUFgUWNY24tsMbGOJW6CIsdBwrlISuJU17e3t4Ag==
X-Received: by 2002:a05:620a:254c:: with SMTP id
 s12mr16368120qko.112.1632582234563;
        Sat, 25 Sep 2021 08:03:54 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 g19sm8399468qki.58.2021.09.25.08.03.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Sep 2021 08:03:53 -0700 (PDT)
Date: Sat, 25 Sep 2021 11:03:51 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Markus Volk <f_l_k@t-online.de>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto][meta-rockchip][PATCH v2 2/2] rockchip-wic.inc: dont let
 wic edit fstab by default
Message-ID: <20210925150351.GA13525@localhost>
References: <20210923211759.13676-1-f_l_k@t-online.de>
 <20210923211759.13676-2-f_l_k@t-online.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210923211759.13676-2-f_l_k@t-online.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 25 Sep 2021 15:03:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54850

On Thu 2021-09-23 @ 11:17:59 PM, Markus Volk wrote:
> Signed-off-by: MarkusVolk <f_l_k@t-online.de>
> ---
>  conf/machine/include/rockchip-wic.inc | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
> index 15010a0..30b0d57 100644
> --- a/conf/machine/include/rockchip-wic.inc
> +++ b/conf/machine/include/rockchip-wic.inc
> @@ -26,3 +26,6 @@ WICVARS:append = " \
>  	SPL_BINARY \
>  	UBOOT_SUFFIX \
>  	"
> +
> +# Do not update fstab file while creating wic images
> +WIC_CREATE_EXTRA_ARGS ?= "--no-fstab-update"

Applied to meta-rockchip master (with an updated commit message), thanks!

