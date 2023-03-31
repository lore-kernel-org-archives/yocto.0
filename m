Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 367A3C6FD18
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 05:18:26 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web11.47857.1680239902440106778
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Mar 2023 22:18:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=DNQA98OL;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id t14so21863618ljd.5
        for <yocto@lists.yoctoproject.org>; Thu, 30 Mar 2023 22:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680239900;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JucoqffiGFwsDHVbjCHOHsYechAt8xPReAXnj9lrulM=;
        b=DNQA98OLH6x39HHc1/MbX/GyDV8iFZ0mPvCpZzkcdytfJ432KH4jtG6krTvFLbRGG/
         cRn12+ptBva4aKsfPkUfEJP6gHJOu3wAYRnU/cFaqw0/gOfBwIXrOv8++23AbkRXTSKP
         ferMhg3VI2i8xLH06q1e2PWtQQLjqA6+53ZWLYUUCgonhlmVCSb53yJBQ6j7Quu7x++2
         Unuf3ZEyjRZuRpPeke+I1QjuInzf9RYkJwcuplyZqI8nMfpUZOk9b5ZaMa7ZlymepTpT
         n5cs90ajk11Hm5TCgiZGnGhOBXXkH91JZJkQEFFM2hx0xW2jN9ed/Vx/XHvB0bfJMW1/
         ObqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680239900;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JucoqffiGFwsDHVbjCHOHsYechAt8xPReAXnj9lrulM=;
        b=XKRA+Fs4oITHv5xhryT0NGE/OPmq73AbaocqDiQ7FLWD6olOHMokwXGJX371w1+DG9
         16bH9CnvxMwoc4bpsWYPSKPj2M9ed2WCxouvMezmgFEG4v8mM6gKuvB0H6LiVlBfMamk
         7Jnj7apVZQ1K+ZQLOHnyLn3mpFVyYIN1lrBwdQK4h0YUv1JT86k5ROSna5ksVB3kB8PC
         bj2Zs2WsXbTU8RNtju+6cHXghHaQS7PxBabqrMyZ9iF+Pet/hgj7dHIO+gQ20CxK0ROG
         VsDoCK3/zoDCKJIrm/wdFdKn70iWrD915NPSiQlfpgxJ0JnG9NKYTNmhhROtbwW3oyTs
         2QXA==
X-Gm-Message-State: AAQBX9fLq1VJto2kd9MlKc71r9Rw2XAaumyMgmg6rVG2lEzT/++K5GQb
	32AhvHfNV8TqyvfnHFlIP+VWDCVKhUYvWEtIPRw=
X-Google-Smtp-Source: AKy350Y9tI0dT4ey5KEkwI892ZBR+57Ogdea+fPVruun10fY92bXkSP1VcPVDOv+BAFKIBcRQNU71UH5xHBiUnZM+oQ=
X-Received: by 2002:a05:651c:150f:b0:293:4ba5:f626 with SMTP id
 e15-20020a05651c150f00b002934ba5f626mr4215998ljf.2.1680239900202; Thu, 30 Mar
 2023 22:18:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAHkgX0uZ0Hd5aMx+OcGuYnNdjVjY-nGCWLwL-D9-TbsnXo-m6w@mail.gmail.com>
In-Reply-To: <CAHkgX0uZ0Hd5aMx+OcGuYnNdjVjY-nGCWLwL-D9-TbsnXo-m6w@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 31 Mar 2023 07:18:08 +0200
Message-ID: <CANNYZj-M=MwvYT7Ed0VGyEbYMovP90ZWfn383DofozCxa28rMw@mail.gmail.com>
Subject: Re: [yocto] connman + busybox-hwclock startup failure
To: Chris Elledge <celledge@siteworx.io>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 05:18:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59558

Can you submit a patch for this please? The mailing list is openembedded-co=
re@.

Alex

On Fri, 31 Mar 2023 at 00:05, Chris Elledge <celledge@siteworx.io> wrote:
>
> I've encountered an issue when using a system that has both connman and t=
he hwclock.sh script enabled during startup. The default combined startup o=
rder for these two services is wrong.
>
> Currently connman starts at 05, and hwclock.sh is at 20 (default for upda=
te-rc.d). This means that we have a situation where connman starts up and o=
btains a correct NTP time, then hwclock.sh clobbers the system time with wh=
atever is in the RTC even if it is way in the past. The big issue caused by=
 that is connman schedules its next NTP update at an absolute time of (curr=
ent time + 1024s). Once the hwclock.sh script knocks the system time way in=
to the past, the NTP update will not run for a potentially very long time.
>
> I would suggest adding a line to poky/meta/recipes-core/busybox.inc to mo=
ve hwclock.sh earlier.
> For example:
> INITSCRIPT_PARAMS:${PN}-hwclock =3D "start 04 2 3 4 5 . stop 20 0 1 6"
> or
> INITSCRIPT_PARAMS:${PN}-hwclock =3D "start 40 S . stop 20 0 1 6"
>
> Thanks,
> Chris Elledge
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59555): https://lists.yoctoproject.org/g/yocto/messag=
e/59555
> Mute This Topic: https://lists.yoctoproject.org/mt/97961702/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

