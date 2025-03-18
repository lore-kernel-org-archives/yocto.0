Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EB0DC282EC
	for <webhook@archiver.kernel.org>; Tue, 18 Mar 2025 08:10:13 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web11.6539.1742285404573944973
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Mar 2025 01:10:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Gd4Kib/u;
 spf=pass (domain: gmail.com, ip: 209.85.128.43, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43cf3192f3bso31481465e9.1
        for <yocto@lists.yoctoproject.org>; Tue, 18 Mar 2025 01:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742285403; x=1742890203; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:subject:from:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fEhC0eneBnDwoMwtbpRtQOgxF3xvTRcOJfh75tbREww=;
        b=Gd4Kib/ulYOUZgvRFSFaGf/XlevMoE7MMTEbclDhZn59OvtyIeM0en7wb6OBg5qsF7
         4QVwefm4Bv/a582+Dgn9MVbBjFGaQK4gXj83XFBzGRfd9QKFJdFGGZEMgAxIasyw7j6r
         GfJofuigB93Ku++Y8raThTrdiyK3qspi6gduz1XlSwu9owhaxKAIh6IKfbyoqUTfLVeY
         Y0E5eFeF7wCAuPFF2vUA6G8nZIUcVe0NPAky6VGcrHhfs5Qw0ndF6rUTQGUovX/D0w1q
         HNoYOgoes0rf/DN3N8YKy/HjeuX2UhuKUhMbJKntJmZxlsYIbxtD1UzwJKVz+RYqTnqw
         FKmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742285403; x=1742890203;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fEhC0eneBnDwoMwtbpRtQOgxF3xvTRcOJfh75tbREww=;
        b=VduTxRZ6d93ZOtdYz58PY2eJSsULnznZkx+S8Bbnu0GrrJZYzXZrr0UAXzvOH/MrTk
         gqbdO71oOF1VTJPnmvkEi7Kzc4ajc/2e18bjAHn+OK/p9mdgS/eWQDl6VHX7kG5dg5a6
         7EK5XYDaUXC7bIgz8VtrNUP8AYceU4HLU7jD1Nga3InOo/dYgJhPutsLQbkHZfo4CzIB
         3HkwFpua7H/UMcls++BNMKqYH3WE5tsNSjOFJGIUTQZB3ojHwwSDVTtaf0ZCqzumaahs
         szoXYQVODvKrv8xpgcV6HQmptO3lTGxb+OmMDwhaH5nEoroLD57Lxjdc1VFm2032HS0Q
         KA5Q==
X-Gm-Message-State: AOJu0YwPnyVK2vexYn8YodM1IlLNQB0GSIsbL7IVmmojy2NGbU/yEog/
	/WAK+gMvI7sQu2GyKUEM1tsKQMs+C+HKMAzE9VElpprEas1MljBJDevh0+gD
X-Gm-Gg: ASbGncv8aReZtfGkEQJaoq2YjzFuA+P22IRfCH4283nmnujVUtM7f7q5PGR+/LR6yge
	+DF5mNAu+Cpdqq+t/qT0mf07N7uWnsES1FJ6WHQJ0f4bLvGpBjqulhDad22hUqt17LSLAn+THS9
	td+9oM7gl/9OnvXi/HeUSmhWOiFmya2FzFijVfVh63a5AVxRs2VF2NISKEZKXOpDZGvGjeUtfaS
	DZEz3XH3fnRZ/8yediV0lLvbujrIRMolQwX72NGmR3zOFhj0QEC4NAy0rCxTvPacx12TmIJu/MX
	D09irfqlc7kvGBLTHhV5cFUYaJqpOLZcxSZwq6KkB7cafrbKXr7s2Tb8FNifsd8=
X-Google-Smtp-Source: AGHT+IGmPU/n+jL+TFpWJcH2TBR4W3oND7Thg8E0fTB4fktv6nDPxgmmyUqNTLU+QnNonooFJfwbCA==
X-Received: by 2002:a05:600c:34c1:b0:43d:22d9:4b8e with SMTP id 5b1f17b1804b1-43d3b98e5d7mr12411835e9.10.1742285402470;
        Tue, 18 Mar 2025 01:10:02 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d1fe292d0sm127701645e9.20.2025.03.18.01.10.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 01:10:02 -0700 (PDT)
Message-ID: <4b6990e5-eaef-47d5-ab90-b904594a0b8a@gmail.com>
Date: Tue, 18 Mar 2025 09:10:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Gyorgy Sarvari <skandigraun@gmail.com>
Subject: Re: [yocto] Kernel with initramfs: issues with packaging, out of
 source modules
To: yocto@lists.yoctoproject.org, lpmeyer@ics.com
References: <CABqjNW8MPXLqFxubZKJ5LF=7HAyW_ft5GxK5y1TUe0DkPCCycg@mail.gmail.com>
Content-Language: en-US
In-Reply-To: <CABqjNW8MPXLqFxubZKJ5LF=7HAyW_ft5GxK5y1TUe0DkPCCycg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Mar 2025 08:10:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64971

On 17.03.25 19:08, Lisandro Pérez Meyer (ICS) via lists.yoctoproject.org
wrote:

> Hi,
>
> I'm building a Scarthgap-based system with a Variscite iMX8M-Plus SoC
> which needs a kernel with initramfs embedded into it. Following the
> doc I created a initramfs recipe, enabled/set:
>
> # On a linux-variscite's bbappend
> INITRAMFS_IMAGE = "theproject-initramfs-image"
>
> # Machine conf
> INITRAMFS_IMAGE_BUNDLE = "1"
> IMAGE_BOOT_FILES:prepend = " ${KERNEL_IMAGETPYE}-initramfs-${MACHINE}.bin"
>
> Up to that point everything is OK: kernel + bundled initramfs is
> created, I can copy it to the board, boot with it, run scripts, etc.
>
> But after the above I am finding an issue with kernel versioning. The
> function `do_bundle_initramfs` is being run after `do_package`, which
> means I can not create a package of the kernel with initramfs on it.
> Moreover I can no longer build out of kernel modules, because the git
> commit id changes, and thus KERNEL_VERSION.
Regarding the version problem with out-of-tree modules:

This sounds similar to
https://lists.yoctoproject.org/g/yocto/message/64358 - would disabling
CONFIG_LOCALVERSION_AUTO in the kernel config solve this for you?

>
> Maybe `do_bundle_initramfs` happens after `do_package` to avoid a
> circular dependency somehow? Maybe I could try to hack the class to
> avoid building the image without the initramfs and building the
> version with it before `do_package` is called? Maybe there is some
> other approach?
>
> Thanks in advance, Lisandro.
>
> -- 
> Lisandro Pérez Meyer
> Embedded Platform Engineer
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64965): https://lists.yoctoproject.org/g/yocto/message/64965
> Mute This Topic: https://lists.yoctoproject.org/mt/111755402/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

