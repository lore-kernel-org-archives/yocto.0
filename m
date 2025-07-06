Return-Path: <fntoth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A5E3C83F09
	for <webhook@archiver.kernel.org>; Sun,  6 Jul 2025 20:21:03 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web10.44076.1751833253291445121
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Jul 2025 13:20:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TMR9WxMW;
 spf=pass (domain: gmail.com, ip: 209.85.208.42, mailfrom: fntoth@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-60867565fb5so4007860a12.3
        for <yocto@lists.yoctoproject.org>; Sun, 06 Jul 2025 13:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751833251; x=1752438051; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9SbPFgWimwtvU0rDl0NCBmwQgzyVXNn2T0WFOvsgGHY=;
        b=TMR9WxMWdlraJmnFAaJh3oy0OA5elQfhgWfYlTHgm32aoPAhWScYkcJ4BNeMFTv3ka
         cxwRGvhJXlFo4E82xhYM53uyjoAucMY1eFWGR7N2fqqB0zIy4CU9Fwgy1hXhpK/SMqPd
         /QoUUqARFoll9yPOjm0zYcPQAjYxDsQsHkMnd0onUmFd/2OqMHArheBZ+7oD3dZJjH4D
         tdGUeE7rb22WnpDqxcd39LuBWjqDvlTI1bhAgxgGDNwx+Imo+oU3D7yWppt83S2jmscL
         9rfQB7U2Tljz8v33f8WSy29kvkDsCw2763rniTir9KcXimNK/ySD61Y851AnwA3oS+yi
         0nLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751833251; x=1752438051;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9SbPFgWimwtvU0rDl0NCBmwQgzyVXNn2T0WFOvsgGHY=;
        b=HW35zfpz7e4D8f6nKQ6lK9TddI2SU04tg3qG6HZPNC9mHnU/iVf/opscNp+Kn4QiWE
         nC9PdGw8NlC9dPoAWziutm1yy8i3lDx/7ELOQeafxsIVwMQUTehtlm3ph63szW9TDTEG
         B4dxoaPtSELBPEdxu8VU+7v7gV+Zr9fdUaT2jaLKX7okTClvCetoSJa9wG7REqgaaJYJ
         Kp6hJvqBx5lpBxsQ81P6JWfadX92DGpZzocHZSi82J6IMnYFqgPOtc8LvN+hegX8VrrY
         P+785+tZuCQ07wwsf6csKeLp/Nf460jwuvwp7gqByj34rGx5ohmtKXCHj5SXD0eA3Ugg
         K6ig==
X-Gm-Message-State: AOJu0YzXOR3L26jcTHqZdquJWuWwFkkvFaqox75XvWQ0VCwQqYUP2IeF
	BenZTABeFv7g5+8KTxbyLAuwdrVeOI8NfPFZgQnbTPOUpNnEQJak1eEkGn39XQ==
X-Gm-Gg: ASbGncsYfsEUpXt8lHaofJoyA8wdU8h44iAiS1M6EfFhQuxnQ0JhjaOMhQngeAe+K+q
	MAPjJeu5ypYg9rzRUtY/B77z5Ig9d+TavV7BsS0C4NlkHWj/BtmS0PqnOP1YEzSp9bJZxxfp/6O
	9rRfsLK/N7YrsAkO8iA/KfBQPXuhsOdLC9SIxpfN/AqtV1CUYxyzVsW8bJvoTQF/SwWsHa80vf7
	9vDecNtVAK62wooxGLaFd/5SqNDU/TRv36oDJwj1IH+lPOQI1iR3HSJL/HicUZ8hb8OrqRXs45Z
	iVhTyDQHve+j7X6BsS6edgkWKs6HZaSF3nGrl2l2ig2UPY/A6RL3gAckbTiOjrcpFnQG0m9YoDg
	AUGKeMfDncDUFv1SYrfZT9Qc+v0UChz1fLcK2ZwXKKXXDY6dWc1N65WCk0Q4FTZ51dHbj72jXve
	ElXpvDRr3EV6F54hS30w==
X-Google-Smtp-Source: AGHT+IGtuO9+Fkck0Mkno/e/hFLDLs8KiUvq95S8WNPSH36jEVGRWeUOxbHdV03hJXd5f5tfUaKhrQ==
X-Received: by 2002:a05:6402:50c7:b0:607:ec18:9410 with SMTP id 4fb4d7f45d1cf-60ff3827aafmr5136076a12.3.1751833251057;
        Sun, 06 Jul 2025 13:20:51 -0700 (PDT)
Received: from ?IPV6:2a02:a466:68ed:1:72bf:36b9:9788:8ef5? (2a02-a466-68ed-1-72bf-36b9-9788-8ef5.fixed6.kpn.net. [2a02:a466:68ed:1:72bf:36b9:9788:8ef5])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6100c7aa105sm1551264a12.6.2025.07.06.13.20.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Jul 2025 13:20:49 -0700 (PDT)
Message-ID: <bf8865eb-c37f-4e81-bf4c-93c89526799f@gmail.com>
Date: Sun, 6 Jul 2025 22:20:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] NOT split a group kernel modules in separate packages
From: Ferry Toth <fntoth@gmail.com>
To: yocto@lists.yoctoproject.org, Khem Raj <raj.khem@gmail.com>
References: <9c260d52-2ec2-428c-8684-89c4677dac06@gmail.com>
Content-Language: en-US
In-Reply-To: <9c260d52-2ec2-428c-8684-89c4677dac06@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 06 Jul 2025 20:21:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65611

