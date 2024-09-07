Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44F56EB64DF
	for <webhook@archiver.kernel.org>; Sat,  7 Sep 2024 19:38:00 +0000 (UTC)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
 by mx.groups.io with SMTP id smtpd.web11.15221.1725737876900668022
 for <yocto@lists.yoctoproject.org>;
 Sat, 07 Sep 2024 12:37:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=AJ1w4bVe;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.169, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-6b6b9867f81so27908007b3.1
        for <yocto@lists.yoctoproject.org>; Sat, 07 Sep 2024 12:37:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1725737876; x=1726342676; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gr6pOWDbL04M2UsTaaa0kPRQGpFaSmhuEMJJyevcW5Y=;
        b=AJ1w4bVeUnuYHftgU2bOvTvwn3VrElAAmROxzozIzB3SFIy4h54INjWclJUn5tRcs3
         wDaT+buhwKugtMuBPtPmsAqnJhjPwe9NMDJmx1lK/K+G0KLoD6g8zTELyci6xbWoWoBN
         pz3t5E9VCIQBnHzXKtIiysI4w8RmnNjR/aZ7+yi7mWsC/3NOWhZQttkwSJXdVePnvr87
         nXcRU/UboFkGu0TPZoRwMdhUD0Y7L2CujPWoeImnc/vIubIDE+XNFrPYE/GL36euEMS2
         UQLRq817ihcxgCHF5/goi4rXNSI/qPrmAiwK5tD/dLerrkq6nmYoEBrddqr76zB9o9zF
         FlTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725737876; x=1726342676;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gr6pOWDbL04M2UsTaaa0kPRQGpFaSmhuEMJJyevcW5Y=;
        b=eHBrwZNiXCBBc8L/tcNucB6+Qcof/jTDWwhq5EX8cD1rHDmWgZWkyiuKJHbgk6qOMD
         KMk/XvhF8Y1WDeefFwqicE8Bv9Rpo3UN+UdjeL//JreFN3ZVLUWdaXy1a7mD5ibyXRyI
         8ci1te4j6mGigykbp06a/AosyO5JIWt6DAtXNSjcxzYsGMEMCIREwltEWiCwJnlylpM/
         qQBj+nbD6AKJbb58fxBwHig6Qj3//J6k7aKBNKYf5X9APQ7vCxLQPPiPnwckboS6B+vv
         ux6wAt7zAmAS+fL81CmiWaAVUK4GEPZFDbJGjuvlPAmnJnRzNnhg2G4Qrnvs2UIIpAkQ
         NtRg==
X-Gm-Message-State: AOJu0Yxz/HUdbsrYhE0p6vT7pg+1w/BtSs+k1hx+K9VwRze3cE0lY8P6
	85OxuQjkz7Yq5glLBWPbrxn+zdF9QoMJeI3X81Ey5kCZohTlQ31G0XuqaiMdJiBUHoYw6brUQKm
	IMxEuHMX+qmOxxsoJadYI5++euX9Lpv3X9VyWY6yvPxKDgZumUcU=
X-Google-Smtp-Source: AGHT+IGZ14m7vWT/DwTIvxytr7nFHir8V9J6SqGUebmvxCuxqowney0OlzRzHsWUaGIh1PpEtzh5QCQH3UgZbsXBKA8=
X-Received: by 2002:a05:690c:660c:b0:669:e266:2c55 with SMTP id
 00721157ae682-6db44d62ab7mr77522417b3.5.1725737875745; Sat, 07 Sep 2024
 12:37:55 -0700 (PDT)
MIME-Version: 1.0
From: Steve Sakoman <steve@sakoman.com>
Date: Sat, 7 Sep 2024 12:37:44 -0700
Message-ID: <CAOSpxdacOpY9zesTGSJTkCqxdjH4sCEpcQjphTQeGR-7nXPNAQ@mail.gmail.com>
Subject: QA notification for completed autobuilder build (yocto-4.0.21.rc1)
To: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 07 Sep 2024 19:38:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63798

A build flagged for QA (yocto-4.0.21.rc1) was completed on the
autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.21.rc1


Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/7317

Build hash information:

bitbake: ec2a99a077da9aa0e99e8b05e0c65dcbd45864b1
meta-agl: 7af3c4ada26dcdb93496962b7189a6d72e14a824
meta-arm: 260e3adc2bf322f52d81c0642c825088a88bb051
meta-aws: c5f55dfcfdacdc88428e848900ddc64d8b0512c8
meta-clang: 8bc893d735e5f779a2dcdc3992621d5ab371800d
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 3cbfddf8819bdf6c10343c81de419a0e05aca074
meta-mingw: f6b38ce3c90e1600d41c2ebb41e152936a0357d7
meta-openembedded: 52ecd66835dcfd8b4e55c9cb6325908ccea6a4e7
meta-virtualization: e0cd09e3b8367e2745a27db2e7ff1f8452c8cf41
oecore: c40a3fec49942ac6d25ba33e57e801a550e252c9
poky: 4cdc553814640851cce85f84ee9c0b58646cd33b



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org

