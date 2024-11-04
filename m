Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81F99D132B0
	for <webhook@archiver.kernel.org>; Mon,  4 Nov 2024 11:30:02 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.55463.1730719798784484072
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Nov 2024 03:29:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WBC+TX+5;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2fb3ce15172so48948621fa.0
        for <yocto@lists.yoctoproject.org>; Mon, 04 Nov 2024 03:29:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730719797; x=1731324597; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vj23RspkQsajwwiatXJsWtK6QGJg4NXPVLMYTP0klXk=;
        b=WBC+TX+5OzrqnnDY2+ZN9gV2RdPjh+OQMUzWq/lqvft/SshqwQdX1EvXRrKYCTlroK
         DxXNp2AXlcBKZxer5SEK1vPQAH0sYFj/wwqka7XCN80bcQxdrttsA7N6144dASAzgKn6
         Ea3toJm+NfvOxADH9pEBsiPZtvuyDV/scuWCQ2rpzAmqvMxZKft/F7bbZ7D6Z6tC83eH
         q3Wk0J3MvNLg5weDyohGd2Co6wL2gbdQa52RfeBAaaqxeRHavTDh20HT6ZArpCRjWbAl
         nBjU8wbTLYo0XI3d1tSpQdDmcf4zA5Hf3YyY05eE1MbX18IYatYclYDXbxIwdGvhsbC3
         09Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730719797; x=1731324597;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vj23RspkQsajwwiatXJsWtK6QGJg4NXPVLMYTP0klXk=;
        b=HC+wr9s836JDf+8rVeRxEwBB+NNYB50P8nu1qnK7xDLtgR8ZDB7OutmB9zTvo/KIb9
         1smATtqpBo/O6NzWJWAgEbx8ZXu4arPNtpuxqpwGrKwTrxseD7kX6VQR3ibmthA9olMd
         y9zG/u1BlhiAQXAm61hcYuu7dcmhh2CdiWw8sZlSo7Y1ccjxF+cVp3sdxjrf7yZBreSE
         T7DzTnE0K74sdLh5X2emNs+ua/Oank1X8S+ezAYTuHrLaeqs6tg0ochCGrxP9ZXN/wv2
         Yjt38RX/swNtxz9xcZr4e1XTC925oFokIiXI7iSyvpReuB1gpboFUvMWG4YgGh1gv3/x
         LyXA==
X-Gm-Message-State: AOJu0YzyFoT/OAb/xLTw7F3mR3dJKuSXCJ6V6FSM9I67Umovb5CwW4Ka
	wfyxvw2EbJ3l04xOCLe4MpEViubCbY9NgGYu4ssLRbGRli3WRnEMN/+fe8dyDXwDGN5QjqmaqgM
	L1SwJoZG7dvDXA2Rb0C05SowBBtI=
X-Google-Smtp-Source: AGHT+IG9M8WTf8UZ2MDQTfeXlJHpNL4vslEr4nI4QJ53lCy3bLEZfu8vqiCkc3noLVfopm4qrZ2uVCErWsuugGm0+U8=
X-Received: by 2002:a05:651c:1506:b0:2fb:55b0:82b8 with SMTP id
 38308e7fff4ca-2fedb3c6055mr41859201fa.4.1730719796475; Mon, 04 Nov 2024
 03:29:56 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj88HwSPabR88B+cg1AqA73ALOSRs0L5edibX8=kGw57yw@mail.gmail.com>
 <22763.1730706810757498056@lists.yoctoproject.org>
In-Reply-To: <22763.1730706810757498056@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 4 Nov 2024 12:29:45 +0100
Message-ID: <CANNYZj8RSkjNQ+Z8c2wBqATM_CtjuNYvCbJwUm4bRppBA1REFw@mail.gmail.com>
Subject: Re: [yocto] XFCE integration with Kirkstone (RISCV64)
To: Ankita.AN@exaleapsemi.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Nov 2024 11:30:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64209

On Mon, 4 Nov 2024 at 08:53, Ankita.AN via Lists.Yoctoproject.Org
<Ankita.AN=3Dexaleapsemi.com@lists.yoctoproject.org> wrote:
> As suggested I have build and tested image with meta-xfce .
> please find error log:
> root:~# cat /var/log/Xorg.7.log | grep '(EE)'
> =E2=80=83=E2=80=83(WW) warning, (EE) error, (NI) not implemented, (??) un=
known.
> [  2331.254] (EE) Failed to load module "glx" (module does not exist, 0)
> [  2331.255] (EE) Failed to load module "modesetting" (module does not ex=
ist, 0)
> [  2331.704] (EE) FBDEV(0): FBIOPUT_VSCREENINFO: Invalid argument
> [  2331.704] (EE) FBDEV(0): mode initialization failed
> [  2331.704] (EE)
> [  2331.704] (EE) AddScreen/ScreenInit failed for driver 0
> [  2331.705] (EE)
> [  2331.705] (EE)
> [  2331.705] (EE) Please also check the log file at "/var/log/Xorg.7.log"=
 for additional information.
> [  2331.705] (EE)
> [  2331.941] (EE) Server terminated with error (1). Closing log file.
>
> Any suggestion for this issue?

You need to tell a bit more about your setup. What is the target
machine, and what layers are included into the build? I'd suggest you
start with plain poky (plus meta-xfce) and build for qemux86_64, as
that can be easily reproduced by others.

Alex

