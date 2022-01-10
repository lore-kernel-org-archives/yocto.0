Return-Path: <ivriabtsov@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88059C433EF
	for <webhook@archiver.kernel.org>; Mon, 10 Jan 2022 14:10:22 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web08.31970.1641823821264406894
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jan 2022 06:10:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KqqBPpoS;
 spf=pass (domain: gmail.com, ip: 209.85.167.46,
 mailfrom: ivriabtsov@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id u13so44645158lff.12
        for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jan 2022 06:10:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=OgXvXtw9EDro7xXa2g/2pDBTk7IqVA2p/zP+T+6YnL8=;
        b=KqqBPpoSXYi63FO/HRvb7O/6plFxRMVEqcISXd8S1iDvZFWV1amL6eGaWWMcL1WGn2
         rXsqyoyhd4JYye1nQLXltbNkJ4Z7RIdPgs3NvTbTmuqtig4YQhzDCgaqMP7CZnVQNXV5
         Q5aqrQ+/VYJ/asC5sZyM0MjAPc5Infk/nKtBcycKLOHlyCl6wDKvO83hEzovSGCu9gJ4
         V3IcZZMMo6QZjXJQcCr9k2WVSzez6hBj2AaDvQiKp37Ycbmk57kB5dadWW28+K+9o2Bo
         Q7k7M6qelNinN+AtbBVDQj9IiLhHIUGVyyM/q8q5HLmFV594wW/If1cM/ZF53yQ1IDjx
         UICg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=OgXvXtw9EDro7xXa2g/2pDBTk7IqVA2p/zP+T+6YnL8=;
        b=3ZkgKICLrSiIBJoaiTZ3D+EmlIQ3pHjzz/O8RRdN7IG8q8gAFEP5zn9AogH0j+2CvR
         pyEVL0EgvMSDqwZw5d3UN7bP0gXbf1hhnbd5pvH0t3ZewE+daCjP/tpJKmxNIRFMNiL0
         w6R5iSA2bMmNxIty7Y9utlD3nLYoC0nARkpa1PcH6S3VJ7lQ0D+iO5HF79kh75MlNXTt
         F7Lmf5yFL1lU8gyTr+hR0mfYluTUlPeBW0gwZlotMBKzSLQcez4ZRrIawjkfFT8CACUU
         ilInQ0yrYpAg23d6dqdug4rwR6RuSUGglXwSorW/aMaawr0qtdUss+v7MNFfGRDP9mPD
         AY5g==
X-Gm-Message-State: AOAM532bYCZfunk5fMXR4s6oy+B9KjmJp7XUG+zRXe/jpqKhbJhAAL5s
	CslHtDgO78kqqrLFf8Xx8R7uRwWEepLV9fsdM4A=
X-Google-Smtp-Source: 
 ABdhPJwCxL1IAue1AiKA7M0VjBa55dQzrYwV7z8XWj2VWWUJWyFjCKT5j+N16Gj1OENVux81AkSKR5RavRjslCjCeB4=
X-Received: by 2002:ac2:4c27:: with SMTP id u7mr8368377lfq.89.1641823819300;
 Mon, 10 Jan 2022 06:10:19 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAKAnv4FS33+yfaoYRo3nC=odXT_VKmdsYoWpE6zb7f9fRXyB5A@mail.gmail.com>
 <CANNYZj_7Xx9=syXCbEZUMoSW9GkO=PiqzuH9VTgbYgNLnDV6Cg@mail.gmail.com>
In-Reply-To: 
 <CANNYZj_7Xx9=syXCbEZUMoSW9GkO=PiqzuH9VTgbYgNLnDV6Cg@mail.gmail.com>
From: Ivan Riabtsov <ivriabtsov@gmail.com>
Date: Mon, 10 Jan 2022 17:09:52 +0300
Message-ID: 
 <CAKAnv4G2mcJDcYWPmFKFqrBO+JZKP3rkR1U+APR1pSyMKOQVRw@mail.gmail.com>
Subject: Re: [yocto] rebuilding images
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Jan 2022 14:10:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55775

Ok, thanks.

=D0=BF=D0=BD, 10 =D1=8F=D0=BD=D0=B2. 2022 =D0=B3. =D0=B2 16:16, Alexander K=
anavin <alex.kanavin@gmail.com>:
>
> Do not remove sstate cache, it is there specifically so that you do not h=
ave to rebuild all the packages.
>
> Alex
>
> On Mon, 10 Jan 2022 at 14:13, Ivan Riabtsov <ivriabtsov@gmail.com> wrote:
>>
>> I build the image with the command
>>
>> #bitbake phytec-headless-image
>>
>> then I need to add something to the image and I do it like this
>>
>> #rm -rf tmp sstate-cache deploy
>>
>> and
>>
>> #bitbake phytec-headless-image
>>
>> but this is too long, the question is: what to remove , so as not to
>> rebuild all the packages, but so that the package was added to the
>> image, for example, I modified local.conf, it was like this:
>> IMAGE_INSTALL_append =3D "mbpoll mosquitto"
>> it became like this
>> IMAGE_INSTALL_append =3D "mbpoll mosquitto ntp ntpdate rsyslog"
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#55771): https://lists.yoctoproject.org/g/yocto/messa=
ge/55771
>> Mute This Topic: https://lists.yoctoproject.org/mt/88322460/1686489
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@=
gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>

