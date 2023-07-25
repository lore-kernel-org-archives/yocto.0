Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E81C0015E
	for <webhook@archiver.kernel.org>; Tue, 25 Jul 2023 09:46:53 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web10.16636.1690278407795449689
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Jul 2023 02:46:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=sMxYEzep;
 spf=pass (domain: gmail.com, ip: 209.85.208.178, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2b96789d574so72787331fa.2
        for <yocto@lists.yoctoproject.org>; Tue, 25 Jul 2023 02:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690278406; x=1690883206;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6g49B22B2jm8uorIZ4XSQGgFVlLbh8k1qPeUXRTp3Sw=;
        b=sMxYEzepwajRML2mxLI9ckLHBJzvnFV+Mb8j+e7u9BWJX87KRObxh9UYYbJ9xUtXQp
         hWc1ND8yvnzovVo0NIxMH19UZZ4WVG/HqtY3Peft/1ktZzEtgBTuWldBy2+jt4tRUPiR
         zaPvrUTMr/YWOctC3MneXa3E+ZTuMsxDvLmKz/pyKcqarQHYKoepC+XIN+WVjLcZX4W1
         4GmXf2fNVRlyh5hzw+eaEEiat5wQreUkp6SwCvcr4eK/lvg0Chh28Mz0z8IZ3ZBPFJWx
         99uXiZPwv6Znn54q6DKKZI7Vbb/3VyX8zA7gkNa8nBskvwV/8T6SLnDcmLSqaklevvvX
         GT1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690278406; x=1690883206;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6g49B22B2jm8uorIZ4XSQGgFVlLbh8k1qPeUXRTp3Sw=;
        b=GzVFTapTBdzzmFA2asjq7Ip6y4JeLuwj1QS/lHzdVkzuLh7407mrK1gtpCzORA07WN
         V4EApHWVGaCBRdmzAeFZiNWCOA2t/mqSU2kn2nMHPTBsX05S0wFWtMTnVt5S39tE4he0
         qfhgwFp8D098MB2d8I8ecWSQsIkTgGBcAQAD9d589cGDVndFg1RbhlT5he2fonCk+kOh
         xIgRkaqd3pVWK6df2dqScPGBeq4QOms0qMFSua7Pixva1P0F1rhXW5PCcv/ltr/FAWVL
         tzXEDpdt5c3tS5hnYQAKkEHe6xxcFt5yRydRt+4pzmqYJrx/OwK7buUt7YryZEP1HGai
         2eww==
X-Gm-Message-State: ABy/qLYSK76/vjAgXyKgmhV9yLZI0t783YM+s9HWYAKoMBdjU0adtk2+
	3xX0djVr50OF2HksGHkvVCHr4pkL/XbUq4AR6Nk=
X-Google-Smtp-Source: APBJJlGYuNaCf0PXPXTQV5pCb+bnv6VZacg/vdKdhPkGWdBijFmAQCh5yrxe/pyUZ/WgbqIqX6dtlrEPKFJsauRCJB0=
X-Received: by 2002:a2e:8684:0:b0:2b6:dd13:4f26 with SMTP id
 l4-20020a2e8684000000b002b6dd134f26mr8248122lji.46.1690278405581; Tue, 25 Jul
 2023 02:46:45 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.1774C9587BD7C430.21156@lists.yoctoproject.org> <bfe983ba-6e04-1956-1e68-52d37dfe23d9@bootlin.com>
In-Reply-To: <bfe983ba-6e04-1956-1e68-52d37dfe23d9@bootlin.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 25 Jul 2023 11:46:33 +0200
Message-ID: <CANNYZj_ozm=8JgnE4ZFpUXiHb=6X_juUoh7=A01Xi8f9PjTtCw@mail.gmail.com>
Subject: Re: [yocto] RHEL 8 support under Yocto
To: michael.opdenacker@bootlin.com
Cc: steven.monsees@baesystems.com, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Jul 2023 09:46:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60646

On Tue, 25 Jul 2023 at 11:30, Michael Opdenacker via
lists.yoctoproject.org
<michael.opdenacker=bootlin.com@lists.yoctoproject.org> wrote:
> Good idea, as this version has been unsupported for a pretty long time now.
> A good idea could be to switch to our Kirkstone Long Term Support
> release, which will be supported until 2026.
>
> According to the documentation, however, RHEL is not supported. However,
> we support Fedora and AlmaLinux. See
> https://docs.yoctoproject.org/4.0.11/ref-manual/system-requirements.html

RHEL was actually never supported directly; the testing was done on
CentOS. With recent fallout from Red Hat's decision to no longer
publish the source code for RHEL, I'm not sure it's going to be
possible to gurantee RHEL compatibility; depends on what RHEL clones
decide to do and how much they're going to diverge.

I'd rather build on a non-enterprise distro; in a container if you must.

Alex

