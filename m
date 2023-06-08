Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59CA9C7EE25
	for <webhook@archiver.kernel.org>; Thu,  8 Jun 2023 09:15:18 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web11.4757.1686215708027263219
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Jun 2023 02:15:08 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=AKx7yiL1;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-30c4775d05bso241593f8f.2
        for <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 02:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1686215706; x=1688807706;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Vzm3+MSSGzVqV6goC1rryTGlWqTNZtrouI9/XfYOzko=;
        b=AKx7yiL1II4xorSn7sFFseA+Ozc6HC3GtRVpYGiDQMDpimh97q+/hZ8GbD0Y8gSwvL
         EIhNe+IojftOaN/TjZ+wbnJc/9ZHILfPkgm1VzzygXc8JRXpmyX4RvOVfoAflnseltE9
         WdbHtoCO7yBAHV8Hmgg5jpL4tKUrx5tVCS9tg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686215706; x=1688807706;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vzm3+MSSGzVqV6goC1rryTGlWqTNZtrouI9/XfYOzko=;
        b=V4+LKmOJXBDwL1klnLew3rMBJUL0FyTPyjcnrQ5wD9Gq9XOIHr9NilVdOg3VAT4fRb
         GVDfbT31apQIpX7+OWgTS6jsicTu3EnLAPTxpHdGfUmBFy2KDbGcbRAsdDbvCooyLZMK
         hn5N/leeNgK1nwsmsuLo5PrEVNeNC8X0nRytUw4bEcuXuIj+wUJdDA3PcMfpSD5AVPTt
         dxV5Jglx0H5/ZfJUtIurC9EbfHNTyqWYQ7m1wyNrmniHw3cGTIe9slTB3N20knqkI+Xc
         2YRDJU2bslihqcQbtV52lS6NxZuBstvhLcuwhHPDPVGBMwXXdJV4eCpKhjpQVupZJnwv
         Y83w==
X-Gm-Message-State: AC+VfDweivcMmoRio8DX5Ut5crvXqf0svo0SYlUFAVUKwuvxPHB+pHYf
	V+CC/PmeUiUMaijdXeHmCoRZog==
X-Google-Smtp-Source: ACHHUZ4gSvqswZ3hmXkZWkjIyigVzPGDz//nyF08QyokhpIZN7g09qJqvV8wMiGxWwO9s/gDxv9S1Q==
X-Received: by 2002:a5d:500a:0:b0:30a:d083:d22d with SMTP id e10-20020a5d500a000000b0030ad083d22dmr5633963wrt.24.1686215706464;
        Thu, 08 Jun 2023 02:15:06 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:316b:ce77:4e88:2f02? ([2001:8b0:aba:5f3c:316b:ce77:4e88:2f02])
        by smtp.gmail.com with ESMTPSA id t17-20020a5d42d1000000b0030aea925fbesm963347wrr.50.2023.06.08.02.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 02:15:06 -0700 (PDT)
Message-ID: <e9a6311379b58f539a9a0d5496d4554796346de2.camel@linuxfoundation.org>
Subject: Re: [yocto] [meta-mingw] [PATCH] Ignore WINDRES from hash
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Samuli Piippo <samuli.piippo@gmail.com>, yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Date: Thu, 08 Jun 2023 10:15:04 +0100
In-Reply-To: <20230608070308.502205-1-samuli.piippo@qt.io>
References: <20230608070308.502205-1-samuli.piippo@qt.io>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 09:15:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60225

On Thu, 2023-06-08 at 07:03 +0000, Samuli Piippo wrote:
> Amend 6badedaa3e4df5b00b5aa992c5c174e315b09972 and add WINDRES
> to be ignored from hash, otherwise it contaminates sstate cache
> for every recipe.
>=20
> Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
> ---
>  conf/machine-sdk/include/mingw32-common.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-s=
dk/include/mingw32-common.inc
> index 9ec6e07..f2806d8 100644
> --- a/conf/machine-sdk/include/mingw32-common.inc
> +++ b/conf/machine-sdk/include/mingw32-common.inc
> @@ -46,7 +46,7 @@ export WINDMC
>  export WINDRES
>  export RC
> =20
> -BB_BASEHASH_IGNORE_VARS:append =3D " WINDRES RC"
> +BB_BASEHASH_IGNORE_VARS:append =3D " WINDRES RC WINDRES"

Isn't WINDRES already listed there?

Cheers,

Richard

