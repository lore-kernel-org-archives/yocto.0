Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF91C4332F
	for <webhook@archiver.kernel.org>; Tue, 13 Dec 2022 22:56:10 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web11.89234.1670972161469541728
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Dec 2022 14:56:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=UsHpB3c0;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id u12so17449155wrr.11
        for <yocto@lists.yoctoproject.org>; Tue, 13 Dec 2022 14:56:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dnGBZt6OI/WiT21jhckYOZe7RQnkHzFHtzgLXiZMuys=;
        b=UsHpB3c0ijPKRiYsPzBuZsemCf6HUVFDECcY26+HltM6unxIhEJ5cx38BPYgrj3bHK
         mag3SQWTE49F5G4dhe8bMjmhErzKmRN4popqOOp6MOKfj8F8f3MWPuT0uNeeCNp8pUkm
         9ta6xvTOXFkQa7D/eWZREqrIU/ySvan8MhBLc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dnGBZt6OI/WiT21jhckYOZe7RQnkHzFHtzgLXiZMuys=;
        b=EEAkgG/Vx6R2Ui5LAcHJq1PLo/jYlzHqf9InJO6+1qxWimEqWsnCfL/80KWMAfib1z
         Ll/D8XQCD4jG/aGiaOFVI6lzjhUJvZQeIWu79osrH6UBdBVVmnZqsBGhDjDGOicUDqmY
         hu/jYIGWL3yKlBSs0FNlg9w5RepQZNryua4oU9Q3jzV6XmrDPx4XPtSmkzmARy8POpio
         kWnpf75b37MYbNyY4WkdE7aFFOaLDX5GsDyXR5pe+6+4acPpAyj3TFdKl38737Ja9qy2
         1cjm1ORg0blA1rcjdN56ZiWd5V0bO0wWhPg6a78RyD9tNsGuhJdzjIu9WA7Yf+Bn4/T3
         usog==
X-Gm-Message-State: ANoB5pkhNQbY8Ro7b67O4d/SD3X4lEdL0n6XVc149YKRJA5h4pWzpC//
	39C8ahX1yTtsSSgMP09o4plqww==
X-Google-Smtp-Source: AA0mqf52FFn7C8YNGPRsiBw1FnkTaIph3Xsx6E+lLkwm9OGFsaveJK5HmO2pt0NQRV91L5UrOY2WLQ==
X-Received: by 2002:a5d:6543:0:b0:242:13bf:29de with SMTP id z3-20020a5d6543000000b0024213bf29demr13488200wrv.52.1670972159540;
        Tue, 13 Dec 2022 14:55:59 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:9b1a:807b:6e09:ff96? ([2001:8b0:aba:5f3c:9b1a:807b:6e09:ff96])
        by smtp.gmail.com with ESMTPSA id k3-20020a5d5183000000b002422bc69111sm1252792wrv.9.2022.12.13.14.55.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 14:55:58 -0800 (PST)
Message-ID: <3839f0c710cd4c57f60405bdf71cc451fd3d5084.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder2][PATCH 2/2] config.py: include 32
 bit qemux86-ptest (full) into a-full
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
Date: Tue, 13 Dec 2022 22:55:56 +0000
In-Reply-To: <20221213154056.370033-2-alex.kanavin@gmail.com>
References: <20221213154056.370033-1-alex.kanavin@gmail.com>
	 <20221213154056.370033-2-alex.kanavin@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Dec 2022 22:56:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58788

On Tue, 2022-12-13 at 16:40 +0100, Alexander Kanavin wrote:
> The manually triggered test result is here:
> https://autobuilder.yoctoproject.org/typhoon/#/builders/141/builds/1
>=20
> The execution time is similar to the 64 bit x86 full ptest, as valgrind h=
as been excluded
> from the 32 bit set, so I believe we can afford to run this in the standa=
rd
> matrix for master-next tests.
>=20
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>  config.py | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/config.py b/config.py
> index e638099..711dd98 100644
> --- a/config.py
> +++ b/config.py
> @@ -88,7 +88,7 @@ trigger_builders_wait_quick =3D trigger_builders_wait_s=
hared + [
>  trigger_builders_wait_full =3D trigger_builders_wait_shared + [
>      "qemumips-alt", "edgerouter-alt", "qemuppc-alt", "qemux86-world-alt"=
,
>      "oe-selftest-ubuntu", "oe-selftest-debian", "oe-selftest-fedora", "o=
e-selftest-centos",
> -    "qemux86-64-ptest", "qemux86-64-ltp", "qemuarm64-ptest", "qemuarm64-=
ltp",=20
> +    "qemux86-64-ptest", "qemux86-64-ltp", "qemuarm64-ptest", "qemuarm64-=
ltp", "qemux86-ptest",
>      "meta-intel", "meta-arm", "meta-aws", "meta-agl-core", "meta-virt"
>  ]
> =20
> @@ -117,7 +117,6 @@ builders_others =3D [
>      "oe-selftest-arm",
>      "metrics",
>      "qemuriscv32", "qemuriscv64", "qemuriscv64-ptest", "qemuppc64",
> -    "qemux86-ptest",
>      "auh"
>  ]

I'm not sure I agree. Yes, we can do it but I'm not sure we should.

This test doesn't seem to be one which is showing regressions, given we
have a low number of issues despite never having run it. The day to day
patch review struggles with the volume of tests we're running without
adding the load this test needs to a-full.

We need to focus the tests on those which catch issues creeping into
the project and I'm not convinced this is one of them. Running this
test once or twice a month is probably all we need?

Cheers,

Richard






