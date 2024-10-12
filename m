Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9185CF2579
	for <webhook@archiver.kernel.org>; Sat, 12 Oct 2024 19:39:21 +0000 (UTC)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
 by mx.groups.io with SMTP id smtpd.web11.17805.1728761958212102432
 for <yocto@lists.yoctoproject.org>;
 Sat, 12 Oct 2024 12:39:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=mX2BtY3c;
 spf=softfail (domain: sakoman.com, ip: 209.85.219.178, mailfrom: steve@sakoman.com)
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e2923d5b87aso1341173276.3
        for <yocto@lists.yoctoproject.org>; Sat, 12 Oct 2024 12:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1728761957; x=1729366757; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=B/VD80MEqFuxsRfwUgtngZILXwkvF1Eq4nQtcMCD5CM=;
        b=mX2BtY3c47goAbsR0tqoK2XeQpyie5Qgml7ZR5K/CFXHUv5PoIeU03R/2L+pGN3TQq
         RF30oXDTvytm/Yr/lf68rPLTBPdSFO3b7zNOeseXfFI8XJalnlMdXDBZCsn+Iw+61WZU
         cT8ZqxEvegS8HPQkOoeqOZsRjkuhYuC/zrGZV0C/D2sPsQgQziD5Z+ASuJDKlMe937t5
         HSzBQvHO38YA9xtjZhV5lz1qqormQAF638bgDx3V9hju/n2e/RjRwmxQ4VcKx0FqX5rp
         yqAp4dyLDkFHirVCnApNHmyM7SqzLP9D4ujY/FF+Z7MP0iecxQToqJFK4WJmK0HzAGaF
         XgbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728761957; x=1729366757;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B/VD80MEqFuxsRfwUgtngZILXwkvF1Eq4nQtcMCD5CM=;
        b=J2HN81PxLZUa0fzoXEcDaIRnzvfF+ams/2Dp+IvRf+funx0rcL684Xs4GRXBHWzyLr
         FnAljI8T7QZlc4BWPe7+t5F7R6/zqFbPpj0pU/aYF+/GcXX5lKhxhoHq163nUDKvni8r
         LbO3vQvSkzmviGjyrpN0XyzIs1ZWIydzJwnYNLPNPZ73YqVn8OsbhU5uUKM9gFw5ubJq
         ldHTCuwN86Uq9+hfPps4OTGSsmnncXoFsGa9kBpzJvn2VH4Rx4N5gjxAW3AzNlj9pdWr
         74rmuUjGgO/Tjm61RDu8JJIC/CtLoObk1Y72r3mpijcrcr78jskCIr0GY+9z9jksQYkr
         IRWg==
X-Gm-Message-State: AOJu0YzvJ22p8UklOsKHAGdiV3BSxYjNicApgHDBFhMSf/EHAW2wq4Jo
	uosUy/7hs51zGRfyKgatRvNcshPtxq41dBqZ5Z3QBlUsuIdHd+m21KOYz5ZPbFQNMEJ8DOc3Ol7
	ueLwVAJqqgHKKw6PHClQrM/pQ2UkvUs1H7VOGlBrRQMdbMx/ku9g=
X-Google-Smtp-Source: AGHT+IHJIbTsp+8wDopgWB4dY0/V8mHdZY0oYaY9bdJsG4ZAEpZNGE470/YvYc9Ls0Wnvbh7rh9FhSHLEVtxxV0VZC8=
X-Received: by 2002:a05:6902:90f:b0:e28:e700:2835 with SMTP id
 3f1490d57ef6-e2919d62712mr5865063276.8.1728761957258; Sat, 12 Oct 2024
 12:39:17 -0700 (PDT)
MIME-Version: 1.0
From: Steve Sakoman <steve@sakoman.com>
Date: Sat, 12 Oct 2024 12:39:06 -0700
Message-ID: <CAOSpxdZTSL40AGzE-aNwEMSTQVOxaq4qyXZH5karUnmucaxFBw@mail.gmail.com>
Subject: QA notification for completed autobuilder build (yocto-4.0.22.rc1)
To: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 12 Oct 2024 19:39:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64014

A build flagged for QA (yocto-4.0.22.rc1) was completed on the
autobuilder and is available at:


    https://valkyrie.yocto.io/pub/releases/yocto-4.0.22.rc1


Build URL: https://valkyrie.yoctoproject.org/#/builders/29/builds/258

Build hash information:

bitbake: eb5c1ce6b1b8f33535ff7b9263ec7648044163ea
meta-agl: 3ef9b693b0048d98d742d347049df2c9e2746ed8
meta-arm: bf98ef902e6e7042e46a69fb2df6c68d00de2764
meta-aws: 69ce4703994cdd95d14bc89fe1e3475c4f2be090
meta-clang: 8bc893d735e5f779a2dcdc3992621d5ab371800d
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 1abc8ef0fc11041e2ff18989dce5b99214ee89ed
meta-mingw: f6b38ce3c90e1600d41c2ebb41e152936a0357d7
meta-openembedded: dd3d2293ffdf2559f8a433f241765a8ab50cd085
meta-virtualization: 02a6c00d9370992a54296633de26a13a9a08ca2a
oecore: f09fca692f96c9c428e89c5ef53fbcb92ac0c9bf
poky: 7e87dc422d972e0dc98372318fcdc63a76347d16



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org

