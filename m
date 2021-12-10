Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85955C433EF
	for <webhook@archiver.kernel.org>; Fri, 10 Dec 2021 05:40:24 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
 [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web10.3583.1639114823546743233
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Dec 2021 21:40:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Uw0fHkfX;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id a24so7164289qvb.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 09 Dec 2021 21:40:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ENZXzrGZJmvYYOuoiX/2SIU+SxMKyiS/3IwQvZJ/2q8=;
        b=Uw0fHkfX5fyghqIitng2nPSPDz1yn2loWqThbjqYEIXVAMXg2yTeXba8aTgHc3cMkC
         ONTz59XqJuoerlya4r6G6svChlbZmMW7ykdr/sm4OYTI3lr6v/mTRE4CmyuWBRmtjXAM
         ABuUQwA+qf81MkxQPDWBj/3ZDiiIfx0dEQuawpWumxr9xZtfuXh7BOGoA+cxU92N7ZO2
         e2AY2QARJ8ZZvNG870M2iDFJGzuQ01drJXnp8goKkEoeQZfbXV9lEEv6xdc8TWG1JBb4
         5/NS+zTJAypXkoJd+nrS0MM1zpnCmy+O8WEDAiTG691NkieVRNpA3zbmGApary5uFwgU
         r+pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ENZXzrGZJmvYYOuoiX/2SIU+SxMKyiS/3IwQvZJ/2q8=;
        b=hnFQ5KPNijbQXG5SvdVQ7ptK/9y2JgK4atD7iHGlj3gM0IkmrDpLKorU4N1lwyRrr5
         fKxTX9FCKkqCWBqgfwYJ+ovcspsOJcaBhXO9mlDkQVuAMbw3XVc6d/rcbJKPhryPr6QP
         cH4OqCsPgM1oBb7hnBqpHbKCkjeW8gVpgNLrW52KFDSGWWno+6T71OkDy4SC1zNt2LkI
         mPh1sSTWPon9AjqI7X+ZP9lElAE4vyEljCEG3oxdtQOCnwhZMm8UvNHtZgmXDPJzb/s9
         crHXh+UrValApvhwKS0Et3MMpEx9YNTSgKp0NrCN8slXvS0/oD7RhXFuId9Kkqwfwk+e
         1J/w==
X-Gm-Message-State: AOAM530pERLEMg4seb149uacTp7vu3lSBS0Ha6d67VZ7dqgMqYYF1bBo
	18uBbbj1dAZ9IBkSBCj+eLw=
X-Google-Smtp-Source: 
 ABdhPJyz52iaAYCsfGgH9JWYCEimxZXuehwoayBhR6rKzlmtXYel3sPXQZyFh4mc0RtPVX2UbY58rw==
X-Received: by 2002:a05:6214:2308:: with SMTP id
 gc8mr22906771qvb.12.1639114822754;
        Thu, 09 Dec 2021 21:40:22 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 b11sm1372687qtx.85.2021.12.09.21.40.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Dec 2021 21:40:22 -0800 (PST)
Date: Fri, 10 Dec 2021 00:40:20 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org, Jon Mason <jon.mason@arm.com>,
	Ross Burton <ross.burton@arm.com>
Subject: Re: [meta-rockchip][PATCH] trusted-firmware-a: Pin to use gcc for now
Message-ID: <20211210054019.GA40862@localhost>
References: <20211210011458.1664766-1-raj.khem@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211210011458.1664766-1-raj.khem@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Dec 2021 05:40:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55545

On Thu 2021-12-09 @ 05:14:58 PM, Khem Raj wrote:
> tf-a built with clang is bloated for rk3399 SOCs with 2.6+
> it needs looking into, until then use gcc always to build it
> 
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> Cc: Jon Mason <jon.mason@arm.com>
> Cc: Ross Burton <ross.burton@arm.com>
> ---
>  .../trusted-firmware-a/trusted-firmware-a_%.bbappend       | 7 +++++++
>  1 file changed, 7 insertions(+)

Applied to meta-rockchip master. Thanks!

