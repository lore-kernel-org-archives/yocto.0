Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8EAC02180
	for <webhook@archiver.kernel.org>; Mon, 13 Jan 2025 20:40:18 +0000 (UTC)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
 by mx.groups.io with SMTP id smtpd.web10.28460.1736800809749165242
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Jan 2025 12:40:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=oBCqV5TN;
 spf=softfail (domain: sakoman.com, ip: 209.85.219.172, mailfrom: steve@sakoman.com)
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e53aa843a24so8189308276.0
        for <yocto@lists.yoctoproject.org>; Mon, 13 Jan 2025 12:40:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1736800809; x=1737405609; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cITb4+8x/45Gjq8rkjpCg+NogSzen/dFap2SiuxhCQ0=;
        b=oBCqV5TNEaL7xwPYEsgPqGTi6/2LvUtwaIfccPP44i6D/VXbjZxYuj0nMrtVOJ4NB4
         TV1aedSIUN17Y+QwfH+5F3Fh0uQUaiUoKvQVCaCrBKcbPoGZkEmFDgPvnWPjJFvfjeaq
         WAQhM3PhqQ2CLTqakrVKQw+oos029zWU9XYqB6NCkDDuiSuHLjLuO8AfU4H1LF+iqQ6u
         OQWLooVxUas6B9AtE1aUSBRLq5dsgmXb3YyVCkmjCgTI3q8yswrHjjkQdpMiajRsIwyV
         tdyb4RszRLGSEZZRaSI2+Wc7uxPzQqqa2PcuBLUqWzkwUcSgvzmg67TKsPEIFY0sUfRp
         vjOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736800809; x=1737405609;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cITb4+8x/45Gjq8rkjpCg+NogSzen/dFap2SiuxhCQ0=;
        b=e+UoqCogQy5MZBhBznQV3bYzfAx67dgWGLVLXqV0/ddRImiaKuoTmsIfu3HlggQMeP
         JjgIBal/nwlfEN3TVaaFODheDEJRSGButKC3IiM+8AMnhMgyy5yAkO58L8AKR+Wl6d+G
         9Yk6NzUZ76jKWO6nCccMGE7E9aursALKzcfcDwJ2oxHNUIa+wYdjK7LNcjgsLLWMQ/0g
         02vUpcJ3WZNDtUZvWMvFxyz0karBgg321BquFBjlWarczpByxLoSjz7f71fjqUzi7xQE
         8FrRv2GF2mBcQRjdzr22i9M3cHjIK+PMr1uY7Ev4EW6Q7jwx3PMNGwjBJ3QbVDRvpnF+
         hTGQ==
X-Gm-Message-State: AOJu0YztZ0wVXGAlBp0So6H/Ryca6nuLWY7FttkIhxJrofnrYXJDuEJU
	WPUvhYzz2Rlh+9p5hm7aYdH/YmUvrRFtZfyvwIOWM+XQnNvjJor6Xqe5GcerO7ibmxw6jdB+i7S
	4VtFb7PPPl3v4UYVL60m9gCoiJcM+U3HAwtmABAp7WoUqQmYAIxj5dQ==
X-Gm-Gg: ASbGncuimfkfWjulpV82P41WhEexbsEDdP9c6YzmSVGuhpQWozRpfDQX4DF4MqUg5Ns
	dCuOSlF+Qc2EHWf4Csk1rJD8jdvxGoaqhu8N9Hw==
X-Google-Smtp-Source: AGHT+IESbT+TcyHdS4nuMUuXrjhGHfAKhKXAqVCJnLWxFEko+UPfkILgRFcc76tHvRG6iPeFKX/oLLIM06GDC+nDU68=
X-Received: by 2002:a05:6902:18c2:b0:e4c:456b:19de with SMTP id
 3f1490d57ef6-e573a748cb2mr7631476276.16.1736800808698; Mon, 13 Jan 2025
 12:40:08 -0800 (PST)
MIME-Version: 1.0
From: Steve Sakoman <steve@sakoman.com>
Date: Mon, 13 Jan 2025 12:39:58 -0800
X-Gm-Features: AbW1kvbz59Lqe9bcYUezK1fdu5tVDMa7Mf8Uw2J_6Nf4QuHUCW7j6UXOznEPEZo
Message-ID: <CAOSpxdYu46-Ex3O_uyVhKc7rqSJhoYO8VXBOjTGm1tOOt4y=3Q@mail.gmail.com>
Subject: QA notification for completed autobuilder build (yocto-5.1.2.rc1)
To: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Jan 2025 20:40:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64539

A build flagged for QA (yocto-5.1.2.rc1) was completed on the
autobuilder and is available at:


    https://valkyrie.yocto.io/pub/releases/yocto-5.1.2.rc1


Build URL: https://valkyrie.yoctoproject.org/#/builders/29/builds/801

Build hash information:

bitbake: 1452e74cc4ddfaadc6537a049877a66cec253c8d
meta-agl: 4ba957670efcaca623b69f24a377cf7666af193c
meta-arm: 0ef5fd96829b68977e6eb0d3b5e092283ce89f6f
meta-aws: 758084f63000fde083af5c76d2bda438e804c709
meta-clang: c709a5196f1e8654425b43b478064395386c36d4
meta-intel: d2e28940027808ea56f9d38deadb200a99a89805
meta-mingw: 77fe18d4f8ec34501045c5d92ce7e13b1bd129e9
meta-openembedded: 5d54a52fbeb69dba7b8ae11db98af4813951fa61
meta-virtualization: 247ea9c3880a257003ce2cc566fcdbb307ea4374
oecore: 62dfe689246d648f9970a5476716e486b1a33765
poky: ff9ca74e170480578fcdb1f7bcd897f0e69e46a5



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org

