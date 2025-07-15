Return-Path: <fntoth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3821C83F17
	for <webhook@archiver.kernel.org>; Tue, 15 Jul 2025 21:03:20 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web11.6060.1752613396113318347
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Jul 2025 14:03:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=U5X/gyZr;
 spf=pass (domain: gmail.com, ip: 209.85.208.45, mailfrom: fntoth@gmail.com)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-60702d77c60so11289003a12.3
        for <yocto@lists.yoctoproject.org>; Tue, 15 Jul 2025 14:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752613394; x=1753218194; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fLh5clvw7jPemu7lLMRS+ieHRWXuZtHxUpXhhnGPg/k=;
        b=U5X/gyZre4Z3Pl6O89aD6QY7/4cB5ZIyYrtrX/uBBqgGz0zxy0xsFfneSfgs8WV9q/
         hyXtUMf4a//wniFX2ZoXX4+UAEuvsFddyf4CGe3CzOsYUCciakgbGV93Qj//+YlS+R3t
         C3YVMQudAe2JR8Ev5EBtT75BCbfd4kksfxtB1Mna8VlsPtcQSPS9tN+q+0A7L0Ba8iUL
         G0GbLQuQ+LABNuzn+kZDX/imhFoeduFz7L8ZXLJSdBLoTkqHqRA9PIl9W8EvT4ZPoUQ0
         5VqGcBLOqMGVZ8XO62yj+gXc+AY8R6aZBQn78Jn4jV46+gcNclIHFvrJo1Rzl7a+ID9H
         yFpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752613394; x=1753218194;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fLh5clvw7jPemu7lLMRS+ieHRWXuZtHxUpXhhnGPg/k=;
        b=bghyxHYrzH18y4t/UW5fgdGP5f4tTcBZFWvSaAwWCHEWwWwTP/FOq5+uVpSvHgubSh
         iGMSxlFsfPx18AtMSNgaPmitkA9Y7NtmmLsqbv5We4uEGgzWk9V/dUiq08G2GCqUzQYt
         2RRomKWVVWS7eTsD69KB7mx95Bt4jkF15j+3rlwwH9WXEpX/3jIZJ+ImaiAxKQfJ+YLI
         JfZwpPEOHfIfM3H7AytHaYpKd2nZlSDkoCUJZKw0Ad29Ab1MqTNTc03CKeHKR4xL69XR
         zJZ8AS5StvLEX7XMO4Sbc7eEJ1QfttwIgy9R0SphcByDsmGckOjHnSv80oSapyxlO8pp
         VUVA==
X-Forwarded-Encrypted: i=1; AJvYcCVu9jd4Al83qTEvw2Z/oPilBexW0Wxi7GIFCAIafYaNpEZNhCnQTtopypSa+dsUq7TOujTDhQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzllM14xh+9F0IF459oGlOqsHH+AGIrxGJ+kqZPmr2nuknBebkk
	jzKOewUi9xhLEhZm2MWt98J/rWVH5LPY0dOIVf4nH4xJnrUjUuSsFk0O
X-Gm-Gg: ASbGncsigt1RniNdkNRrxSzJ9IR4aXb/HfEpvR63joz1re2SuA+tlNKfS7Rb6tK1+pK
	TodKzD3hwUcxGDiWIHRDk0vJlfBzVBqgzXdK9n/q6EGjeZyLpn73dwd011E5/ZMmzQmQ1gF7lbz
	ZtRT99iyZkp3FjUNsavmIkh0azkaYGt3Td0pTaVpPD2FXMWujW06/kvKoPEV9tEHQcfYMnSkbNN
	4Yd9uBEwEH6wLY/zAFrizYlC1W+6qmEL8+hKH8AttdRNlfdz0+4KtAOmH9CGPcnv2GmsZOCDXLf
	bWKc1KnO4+yrThUJwpQl2KdYgY5zCUDK/2zSvvXqOFhU4VekOFqvxNVQ4xcSla+2UF1psyJrKdf
	gWa7r6T8JfC75xy5AscQptmHM+8kjHRz2qjAiRbRkhctvi8oUpBMllqGgdOgHJB3XEZ/zbieyPH
	gVrbgNIrybfGkmmIUw9ipMF0ekihRn6eBX9IMm1iE=
X-Google-Smtp-Source: AGHT+IFGKpN9V5e3q3aL8SfIcBWU3I8H1+8RjaIcffkabSEQr6zOLh/XqtGfgUoGKTFwXmVhxPvjDw==
X-Received: by 2002:a05:6402:358f:b0:607:f513:480e with SMTP id 4fb4d7f45d1cf-6128263aa9amr581703a12.31.1752613394161;
        Tue, 15 Jul 2025 14:03:14 -0700 (PDT)
Received: from ?IPV6:2a02:a466:68ed:1:e98:4d43:b887:cd66? (2a02-a466-68ed-1-e98-4d43-b887-cd66.fixed6.kpn.net. [2a02:a466:68ed:1:e98:4d43:b887:cd66])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-611c94f3753sm7737750a12.16.2025.07.15.14.03.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jul 2025 14:03:13 -0700 (PDT)
Message-ID: <f5e80ad0-04d3-4e37-87db-2c65a9a1fe96@gmail.com>
Date: Tue, 15 Jul 2025 23:03:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] NOT split a group kernel modules in separate packages
To: Bruce Ashfield <bruce.ashfield@gmail.com>, yocto@lists.yoctoproject.org
Cc: Khem Raj <raj.khem@gmail.com>
References: <9c260d52-2ec2-428c-8684-89c4677dac06@gmail.com>
 <CADkTA4P6p609bHSbC-yfmo7krYNo7B+etxgmFsoPrDkPAGxyZw@mail.gmail.com>
