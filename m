Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14FC4C4332F
	for <webhook@archiver.kernel.org>; Mon, 21 Nov 2022 19:30:48 +0000 (UTC)
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
 by mx.groups.io with SMTP id smtpd.web11.3585.1669059042565189826
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Nov 2022 11:30:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=dkTpOsJY;
 spf=pass (domain: gmail.com, ip: 209.85.166.48, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f48.google.com with SMTP id p141so9365249iod.6
        for <yocto@lists.yoctoproject.org>; Mon, 21 Nov 2022 11:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4GGzJntFke5h6szyan1DZex+X23i9CwnjuQtyAc19kU=;
        b=dkTpOsJYzjqqkM09Sd4xCgMnQ/XAX8V39QPay0ViHDZREzejv2LxOJa7Nlz2XJjL9B
         73Go9w/1ArVpFVC75hTQeyCcTxUu2WGKwwJ1ckGB6wJ5AXDKJaC6zc2dbbp1SJD5us1s
         uLNoCIyaNCEjcf26pPVgE8ZKNEN+RhlSQLWb5fy4u9w7KlALK0gfyHgdcACJ6t5HASc7
         2BSEb0xyBpxuCPWHtAWW1K4Eka32Q62XHf1V4+Q2K8Ekpl4ae9/Zk9LVJX91vUBTGvrh
         lx6v8OYCCOQjGtJx8CQBb77zPWULUhBmInYoJZOL7P01lZhGog3cSK3PZ5eqE/q18Xyc
         HRLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4GGzJntFke5h6szyan1DZex+X23i9CwnjuQtyAc19kU=;
        b=wfITcawwx8EmQdydOZuFvbeQz7K7t2iGCctIt6ugsAe0a0n+DNr0rajWDGI2i29kG8
         d6PDpfiwPK4aINcLF1RV0x109rUTykIUwES7GKxFLtn3kNhJUApYD95fuiSy860F9Jg9
         jzutGPAB5W/RcF7RBBteke+ZOjx42cn/2J0ynyQCH8sCyrZJ65dXiawU0uHbXZ14i0at
         AgDAWtUYGxvUF0J2NDLN8KE4d2dN48o2x2onKM4O7lZx61ShpSe0cl+Ws3EH6uigJ6GR
         oPryGwtYTSoTeReRbuh6tIwTNqlIQA3s22oX6ZYg84rPO7E/UtTu5BTA36RNQETklo2Q
         CgaQ==
X-Gm-Message-State: ANoB5pniNs2jLL+xPldF8Gjz8gQ6zJmI/SxIU/1ZxzI94XCDOtbsshED
	6yZt+0sPQFoDWP25K9+8NjI=
X-Google-Smtp-Source: AA0mqf6/ExkWfqbTfRFd/TS5EhmDg4kKk+v3OqPQlwVsMlSCHbTmeXTXdk+ID6Yucp59qYgTaBZTJg==
X-Received: by 2002:a02:2710:0:b0:36c:c1d4:d3e0 with SMTP id g16-20020a022710000000b0036cc1d4d3e0mr9224507jaa.181.1669059041784;
        Mon, 21 Nov 2022 11:30:41 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id co24-20020a0566383e1800b00363aec42c13sm4617411jab.65.2022.11.21.11.30.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 11:30:41 -0800 (PST)
Date: Mon, 21 Nov 2022 14:30:39 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <foss+yocto@0leil.net>
Cc: yocto@lists.yoctoproject.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Markus Volk <f_l_k@t-online.de>
Subject: Re: [PATCH][meta-rockchip][master][kirkstone][honister]
 rockchip.wic.inc: let wic update fstab again
Message-ID: <20221121193039.GA7443@localhost>
References: <20221109-wic-fstab-v1-0-e5523e743985@theobroma-systems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20221109-wic-fstab-v1-0-e5523e743985@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Nov 2022 19:30:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58608

On Wed 2022-11-09 @ 02:24:05 PM, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> The commit ed3a97f7b2e4 ("rockchip-wic.inc: don't let wic edit fstab")
> removing this ability was introduced to fix an issue in the wic tool in
> OE-Core in which wic partitions whose "mountpoint" is not a valid path
> are still added to fstab.
> This was eventually fixed in OE-Core in commit 7aa678ce804c
> ("wic:direct.py: ignore invalid mountpoints during fstab update") which
> is part of release Honister (3.4) and later.
> 
> Therefore, it should be safe to now let wic update fstab again for
> partitions with a valid mountpoint path. The benefit being that the wic
> partitions with a mountpoint are now automounted at boot.
> 
> Cc: Quentin Schulz <foss+yocto@0leil.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
> restore fstab update by wic
> 
> Since wic now correctly handles partitions without a valid mountpoint path and
> does not add them to fstab, we can let wic update fstab again so let's do it.
> 
> This makes partition automounting work again.
> 
> This was tested on a Kirkstone (4.0.4) poky-based core-image-minimal on a
> PX30-uQ7 (Ringneck) SoM on Haikou devkit
> (https://git.theobroma-systems.com/yocto-layers/meta-theobroma-systems-bsp.git/)
> 
> This should be safe to backport to kirkstone and honister too.
> 
> Cc: Markus Volk <f_l_k@t-online.de>
> Cc: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/include/rockchip-wic.inc | 3 ---
>  1 file changed, 3 deletions(-)

Applied to meta-rockchip master, kirkstone, and honister.
Thanks!