Hi,

Op 06-06-2025 om 23:10 schreef Ferry Toth:
> Hi,
> I read the earlier post on how to disable package splitting entirely. 
> But that is not what I want to do.
> 
> Some modules need to be packaged separate as they go into the initrd as 
> well as the image. But there is a large group (800) in particular under 
> kernel/drivers/iio/ that I would like in a single package as updating 
> these on btrfs is very slow.
> 
> I already have a kernel recipe and was thinking to add something 
> (without understanding what I am doing exactly here, just copied stuff 
> from elsewhere and modified a bit) like:
> 
> python split_kernel_module_packages:prepend () {
>      kernel_package_name = d.getVar("KERNEL_PACKAGE_NAME") or "kernel"
>      kernel_version = d.getVar("KERNEL_VERSION")
> 
>      metapkg = d.getVar('KERNEL_MODULES_META_PACKAGE')
>      splitmods = d.getVar('KERNEL_SPLIT_MODULES')
>      postinst = d.getVar('pkg_postinst:modules')
>      postrm = d.getVar('pkg_postrm:modules')
> 
>      if splitmods != '1':
>          d.appendVar('FILES:' + metapkg, '%s %s %s/modules' %
>              (d.getVar('modulesloaddir'), d.getVar('modprobedir'), 
> d.getVar("nonarch_base_libdir")))
>          d.appendVar('pkg_postinst:%s' % metapkg, postinst)
>          d.prependVar('pkg_postrm:%s' % metapkg, postrm);
>          return
> 
>      module_pattern_prefix = d.getVar('KERNEL_MODULE_PACKAGE_PREFIX')
>      module_pattern_suffix = d.getVar('KERNEL_MODULE_PACKAGE_SUFFIX')
>      module_pattern = module_pattern_prefix + kernel_package_name + '- 
> module-iio' + module_pattern_suffix
> 
>      modules = do_split_packages(d, root='${nonarch_base_libdir}/ 
> modules', file_regex=r'.*/iio(/.*)?$', output_pattern=module_pattern, 
> description='iio kernel modules', postinst=postinst, postrm=postrm, 
> recursive=True, allow_dirs=True, extra_depends='')
>      if modules:
>          d.appendVar('RDEPENDS:' + metapkg, ' '+' '.join(modules))
> }
> 
> I was hoping this would just magically match all modules with */iio/** 
> and place them in a single package. But alas.
> 
> Is it at all possible what I'm trying do?

Any hints much appreciated!

> Ideally there would of course be just 2 packages, "essential" and 
> "extra" or so, similar to what Ubuntu does.
> 


