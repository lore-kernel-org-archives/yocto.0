Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAF4BC5478C
	for <webhook@archiver.kernel.org>; Mon, 26 Feb 2024 15:30:20 +0000 (UTC)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
 by mx.groups.io with SMTP id smtpd.web11.22988.1708961416058965735
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Feb 2024 07:30:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OUMiWWsg;
 spf=pass (domain: gmail.com, ip: 209.85.167.178, mailfrom: twoerner@gmail.com)
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-3bbbc6bcc78so2471009b6e.1
        for <yocto@lists.yoctoproject.org>; Mon, 26 Feb 2024 07:30:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708961414; x=1709566214; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TemwTrq9YQ1FLh4LCe/gTg3P6pAhLZXTXohqNT9a+1s=;
        b=OUMiWWsgGr21VYCDzI/i/40Bkpb2EeIl7D75f17dx3NAYVFkc4+1TxAMMHkIXxsnvP
         /DbAfHJdP78L3Oh5lEk4jSeQMj6jEL2oJ7+wERhoTvorPaFqzghtAFbzPWa1YMRBSUFz
         Q+WU0rQTRhEQ+2aTi07LcLCHxXh41D5NzIomF8prVMAne93oykUO29AYG4s6Qfu213ty
         koW3v7ReyDQY5hH3Ay8ltY9zZZ6sCXrxpdAvbp8eapNBgX+NIpasKASKK9hGregKjGvD
         zD2b/tfNCNQJxWGecin9XRvcQeFCSOOlDQdSgaM4uy5+v3RS0Dw1UgS/PqJdvlsvsK3h
         +glw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708961414; x=1709566214;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TemwTrq9YQ1FLh4LCe/gTg3P6pAhLZXTXohqNT9a+1s=;
        b=FE2+bOCGosUj27VdfcgpIG3xMda0uxZcr6Nceh+pCRm1ySH//TWlURqbH/qxXhKTxB
         QIKDIo+qnlOHFj2i+EhalvPpZryXKJceAAn5m41fZRbJRJEwJpP2CO+OWu9O6WN98WSu
         CZ9zHgVfY1oPz6ObWt9AapLwv+Ap56J5rLuaL2LRahh729C348UK0uIRda1LuYqG0kvb
         voI+hyo4VnNcqGNv0P0J5+KQCP0EYbI0IqiQWmFgy3qpHx4yL89EJ62xxCeXxf4b37yk
         7kn4pnRjXpv4f4959aD9gmpp3tjx9c8/knjE7BL+R6FVcxAWmy1FBvbC6ez6ZAOHZwWm
         30og==
X-Gm-Message-State: AOJu0Yzaa/aMnrgQFy60/za1lfugDgBr2pjiuupwRFfIuWIpkIsEt+RR
	Gsys0SHHa0u1ifuUa6BTVufDT1O418TEcU271jm9UKkdC9Xk2koxqS7jzeex
X-Google-Smtp-Source: AGHT+IH5u/ogu7tsh04cBkZRKDiJKXD0Bob6VR20GIFHaaCzWGTmnWOF1+wTvYG8sMQ/8yhajxK+yg==
X-Received: by 2002:a05:6808:a1c:b0:3c1:4524:43d5 with SMTP id n28-20020a0568080a1c00b003c1452443d5mr7000965oij.46.1708961414155;
        Mon, 26 Feb 2024 07:30:14 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id nd6-20020a056214420600b0068f2d2f64d1sm3058686qvb.32.2024.02.26.07.30.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 07:30:13 -0800 (PST)
Date: Mon, 26 Feb 2024 10:30:11 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: Re: [yocto] [meta-rockchip][PATCH v4 1/5] rockchip.wks: specify
 offsets in sectors
Message-ID: <20240226153011.GA32880@localhost>
References: <17B63E2BB0CA4641.14827@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <17B63E2BB0CA4641.14827@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Feb 2024 15:30:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62608

On Thu 2024-02-22 @ 12:04:11 PM, Trevor Woerner via lists.yoctoproject.org wrote:
> In WIC, size arguments can be optionally specified using one of a variety
> of suffixes (e.g. K, M, G, etc.) thanks to sizetype(). One such suffix being
> "s/S" for handling sector sizes which are assumed to be 512 bytes, rather than
> the other size suffixes which are multiples of 1024 bytes.
> 
> Using the s/S sizetype allows the definition to match the documentation.
> Unfortunately we can not use the s/S suffix for --fixed-size.
> 
> Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
> changes in v4:
> - add Quentin's tag
> 
> changes in v3:
> - new
> ---
>  wic/rockchip.wks | 15 +++++++--------
>  1 file changed, 7 insertions(+), 8 deletions(-)

Applied to meta-rockchip, master branch.

