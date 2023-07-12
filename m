Return-Path: <tom.isaacson@teknique.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66742EB64DA
	for <webhook@archiver.kernel.org>; Wed, 12 Jul 2023 17:43:55 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web11.2431.1689183829370845234
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jul 2023 10:43:49 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@teknique-com.20221208.gappssmtp.com header.s=20221208 header.b=GvQL0g3x;
 spf=none, err=SPF record not found (domain: teknique.com, ip: 209.85.219.51, mailfrom: tom.isaacson@teknique.com)
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-635eb5b0320so48662246d6.3
        for <yocto@lists.yoctoproject.org>; Wed, 12 Jul 2023 10:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=teknique-com.20221208.gappssmtp.com; s=20221208; t=1689183828; x=1691775828;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gu6MmF/UASBk12IUM2juFSArUuqxD3ph2UpkMvIiChQ=;
        b=GvQL0g3xAWkk4HNJ75V1DHkQMbqNm7sRCoi8jkfSm7Pt3kPSIg9Q5Cpl49cRL5zKMZ
         onCyJTYHC0k2mi0G+CZosf2LCA9tm4GP2fhilcLAk11QpxA3FCTE5TPq4dDmfK82IwRN
         QVcpeB+LCuAa+UZw7wF161B7zP4JKGhoiqSs6OT8gHo0KmxRuAkMYo812J4XuA0Lbc4N
         q+l3hL+tjfJvS1z002hAZmnwfLRsGv8vpzLtMRrUC9C70/kpvIpHk+RL8DET61bOorbN
         LiOOa6IEL820NlWPQW8K7t9nD6ir9xYJWnZjjIFZSHiN38NkpUuST1jsHmAW+CNHWTec
         1wGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689183828; x=1691775828;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gu6MmF/UASBk12IUM2juFSArUuqxD3ph2UpkMvIiChQ=;
        b=VU+KrqLROWEnNylA0FefL7O8b3blpFEysf44gA1mT8EM1xudxD8wCNRZ5cCN6rOukJ
         hZhCTFV1zUoStSQpPm+9Ve4MTjheh4sn3tBFX1VTh67SJJGh9BsheYT5D72y+Fkwqpva
         d8S8FcGyxANpqzSwAzbHzcNxaowv8hMd0kF/uV672pw1c8chvOdjD9q6TfZXCmsd/ugZ
         2yDeTfFShwFjcpA2OjV8Ouw8ZoNX5gFVPF+eJadxHyoKbLF8hmDR6lWM3+81vK6YB1Qz
         t7Buz8FT2UylfrE+wwltEba9h1PSOt7z04W8V8/p3YpscMRPagbLXsOtHUC7UkyYRBsY
         zSpg==
X-Gm-Message-State: ABy/qLaJ822mAAt2/AI0IxXx32Y+9JLBE6qQnZDTKJEAUWtmmYejKR04
	OMf3hYTfmDdUkAWbHJgEIDpAr7bbkyPQl9O08g58Pw==
X-Google-Smtp-Source: APBJJlHql++oq1KEzbxnHbAhPNDizdlP9iZwLEHwuPpEnm0MW9tOyx8Mzo2+KWLXGTkGPtCvDAsQD0reqBy4mDu6W5M=
X-Received: by 2002:a0c:e254:0:b0:635:df49:719c with SMTP id
 x20-20020a0ce254000000b00635df49719cmr19183019qvl.22.1689183828362; Wed, 12
 Jul 2023 10:43:48 -0700 (PDT)
MIME-Version: 1.0
References: <3684.1661546302833449840@lists.yoctoproject.org>
 <23208.1689112487284330296@lists.yoctoproject.org> <CANNYZj-Lp4rkFT1fBsPhEETtLcB5htumQRqgOPz5kMuuJoabnQ@mail.gmail.com>
In-Reply-To: <CANNYZj-Lp4rkFT1fBsPhEETtLcB5htumQRqgOPz5kMuuJoabnQ@mail.gmail.com>
From: Tom Isaacson <tom.isaacson@teknique.com>
Date: Thu, 13 Jul 2023 05:43:37 +1200
Message-ID: <CA+EiEZJtQQj3KWq_jboo3Eh0mNQW_xNf=FLwpJ0WxNBXiDeOxw@mail.gmail.com>
Subject: Re: [yocto] Devtool fails if SRCREV is set to ${AUTOREV} #kirkstone
 #devtool #yocto
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jul 2023 17:43:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60556

It worked fine on Dunfell, it's only a problem now we've migrated. The
workaround is to add "SRCREV =3D <your hash>" to
poky/build/workspace/appends/<package>.bbappend

What changes were there around AUTOREV between Dunfell and Kirkstone?
Is this still an issue on Mickledore?

On Thu, Jul 13, 2023 at 5:03=E2=80=AFAM Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
>
> Devtool does not have a maintainer. If you can look into the issue, it
> would be appreciated.
>
> Alex
>
> On Tue, 11 Jul 2023 at 23:54, Tom Isaacson <tom.isaacson@teknique.com> wr=
ote:
> >
> > Is there a fix for this yet? We just upgraded to Kirkstone and are runn=
ing into the same problem.
> >
> > Thanks.
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#60550): https://lists.yoctoproject.org/g/yocto/mess=
age/60550
> > Mute This Topic: https://lists.yoctoproject.org/mt/93100438/1686489
> > Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirk=
stone
> > Mute #devtool:https://lists.yoctoproject.org/g/yocto/mutehashtag/devtoo=
l
> > Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin=
@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >



--=20
Tom Isaacson

