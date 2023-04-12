Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2356C7619A
	for <webhook@archiver.kernel.org>; Wed, 12 Apr 2023 17:45:59 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web10.50809.1681321552655989316
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Apr 2023 10:45:53 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=e2fe+xcI;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id r27so15794643lfe.0
        for <yocto@lists.yoctoproject.org>; Wed, 12 Apr 2023 10:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681321551; x=1683913551;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WshdPwk/sizNavJCH7dAB0vxTTfDMHiK5ARtTsk4LuE=;
        b=e2fe+xcIjShMz9yZ34105Rk3ChNLsSLtdz+UnpA6s369YdmTZT33Uj5nCS+c9e/XYp
         n7OqVK1HFTO6AIUBto7iG+aJ085rL8d5Je2FyaeRoI82056DMplgc0ARDFwYMFYIhNHg
         B+h0SY/Y6FnUrGcXt+e5Zjr45ToVZasPtK1M5h4OB+mjelHp8rgKp2zy7j/11Fq0IJ27
         jmD6GDawWN5izwkFPFX0EBWbgtLpww8jAa9iu24E4NqnqB7F4ouL5C+3F/uVY2/Wy2k9
         Q8kwiS2NlGCtDIKl66tgVpqyqUElpftMNkVw3w62zww3UmprB8Tq6jsbMZKF/SNnqYW+
         xOcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681321551; x=1683913551;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WshdPwk/sizNavJCH7dAB0vxTTfDMHiK5ARtTsk4LuE=;
        b=CT5R5Rp3iUTiFY9sZ+TO05gKdKG4EB96Z/t0JQhbfbNUC5/0Djmd5X+P91jo4CMSUO
         Hzy1sl+fDJc9TVxp61vGs3m9fShFqXNyt3k7ZFfcwSiSCTI4HTvaRfQf8GBOBO/WtL+h
         3RiXol0vr7jAsmK2DNT3ki6CK7YM0SUrLnaWjHQjrVqUpdwWbleL1FRMCgZDCKFgivEn
         eXqFyNDVXkBJztIaSdwaKsROmD3KKRa77VSO6nh/YRBGdKS4omnDUf+qfhMAhPipDMAO
         NXloagWknPAiBG8RPJjp6ALU5dJntOruvEq5KAlZihewZ8oy8323MoGazpR94Ie5zsxP
         E9QA==
X-Gm-Message-State: AAQBX9cv0OLMfmF/kqwPAGe1v9ycmfQETISjAd0sMpwPVBK4A21iaOYi
	2xKYnLbBpllYRyD+Xt1Ft1PvwGIZL9Q4vS9aorU=
X-Google-Smtp-Source: AKy350ajRY5GSHz5sZrp8TsAXU+745V6JqaZ49TTnKkjVoHDoQZ3U510oudJFv78qP65lfxvMu9+vjgUjI/3C8YFzqQ=
X-Received: by 2002:ac2:5dd6:0:b0:4ea:e5b5:9670 with SMTP id
 x22-20020ac25dd6000000b004eae5b59670mr2253568lfq.11.1681321550814; Wed, 12
 Apr 2023 10:45:50 -0700 (PDT)
MIME-Version: 1.0
References: <SJ0PR84MB1846CF5F1017E05C6D481EA5C79B9@SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: <SJ0PR84MB1846CF5F1017E05C6D481EA5C79B9@SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 12 Apr 2023 19:45:39 +0200
Message-ID: <CANNYZj9r3v0svpfvyBjMKA14qAQR4DdodhF+8RU6pyexqkQyzQ@mail.gmail.com>
Subject: Re: [yocto] Adding SSH access to runqemu script
To: Edgar Mobile <heideggm@hotmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Apr 2023 17:45:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59697

You can probably just add 'slirp' parameter to runqemu?

Alex


On Wed, 12 Apr 2023 at 19:31, Edgar Mobile <heideggm@hotmail.com> wrote:
>
> Greetings,
>
> I built an Aarch64 client image with core-image-weston from master. Now I want to access the running machine via ssh. Usually, I would do this by adding the following to the qemu call when not using the runqemu script:
>
> -device virtio-net-device,netdev=user0 -netdev user,id=user0,hostfwd=tcp::2222-:22
>
> Is it possible to add this to the runqemu script via local.conf or so?
>
> Regards
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59695): https://lists.yoctoproject.org/g/yocto/message/59695
> Mute This Topic: https://lists.yoctoproject.org/mt/98224416/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

