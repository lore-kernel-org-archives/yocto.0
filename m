Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BC7C433EF
	for <webhook@archiver.kernel.org>; Tue, 22 Feb 2022 14:16:09 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
 [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web12.13023.1645539368574359887
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 06:16:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=S6vGQheq;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id a1so1203572qvl.6
        for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 06:16:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=o19sBg5X7J3GmXa2dsX3ZYWptcShVs/ir7slvtqSGGI=;
        b=S6vGQheqlP2PLCabVuc6YaOj4FFsMsJeqzdlltQqKEi7osXsTqeDwI+EBeRNQinkMF
         gT7xK/CHjXU4RDAuAhwz/yWZ4VgQ+bJnMd8jk8Waf/dUSwnUJ0hNHFBvGXJPO4zeuTn7
         1Qpe8Nupzfhk0FQJCSQOwkC8D89MNEE6DXwVtC1DbanhbGhyqXjvayBu0yD9Dki8EiIo
         PtnuWWSw1zIg+a9TRTpQaRzBPHEwPHyfzZEuGWgT6wlqTEUSwu/+l14m/4hAVVFOoD4g
         Gpc+Emo+j1WGjW10Ppk2IbtIKAph6h38rfP29JdV84MLQKTV82MjGQTV4qS+dlf+hryI
         r9Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=o19sBg5X7J3GmXa2dsX3ZYWptcShVs/ir7slvtqSGGI=;
        b=j43I2srvBppOMN51ny0ZbQBy7JBrm+eV2GjBEeUZo/YVsXN4J/NaFL/FceJOWYQwrR
         1F5lUu0DBxZqkAzPBZqIySSp6h9dRulSJwpk/C3Y74B9hnsbqVi8R6UoTn4BMznO9ZA/
         93eHpQ/w0WEj6jPGjjy+aoEvRUV5Off0op2XmdyHWNZY5Pr88YyiLxO8btr/lT01sL+5
         Jbogt2JqNCJaryGkvEZcUu2p1hu/mJUOTjyw8S7NwDTlrVjnTeU6pRvjX8KtS+NCwza9
         D340Jp4yFa2jspDrUZw7KrIGm5R6G7YnI0Dhl0Ugdk1n6kXtpV25MMupbLKc1uSGyWhj
         yHnw==
X-Gm-Message-State: AOAM533LfwvbOfM1hubXWJPwdSnzbuWdJj3PWErwbqTpGR8pSM9tvP4t
	4V4hlvCwJbNbzX2XNTd/0tw=
X-Google-Smtp-Source: 
 ABdhPJz4Zgws9QioQZ6OpYLwSmcbiXpdkkVrXsuTpkx57JDNqGj0GA/3MMO0XH/gkEVFSbH6z0Iizg==
X-Received: by 2002:ac8:5c86:0:b0:2de:54b1:2631 with SMTP id
 r6-20020ac85c86000000b002de54b12631mr1876689qta.466.1645539367339;
        Tue, 22 Feb 2022 06:16:07 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 v12sm28782770qkl.74.2022.02.22.06.16.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Feb 2022 06:16:06 -0800 (PST)
Date: Tue, 22 Feb 2022 09:16:04 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] layers: Bump to use kirkstone
Message-ID: <20220222141604.GA40656@localhost>
References: <20220222022847.1392656-1-raj.khem@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220222022847.1392656-1-raj.khem@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Feb 2022 14:16:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56239

On Mon 2022-02-21 @ 06:28:47 PM, Khem Raj wrote:
> its not going to be backward ABI compatible with honister due to variable renaming.
> 
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  conf/layer.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to meta-rockchip master and kirkstone.
Thanks!

