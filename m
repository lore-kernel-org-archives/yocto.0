Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BB1C369A1
	for <webhook@archiver.kernel.org>; Sat, 12 Apr 2025 05:51:55 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web10.5470.1744437112491330944
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Apr 2025 22:51:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OMoYcH+f;
 spf=pass (domain: gmail.com, ip: 209.85.218.46, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-abf3d64849dso505773266b.3
        for <yocto@lists.yoctoproject.org>; Fri, 11 Apr 2025 22:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744437111; x=1745041911; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tICY6fbLcmqp8/9u82cJ5RHAcM/1j4+yW3qQLemp9Eg=;
        b=OMoYcH+faOoDLvM51TmVwxvuIeKwUPL28BbV7J601JRpMsvgNdqgUpk88Van/sgjIh
         vsr/wzvMpb4D3sYwjTHWg9utkdM8Xr/anYyXyu8OcQVvYvPloh1rCFDE1ner3cG2D+2W
         S3VvMRxTVDM4Li5Shh5dR9PbVyC+/3PkoQGKDkJmkJ1cfGa+B5wJ6yhmc0k6WS/21jOl
         LwOpABkGI9irFFy+UNv8gewMui5wjr9jBJX3BXYrXHfN+ElLVUWXKCG6w0YnQGhLvKdg
         OKbtDnZOgPvmppwaGJnZnS+t+hDR9H1DLJUFhcONMtyZfQhiX5DBFlPZ02gbi50UMB6h
         8xdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744437111; x=1745041911;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tICY6fbLcmqp8/9u82cJ5RHAcM/1j4+yW3qQLemp9Eg=;
        b=cmasFhDoRnE0SJkQuABeNxEZVq4Ewjgh3P9kc9fy8THOr7Z4c4vNG7H+sqNRHcqksz
         m28g6NXcEASbfbcSjpT8v8Ru3eW1Xn9PhQYMNNgE76dBdCHh/teH4gclTmoTi6sgH09O
         yD1ChGGS1Izb28tAEEDgQR8ZsZQWRbfRXvv25xEA3yJJnrGLoTbHhwDmDSFW7JPQmLsh
         u6AYhKgjY3KQrZNjCmgjpI74SQcsKMesIvLRCu1AuzyhjHYCX6OaxqHsF60ZaWaobWdi
         jGODA8bF4xelLDF4aqZF9EgMxU1991UQmz/B/idTIx8B4q933rD/45yBUGC6YErI0M5A
         AsSg==
X-Gm-Message-State: AOJu0YytQptp9aweb8LkZ50Za2SZt+VqVMa7jUEw6Bek7edhqeUGnoGS
	AaO3zIKqekaGzehOVD4bQYzkPz3rLdtKYIaBqtD2DZdmSQyp5AXFRYsJjg==
X-Gm-Gg: ASbGncskoPB5hMP6e+OIu5tll4xO5OB0EDKlWcCX2LXRmppKxeDE4Ej5WNzQhTxNuFc
	S4J3ZjuRcxqg+MJih5pjpH4ppxMi8wVUtMsng5pUU0/KPVurpPNX0SmSFhzxhYvI7rwFV1nYdvD
	hfFozl+Z2x9FL2/7fYhkNt1AOYdvdn7t0PZV3NDm7nTvTaudkHLjT0sEjg/Q704HPQELZ5MPRDv
	aIk1xKTon4wzUSJRb8gX2iDP7PYs+h6Lpoh1QUrHnYxmbR67riv2ULhovgQ4VyOrJUuHf9iucTm
	11FMxekFeOdkPv76ezeD/JaVjrBYwsWFKKEuCyaqS2cmaiI5
X-Google-Smtp-Source: AGHT+IGP487OoppxuSY5W6bupMC7ErKPef90Ct7BJMpU0YgOK3smirp6P0OdHQtUs3MCkQt8wUsa6w==
X-Received: by 2002:a17:907:2ce5:b0:ac6:ba91:ca4d with SMTP id a640c23a62f3a-acad34c9a32mr418635166b.31.1744437110316;
        Fri, 11 Apr 2025 22:51:50 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1bb34eesm554440266b.16.2025.04.11.22.51.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 22:51:49 -0700 (PDT)
Message-ID: <f646cd7f-cb85-4da9-b346-a7d4ca0e9614@gmail.com>
Date: Sat, 12 Apr 2025 07:51:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Recipe fetches always the latest kernel while building
To: yocto@lists.yoctoproject.org, kanakshilledar111@protonmail.com
References: <tKIHWnniqyKbGr3pmpXnMAtt19UwC1FoWVQjYEoP_OaMYYUju5C10Z2duqK18grooGwMrqGw0xeJdFRcHMBuftdCp84cApraC13a1TL7uYU=@protonmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <tKIHWnniqyKbGr3pmpXnMAtt19UwC1FoWVQjYEoP_OaMYYUju5C10Z2duqK18grooGwMrqGw0xeJdFRcHMBuftdCp84cApraC13a1TL7uYU=@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 12 Apr 2025 05:51:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65147

On 4/11/25 11:35, Kanak Shilledar via lists.yoctoproject.org wrote:
> Hi,
> The
> [linux-beaglev-dev.bb](https://github.com/riscv/meta-riscv/blob/master/recipes-kernel/linux/linux-beaglev-dev.bb)
> always fetches the latest kernel from the master branch even after
> specifying the commit hash. Is there any way to fix this behavior?
The AUTOREV should be removed, that is causing it to fetch the latest
version.
To specify multiple SRCREV values, instead of SRCREV[foo] variable flags
you should use SRCREV_foo variable names.
>
> Secondly, the `do_beaglev_img_deploy()` task in the recipe doesn't run
> automatically. I have to manually trigger it by running `bitbake
> linux-beaglev-dev`. This task is used to build the boot partition for
> the board. How to rectify this issue?

This task seems to be an extension of do_deploy. To make it behave like
do_deploy, it should be configured similarly to do_deploy[1].
Personally, however, instead of having a custom task for this, I would
just rename it to do_deploy:append(), and add 'do_deploy[depends] +=
"opensbi:do_deploy"' to the recipe.

[1]:
https://web.git.yoctoproject.org/poky/tree/meta/classes-recipe/deploy.bbclass

>
> Thanks and Regards,
> Kanak Shilledar
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65137): https://lists.yoctoproject.org/g/yocto/message/65137
> Mute This Topic: https://lists.yoctoproject.org/mt/112207297/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

