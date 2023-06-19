Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 703D1EB64DB
	for <webhook@archiver.kernel.org>; Mon, 19 Jun 2023 09:02:32 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web10.3537.1687165346970072788
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Jun 2023 02:02:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Gvn75eik;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-4f004cc54f4so4124835e87.3
        for <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 02:02:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687165345; x=1689757345;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qq44TWHLmotYh0XD0h4JWlXUaxHQSycCqewbGV8RYFs=;
        b=Gvn75eik02rcvEDh+9al6LQ9UNRYaNV+ke3H1wR1nQIiOjAelAqTAutZ4T5S5ePVoa
         8krRxMBixwRXC0pOYDosGuqJ5DlZUR1RthR5kUSMNkcDnfxjZ9eC3xeuqDacvt0T2lrf
         rzhwaKpBfP1hBuVQ/NFT+cgjVl2V03EJCUdBrTSqGQrKPwoV0m0ATOmX0/4va7P7XbQQ
         wDIKMCdqlHg4hqVmeLtMwajj+fm4Fn0tV992xWnruhVfd5isT1Ff/KI3mBvurFA+RJl5
         nsfoJByLKvwTgny2kfVPqNkLbEIpyRWaZLJO0IYoFO/7UlSnfTCzG9/AZV4uzp8R0L9e
         6rPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687165345; x=1689757345;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qq44TWHLmotYh0XD0h4JWlXUaxHQSycCqewbGV8RYFs=;
        b=B7SqcwdFvWFsL32AChMZkwCA2SEcUb02Kee3omUd6zPQzliCwbsSDUJwyUN/tGkyoY
         NTpOoW3VwYmIAs4mdTbb7KL4wp4bvWJNQu8RQ7VnYnU/sQyEOMHxKl+zMkTG6geegpQ6
         7hGv3DzmGOqYX/tDYGK0Z3iu3oV59AzArmaFMfWZ/BSxGOv+Q4DKpoZQ98UXatk5O9ZO
         o3uQruWqISKjeJbwbceuU81ktD4kpSeK+4JOKTsb9uqlW1W0Vh/0zFtSZ51Krqnz0M9H
         P7KS1XGji0aQS5Wo7kbBA0gntAKz86cUWLxjkbvj4KolS0sX3rUCLWEUvLR5YqD6qTwQ
         7ePg==
X-Gm-Message-State: AC+VfDzHLYys70Z+xt6Cwq+pH+KcOSg887Ll9UZL5uPvnmb1uIJePINY
	2tqNk4if64diPugK1sjBNf3+4uPrkLmyTxhC+i4=
X-Google-Smtp-Source: ACHHUZ4cU3lqloDooNEdx2L+de2ciwW8ZMXePQj6lbBhO07VVulOHWUrTKam5X+ofLzOxClzggDqJRO+MtpUmW3lrYg=
X-Received: by 2002:a05:6512:450:b0:4f7:605e:4dad with SMTP id
 y16-20020a056512045000b004f7605e4dadmr5182899lfk.5.1687165344820; Mon, 19 Jun
 2023 02:02:24 -0700 (PDT)
MIME-Version: 1.0
References: <19697e87-997f-46ff-7017-804e1f344550@bootlin.com>
In-Reply-To: <19697e87-997f-46ff-7017-804e1f344550@bootlin.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 19 Jun 2023 11:02:13 +0200
Message-ID: <CANNYZj_j57XUfRbALdWSvH5wGOop9ytSk-_niEH24Go0qDCKwg@mail.gmail.com>
Subject: Re: [yocto] Going on supporting Ubuntu 18.04?
To: michael.opdenacker@bootlin.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 09:02:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60339

Even if we would have a subscription with Canonical, it would not be
fair to ask contributors to fix issues that occur only on distribution
available through commercial channels. So yes, it should be dropped
ASAP.

Alex

On Mon, 19 Jun 2023 at 10:35, Michael Opdenacker via
lists.yoctoproject.org
<michael.opdenacker=bootlin.com@lists.yoctoproject.org> wrote:
>
> Greetings,
>
> I know that we are still testing and supporting Ubuntu 18.04, but should
> we go on doing it?
>
> This version no longer has public updates, so unless we have a
> subscription with Canonical, we are going to be out of sync with the
> updates that Ubuntu 18.04 subscribers get.
>
> What do you think?
> Cheers
> Michael.
>
> --
> Michael Opdenacker, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60338): https://lists.yoctoproject.org/g/yocto/message/60338
> Mute This Topic: https://lists.yoctoproject.org/mt/99619554/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

