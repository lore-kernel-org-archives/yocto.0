Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36D82C8302E
	for <webhook@archiver.kernel.org>; Mon, 30 Jun 2025 09:54:49 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web10.35802.1751277279031704735
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Jun 2025 02:54:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=k++wVTR1;
 spf=pass (domain: gmail.com, ip: 209.85.208.53, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-60c9d8a169bso3273329a12.1
        for <yocto@lists.yoctoproject.org>; Mon, 30 Jun 2025 02:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751277277; x=1751882077; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2D1tRAqZoP//oHfF3Y/5rBrnoc/2YMOsxH0kLXR8Azc=;
        b=k++wVTR1xFSaZ3i4m/oykeR9eDikHIZCtPMVa1ujY+2lZojhiHyD6cF8ozTvh89kmx
         8VyVGiYOeQik3xGIXjdKBVAycxyv45WnGrNQyGih3zv2VQkHmFgeXYb32gx5Wfxu6Swp
         Xm1hUEWWoH8sjbhaQz89Uyt1CuIkLbeEzBz7zQRnuG4pZvLwxmTIbG4Ha5u0RkrFhVU3
         AkxzZrcpZbV4p8p8brSnSFKZ03QieNzRk3dC3/v88HEtcO2L2jkHFeqr+LNRRB+S4a4Z
         elm8Glojc9rClliiQnlQTnThgYGeLdw6Q0C0ze43vLzkxHUDHk4z/1+9nCVRa6mtigM5
         DkIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751277277; x=1751882077;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2D1tRAqZoP//oHfF3Y/5rBrnoc/2YMOsxH0kLXR8Azc=;
        b=wJO7nUQmMDaCOXen7rsqXzKzNIueT+JJ+2nH7ZF2Gpi/wYQbNTiLuxemJhJRZJl137
         KsxC4eADpZ4RM6CTNjqP4xLzl1XwKJMK9Q9XMYg0gAvvG3ounagx+wYzH0zHQpDPHH0L
         0Kj8RiZ2nGnKvQ/lQAPRO03iemgnmj6J+Z5YnFkpgj/384wLfE+zxjkbRA/J/8C9j1QG
         jSUSz6F38i9yXlCitI9vv2MPO8vLuyXrbQ9vylM+dfzl/BiBL6l3zYDgd9zuMZh9xCLp
         WezjA8SQN1/Q9iKRAgBifGfUf8No220R5slE1K8S2bapFT/qq9mAaykCTAItQvtxpiEp
         hKFQ==
X-Gm-Message-State: AOJu0YzidSk7zYpmH+aPs9dGsdvlZG0TCSWI+yDkBYIxtt66jyG4laA1
	7JFo10SZjRU/SEm5YKr7AFvXt1lhAU6/UZW3FCYnDMc51QLorPpq49oxv4X6lw==
X-Gm-Gg: ASbGncueS52sSYA3Kh5RpnlXV7MJKGkYOcHHkYzjkerysu7d9aAwOv3cpirgb5CZOoC
	ywGEUIlrx/W1ULaF7hsuN0GOTHsUE67GQmd97vzi8PZuV3x3jtXL2Xd/Z02K2bqWd6oM9paWujf
	FR4vItA29EzPfEtBnfMeyFIbMGxpyX4YZB6iVd6B2Cmbuf0M+px70rM3IoBGOUc67Gs4vLr1YBG
	7MBePUIk7Cn8ubiYDOlIGl8rTbBpJLfs9kp2SQ2iK6iNSpvYWiuUrtPXkYd1zZ3kCz2r44BqDiJ
	fC8yAyWHFmEtxmOU4jq7Onphm08HBubj9Uhquj7xjOoS/VBa2LJEr8CFVpRqOsajxFHxPg==
X-Google-Smtp-Source: AGHT+IEOmt8xETQHDRlGciyeTXZFn8P58bYswTGNjaOcnzddZkXy7kBWmGwLgqfrJmTQz59zG8N0Zw==
X-Received: by 2002:a50:ccc6:0:b0:60c:6c85:48dd with SMTP id 4fb4d7f45d1cf-60c88e3a757mr7934454a12.23.1751277276954;
        Mon, 30 Jun 2025 02:54:36 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c8290d670sm5573691a12.30.2025.06.30.02.54.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jun 2025 02:54:35 -0700 (PDT)
Message-ID: <467a4e38-bcb5-4b19-a0f7-70f32974bb6f@gmail.com>
Date: Mon, 30 Jun 2025 11:54:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] WiFi driver on Radxa Zero 3W #devicedriver #make
To: yocto@lists.yoctoproject.org, ferdinand0022@gmail.com
References: <pqOU.1751117175071326506.9ARF@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <pqOU.1751117175071326506.9ARF@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Jun 2025 09:54:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65562

On 6/28/25 15:26, ferdinand0022 via lists.yoctoproject.org wrote:
> Hi all,
> I am building a custom linux for Radxa Zero 3W with Yocto. I am fairly
> new to yocto project.
> As of now almost all the peripherals are running. But the WiFi chip on
> the board needs AIC8800 driver to run.
> This driver should work: https://github.com/radxa-pkg/aic8800.
> I tried building some custom recipes and running, but can never get it
> working.
>
>     Here is the recipe I have written:
>     SUMMARY = "Aicsemi aic8800 Wi-Fi driver"
>     DESCRIPTION = "Aicsemi aic8800 Wi-Fi driver installation"
>     LICENSE = "CLOSED"
>     SRC_URI =
>     "git://github.com/radxa-pkg/aic8800.git;branch=main;protocol=https"
>     SRCREV = "ac5c387ca74e17e91d14d87cd3ba140bb21faf6e"
>     S = "${WORKDIR}"
>

The S variable should be set most likely to "${WORKDIR}/git" - most
probably this will be the reason why it cannot find a makefile, because
it is looking in the wrong folder - by default git repos are checked out
in this folder (in the current stable releases, at least).

>     inherit module
>     # If the Makefile is in the root of the repo, this is fine.
>     # If it's in src/, set S = "${WORKDIR}/git/src" and adjust
>     accordingly.
>     EXTRA_OEMAKE = ""
>     # Install the kernel module
>     do_install() {
>         install -d
>     ${D}${nonarch_base_libdir}/modules/${KERNEL_VERSION}/extra
>         install -m 0644 ${B}/src/*.ko
>     ${D}${nonarch_base_libdir}/modules/${KERNEL_VERSION}/extra/
>     }
>     # Ensure the module is packaged
>     FILES_${PN} +=
>     "${nonarch_base_libdir}/modules/${KERNEL_VERSION}/extra/*.ko"
>

This line looks outdated - assuming that you are using some non-EOL
Yocto version, it should be FILES:${PN}, instead of FILES_${PN} - this
syntax has changed some versions ago. (If you are using an old
pre-Honister version that does use this syntax, consider upgrading to
Kirkstone at the very least, which is a still supported release)

> I am getting different errors, the last one being - no targets
> specified and no makefile found.
> I strongly believe there is a different way to write a recipie that
> installs the driver from git. Much obliged to anyone who can help me here.

There is a sample recipe[1] in the openembedded-core repository, that
shows how to install a very basic external kernel module - I think your
recipe is almost there.

[1]:
https://git.openembedded.org/openembedded-core/tree/meta-skeleton/recipes-kernel/hello-mod


