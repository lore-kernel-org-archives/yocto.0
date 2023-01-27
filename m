Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 477D4C54EAA
	for <webhook@archiver.kernel.org>; Fri, 27 Jan 2023 16:14:21 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web11.106085.1674836051467974817
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Jan 2023 08:14:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=hIPycf6t;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id h16so5381051wrz.12
        for <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 08:14:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nx9mF1dXu0w3PIFFN830aywQ+zky4s/rlXpj8W6cR9M=;
        b=hIPycf6t6JMNu9WQbKD3UdNO+FH1QkeGO5jrgL2mm2dbXfoYACgS4TnVXbwf2Sf/8v
         aOzijKomOEd91TPSEbAYF+hSOoV8Jvll8lpY0ENCVrFlhNYCO+Gg3xGeP56keI2Y47ns
         R8l3AdSKz/hCeumvMTmqaVGIzaXhMK3z2O/uQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nx9mF1dXu0w3PIFFN830aywQ+zky4s/rlXpj8W6cR9M=;
        b=vuZ7Xamim4QkTtCciugiOA3wuVtjWavrJxbM5LvkBU8pkBTUUE72hWK0jcVddUxzRt
         Ans8mDhzeeBc/V64uSsdOCTgb/UJDwULESFimWtf4A9ByxAXUs8vWlui1m5TmDN/XaJb
         wf8I+0IviKIszu3B+a1pkLB971NHeRGOcp668JYLrFAHGw+AZk/RAhkd+RXtHtvg3E0z
         tK7B+a66QiPYkhszpm1b2+B2xrUllKGyi7boIM/k3GqeO5GbdeNPZITiGwySx2cm8LMm
         dcLKMseYvieboeN9Za/Ky2zZBWlLcSPrNTBPG4cSlQL0naxYeTZLL2CMOZnomRo5b3oX
         wfJg==
X-Gm-Message-State: AO0yUKW8gZhE/XQ39ylf6Aj5CIpDB3h9mWeTNc425CrzLEo3H6EZhSPa
	YgFGpq7fMu13OwdRWRt/e4iemg==
X-Google-Smtp-Source: AK7set87il1SXe/dtjEQgHvuJ/P/Hd0FJYul8+cIM19rytorwQovPBnTXoT5JN/FY+UFclzmbFUhIw==
X-Received: by 2002:a5d:60c4:0:b0:2bf:bb44:2d27 with SMTP id x4-20020a5d60c4000000b002bfbb442d27mr8539867wrt.4.1674836049775;
        Fri, 27 Jan 2023 08:14:09 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:3876:ca46:43a6:4b49? ([2001:8b0:aba:5f3c:3876:ca46:43a6:4b49])
        by smtp.gmail.com with ESMTPSA id z12-20020adff74c000000b00291f1a5ced6sm4436065wrp.53.2023.01.27.08.14.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 08:14:09 -0800 (PST)
Message-ID: <6b728be4c46a8cf1c757bf766732ce18683f5ce7.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH] samhain: rework due to changed oe cache handling
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Max Krummenacher <max.oss.09@gmail.com>, yocto@lists.yoctoproject.org
Cc: Max Krummenacher <max.krummenacher@toradex.com>, Martin Jansa
	 <martin.jansa@gmail.com>
Date: Fri, 27 Jan 2023 16:14:08 +0000
In-Reply-To: <20230127123047.207925-1-max.oss.09@gmail.com>
References: <20230127123047.207925-1-max.oss.09@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 16:14:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59085

On Fri, 2023-01-27 at 13:30 +0100, Max Krummenacher wrote:
> From: Max Krummenacher <max.krummenacher@toradex.com>
>=20
> OE-Core changed the cache handling which made the use of ${BPN} fail.
>=20
> > Parsing recipes...WARNING: .../samhain-standalone.bb: Exception during =
build_dependencies for do_configure
> > WARNING: .../samhain-standalone.bb: Error during finalise of .../samhai=
n-standalone.bb
> > ERROR: ExpansionError during parsing .../samhain-standalone.bb
> > Traceback (most recent call last):
> >   File "Var <MODE_NAME>", line 1, in <module>
> > bb.data_smart.ExpansionError: Failure expanding variable MODE_NAME, exp=
ression was ${@d.getVar('BPN').split('-')[1]} which triggered exception Ind=
exError: list index out of range
> > The variable dependency chain for the failure is: MODE_NAME -> SAMHAIN_=
MODE -> do_configure
>=20
> Simplify the setting of MODE_NAME and SAMHAIN_MODE by moving them from
> the inc file to the recipe files where we know their values.
>=20
> Relevant commits to produce the error:
> bitbake:
> ee89ade5 cache/codeparser: Switch to a new BB_CACHEDIR variable for cache=
 location
> oe-core:
> 7c15e03dd3 bitbake.conf: Add BB_HASH_CODEPARSER_VALS
>=20
> Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
> ---
>  recipes-ids/samhain/samhain-client.bb     | 3 +++
>  recipes-ids/samhain/samhain-server.bb     | 3 +++
>  recipes-ids/samhain/samhain-standalone.bb | 3 +++
>  recipes-ids/samhain/samhain.inc           | 8 --------
>  4 files changed, 9 insertions(+), 8 deletions(-)

This is the second report I've seen of this. I'm wondering about
changing the default PN dummy value in bitbake.conf to include a "-"...

Cheers,

Richard

