Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B41E1C02188
	for <webhook@archiver.kernel.org>; Mon, 27 Jan 2025 14:11:10 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web11.52101.1737987061312849527
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2025 06:11:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hXtZLpL5;
 spf=pass (domain: gmail.com, ip: 209.85.128.41, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4368a293339so51553055e9.3
        for <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 06:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737987060; x=1738591860; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RIbJ4GGtb1bAzw3IpeTAsvDID/NeU9U6E6g5k/iraG4=;
        b=hXtZLpL5/NJluL1myhPWWDI9BaGrnT2lj6xxqToEaNO+QMo4szhqbg1F6SSWozfB1W
         H7WYkGqvK4OqvPgX/fyuqcYUXKR0+pJqYlZGcM0phfZfyh6Vtc8QPsEajBV8z2Id8W1l
         qVR+rH5ymWm8W5vjcAg2/zhbCuoQv9zs3PvWTcnYFF/cGwJ+x5tmS1sWdvsTIg5EkyaM
         g7gd//T2I9a8BprBnWtw4ewSBb0A6ayMe8kfOPAez+imqFW1GPBka6wVXhwsJKSJZIVJ
         qhq4U8fFSKSrf1iUoGGVi35gtoIaSfqiYxtIVmE6LE//kl8X1vsa/g76N1O5QcrzvdBL
         Gq+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737987060; x=1738591860;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RIbJ4GGtb1bAzw3IpeTAsvDID/NeU9U6E6g5k/iraG4=;
        b=Fobp9R7gmqvj6k3Aw31A1k/PHXE7u6zgRz6ScIxytzpjQcEAImA7gmiLJeQhCXX4d3
         GG3vZsYLvUIFeasa2C7cH5rLYDt1Ep7X0Bvp9u6A0WxbQLL9fHFggrAK5F6O80Lp7hXg
         7RsN89FntiTtCNTcNVCZmK75HcBUslrSfUpVLIYjlDBXMozdP4k6Aq42nTZJCTfI7zLP
         dGY4CkrkccBQ5NrR8Ssw5AN+hCgy3upke/z9E036qhKsJ7X9cFFYgaUbOMJzRnlukQVe
         KEDDu3KMeAgMh4jXTpgeTuuL9CuAwrX4UuRK60jeAAhTUbWA1ZcBZv/CGoVnXFBOfz91
         dMkQ==
X-Gm-Message-State: AOJu0YyYtG8wGUHyF3f4OtWIu6h/yC5WjC1yl1jX45d54OjnTx/K+I8i
	X+0A8ys8UU1piRE/pzQpgCacpKNGGCdi9YldHZKK75Y4uPntH0z2X21tOg==
X-Gm-Gg: ASbGncs3h1fmK1WdRRg89s9FK1OP1ViBzt60pGR4yOd7Sck8SWWC5bsRWRFvb2FQJ7E
	InAixAG1K+9HsEaj8/Qew9nRK8vtqxukY6doBAlbCuceiNgUMWD/CjMKOtWQQs5PvNeNgGjdZfg
	68ISnj72zkTfsUZu1ikVT3ko2c+OD9kTymgtYJFcQrkX5uG7JJnwykyvP6MJTioIeb4sdc+/+pK
	9enI/mh15MR46CKPwVfr1DGWg7NZjszahrcmoZfyQ0aVgDymfJ0DRJ9hnug1u3O5HupewqAKBFF
	44ErsaiUMCeS
X-Google-Smtp-Source: AGHT+IFjt2A9M6ezPd5VBi7tY8xbmkDivswzBqIJ1IjBbbvAwBvVpU5dhefITGAR+NzE5MkF6UOYYQ==
X-Received: by 2002:a05:600c:4fc1:b0:434:f218:e1a8 with SMTP id 5b1f17b1804b1-4389141c21cmr326360155e9.19.1737987059384;
        Mon, 27 Jan 2025 06:10:59 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd54c04bsm131304995e9.27.2025.01.27.06.10.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 06:10:58 -0800 (PST)
Message-ID: <4dff1359-2be1-4ad7-b7f0-22e9f968edd2@gmail.com>
Date: Mon, 27 Jan 2025 15:10:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] kernel append file with dts in SRC_URI and subdir
To: yocto@lists.yoctoproject.org, david.daniel@vrag.ch
References: <6761dc4a56d319b617e61e18fb37df8e6c5e227b.camel@vrag.ch>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <6761dc4a56d319b617e61e18fb37df8e6c5e227b.camel@vrag.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 14:11:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64637

Depending on the order of unpacking, it is possible that your dts file 
overwritten by the actual kernel source.

Try adding it as a patch?

On 27.01.25 12:12, David Daniel via lists.yoctoproject.org wrote:
> Hi
>
> I am trying to figure out why the following snippet of a kernel
> .bbappend file does not populate the custom device tree source file in
> the proper location:
>
>
>      FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
>      SRC_URI += "\
>       file://defconfig;name=config \
>       file://cf200.dts;name=dts;subdir=git/arch/${ARCH}/boot/dts/freescale \
>      "
>
>      COMPATIBLE_MACHINE = "(cf200)"
>   
> It also seems the configuration is not applied. If I rename the
> defconfig file to doesntexist the build fails early. The defconfig file
> does get placed within the sources-unpack folder though. Within the
> sources-unpack folder there is no dts file though and the dts file is
> as well not placed within the dts folder of the kernel build or source
> folder.
>
> Is it possible to modify a kernel somewhat like this? What am I doing
> wrong?
>
> Thanks for any hints!
> Dave
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64635): https://lists.yoctoproject.org/g/yocto/message/64635
> Mute This Topic: https://lists.yoctoproject.org/mt/110836825/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

