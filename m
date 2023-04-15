Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E470C7619A
	for <webhook@archiver.kernel.org>; Sat, 15 Apr 2023 06:00:35 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web11.2253.1681538431571837930
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Apr 2023 23:00:31 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=MXXR8fXI;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: marek.belisko@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id n22so19449352ljq.8
        for <yocto@lists.yoctoproject.org>; Fri, 14 Apr 2023 23:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681538429; x=1684130429;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=f/rN6LioSWkXRdSStMn0Q+m7mbf0Gn2JCNEjWCk3udU=;
        b=MXXR8fXIZxyG7VTY/71bRs9gf2F5oAjYzjU/FXM5cf7RHAbS0ta4WxuM+Hp4i7Cvf1
         xXVHWCqhKtK4QLtmsW+5lOAQGbGSciY9fpcGtzygt3NTBYpK1pgp88oTEEUmSApJGnQ/
         F8ObxVFA55WnOQNoDSeBvrFULYB9GYEYKInWGT9LWg0/Gf0K8Uz5H1jRCQ0cbrNoEZWO
         V4Vj/eorA/appbWIsQJw9r/JZ9ngyJNM0wx1vy7KPOcUMo5ZfFPDOMtHeqhLYy4ekORk
         qVyZKvgkfeZJmDKc+judKuCH5IsMeakmv2Uc9EDtsSIGLbl12UU6NBJ/IB6Ww0Of6bCO
         06iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681538429; x=1684130429;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f/rN6LioSWkXRdSStMn0Q+m7mbf0Gn2JCNEjWCk3udU=;
        b=lhHxYMKAz35GIHtxtwGvZ45WrEnVldB3QTuUpBKntO2xkb7nEQiUNyjj3MKx/hxlSd
         DtEXgo4yugNZJiazSsAhNPY0gArtoyK0iTg0JlAvxOoV/HR3crMsXNUVFoqN1p2c22D3
         Y617RhrjoKUdTUu/qcUfNtdMzRGGKhRqRi7wVemuYqlwc59MlCtRzgosDoEzQFO4CJXX
         AqE8EB6Q2p35e5g0S30e957wtU1gpBFOAh89aebvpjqfqBa0lo/LpzF1ejHFZHrhETyO
         7B/z5aZUMToWpqP9LSpumP0NrJ/lju02dkCXwRQZyiTOwkmvkMT3MZwke9E3WJvNUjbW
         NJFg==
X-Gm-Message-State: AAQBX9cVngQQHmO13EqrFjBkhG8KFiJG12ZgvnsYyOh2TeU3Vf8iWWMI
	l4RAWLx5ocWf17t+of4TCpsribq+zjlokPS9GKWEGybU
X-Google-Smtp-Source: AKy350YH3PvH42B/Eii6dULtfxdK+TH7bKteJlGHIzjEGyxDba43OJhWdA3JZBnwyQQsjMPFg5oZYk0hOdYjENTQs58=
X-Received: by 2002:a2e:8ec9:0:b0:2a7:73d8:d681 with SMTP id
 e9-20020a2e8ec9000000b002a773d8d681mr2666396ljl.2.1681538429120; Fri, 14 Apr
 2023 23:00:29 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Sat, 15 Apr 2023 08:00:17 +0200
Message-ID: <CAAfyv36rRHEQL+UQziYFtgkUW5tQGn6X3J8_As=77V5oKFHGFQ@mail.gmail.com>
Subject: meta-rockchip: rock-pi-e kirkstone no audio card
To: Yocto <yocto@lists.yoctoproject.org>
Cc: Trevor Woerner <twoerner@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 15 Apr 2023 06:00:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59716

Hi,

I'm building a yocto for a rock-pi-e machine using kirkstone release.
Board boots fine but there is no audio card when checked with aplay
command. I've dug into kernel config and there was missing codec
driver but after adding there is still no audio. Any other ideas
before I dig into kernel hacking?

Thanks and BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

