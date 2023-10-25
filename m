Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83853C0032E
	for <webhook@archiver.kernel.org>; Wed, 25 Oct 2023 13:43:38 +0000 (UTC)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
 by mx.groups.io with SMTP id smtpd.web11.43926.1698241415095584929
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Oct 2023 06:43:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Y1xAqBmH;
 spf=pass (domain: gmail.com, ip: 209.85.217.41, mailfrom: twoerner@gmail.com)
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-457c82cd837so1971257137.2
        for <yocto@lists.yoctoproject.org>; Wed, 25 Oct 2023 06:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698241414; x=1698846214; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fAv8KRCXjjnwHDw0XNjPdBeNTdSKoZsskqeULgwBCac=;
        b=Y1xAqBmH0yWAkpA/8FMjrLURG9wFUrDkwtYbcfVmTWj7TqA8k7rG5QV51SGFNnd/BL
         yxjvKHzusGjzBQB8vMS3aB/ovHoNIp28fRKSsWw0mzpX5+kfW4FhNXmW/zPqmjZTN35I
         RGJjLKElsOtNxgoZ7AkCe7qE7Im97Xss4pWcamyGuoeJVyTDJ2y4DosQFUCUq0ceIG33
         eUqKFUDQQX0MtUs9HlZ517fBL8pQR3bbMOKFIMrT5FUaxFPjjqBUyxUKcff8tSBed53l
         PK+BWDefNhoQ56a2cV+qx/7tx++A6JBnd0fISbs8X30IAO6/miIFC4mjgLsqCJTFWrVV
         R9SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698241414; x=1698846214;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fAv8KRCXjjnwHDw0XNjPdBeNTdSKoZsskqeULgwBCac=;
        b=mEF/vJQW06LXdtkd4U8TyETDZGAjwho1Boq7AfvSfm1F2GHAYIQZrKE51mYbOhikCP
         HSawRI+SmH+I6CaaFMnwdUiAQrSF08VvE6pe/AM/ozA4T+1Ct3OoCVSof5RjU/oyLDkQ
         3i7n5CectS88voV0vpmNwiCwjYH5T0lN6QifysSpK6yRusrnDALjNLr6aFVXSnOStspG
         weKXOvfIIxlIOnjcjlFuKFz59PACX9uuZDH3IaId6MjxLD4T6qCObGtRM/iyVn8edalH
         EStGHCIypUwVich7Gapqgi/83UW7fhlclbQfun/k0xFkRnToGY2bIoKyknK8jIC6fqmm
         lRyg==
X-Gm-Message-State: AOJu0YzBhjdXjiiWIlj+lZ6iXgQwjsjWUqg7BctBoag1M6FQwF8p5RqY
	goJHBxPrpTCnANJaXz4ofBicRLNDZDs=
X-Google-Smtp-Source: AGHT+IEv4sTdVp7Erp3l27zpUoCFKk/Z4YtHzE9fELGGrViOkiDslS/k9EUsg0zyXJeJHy1wcUDBmg==
X-Received: by 2002:a67:e192:0:b0:457:c1d2:a0ab with SMTP id e18-20020a67e192000000b00457c1d2a0abmr13837882vsl.18.1698241414052;
        Wed, 25 Oct 2023 06:43:34 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id lg8-20020a056214548800b0066d05ed3778sm4436982qvb.56.2023.10.25.06.43.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 06:43:33 -0700 (PDT)
Date: Wed, 25 Oct 2023 09:43:31 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <foss@0leil.net>
Cc: yocto@lists.yoctoproject.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Quentin Schulz <foss+yocto@0leil.net>
Subject: Re: [yocto] [meta-rockchip][kirkstone][PATCH] bsp: rkbin: fix
 default COMPATIBLE_MACHINE matching all
Message-ID: <20231025134331.GB9170@localhost>
References: <20231016112233.221066-1-foss+yocto@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231016112233.221066-1-foss+yocto@0leil.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Oct 2023 13:43:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61480

On Mon 2023-10-16 @ 01:22:33 PM, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> The goal of the default COMPATIBLE_MACHINE was to not allow
> rockchip-rkbin to be even parsed if a MACHINE isn't part of the
> COMPATIBLE_MACHINE.
> 
> However, COMPATIBLE_MACHINE is a regexp checked using Python's re module
> approximately like:
> """
> if re.match(COMPATIBLE_MACHINE, MACHINE):
> 	return True
> """
> 
> and re.match() returns a match whatever MACHINE is if COMPATIBLE_MACHINE
> is the empty string.
> 
> Therefore, let's change it to `^$` which only matches the empty string,
> which shouldn't be possible for anything in MACHINEOVERRIDES, and if it
> is there are probably bigger problems than parsing rockchip-rkbin.
> 
> Fixes: 3c7f532c2e25 ("rk3588(s): add")
> Cc: Quentin Schulz <foss+yocto@0leil.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
>  recipes-bsp/rkbin/rockchip-rkbin_git.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to meta-rockchip, kirkstone branch. Thanks!

