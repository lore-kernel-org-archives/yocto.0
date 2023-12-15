Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10AF3C4167B
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 21:30:37 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web10.78151.1702675830139690429
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Dec 2023 13:30:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=koyixJit;
 spf=softfail (domain: sakoman.com, ip: 209.85.208.52, mailfrom: steve@sakoman.com)
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-548ce39b101so1353613a12.2
        for <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 13:30:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1702675828; x=1703280628; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jvze1KhIK4fxlMF0/AuIDeobsFG6o+nlw7mYnGj+KI4=;
        b=koyixJitaWE/xRddWMFdJKkmbgXN7YH4t1DQsGvuZlSnpY/LfJaoPQkfi4JGTfwxsv
         iTnd36v+rdH+TwT+aGoDQ8Dt71aIwe8n9rozZgr91lMSoZQ2DMgLmJS7TMfzNv29y5sj
         gz2+XSY17jXxXovVZzYUsTd5uxUwoTwnanV7AnoiAKCQfWIbbe4h7YOgJrj4FJZHa+QX
         2wppRPAsoWZd5HxkDhR7zIp2JHLunYBquLWB0rM+Ov1riIiGm231byCAYS1SQaJBAnlI
         d/ydGQ2EjEfejIrxKCyK8iPOfxokqDPtt9QVss310AD6N/4ZosbIel/mZDKgnlfEQjy4
         CVFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702675828; x=1703280628;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jvze1KhIK4fxlMF0/AuIDeobsFG6o+nlw7mYnGj+KI4=;
        b=GL7iLPuuuZgyjbo3dcuph8+9jfDoPtnEkPtOYd+sFkdGPdgTC/xL4lxXSeGLtuvd1D
         q341UFrF5RiIEiqDKxWSY3nB0tvmMzesk9IKje5/J/L0AP8jlZ6wWoL8L5HrTIRf79Cz
         Xu/mwIsdqN8aI5hCTLq0TnKBnnTEmuOjANo9O6+WG46Nl0DC997PjtYSWZPAYV6DljWY
         jdZQiyBsWDxqo3WMXlGU/cXMf7zmStNZwx9E1dLMYMVbeNStJECWnb7bRSM2S+diKSRb
         Fmr+7YxDHBNYHkwpCQjHiOt92F/SilYbs9JUkz6/OP6qWZTL3WmOPLDDFf9ldQn32H49
         mVMg==
X-Gm-Message-State: AOJu0YxuNdfwM4qPnZxYkqgX/pFMywlxAN//Fp7wQw7BrDa9EqZ/SEv1
	ceaBFt/NZOGuGBeAXI75Ngb61y+GK5/zwiGKQeJRvw==
X-Google-Smtp-Source: AGHT+IHdafJoNLWb/2qMkM5bCVJ+V5jneX/PmWbYO8YIZtROU6joKvDG1Ii0Yr7pmTf2OZcw6ztG0KiEwO+a5Cw0i6U=
X-Received: by 2002:a17:907:d8b:b0:a19:9b79:8b3f with SMTP id
 go11-20020a1709070d8b00b00a199b798b3fmr5126256ejc.80.1702675828001; Fri, 15
 Dec 2023 13:30:28 -0800 (PST)
MIME-Version: 1.0
References: <0101018c6f18210f-b2be4f67-b8b5-4e25-8065-8de14c821569-000000@us-west-2.amazonses.com>
In-Reply-To: <0101018c6f18210f-b2be4f67-b8b5-4e25-8065-8de14c821569-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Fri, 15 Dec 2023 11:30:17 -1000
Message-ID: <CAOSpxdY10dGZYdAeyiWqe_0RcE78JF+p3WsDW+k_133zxgzy+g@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-4.0.15.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 21:30:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61921

This was an all green build with the exception of a known autobuilder
intermittent issue in qemuarm-64-ptest:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14933

A subsequent retest of qemuarm-64-ptest passed:

https://autobuilder.yoctoproject.org/typhoon/#/builders/82/builds/5860

This issue is also present in master, and the test has recently been
disabled there:

https://git.yoctoproject.org/poky/commit/?id=3Deea4746ef5aa4d3dc86745c3e6d9=
13f97e03febc

I'll investigate whether this can be backported to kirkstone, but I
think we are good to QA rc1 as this shouldn't be a blocking issue.

Steve

On Fri, Dec 15, 2023 at 10:08=E2=80=AFAM Pokybuild User
<pokybuild@yoctoproject.org> wrote:
>
>
> A build flagged for QA (yocto-4.0.15.rc1) was completed on the autobuilde=
r and is available at:
>
>
>     https://autobuilder.yocto.io/pub/releases/yocto-4.0.15.rc1
>
>
> Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/bui=
lds/6334
>
> Build hash information:
>
> bitbake: 42a1c9fe698a03feb34c5bba223c6e6e0350925b
> meta-agl: adf081bab632c0fedfc064b50b953252c8f72be1
> meta-arm: b187fb9232ca0a6b5f8f90b4715958546fc41d73
> meta-aws: f438745ff0e8c4c6b07b4fa66a7bff7881bc0287
> meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> meta-intel: f932ebb2544170f43edd22739f44307809bf8cfb
> meta-mingw: f6b38ce3c90e1600d41c2ebb41e152936a0357d7
> meta-openembedded: 402affcc073db39f782c1ebfd718edd5f11eed4c
> meta-virtualization: 88327090d26955a678c6f8bd2585aad4d802f6c4
> oecore: eea685e1caafd8e8121006d3f8b5d0b8a4f2a933
> poky: 755632c2fcab43aa05cdcfa529727064b045073c
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#357): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/357
> Mute This Topic: https://lists.yoctoproject.org/mt/103197930/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

