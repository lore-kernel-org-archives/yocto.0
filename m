Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ADA2C25B77
	for <webhook@archiver.kernel.org>; Wed, 22 May 2024 05:58:48 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web10.3207.1716357524021364266
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 May 2024 22:58:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lMZG5I31;
 spf=pass (domain: gmail.com, ip: 209.85.167.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-523b20e2615so7173148e87.1
        for <yocto@lists.yoctoproject.org>; Tue, 21 May 2024 22:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716357522; x=1716962322; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bt9KwAdeouI3NDvwDOYFRJX64B+mk6V8DJUEGxutz7A=;
        b=lMZG5I313WdGOGZzM22Oyypcx+qE8CsTLu6y0EBW9yfvxCtNu/XxhlxwFdAnRd4WYN
         hmdEed8bDA8azQTcoSuK7VPpIBwEo3VGdT0wN179hpqE1mECEL9jlNl/4kMVv6UHzC6J
         XjCTXY194iiISbB/Wd7w2q0dGJGl7M0kC/cEDXYtPMO4iGrxUPLly2GUQGZdJSXjGL+R
         4mDnGIiZ/7xf1pjSJXHLMY7EtNlJ4J4YsRNtjH/0d79YHHzuABLBr99+OzYKhHzE+tF5
         lCtmBsdq/E1FqNm8jxniRGZEY6jB5GCsHYp1q3xZneCn+YfUi6FV0m+3IgRCzT2WThq+
         yjuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716357522; x=1716962322;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bt9KwAdeouI3NDvwDOYFRJX64B+mk6V8DJUEGxutz7A=;
        b=N4YfwmleHKd+He3kgTmS2K7zfDjIgpFlYT8qVJfO07+7xkgPIDFNX793Fl+BT61XCN
         YlWKZL7Q+TxznVV0jHc7Ot54HNu9AM7t9XjMarAZgO4vW0zJmNJTIZpJHH1ZL6hbYbTh
         XRkvH/y9rqHsn1voY8ht/NnF77WChcdeouU86xA1QHdija/evpXxqMpJf9weGplR8bUI
         R7CsmoG3V5dTD6iooMhbBW+8aVpeUyikOyKWuAiW6cezWAuTAHlFZ6fy/UBT93LopOpn
         AUg+W7KOOXNErBzODYDiUv2NWlryljI9myHedcciZX/UAaCQX9/7twqtCjAAscjdxw/r
         4iVg==
X-Gm-Message-State: AOJu0YwCEwl6wUErBN6R39J4rXDDk9yXZMpkHkjYqoPcPDqGTDC+yMjX
	zyTr6wYhOjQDJxHbETytaSpXx/0d7EfYLZq9mKvDECHk5LTxT6MyzsJqycezmmlng2/QDjOPaaz
	U7w4rVKMaKsmZLvjbuAEG6ODF00P7XA==
X-Google-Smtp-Source: AGHT+IEtsqB56D1toZtddcydgnuvojc5AY2JaoRM2togRAkXBF+pN6WRI78rGMmllU3fUxltkrvDV+I5KgW9kD1FlKU=
X-Received: by 2002:a05:6512:239d:b0:523:6354:881e with SMTP id
 2adb3069b0e04-526bf82d6ddmr609971e87.39.1716357521710; Tue, 21 May 2024
 22:58:41 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_rwBL+uXQvsm9n=ZZikEZoC2Os97qX_M92ZAWK_TwyVQ@mail.gmail.com>
 <31777.1716353840790490725@lists.yoctoproject.org>
In-Reply-To: <31777.1716353840790490725@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 22 May 2024 07:58:29 +0200
Message-ID: <CANNYZj9M8M1FEfKurCJwceuPff3EGTGN1gPXWTxPkdkzQhFHaQ@mail.gmail.com>
Subject: Re: [yocto] runqemu qemux86-64
To: yocto@lists.yoctoproject.org, sasikumar.e@fdss.co.in
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 May 2024 05:58:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63161

Delete everything including your build folder and start from scratch I guess?

I cannot help if you don't describe exact steps that you are taking,
particularly when you are changing configuration or deleting things.

Alex

On Wed, 22 May 2024 at 06:57, SasiKumar E via lists.yoctoproject.org
<sasikumar.e=fdss.co.in@lists.yoctoproject.org> wrote:
>
> Hi Alex,
>
> On Apr 24 2024, for the first time, I did the yocto project quick build procedure as per the provided guidelines and it worked fine the QEMU started running, So tried to configure it for TI AM3357 ICE and I was not able to complete it.
> Thus I reconfigured the sample.conf file and tried to build and then rerun the QEMU it failed, then I deleted the total poky folder and did the exact procedure for the yocto project quick build again it failed with the above error
> how do I proceed now?
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63160): https://lists.yoctoproject.org/g/yocto/message/63160
> Mute This Topic: https://lists.yoctoproject.org/mt/106199430/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

