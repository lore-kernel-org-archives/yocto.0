Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEF65C76196
	for <webhook@archiver.kernel.org>; Thu,  6 Apr 2023 07:57:13 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web11.153283.1680767824092469430
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Apr 2023 00:57:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=hIKQ+xYF;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id m2so38590981wrh.6
        for <yocto@lists.yoctoproject.org>; Thu, 06 Apr 2023 00:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1680767822;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ML5fV/KKT9izN5kijSoKABeVD58mft2geBxK4ZcRh0g=;
        b=hIKQ+xYF0nhlxfvMcBi8b11ocDUzqpQ7kFBjKKY8VefbsvM4kC5aOXbqciIih4Ifoe
         2SHow1yc4L5MB6wb0/EeJRJu5CVaGAqZARqtTVZkUi1tpFcxisrUsFww9ZwHeCDnlKfX
         TraVYM9f8CO7kq66Vk6BII27xrSrj0fS8SgCE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680767822;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ML5fV/KKT9izN5kijSoKABeVD58mft2geBxK4ZcRh0g=;
        b=AS3kShtQKxffYzQFwbwPA7/2pJD6Grm1eLjXGtlXCnFEhCRO1p4vY/MX8b+A8wluJ0
         tjYkveltOptfltsZ1OKIB59ShLz7W7NFpV3e0S0Yr7O1p3t+CYkTv1hWCMbLIH2s4hZV
         1QJDEJb08HeZJ2fg1sc41eAiLFfP7yI8DznA3ImXb6jlLyUELUbfo9TGizdoZSEchZ4+
         0o7m260R5Hai8go63DjFujLyo7UkXfxb/6tcA6xOgaimGhx8gxdhUNZJ/6lBIm71kmVy
         EgMRPvxaGcCk6re7bu7MUmyrMUalYY3Ovu/3jQ2egakNgZDQ2D7AJupfnRwfZ0eV85aS
         8pYw==
X-Gm-Message-State: AAQBX9di1AGh0jQaxz29XcdIPa3cjgW8e95U9sK0pOla5d64r2JjG9QX
	UyRr7rZ4NS3LSOfmHayyc4lDGwZcBcF4y8FnD7Q=
X-Google-Smtp-Source: AKy350b4MJ0BUSyvpwGEw93NQ3Q9jAbXGpq5/37DawFWIwX0K/5+xUx9zBLFPxznaOK1LJkfgAG1NQ==
X-Received: by 2002:a5d:6584:0:b0:2d1:53f5:900c with SMTP id q4-20020a5d6584000000b002d153f5900cmr3419914wru.20.1680767822259;
        Thu, 06 Apr 2023 00:57:02 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:6a84:552d:cd38:8d5? ([2001:8b0:aba:5f3c:6a84:552d:cd38:8d5])
        by smtp.gmail.com with ESMTPSA id h11-20020adff18b000000b002e40d124460sm961107wro.97.2023.04.06.00.57.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 00:57:01 -0700 (PDT)
Message-ID: <3f837f0f6dc5a6670ebb2d3a6e074fa614c387c3.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-4.2.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Thu, 06 Apr 2023 08:57:00 +0100
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.47.3-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Apr 2023 07:57:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59625

A build flagged for QA (yocto-4.2.rc1) was completed on the autobuilder and=
 is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.2.rc1


Build hash information:=20

bitbake: 46e1ea2e9a203992bb4de48ea21a8e736419ada2
meta-agl: 09135164a21a216c6e3e75d7decce896b92962f0
meta-arm: 3b4ab43d2f82b9db682a88dff4665807b62d1870
meta-aws: d243fc1ad45dde57b4caa182a92b685540475cb2
meta-intel: ec3147abdd0727fedc707330d58593097357f944
meta-mingw: 250617ffa524c082b848487359b9d045703d59c2
meta-openembedded: 60afa577e5656a7c82c902da11adc031d71ef8db
meta-virtualization: 48c07a48a0e7d56266f20a01bb0c8ebc1085453b
oecore: 5a96847e7ef2ff72958d739a91c90e2085c04bc6
poky: 08d564bd92fc476d7f0b4a6201b752e51cf93776

   =20
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


   =20

