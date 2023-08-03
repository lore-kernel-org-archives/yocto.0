Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E54CC04A6A
	for <webhook@archiver.kernel.org>; Thu,  3 Aug 2023 16:25:49 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web10.19169.1691079946457498410
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Aug 2023 09:25:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=jocGczjO;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-4fe2de785e7so2073621e87.1
        for <yocto@lists.yoctoproject.org>; Thu, 03 Aug 2023 09:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691079945; x=1691684745;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wzQNJVRpiGKgpnYq/0Pxpppw5qMgStsp7qO1FnF51wM=;
        b=jocGczjOwG8v2Aehx9jeSHPeqeX8KacE3WAeMigL6My1sbeN3R8yWjFTf8T2NzIpaX
         Xo9bsOh6itIvuNHEn67CuAXQbgnX72y3XwLATjz5VuyiOVFAamNlLgPRxkGGzEzlJUTm
         qrP9bvGKVyC3Ym1Lw2+utuUTQ5/j/F2TNJKJCRJ9iZzdJIT2C0EqF+C7BBiXPT0orw9n
         52SCXxGuHq9bOgHhenOccSWPJLutsb0EJZ7cR6z9jvITZ02LjfsdQvnN63ZRYk90gm+Y
         gt8sc8OkPgC16RiK3shQ1lRsWgQkLuwuUigQricIE2lTTi1FaNQr22gSTPRSGENc/68S
         FAnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691079945; x=1691684745;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wzQNJVRpiGKgpnYq/0Pxpppw5qMgStsp7qO1FnF51wM=;
        b=ZWlbzZLzL6cLkNiM9kve8me3m8bhzujeamnf+IrM1I2QbhaeYrVcZ6s3Qn+4UncSYV
         qG24fuVz4g0aEIGTN/2X8q8ZLcAjTbI/v8AxSi8x2GiNVhIN3u9S400xmbW9S5Oa7Fq5
         y+GwSW+ZH1/JV24a+c5MbAsWzQH6bRV7NZt2qdF5040udcHVKkop8/4FXGyppM7vKK50
         tRQy47WBdS/2Qx0fvhhug5550GxMVLqg1f6P2zcxJbTXxZhjR03BrRvLw2h33J5vfyPG
         TAYl5ImnFvI3eygu824DLuqq2Ihu6EKIxUGD6OmceZzHrS64brwCx0Q9C2q1gemgRD1c
         ELPw==
X-Gm-Message-State: ABy/qLaZ+h6iIbl3Hr4PmXW2hX+tyhXdB9BZ3JDx1GbWMlW4dtEnMqV7
	PiEsB+zSeAy/imgH/bRP8G2HfiM2kjFlTXozYfE=
X-Google-Smtp-Source: APBJJlH0Qnu0Rnp4RgEIN1+KnyzPduWQ5Qav7MtFuOvt/zxMnXPx6sN5/tWIIvxv6vJ0xaXmyIS7QJf6fM3lbt951D8=
X-Received: by 2002:a19:910e:0:b0:4f9:72a5:2b76 with SMTP id
 t14-20020a19910e000000b004f972a52b76mr7251317lfd.65.1691079944212; Thu, 03
 Aug 2023 09:25:44 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj9jXxo9EhP-NcUs5vY+rF1zcExqN8rwQmEqvJc=hFFC2w@mail.gmail.com>
 <27848.1691078512692144168@lists.yoctoproject.org>
In-Reply-To: <27848.1691078512692144168@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 3 Aug 2023 18:25:32 +0200
Message-ID: <CANNYZj8ELy9FbCZrzHeWWKrW_NCfDEAY9HiG8tM2aUnVmCANpg@mail.gmail.com>
Subject: Re: [yocto] How to migrate an older version of Yocto?
To: msenturk <senturkmurat1999@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Aug 2023 16:25:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60709

Sorry that you got confused by various outdated or inaccurate guides
and tutorials. meta-xilinx for example does have a langdale branch
https://github.com/Xilinx/meta-xilinx/branches/active
If you think later version has less recipes than an earlier version,
that is almost certainly a misunderstanding, and the recipes are
probably somewhere else.

My advice is to take master branches for all layers, and then you're
going to have latest and supported versions of everything and if
something goes wrong it's much easier to provide help. zedboard
machine is available here
https://github.com/Xilinx/meta-xilinx/blob/master/meta-xilinx-vendor/conf/m=
achine/zedboard-zynq7.conf

Alex

On Thu, 3 Aug 2023 at 18:01, msenturk <senturkmurat1999@gmail.com> wrote:
>
> I am currently trying to build a custom Linux for Zedboard. Supported Yoc=
to versions are limited for Xilinx: https://xilinx-wiki.atlassian.net/wiki/=
spaces/A/pages/18841883/Yocto. I chose Gatesgarth because It has more recip=
es than Honister. And there is no meta-xilinx layer for Langdale. I followe=
d two tutorials I found on Youtube. The first one using a Zedboard: https:/=
/youtu.be/XPnmB-THjiY and the second one using Zybo Board: https://youtu.be=
/FMCfn0zwhaQ. I built an Image, formatted an sd card, copy the files, inser=
ted the sd card to the Zedboard and turn on the power. But, it didn't boot.=
 There is no single message on Putty terminal. After some research, I found=
 the same situation for ZC702 board: https://stackoverflow.com/questions/68=
098124/zc702-not-booting-up-my-yocto-created-build. So,now I want to try th=
e Zeus version. At least, I found a tutorial for Zeus: https://pcotret.gith=
ub.io/yocto-zedboard-101/.
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60708): https://lists.yoctoproject.org/g/yocto/messag=
e/60708
> Mute This Topic: https://lists.yoctoproject.org/mt/100525085/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

