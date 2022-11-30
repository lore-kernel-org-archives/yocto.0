Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C1DEC4708A
	for <webhook@archiver.kernel.org>; Wed, 30 Nov 2022 08:08:12 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web11.5844.1669795684201745012
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Nov 2022 00:08:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=cRIPGgLx;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id f13so25710007lfa.6
        for <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 00:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z5lgvrySrjL/NeC6s8ts67Y8hSIXzUcJ9XlZuoYmxpw=;
        b=cRIPGgLxHYZ+wiAKvexSN4vHsE9fFRfPNre3Fq62cd986/JD2ziHbjayl3/VXGlOL5
         n5/y4McV585o8cycwAYt9nIuBv5zdwQmm16nj1TMZWFuvToKFU4T7VGEM/rSFqnRkqCt
         LSa4i4WsIShMoN3UzhiOHlkY8MBb9ZNHyz9ROS3T+0zZKYO4ABToA+Rvc2O4f67cKvJk
         MRsKZzOEIXU9LTF/L+aHoEFblP2nYi/qzYMBNdWGOhbCmtNo6pQ2kQhipAPuWfY+VeKc
         NTwhxbs/cEjXVallVOjHd2yAnpZh3Xx08wJ7b4vGsBaPkCZuF0orrFdkHFYCW2wRVrcN
         3QhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z5lgvrySrjL/NeC6s8ts67Y8hSIXzUcJ9XlZuoYmxpw=;
        b=63+l9PzHma7iFACqUnykveHhPS/Hcwdcv9uQdhpeV0+jIPHimXvQ6XpK+kJ/T8Vvyy
         dtp/Fut9+Mbs4ns2Bit4s1/1zcZbyzXB3ncg+vaVQcliuU9Ai13H3XtyGGEG5nLMOnOu
         MNep++ZjFiboXW4wM9wWi2/hfovbwmzMS0qtew2asKzZm4B3N54aTMPYyKSgpxAoCMW4
         AWhGmovNtQ4K8dn3pG9UOnwIls4D9mS/mSX5d494FcUqlDq6cWd/k2zPLoYOOSpY1lQH
         T0TI4vI4aHrNo2rnuHH9KHtPn26jw2o29n0Y2PxuyDuZioQxJnGGW/sitcNOoXAGAwC9
         JVdw==
X-Gm-Message-State: ANoB5pnrv2NE4PMu6NBpMvURty8pXIabn6GG+WW+ldhS7IW3oxVznWJu
	NFk2wVZiMNeZROnAukBuoqZMnb4st1+dv2dN0Ys=
X-Google-Smtp-Source: AA0mqf6RU5xICeKXKlsiOkka7NXUyFr4Pl6WKqFW9po0f1IO4uILRgzdt7qxkboCatzbjRNPXcuod2ythwu7Fyg0VPI=
X-Received: by 2002:a05:6512:25ab:b0:4b4:d443:6550 with SMTP id
 bf43-20020a05651225ab00b004b4d4436550mr16205019lfb.393.1669795681948; Wed, 30
 Nov 2022 00:08:01 -0800 (PST)
MIME-Version: 1.0
References: <0b6801d90409$885d6860$99183920$@gmail.com>
In-Reply-To: <0b6801d90409$885d6860$99183920$@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 30 Nov 2022 09:07:50 +0100
Message-ID: <CANNYZj8Y37+s6Jzo1XvX0uCYNFc=NqOH8PWrFSL9_=TOS2ja7Q@mail.gmail.com>
Subject: Y2038 proposal
To: openembedded-architecture <openembedded-architecture@lists.openembedded.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	OE-core <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 08:08:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58663

On Tue, 29 Nov 2022 at 16:45, Stephen Jolley <sjolley.yp.pm@gmail.com> wrot=
e:
> We=E2=80=99d welcome a proposal/series on how to move forward with the Y2=
038 work for 32 bit platforms.

I have the following proposal:

1. A branch is made where:
a. "-D_TIME_BITS=3D64 -D_FILE_OFFSET_BITS=3D64" is enabled globally.
b. qemu is always started with "-rtc base=3D2040-01-01", simulating
Y2038 actually occurring.
c. an additional runtime test verifies that both RTC clock and system
clock report 2040.

2. This branch is run through a-full on the autobuilder. Any uncovered
issues are filed as bugs.

3. Once *all* of the bugs are addressed, repeat point 2.

4. Once there are no more open bugs, 1a is merged into master.

Any fatal flaws in the plan?

It's not hard to see that Y2038 problem is real and serious, e.g. on
qemux86 core-image-full-cmdline built from master:

root@qemux86:~# ls /
bin  boot  dev    etc  home  lib    lost+found  media  mnt    proc
run  sbin  sys  tmp  usr    var
root@qemux86:~# date -s "2040-01-01"
Sun Jan  1 00:00:00 UTC 2040
root@qemux86:~# ls /
bin  boot  dev    etc  home  lib    lost+found  media  mnt    proc
run  sbin  sys  tmp  usr    var
root@qemux86:~# ls /
-sh: ls: command not found

On qemux86_64 the same sequence works as expected, of course.

Alex

