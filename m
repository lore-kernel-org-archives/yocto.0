Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C03C0218D
	for <webhook@archiver.kernel.org>; Tue, 28 Jan 2025 09:11:56 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.web10.13689.1738055510286697204
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jan 2025 01:11:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Agm5vmIh;
 spf=pass (domain: gmail.com, ip: 209.85.219.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-6dd43aa1558so49869096d6.0
        for <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2025 01:11:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738055509; x=1738660309; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zHVmZCIrUsFu1VEbqeq4Jf5s9VKLo2HdwZVvOAzFxG0=;
        b=Agm5vmIhSI3B2rjjV0GIH1E3tKYhyXkKiXIhDe/cJLdghwg5EvIJGPWwRv7/AfWayE
         6kE+/StoAW64gVRNu7AQ3ihBqx4c6z6BNurSHPxhTLJIyqYUyI+fadhMD1ErtyUAiRJ1
         c0mYqwqp2A6ST6e5h9yRhgD1/gyOwA3UNTKQEfU76TKrjiV9wD1EMSD3KiKDnLf2Fyx9
         QrYs5gUw8f2sxfkObqABvR9HBkrBmdrApb7OduJRE4cUdtHBq4MBm5GrLpD+U5Pii8fT
         E7WwnXvncHCeA0hPlsGizzv8PfT5OF5vnWOAjYOgfccKBEHS3qaDCfO/eCP5tQKCx/jY
         nXfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738055509; x=1738660309;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zHVmZCIrUsFu1VEbqeq4Jf5s9VKLo2HdwZVvOAzFxG0=;
        b=b1Map8n3Q7ZunfXvHVR87yhYgH0wWSA+e9bKGyG9t9l3VaVVy/qQaVr77Decv0IWEX
         zez+kvkgumlW/gTx+lAg6/bALMm1lOv6zZZg9QMzUbLUYkA8cFKnOf2lxjnsCtROV2lM
         i+LvtesKjgkXXEm+2dolkCu6lIFllJ5GMpvcLFIWRVYu7LlzN0awn1hJfLyKLgWGtWOn
         KNFo3HJ2n/JankV7wmJiB5BMSPtQhfMmYZTbkpJuRTMiXL4HY8bNFKV+TxrEcgLLmEBd
         a7dXhc+9JeHyynN7Ah5GVCc5yciBUvP+/+hPtZAcMhmTvqwCi+KwkYdjUvWGwMTDbtiW
         ekVQ==
X-Gm-Message-State: AOJu0Yw1VKdHwteI3R4GgXaJLLVFt47t4pGw7QsuyixdVMzklZII/nkh
	pDiguhdj+Sbqw9Qzo4awM8wjSsONWZVqo5Wlqzyv2v4h4jFh7Ak08v7NUCQb3DmhLkvYELlKF/x
	i+BG8s7IhpZbDRZUgVetEkecn15uwtA==
X-Gm-Gg: ASbGnctXZqmvWqOpTdad1PqUCmFa492AL21RLTGkLNrkQ5iF0ytPAMk19612xCKPhr3
	eZUzhkr1YRWHwxe/6yAlE/Qao5USLsL9d4hXedz4coPPmFJFxdOI7ImIkE5zS9fiEJWIlqVeAXy
	uzSU1iyqm3KpkdjMLbuLHScAZqjgoT4WQ=
X-Google-Smtp-Source: AGHT+IG1PdbDXOXST6VY8cxlMKOMZYzK3x2ZOTzJmii+3DZEp4dNdjiWmWSJzBD52Ik6gaTzhazk10lrxN4uWivnalI=
X-Received: by 2002:ad4:4ee8:0:b0:6df:97ea:95dd with SMTP id
 6a1803df08f44-6e1b21b8f4bmr666818056d6.17.1738055509345; Tue, 28 Jan 2025
 01:11:49 -0800 (PST)
MIME-Version: 1.0
References: <aba92c6d-924a-4747-bb66-c8338b334b97@gmail.com>
 <29362.1738035941944973180@lists.yoctoproject.org> <7f42b6dd-7524-491a-a664-f7fa816cc370@gmail.com>
In-Reply-To: <7f42b6dd-7524-491a-a664-f7fa816cc370@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 28 Jan 2025 10:11:38 +0100
X-Gm-Features: AWEUYZkHSzSj8NXvOPt9-NNeMzfQPtN_JsFaHDvAHQ4yLO63yuMaqSItOPtRVoE
Message-ID: <CANNYZj-NpT=PWnFrx9o2yH0yi-Su8YLYUGEVmcxjHcq5jXsu2w@mail.gmail.com>
Subject: Re: [yocto] [scarthgap]- unable to build image due to Nothing
 Provides error
To: yocto@lists.yoctoproject.org, skandigraun@gmail.com
Cc: ganesh.manoj.mahajan@signify.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2025 09:11:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64661

On Tue, 28 Jan 2025 at 09:21, Gyorgy Sarvari via
lists.yoctoproject.org <skandigraun=gmail.com@lists.yoctoproject.org>
wrote:
>
> I see - this will be the source of your problem, your image depends on
> this package, but it can't be built due to this license incompatibility.

I need to correct you. The image does not depend on grep, rather
util-linux's ptest package does, and in all likelihood that ptest
package never gets installed into product image, and so neither does
grep. It does not seem realistic to eliminate util-linux from build
dependency chains, it is a very core recipe and needed everywhere.

The first step to handle gpl3 issues caused by a global license
restriction (which prevents gpl3 items from being built at all) is to
remove that, and replace it with a per-image restriction, where the
check would happen at do_rootfs time. And it is only needed in a
product image that actually ships to customers, testing images can
have as many gpl3 items in them as needed (for example, gdb).

Then if do_rootfs still fails, it becomes much easier to break
dependency chains that lead to incompatible packages being installed,
e.g. by disabling readline support.

Alex

