Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C80C7EE2F
	for <webhook@archiver.kernel.org>; Fri,  3 Mar 2023 07:23:24 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web10.18159.1677828203578447151
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Mar 2023 23:23:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Cul7HAw+;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id k14so2402518lfj.7
        for <yocto@lists.yoctoproject.org>; Thu, 02 Mar 2023 23:23:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677828202;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2tD1nAPBp9IvMw/1bhGZR0kC5QcDHqRiZiKYbfVEz6Y=;
        b=Cul7HAw+Bb6BRksUpbWwddjqnruzVTd74FOCaz7QxrdNtbZBTOcoCO5hNp1HRD4kiA
         qDPKYOPGH2BdrO0y+VWvovTIvujPj8SalIJpE7ONvu1VYIYJrTFxb2iSWLr7715c6vTI
         rVvwpxdegd7jHrzGfpMt0RtmokpArmpYC7SyxTV0r57QJ17XMV4uzACw/vY+Sh3i0/wk
         0c0/VBszjmEG/UYAo1o6pawaGE2T3EZBLNOv+TwXaEl4qjLL0862YUZXZaZwjNQDspLw
         7QrEqThND4XCOx3XuogCF8XlhPjzOFImtw9hjgWfSzHfDuA8SFR83VuVPmG1a6BcladT
         rB9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677828202;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2tD1nAPBp9IvMw/1bhGZR0kC5QcDHqRiZiKYbfVEz6Y=;
        b=rlxBxMTaKCFGB/n8e1BMn+7xEhs6SD811M4IjMSzJzcMBTMSv911Iq9arE1gcxTxW+
         7exe6kMjQpcakJeI6jNkTfGW7+ZZzaAj38QRI9sK0GNkuIg6Gcv4+nEhioItO5TWDQka
         26ERuDeSDbMrNi6pdDFWCjqgDnZFru/Xz2L1sE5pbkNOjrVl+pfD4yBzRUWyWH2L6OkB
         ASKyxOVUMas55Sg+/QHSDurjmSW96cYlS6UhdhEz304oTw8xGyPGKVeFIO8EencbWaKo
         5x2lUE/8BbspblUAldUS210mhuaIT6FV4+F/7q1zedT0536tl0U603Z4LxkIr7j4j4w3
         10sA==
X-Gm-Message-State: AO0yUKU3UALA4Eb3nxhVAGaNhq4+copjOJWBneA6OLNgeC/9QZnsx7oE
	urse7R0vMRQT9WthG0LIL0JsoweQGxHYQiHNG8I=
X-Google-Smtp-Source: AK7set/0cXF/GbT81jFRY5uAV8/ZcwF2fxPU683UbMjtJv5kq1VePkokbc9zyssletUGWxzyt2yjmgy7fBuLjYx7uXs=
X-Received: by 2002:ac2:46db:0:b0:4e1:d025:789e with SMTP id
 p27-20020ac246db000000b004e1d025789emr310117lfo.13.1677828201710; Thu, 02 Mar
 2023 23:23:21 -0800 (PST)
MIME-Version: 1.0
References: <gf6D.1677827842600358936.18j8@lists.yoctoproject.org>
In-Reply-To: <gf6D.1677827842600358936.18j8@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 3 Mar 2023 08:23:10 +0100
Message-ID: <CANNYZj9aDXTeQaQyofAL5mtXRj0M4ZDVcEkChU4ea7cVhv_tWA@mail.gmail.com>
Subject: Re: [yocto] Reggarding POSIX
To: yudai.yamashita@soft-service.co.jp
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Mar 2023 07:23:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59338

Yocto first builds its own toolchain, then uses the toolchain to build
the actual software stack for the target. So the host environment can
be any Linux distribution.

If you can say what the other OS is, we can discuss specifically if
it's going to work.

Alex

On Fri, 3 Mar 2023 at 08:17, <yudai.yamashita@soft-service.co.jp> wrote:
>
> Hi All
>
> I am trying to build an application using POSIX on Ubuntu (Yocto 4.1.2).
> Even if the development host environment required for the build has been changed to an OS other than Ubuntu, is it possible to build by only changing the Yocto configuration file without changing the application source?
>
> Thanks
> Yudai
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59337): https://lists.yoctoproject.org/g/yocto/message/59337
> Mute This Topic: https://lists.yoctoproject.org/mt/97357564/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

