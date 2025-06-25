Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80968C77B7C
	for <webhook@archiver.kernel.org>; Wed, 25 Jun 2025 17:18:51 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web10.21702.1750871921454434617
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Jun 2025 10:18:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QlTQgK7A;
 spf=pass (domain: gmail.com, ip: 209.85.218.48, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ad1b94382b8so28426866b.0
        for <yocto@lists.yoctoproject.org>; Wed, 25 Jun 2025 10:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750871920; x=1751476720; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xT7TbKS6XznWdAUv29zcXVwcCAEf1r9vsbBAzXk7bTw=;
        b=QlTQgK7AO2W0k3F34hsF0UH6EJfZlTLG1FVjObHKiSYmzgTZ6kwu+XyFqXJWCvvPuq
         Da68OPvdUpYC2J1rUeieeJtNSYlL9PjZTr1LIe6M28L1wfPXNbF1kA00ntqGWu9rYgsC
         1xwFy9PU2+L+Wo56UT7TEPvXO1UmZvpF5jtyt9zr6waQD9871MaXEW5NY3kSSjJBG76m
         gzj1AA+ZoHXu2gkzFuff32PdRhxu2o6dZigrudwUPExVZsK3v5vGuZXll8Z7cYdaF3Ba
         2OWVZNW0iXJ+3BgwVcKa5xLwY1SFK/QpHCbaH7nBen2uj54JBzwu0zEH0yq9DdFkBj+3
         A5kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750871920; x=1751476720;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xT7TbKS6XznWdAUv29zcXVwcCAEf1r9vsbBAzXk7bTw=;
        b=cT3vPPfAw3RuZCPBabMOTpGj8SNp0b2WY+RAro3higwbbXpFqw3/9suy9z0LLsavCn
         P0IizETeTbMzkXNeE6td266fSoZXuY5eFj2tucdQ6fDS6QgTbs0NiwEHLd6Eirj/ck6y
         +XeaxMvsZezntMdcWy+Er3N5too4Pg+x2m75jelAeoNdKtp4C4bIBmikg/HoG3eFFsAE
         lSCWeHYHtVpjdCmjM3/RJGvgvleJTHllE3VxXHSgbnYNazO3lqsBuq57bIu5Hpu4sgla
         h5utFWPQoxTyiJ+yW3LCxlvONnhxDyqB/0XyWPRGm7ib2rOdp2wTniGEmAJDPre92k/T
         Lmwg==
X-Forwarded-Encrypted: i=1; AJvYcCWtzPtnjrtx59gP4VIAXvDlKiH9uCql1dkPS660lSTUpqfSWPZHjjBkEADLl0csi2WjXKFx0g==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwU/L5L4pIdez2cLvXavnaeb/I2CuAjbZHbtGuZFXhogK7t/Wno
	uDI0ZOz53CBBD2o4NFeeUxZN7PFzWOUTCksa1DnVS85gxckCgtJcIdXT
X-Gm-Gg: ASbGnctNyj0cYbA2vIqdHaKYUf+Zbsfz3lAYbVn2iPB+hS2unb57LbHNieAiLh4yj3z
	IC+DdFartm7q4eN8flPiThJZluimPcrXeYK52myE11FgELWpbCAKUpHcqeitE6lockirLV0Ff4J
	K7dMfrEcZXEdjeXD2LEGab9G8knrcpzhpT1r6KDSN1bufLTQTkFocH236czyXHyF2ZIc+RjOus2
	GVO8YPpzkEPh/L4C7kkoVq9ZQRlLTgPdIeE0hiHIkXxBHp/M1lfN5KM8y+43qvdolQPfqSyLLDL
	Zv8+4bLUGTJnBFRc5Y9B/n+tLm9/ZuNx3xSdz100PkwuXhb8SXoN0Kc63sPRer04kGpF8w==
X-Google-Smtp-Source: AGHT+IH0oUAPKUCoTuEdmuyUZxkUkCz5RlWSO8Myyg7lHZu2o7dML+YsvdOGj7zn7zvu0/uOhsNJXw==
X-Received: by 2002:a17:907:e841:b0:ae0:9363:4d5d with SMTP id a640c23a62f3a-ae0be7fdeb2mr408414266b.2.1750871919496;
        Wed, 25 Jun 2025 10:18:39 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0d22b87e2sm14630466b.79.2025.06.25.10.18.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jun 2025 10:18:39 -0700 (PDT)
Message-ID: <11968760-1c60-42a6-88f9-5dc7c1f219b9@gmail.com>
Date: Wed, 25 Jun 2025 19:18:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Virtual Keyboard on Wayland
To: matteo.orlandini@tastitalia.com, yocto@lists.yoctoproject.org
References: <d29fe87a-8095-4823-bf57-6046b9e67d2c@gmail.com>
 <9005.1750863783770459333@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <9005.1750863783770459333@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Jun 2025 17:18:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65547


On 6/25/25 17:03, matteo.orlandini via Lists.Yoctoproject.Org wrote:
> On Mon, Jun 23, 2025 at 02:48 PM, Gyorgy Sarvari wrote:
>
>     It seems that gnome-desktop's  x11 dependency was a relic of the past,
>     and has been removed[1] some time ago. Maybe you could try to backport
>     it in your layer (as local.conf or bbappend) and see what happens? (Or
>     maybe even send a patch to the mailing list, if it works)
>
>     [1]:
>     https://git.openembedded.org/meta-openembedded/commit/?id=8106d4192567233f0653242326ac3041a1233b69
>
> I added this .bbappend:
> REQUIRED_DISTRO_FEATURES:remove = "x11"
>  
> DEPENDS:remove = "xext xrandr"
>  
> but now I got this error:
> process didn't exit successfully: `rustc - --crate-name ___
> --print=file-names -L
> /newbuild/tmp/work/armv8a-poky-linux/squeekboard/1.19.0/recipe-sysroot/usr/lib/rustlib/aarch64-poky-linux-gnu/lib
> --remap-path-prefix=/newbuild/tmp/work/armv8a-poky-linux/squeekboard/1.19.0=/usr/src/debug/squeekboard/1.19.0
> --target aarch64-poky-linux --crate-type bin --crate-type rlib
> --crate-type dylib --crate-type cdylib --crate-type staticlib
> --crate-type proc-macro --print=sysroot --print=split-debuginfo
> --print=crate-name --print=cfg` (exit status: 1)
>   --- stderr
>   error: Error loading target specification: Could not find
> specification for target "aarch64-poky-linux". Run `rustc --print
> target-list` for a list of built-in targets

Which rust version, and from which layer are you using? I remember that
meta-rust uses slightly different target names than oe-core/lts-mixins,
which can cause some head scratching...

