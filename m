Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D2F1C77B7A
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 07:33:48 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web10.44096.1684308824321730580
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 00:33:44 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=ZO++ZTGx;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-307a8386946so229665f8f.2
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 00:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1684308823; x=1686900823;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XRGBoAu7dCuQWuMJc/Y+7tpdcBnKlIWmxenDNRv3O5o=;
        b=ZO++ZTGxTkk90Pr9LlSzz8bzeuKM/1lsXDDC1W2NxY8l2IhlZ0KUsJ3Y+9VHEqmy8S
         LR2mn2y298Gz0IgrhuMc/CJJ4P3x5XE1151Sg6kSemdDJbRH5v9MICqmiilPOF00IXSt
         aoppV6yzt3KWfHIAOcnyKqIzYPjxr0IzqpFgE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684308823; x=1686900823;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XRGBoAu7dCuQWuMJc/Y+7tpdcBnKlIWmxenDNRv3O5o=;
        b=WamX1pNo+aplxX2bEiWs/uIW4DfmaRV15KDo9ztaHnamvIN5xXZvl4kcUOi5fMom4Z
         NvQ+iE940/lVyth/Gz8LfMicqNlNEwlfIx/Up4EpusMv2Xb1bc4lDwGs+hpScEKF51sX
         9QEz0L4SQNxPm7IEV/0EOkyHnGFyLUYOSvoPTs3rzEP4ly4z5i8dBsEKhcTzfthvpdAa
         G78UtGb3+HgUznMcmrDF0dvxSFSun++oRRXsrvNdV7oth3l0EROexF3qVgq12lgTJ3Zm
         izv/e3X73YYHEw8f0gttDQ/48cMca/ZLCavIANU/XImsmn+37Xrnnxt6KCG3hrW3xc22
         kZOg==
X-Gm-Message-State: AC+VfDwvWdGQZVu00wMWnV7B0aa+bM/DHCiZFBbsb+XPjxmOzrmNeQI1
	gehxSuMeCsvvCR/nNVXQEhQ6gA==
X-Google-Smtp-Source: ACHHUZ6sIuLgVHjWFABE9FTIMfz0/azZCxfchhRomFdOj3uJhSiOEcYtBWSkPobuho/lyd8vOvLIZw==
X-Received: by 2002:a5d:51c4:0:b0:306:34f6:de8a with SMTP id n4-20020a5d51c4000000b0030634f6de8amr28913146wrv.71.1684308822685;
        Wed, 17 May 2023 00:33:42 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:4728:4ae8:88ad:4efb? ([2001:8b0:aba:5f3c:4728:4ae8:88ad:4efb])
        by smtp.gmail.com with ESMTPSA id r4-20020a056000014400b0030732d6e104sm1798116wrx.105.2023.05.17.00.33.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 00:33:42 -0700 (PDT)
Message-ID: <1809ae2d13e23a3d994c3fd4f167e3692a5cc91a.camel@linuxfoundation.org>
Subject: Re: [yocto] [meta-darwin][PATCH 1/2] Add new maintainers
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: ecordonnier@snap.com, yocto@lists.yoctoproject.org
Date: Wed, 17 May 2023 08:33:41 +0100
In-Reply-To: <20230517061526.3383173-1-ecordonnier@snap.com>
References: <20230517061526.3383173-1-ecordonnier@snap.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 07:33:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60040

On Wed, 2023-05-17 at 08:15 +0200, Etienne Cordonnier via
lists.yoctoproject.org wrote:
> From: Etienne Cordonnier <ecordonnier@snap.com>
>=20
> Signed-off-by: Etienne Cordonnier <ecordonnier@snap.com>
> ---
>  README | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/README b/README
> index a58ab39..e4ac9bc 100644
> --- a/README
> +++ b/README
> @@ -48,7 +48,10 @@ This layer depends on:
>   layers: meta-clang
>   branch: kirkstone
> =20
> -Layer Maintainer: Richard Purdie <richard.purdie@linuxfoundation.org>
> +Layer Maintainers: Richard Purdie <richard.purdie@linuxfoundation.org>
> +                   Dominik Schnitzer <dominik@snap.com>
> +                   Etienne Cordonnier <ecordonnier@snap.com>
> +
> =20
>  Please send changes to the yocto mailing list with [meta-darwin] in the =
subject line,
>  cc'ing the maintainer.

Thanks, I've merged these. It is great to see the layer being used!

Cheers,

Richard

