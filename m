Return-Path: <chrisfriedt@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09658C47090
	for <webhook@archiver.kernel.org>; Tue,  6 Dec 2022 18:38:04 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web11.56404.1670351877575425373
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Dec 2022 10:37:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=buhkl8Hc;
 spf=pass (domain: gmail.com, ip: 209.85.218.52, mailfrom: chrisfriedt@gmail.com)
Received: by mail-ej1-f52.google.com with SMTP id qk9so8381047ejc.3
        for <yocto@lists.yoctoproject.org>; Tue, 06 Dec 2022 10:37:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EM36B7wAdsoiRW5sTQXb1oZwddOPFegAMMDBNM0Jmbo=;
        b=buhkl8Hcf7jtFspT+PKy2rJ4nkp3PxEAOq7eKBRpox9D1frg72+uqIUwtByxrz0N8h
         Oa3BDohLr4x9KaFURRtoOTsNWW91J1a/MmBFwrBgODwV5Qo+MYFArnya2wZKQhH70ddO
         cv0genUX9JuSEy+HKRWEvTNSAp0cI7g+GmR4d7fHDxh+TTikcTuBuliJZhIK6uNroJBx
         3Wg75QdI0LEsgZ+AKcN28PDGZx0qIJjDuPpRA+q/n8lnVrXLhY2icY/vMymYVrvP/VOU
         M+egcuXG+BUrZDShrCgki0dQi5hdPCsZT+/Juj2D6z3UR54085yaXVtzMLMPE3j2bLVK
         sgHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EM36B7wAdsoiRW5sTQXb1oZwddOPFegAMMDBNM0Jmbo=;
        b=QQeA7dhHbTT1N4VP0Jj/cWP65yUtQp4YoyQuBAFH6cKrirJf0TXkJbbPGeCzZv2oeA
         ZU1PJxhgsxUtUnh1vS49GIaotYltlvxOtjxnlSlcbfMU2NPvqgHlBWpN7qdLJ5R06HKf
         qFf9njLOz9RBcA6aL71qApcPXN5vMAMTOOv6Kr+N/Y+sN95TZgNuqM0kpnrGAdpcPt96
         arVQHIqexx8hX9npPAnaGyjQmZ0k/iGNQaB8lemUIWXpEVLcg2QvYDlaTRQxKTT/Mytg
         l3PTqkCRnM7lpe/DcBoj5GhI32ULAf5Ex761RYPzGwa3COfbnPJERJzHFt5wbdQ33RE5
         W4BQ==
X-Gm-Message-State: ANoB5pkqR8fexKgfm7GeG7GgCQzP0ldmfeHAHu3MfUI36tnDzOi3rl68
	EgFbAyxASWxzI/Th4Y7kj3zqGKzCCEbZot3OCjhR/HjszYbo2A==
X-Google-Smtp-Source: AA0mqf7irBDI+bnRyo5pFxHMTh50ffSujWjgGx3L4T0yJQFtYe/B/spyVztKP9swcekPdQXsDKlbYXhgh87BTo3IFiU=
X-Received: by 2002:a17:906:f157:b0:7c0:b0fe:263a with SMTP id
 gw23-20020a170906f15700b007c0b0fe263amr19837239ejb.496.1670351875621; Tue, 06
 Dec 2022 10:37:55 -0800 (PST)
MIME-Version: 1.0
References: <CAF4BF-QXr8QVZOF_pPonpJbPN5O5sNjDaL78q1b5qbEcobhBqg@mail.gmail.com>
In-Reply-To: <CAF4BF-QXr8QVZOF_pPonpJbPN5O5sNjDaL78q1b5qbEcobhBqg@mail.gmail.com>
From: Christopher Friedt <chrisfriedt@gmail.com>
Date: Tue, 6 Dec 2022 13:37:43 -0500
Message-ID: <CAF4BF-ROFM-JcqHdoYcVGTWaHZkE9g=GZC=rN4xreiSUDBfhHQ@mail.gmail.com>
Subject: Re: do_install hangs on native tasks
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Dec 2022 18:38:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58741

Build Configuration:
BB_VERSION           = "1.48.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "i686-zephyr-linux"
MACHINE              = "qemux86"
DISTRO               = "zephyr-sdk"
DISTRO_VERSION       = "0.9"
TUNE_FEATURES        = "m32 core2"
TARGET_FPU           = ""
meta
meta-poky
meta-yocto-bsp       = "HEAD:8daedc01101e686fc640c164004c0ec4e5f90b4e"
meta-zephyr-sdk      = "HEAD:43582cc208d97cf32c49973ff4ff5d994ae41264"

