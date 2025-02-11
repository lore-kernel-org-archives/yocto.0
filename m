Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FE48C0219E
	for <webhook@archiver.kernel.org>; Tue, 11 Feb 2025 17:05:36 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web11.4674.1739293534349870188
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2025 09:05:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=K2pj1V0H;
 spf=pass (domain: gmail.com, ip: 209.85.128.47, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43690d4605dso40219535e9.0
        for <yocto@lists.yoctoproject.org>; Tue, 11 Feb 2025 09:05:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739293533; x=1739898333; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IfuYNW7iW8nLd+/4579QGuhvZEmqkErbCNGO7s58m90=;
        b=K2pj1V0HsEbc2YK/FQE5OEMbYqCKhR33rj7pK3TYLELPio8IDVpxD1nthQ113PZJ9f
         R08sCkkKufCTvKE+Cor+7iPBIo1cyqnRxHWt4VsHj3rAMaxROzJl+1aEK+w+2VahbFsK
         Faj2rrzQRMbxByRerfQvqGegB5QHZkLVwQmdmd44lvw9ZunuX6AB8iVmz0QCPzzgmq7g
         PyKR6odyQSLqp07L1a6cjscxKq8CxMla+qoc3r7E7+FfxAI+ayBYJc9Mk8+0Yu+KKfyc
         0l+V0ATvxbXXN8PwZFv319iG7Bf2/DP3F27b6gg1LwFgw+Xu0vVyBbf5QovzCH/3K/8A
         FSVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739293533; x=1739898333;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IfuYNW7iW8nLd+/4579QGuhvZEmqkErbCNGO7s58m90=;
        b=Tvt1ISLU7qzNu2z+IIi2ZtS8P5/gN5XnS/UXWC3OkibXWZuPCmZP6bHFbrU+Tlk0ID
         2VpbP2AsGva4x9KvROJZHWjvPoDr/MkS5n+0/Ay7kOJ7X8Uq6UHeaZo8StC2Zi4PSGCk
         KsbJ4TIDCrlCc8zUQInwsy/8S4w7vSq7qbh7Us8ZRIsLSKH7lhq0yAU0EkoPdSnjpJeU
         qqYm7FsF82jTWECiM4Go6MzPQCOpyJ6hpS3tNUm8Yp1y6J0yDhoW9oLSP9wFd4VLXC8X
         7sBwXn3q3OU0H2/ljIhX63L8qzZzjcsMshAQEJdVXskMP/J07AIAe1RD3w3aebn7Al0L
         qlOA==
X-Gm-Message-State: AOJu0YwMArBP6XLpoqG60mgCox430o9qKOjVp+USoh1HSKR0eOwnJ5Zb
	noGMqIHeDRv5X780T8b7nxrfwNeFb78cJmwfnX8GTGroethhbqSsQEbu4A==
X-Gm-Gg: ASbGncv1HA8w86N5BE15iIzKSEbr0p7MjtyxyQTCMwnMpmLzG1kfzIvWAVp1uk1pKP1
	Exle+oDMugtXn2nA2lOe13pElLQqBZqScwxaoSA+xR86D469F5/sTxGBstvD3tsFTAX/EAUlSm9
	+VaQ73R96nuyRzbanvz4SR+DG709BoDg5Hrx1u2T4sUrVH8XMww4GwQaAembfMD2tw5RGlEyJ5j
	+v/PBLaLJDCCOyJ7fPoLXh3fDm7xIl5OQGgTZrEgEFW5vN1T7SB2iAuFWoy0ZsIpO6u5Vcpbi2e
	aWksCaie6YTweJPQCnXYP54=
X-Google-Smtp-Source: AGHT+IHP4zZqqDGoPEULm1NcYzw1r8A99FB5rMabAiKbZ2/7wvzjpzFrVSD68uF3Yw5lZHGJ4VBbEw==
X-Received: by 2002:a05:600c:4706:b0:439:4d00:3ade with SMTP id 5b1f17b1804b1-4394d003e08mr32840625e9.26.1739293532133;
        Tue, 11 Feb 2025 09:05:32 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4394328fcb8sm72084095e9.32.2025.02.11.09.05.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2025 09:05:30 -0800 (PST)
Message-ID: <3a8c9af1-8b3c-426d-8ddb-038981c5e561@gmail.com>
Date: Tue, 11 Feb 2025 18:05:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Installing pre-built DEB files
To: yocto@lists.yoctoproject.org, r@cmss.com
References: <leMn.1739290302619551038.wlRL@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <leMn.1739290302619551038.wlRL@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Feb 2025 17:05:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64769

Your first destination should be the log.do_install file in the WORKDIR
of the recipe, which should have the output of the dpkg commands. That
should shed some light on this mystery, hopefully.

Sidenote: DEB files are actually two compressed tar files in a single
archive. If nothing else works, you can extract the tar files with "ar x
$DEBFILE" - the data.tar.* file has the content that you can just copy
to your rootfs (it also has the folder structure prepared). If you pass
the tar.* files in the SRC_URI, even the extraction could be handled by
bitbake. (Assuming that no post-install magic is done by the deb files,
which would be at least unusual for libraries and -dev packages)

On 11.02.25 17:11, R Keith Beal via lists.yoctoproject.org wrote:
> I am working with NXP's Flex-Builder.
> I need to add the libraries and headers for parted.
> On Ubuntu there is a package called libprated-dev I am trying to
> replicate.
> The LAYERSCAPE SDK is using bitbake 1.5.
> I know I probably shouldn't be installing DEBs directly, but, adding
> recipes for libprated and all of its dependencies is beyond the scope
> of the project.
>
> I came-up with this recipe, it reports no errors but the files are not
> installed in the RFS.
>
>     SUMMARY = "Development libraries and headers for libparted"
>     #SECTION = "console/tools"
>     LICENSE="CLOSED"
>     LIC_FILES_CHKSUM=""
>     SRC_URI = " \
>         file://libdevmapper-event1.02.1_1.02.155-3_arm64.deb \
>         file://libudev-dev_257.2-3_arm64.deb \
>         file://libdevmapper-dev_1.02.201-1_arm64.deb \
>         file://libparted-dev_3.6-4+b1_arm64.deb \
>     "
>     SRCREV = ""
>     PV = "0.1.0"
>     S = "${WORKDIR}/git"
>     DEPENDS = "parted"
>     # inherit pkgconfig
>     # Install in this order
>     # libdevmapper-event1.02.1_1.02.155-3_arm64.deb
>     # libudev-dev_257.2-3_arm64.deb
>     # libdevmapper-dev_1.02.201-1_arm64.deb
>     # libparted-dev_3.6-4+b1_arm64.deb
>     do_install() {
>         touch ${STAGING_DIR_NATIVE}/var/lib/dpkg/status
>         ${STAGING_BINDIR_NATIVE}/dpkg --instdir=${D}/ \
>         --admindir=${STAGING_DIR_NATIVE}/var/lib/dpkg/ \
>          -i ${WORKDIR}/libdevmapper-event1.02.1_1.02.155-3_arm64.deb
>         ${STAGING_BINDIR_NATIVE}/dpkg --instdir=${D}/ \
>         --admindir=${STAGING_DIR_NATIVE}/var/lib/dpkg/ \
>          -i ${WORKDIR}/libudev-dev_257.2-3_arm64.deb
>         ${STAGING_BINDIR_NATIVE}/dpkg --instdir=${D}/ \
>         --admindir=${STAGING_DIR_NATIVE}/var/lib/dpkg/ \
>          -i ${WORKDIR}/libdevmapper-dev_1.02.201-1_arm64.deb
>         ${STAGING_BINDIR_NATIVE}/dpkg --instdir=${D}/ \
>         --admindir=${STAGING_DIR_NATIVE}/var/lib/dpkg/ \
>          -i ${WORKDIR}/libparted-dev_3.6-4+b1_arm64.deb
>     }
>
>  
>  
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64768): https://lists.yoctoproject.org/g/yocto/message/64768
> Mute This Topic: https://lists.yoctoproject.org/mt/111125016/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

