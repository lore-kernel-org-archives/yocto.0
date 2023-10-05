Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC37E92716
	for <webhook@archiver.kernel.org>; Thu,  5 Oct 2023 16:42:50 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web11.20608.1696524165008387121
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Oct 2023 09:42:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=AnukqH4s;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-405524e6769so7740715e9.1
        for <yocto@lists.yoctoproject.org>; Thu, 05 Oct 2023 09:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1696524163; x=1697128963; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xla6P1cZ2BKWHQmyGqahl7S86SyuYbXnIiWBjvhtHgU=;
        b=AnukqH4sFTT6o5iHQ+h4wPcLfpw2j/SOfLT2BL87ydNOwAWvhcVevvyFLHlCo05PDw
         auiL2bC6XBFAegLllAvOKOTLn0WWOoHrOnsBI/SAwtkUnu0kE4aY91RKzxL5Yzhk+WCK
         xx/gfrr/pHyxViDlY9oqyImosVY+jjcv30Oko=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696524163; x=1697128963;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xla6P1cZ2BKWHQmyGqahl7S86SyuYbXnIiWBjvhtHgU=;
        b=DWiNaEmcySRCDSHsa2XK299vWPqQnwDSpCGBtJk+tt1RxJNjpwvxqIReKtm/mJu5db
         E4IlvfgZQM+UsqQmsJTTUVEmWku++sGNfK5+BJYlyzxtHKMYhEXQhsaPCjo/NljcU/Ms
         GrIaH8N0QkExftmY7w03jmeO1VpQX08PnOjbxBNOubI1tAOS0e053zn87HmTEc8SAAvd
         g+AcH4gnVB7zMd6qEzYm7MGu6yZHvuaeiR12uq1SK3CqNQM2UwhqTBh87xg7qlRTZKdm
         R35jsDP57xBRdnd0x8dXe7F79RifTbz/T7/8Nt1+tsAXeXprRO5Tr01tQLx1YxMJkBD5
         QsGw==
X-Gm-Message-State: AOJu0Yyl3OZWQTEurrKfLIuRXI9LQKVXXugvzywtelRAbk0UQ1jrCRn8
	MMUU77Iqa/B1v9eKdd6WsYgDRw==
X-Google-Smtp-Source: AGHT+IFWilR9QPzsRg6Kr5NMWp1enxvEUdivxnmrg2QQTD+rfap6oM2KTcq4htFn4d3HDKWYRIcmEg==
X-Received: by 2002:a1c:7c0d:0:b0:405:3aad:7575 with SMTP id x13-20020a1c7c0d000000b004053aad7575mr2963898wmc.17.1696524163410;
        Thu, 05 Oct 2023 09:42:43 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:bd34:260d:44d4:25bf? ([2001:8b0:aba:5f3c:bd34:260d:44d4:25bf])
        by smtp.gmail.com with ESMTPSA id x9-20020a05600c21c900b003fefe70ec9csm4159262wmj.10.2023.10.05.09.42.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 09:42:43 -0700 (PDT)
Message-ID: <062899392c27c787756aedd476ce3810eba5da72.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v2] config.json: add
 reproducible-openembedded build
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Fabien Thomas <fabien.thomas@smile.fr>, yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Date: Thu, 05 Oct 2023 17:42:41 +0100
In-Reply-To: <20231002145446.3166108-1-fabien.thomas@smile.fr>
References: <20231002145446.3166108-1-fabien.thomas@smile.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Oct 2023 16:42:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61248

On Mon, 2023-10-02 at 16:54 +0200, Fabien Thomas wrote:
> The purpose of this new builder is to report the reproducibility status
> of all meta-openembedded recipes layer by layer. It use the same
> reproducible selftest than OE-Core but setting only world as target,
> and excluding all oecore and other openembedded layer recipes.
> Also, the report output directory is split by layers.
>=20
> Signed-off-by: Fabien Thomas <fabien.thomas@smile.fr>
> Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
> ---
>=20
> Changes v1->v2 :
> * Split builder into multiple steps, one for each openembedded layers.
> * Split reports output in the same way, one for each layers.
> * For each step, only to be tested layer and its dependancies are added.
> * Every other layers than the one that is tested is excluded from world.

Thanks, I've merged this with a tweak of "reproducible-meta-
openembedded" -> "reproducible-meta-oe" just to keep things more
readable in the UI.

There is a test run queued here:

https://autobuilder.yoctoproject.org/typhoon/#/buildrequests/454516?redirec=
t_to_build=3Dtrue

but things are a bit busy atm on the autobuilder so it is queued.

Cheers,

Richard

