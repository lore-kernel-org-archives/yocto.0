Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.5 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	SPF_HELO_NONE,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8692C433EF
	for <webhook@archiver.kernel.org>; Fri, 24 Sep 2021 13:10:45 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web09.7939.1632489044889701498
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Sep 2021 06:10:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lJ8LwJkw;
 spf=pass (domain: gmail.com, ip: 209.85.160.180,
 mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f180.google.com with SMTP id r16so9281268qtw.11
        for <yocto@lists.yoctoproject.org>;
 Fri, 24 Sep 2021 06:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Nd/Jo1nYWIFLfy1pS5xZ+HluFOaZAc7q/ucD/tAjMY8=;
        b=lJ8LwJkwGao0WQUU4AeoqA87nEdOqtM2TJlemQNE6/bNRxhJ5yg0ncDIn+JPwkGbIb
         zE9IzXS8WghPbtvvo8wLyiUnh4oYJLtPzFadOpPVQQnEXehlAKx4tzkofGSkutF7f1fj
         lrd41t1/mbbnP5xJTepgcjm1gi6W8PH6Ci03rra5uyEZ6Q+c4QCd4P/wzBhlT662HSUP
         Eyyq3BRRpFr/3yNMAV6SeiPP2c7cKVjcaca7VvYSbNvjXIPGCPbvyFLtbwmRkz+AuPzt
         2ZhvBasAuP9OkeB+jfNoFh59DrwQ0WdV/x4kGyXB8qKPrVCYyVmwtehbf+adfI92Zy6h
         6Nrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Nd/Jo1nYWIFLfy1pS5xZ+HluFOaZAc7q/ucD/tAjMY8=;
        b=WDP1gzLA3DeS1tLqKYPxBstFd7Coss5tnMGN3hMw1ASd3IYL1GejrnQD52fZzw5IiW
         x3gU8nhGNZPRJPg2e1QP6KsuKhPQBqzpOwblSqzKd/leWBTNgm9XsfzKQik7w57umhs9
         OGDnAneBZm0zb1NjNRcMASaDQLEl0a7CB/pzZbGZ6U3xqk7pyh2Sdn10XcyW0SVrb1I5
         uQniwprgfTGshII0g8oGXWkWA4I9gM2/K3x+FcTDOAwkVK/cXAFaMFaVGykm4XZmyHQt
         /zNSaXXmf4fDWDxDfBUe+NLfpNkesUmCT4aSAHHgch3zKPRPMzIHYo7yoTYWWwonTNWZ
         lhoQ==
X-Gm-Message-State: AOAM533tOUZzPj4HJtrmvzKfFNUlQsSESImz4KbZ9rLXc/8fmNFdgVrE
	VwESHNs+YtkfgGEpJhg/2RE=
X-Google-Smtp-Source: 
 ABdhPJzB7gyBspFLXOF7bXMgkg8aNQm+PSuc7tcymDKbAcdlBI3GsSRBItqbx6vx7J69KZQbaSrIcw==
X-Received: by 2002:a05:622a:181:: with SMTP id
 s1mr3609658qtw.47.1632489044017;
        Fri, 24 Sep 2021 06:10:44 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 q12sm6212301qkc.104.2021.09.24.06.10.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Sep 2021 06:10:43 -0700 (PDT)
Date: Fri, 24 Sep 2021 09:10:41 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Markus Volk <f_l_k@t-online.de>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto][meta-rockchip][PATCH v2 2/2] rockchip-wic.inc: dont let
 wic edit fstab by default
Message-ID: <20210924131041.GB29617@localhost>
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
 <yocto@lists.yoctoproject.org>; Fri, 24 Sep 2021 13:10:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54844

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

Thanks for the patch and the SoB line. I'm going to apply this patch, but I'm
going to amend the commit message to capture some of the conversation we've
had. There's a chance we'll want to know "why" at some point in the future ;-)

