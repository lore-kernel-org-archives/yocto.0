Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D02B7C433EF
	for <webhook@archiver.kernel.org>; Thu, 24 Feb 2022 09:44:27 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web09.8428.1645695866656765619
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Feb 2022 01:44:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20210112.gappssmtp.com header.s=20210112
 header.b=4Q+Qp1dR;
 spf=pass (domain: burtonini.com, ip: 209.85.128.53,
 mailfrom: ross@burtonini.com)
Received: by mail-wm1-f53.google.com with SMTP id
 n25-20020a05600c3b9900b00380f41e51e6so884999wms.2
        for <yocto@lists.yoctoproject.org>;
 Thu, 24 Feb 2022 01:44:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5NKvo+Ya3K8iVVg993/2WjY78aVXSsf34YywYqYJNWs=;
        b=4Q+Qp1dRcYUaaKT7iJNaJPrdutKWhg9iV0zRa8lUyV3kmbx2t8wzhsBM+UYi8HSBYg
         l82tdamCwx3w2bKgGQBkW3UkxXxsaNQM+FXh8VPGwyR+q5udnDJUeqth7Obx0JswTRlG
         wF4N/QothmTADRH7ZvPYaHD52XvZGvMlMT3YqUpnsv+f28qvPUwfes6rd5/6/vXkssZM
         oQ9AeouxtBko6iSrPiE3nUhnzrMhjbkzNP/WvgIkXV5KrOZ9/b/c1fKF3xbf4g2POSdH
         tjyoxjeSbY+rj/EGE0Z0V7bOx/5u4KbO7mgkL2V/ap+9MwvvBhCScRvYoWyVRY9iiIBv
         YDAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5NKvo+Ya3K8iVVg993/2WjY78aVXSsf34YywYqYJNWs=;
        b=tw57633syufzANOWdcLpgyQTfn2RjexpOYZypayK2x+/RnIyZ5DV88wsyP0N47e0A2
         k9U0c/9TKCjGl9OpJnUQrktR8JJA578MF6M7EDfxsH8PZY85rkktMO6EcyJsLsIvpzZw
         KgMIA1uNf+MHZbJAAMuYJR8TYM4sM6q1CvNYCUZ3Pzg33ZOIqrWk5J3CjP5VSoFaqNRB
         Z/2nnSaT6WsB6vLIVmANYRb+vfLkwh7JgUrLy4UZIMyYHP6QfZbUE0ByDanRq++lSt9L
         DxIIWFV9zCKptyN4QpEtjaVywUJo4RtCFlu70QPPpfcxdOh5AQa6Z/t+5hWgDW/fT3k8
         cO+g==
X-Gm-Message-State: AOAM531DEjwXEinQus0jwBU95by1TeTlHVFKgKq3g0gHho5Lk5I+etTO
	ttxrWETO3MJGLQLRycNVmlLr46p4HFL2w7rfjE8s5A==
X-Google-Smtp-Source: 
 ABdhPJyEQUuxKO/oxJB6VHx+ghd2xCB9oIE7NFRhBCNxL+j0vQMWegHuCygOtPW1WauHOsZY/NTHi7gzWkGBid5fVm8=
X-Received: by 2002:a7b:c5d5:0:b0:37b:fda9:a5e2 with SMTP id
 n21-20020a7bc5d5000000b0037bfda9a5e2mr1594360wmk.62.1645695864855; Thu, 24
 Feb 2022 01:44:24 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAJw=dJ8-0r5ZM=LyGOAKvPdjUqntq8_zeG-NSOs-DQ1y1QiOvw@mail.gmail.com>
In-Reply-To: 
 <CAJw=dJ8-0r5ZM=LyGOAKvPdjUqntq8_zeG-NSOs-DQ1y1QiOvw@mail.gmail.com>
From: Ross Burton <ross@burtonini.com>
Date: Thu, 24 Feb 2022 09:44:13 +0000
Message-ID: 
 <CAAnfSTs8Y9S_sMNTDX37Q+fRaXkt-2FsGT=US=Bs04WtuGYc3g@mail.gmail.com>
Subject: Re: [yocto] Regarding mail notification diseable
To: NIKHIL PATIL <nikhilvp29@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
 yocto+help@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Feb 2022 09:44:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56276

On Thu, 24 Feb 2022 at 06:06, NIKHIL PATIL <nikhilvp29@gmail.com> wrote:
> hi ,
>     I dont want any mail notification from yocto forum , please disable it . i am not able to disable.
>     thanks .
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56272): https://lists.yoctoproject.org/g/yocto/message/56272
> Mute This Topic: https://lists.yoctoproject.org/mt/89360278/1676615
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ross@burtonini.com]

You can unsub yourself by following the Unsubscribe link at the bottom
of this email.

Ross