Content-Language: en-US
From: Ferry Toth <fntoth@gmail.com>
In-Reply-To: <CADkTA4P6p609bHSbC-yfmo7krYNo7B+etxgmFsoPrDkPAGxyZw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Jul 2025 21:03:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65661

Hi,

Op 07-07-2025 om 04:18 schreef Bruce Ashfield:
> 
> 
> On Fri, Jun 6, 2025 at 5:10 PM Ferry Toth via lists.yoctoproject.org 
> <http://lists.yoctoproject.org> <fntoth=gmail.com@lists.yoctoproject.org 
> <mailto:gmail.com@lists.yoctoproject.org>> wrote:
> 
>     Hi,
>     I read the earlier post on how to disable package splitting entirely.
>     But that is not what I want to do.
> 
>     Some modules need to be packaged separate as they go into the initrd as
>     well as the image. But there is a large group (800) in particular under
>     kernel/drivers/iio/ that I would like in a single package as updating
>     these on btrfs is very slow.
> 
> 
> There's an in-progress (under review and tweaking) series that was proposed
> for a similar purpose.
> 
> https://lore.kernel.org/openembedded-core/20250404162932.447699-1- 
> mikko.rapeli@linaro.org/ <https://lore.kernel.org/openembedded- 
> core/20250404162932.447699-1-mikko.rapeli@linaro.org/>

Afaiu this is about creating meta package to pull in the needed module 
packages into initrd. That is great, but as they already note, without 
it you need to pull specific module packages into the initrd. Which is 
what I do - and that list is not that long.

My main goal to have all the other kernel modules in a single package. 
As I expect `apt get install modules-extra` will be a lot faster than 
`apt get install modules*`.

> There may be some information in there that you can use to implement your
> own solution while we work through something for oe-core.
> 
> Bruce
> 
> 
>     I already have a kernel recipe and was thinking to add something
>     (without understanding what I am doing exactly here, just copied stuff
>     from elsewhere and modified a bit) like:
> 
>     python split_kernel_module_packages:prepend () {
>           kernel_package_name = d.getVar("KERNEL_PACKAGE_NAME") or "kernel"
>           kernel_version = d.getVar("KERNEL_VERSION")
> 
>           metapkg = d.getVar('KERNEL_MODULES_META_PACKAGE')
>           splitmods = d.getVar('KERNEL_SPLIT_MODULES')
>           postinst = d.getVar('pkg_postinst:modules')
>           postrm = d.getVar('pkg_postrm:modules')
> 
>           if splitmods != '1':
>               d.appendVar('FILES:' + metapkg, '%s %s %s/modules' %
>                   (d.getVar('modulesloaddir'), d.getVar('modprobedir'),
>     d.getVar("nonarch_base_libdir")))
>               d.appendVar('pkg_postinst:%s' % metapkg, postinst)
>               d.prependVar('pkg_postrm:%s' % metapkg, postrm);
>               return
> 
>           module_pattern_prefix = d.getVar('KERNEL_MODULE_PACKAGE_PREFIX')
>           module_pattern_suffix = d.getVar('KERNEL_MODULE_PACKAGE_SUFFIX')
>           module_pattern = module_pattern_prefix + kernel_package_name +
>     '-module-iio' + module_pattern_suffix
> 
>           modules = do_split_packages(d,
>     root='${nonarch_base_libdir}/modules', file_regex=r'.*/iio(/.*)?$',
>     output_pattern=module_pattern, description='iio kernel modules',
>     postinst=postinst, postrm=postrm, recursive=True, allow_dirs=True,
>     extra_depends='')
>           if modules:
>               d.appendVar('RDEPENDS:' + metapkg, ' '+' '.join(modules))
>     }
> 
>     I was hoping this would just magically match all modules with */iio/**
>     and place them in a single package. But alas.
> 
>     Is it at all possible what I'm trying do?
> 
>     Ideally there would of course be just 2 packages, "essential" and
>     "extra" or so, similar to what Ubuntu does.
> 
>     -=-=-=-=-=-=-=-=-=-=-=-
>     Links: You receive all messages sent to this group.
>     View/Reply Online (#65486): https://lists.yoctoproject.org/g/yocto/
>     message/65486 <https://lists.yoctoproject.org/g/yocto/message/65486>
>     Mute This Topic: https://lists.yoctoproject.org/mt/113510861/1050810
>     <https://lists.yoctoproject.org/mt/113510861/1050810>
>     Group Owner: yocto+owner@lists.yoctoproject.org
>     <mailto:yocto%2Bowner@lists.yoctoproject.org>
>     Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub <https://
>     lists.yoctoproject.org/g/yocto/unsub> [bruce.ashfield@gmail.com
>     <mailto:bruce.ashfield@gmail.com>]
>     -=-=-=-=-=-=-=-=-=-=-=-
> 
> 
> 
> -- 
> - Thou shalt not follow the NULL pointer, for chaos and madness await 
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
> 


