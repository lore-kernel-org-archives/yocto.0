Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF3EEDE9B0
	for <webhook@archiver.kernel.org>; Thu, 14 Sep 2023 12:01:58 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web11.10283.1694692914406555604
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Sep 2023 05:01:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=WmNjr8iN;
 spf=pass (domain: gmail.com, ip: 209.85.208.176, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2b95d5ee18dso14112221fa.1
        for <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 05:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694692912; x=1695297712; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EjbCvc96kObuyT/D94m3Hslh2Pl0l4YWdBmd1p9wUpY=;
        b=WmNjr8iNpmEigRYpQMKpXXyaBbJvW08qrKR67cAlIDR4HBZQANcpvcf/2NtqYaVDk5
         0GpfzTBD1PvdBPlqA8MQGG0FRefZzD5SieJZv3rAIVSuhcWKmPf7/fxS5BX8fnBWFkMd
         Qn4PxI7gktqTpHsERyWe55aTNszJu+uGE82OgGh+1GqMDU4+B6rivZj/RNVpSpmqr/aU
         NZO7J6sWKliGxKXWBJDdIaQ5tieToDNmnXOKYyFloW4UGdIoXoEX6w/ob1xyWosZeKNb
         r0Y6NjCMj3mEkGzwaCtn3ih30Ml25JVIdY5O69VDHb0ULKj/EBwdD7G+ZqSlOaJeJgj8
         yNiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694692912; x=1695297712;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EjbCvc96kObuyT/D94m3Hslh2Pl0l4YWdBmd1p9wUpY=;
        b=bxmarkE8wsxyzxvGPfngg2Z84RMpSg+aqX0D7fLqTnjijjN3LOzY6/ddKao4e9g1Ju
         SZRPJdb7CxBeJTF6UuzTTa28w22tNLb66WedXG2dlSO77eGPALAojjZnrk2bnjLPPa0t
         TlqcixeUP6eY2eEYw3b5JAIYMsPY2Kgf3svF7qs+qbnbEyjjaGsqWKMvEvTGJJa2oAnr
         1jBwLC6H6lfqx+U9sfpc+nyypELFwmYwYWT0ZhZyeCfkUpnhhf78I75b5FJjRAhHVbPe
         iOwGgOLO5G4QIPBtacCAww4rTIGyUaeY/8uVLTEDQE5QPIkY3736TECIMLTRdNeald86
         ubGg==
X-Gm-Message-State: AOJu0YxHufWSUdoz/mIw7CrSYSQ0U0RwrXX2C0yI3nzjGjjFhfcb3RYN
	k3vQAjcENL47gxTdNS2mizq7s/yFtF3E9vdyfP/ZWTAY
X-Google-Smtp-Source: AGHT+IHAK9phxnT77CO7C33hdt8PVCovprJockcKFkegJtdzE3jvxWgPzsxBNEfKKfYzPW2ZWd/P+ltvGgVrkfIYnBo=
X-Received: by 2002:a05:651c:92:b0:2bd:1804:29fa with SMTP id
 18-20020a05651c009200b002bd180429famr4813533ljq.39.1694692912419; Thu, 14 Sep
 2023 05:01:52 -0700 (PDT)
MIME-Version: 1.0
References: <31637059211ed2cfca942dd0f26228048987a76a.camel@vrag.ch>
In-Reply-To: <31637059211ed2cfca942dd0f26228048987a76a.camel@vrag.ch>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 14 Sep 2023 14:01:41 +0200
Message-ID: <CANNYZj9Bvo9ubvMBmnQSxoPcxYQ1XtxUg7cydhpuUZ7-S6TJBw@mail.gmail.com>
Subject: Re: [yocto] Documentation: How to build multiple packages from one
 source repository
To: David Daniel <david.daniel@vrag.ch>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 12:01:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60993

On Thu, 14 Sept 2023 at 13:57, David Daniel <david.daniel@vrag.ch> wrote:
> I could create two recipes - but that would mean, the same sources are
> downloaded twice, am I right?

Two recipes seems like the best option, if the library and the
executable build processes are completely decoupled. You needn't worry
about downloading twice: if SRC_URI entry is the same, fetch tasks for
the two recipes will mutually exclude each other, and then reuse the
result from the other task that ran first.

Alex

