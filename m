Return-Path: <aladyshev22@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43B42C5478C
	for <webhook@archiver.kernel.org>; Fri, 23 Feb 2024 17:15:27 +0000 (UTC)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
 by mx.groups.io with SMTP id smtpd.web10.557.1708708519867251613
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Feb 2024 09:15:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RmM5lp3A;
 spf=pass (domain: gmail.com, ip: 209.85.222.43, mailfrom: aladyshev22@gmail.com)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-7d6024b181bso515631241.2
        for <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 09:15:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708708519; x=1709313319; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P8RSx8EMI5Q4bkBNujcuXjrIJ23dYDKkCP+dLf+NYq8=;
        b=RmM5lp3AB5Ug8xif1/Z0I+4V9HKs88qAggD1xx01Blk/5f0hm5ka1mMtA7LQspUxI0
         2BAymDJuK36/kN+Vc3lafdr/RK6NXaHF70ftTkW+psovbHoroB1wDedUoubj2G2dZ3dV
         42D8gMRH4De7e1y7EnyLSbw1lw0hEBl2rpQy/Q+D4ns1Do/rUm5lNT9LKv4SNENjHaBc
         MKyKYMgxSrB5ABJYsanZkwV6DV1E+wqB33GzRjMQb3RrTXApIJ1sOGzbZDCPw1GaiCSD
         GbpCvgVp+/CGvMLJIlVfRK8cqKiJ6aX+Q1JyEnMXeHtuA/4A5TFCx4keN/Ah7KR6kK4D
         wBag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708708519; x=1709313319;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P8RSx8EMI5Q4bkBNujcuXjrIJ23dYDKkCP+dLf+NYq8=;
        b=JW9C7XA++dILMrrfNurvFDrYW2hQQ1F/SE5WXtdLwZgIiqtP3zBuyTAhePAfu/Sq6D
         TSroadv4VIMEV6Dbt89ClsRa69hkucjrIBaOQnOUcT/BBlcUdSzBXwXpvqxJAZHSlSJ4
         yvgpdQ237YOeY+zMuL8AoICsLjFb/iM8y2gnPwEEnJs+TflcYyzB5qF5hhpvB7t0THE7
         NCU05HBRUF3ruUXkAxzNe1sfy8+XZjnOdokLsAj8Y8U8+rA4tLJJcP+UcnZL+olaW+IA
         bpvqiM1hyVjMZA69/0LhVICE3WCPfI0rRniO5TAcJPuGpOpc8S8nkmpfVUWYCE8MaRge
         Erdw==
X-Gm-Message-State: AOJu0YwgEQ3ttLSbj925ZV4Gvy9CbxWphcCNJDUIXC+LWiaIjN9d1bF8
	gfUlFhN9nFgPFjcKF+JqZP7pgdcoU2uLi8IdDtCdVBZYsWWe5GCmUbOUYzNviaNRk6iVL3DpSCY
	MDY6SogyDTny9cGNzi1RIZ9LCpWk=
X-Google-Smtp-Source: AGHT+IHGqMoQOQwGWtSpHcwQPPBfM5m8pZUn1ht3yA+Lli6Y1aFWIy0OVUeLtffi87d1PRk6rriCTt4k+mzJz8KlbLM=
X-Received: by 2002:a1f:4e44:0:b0:4c0:1cc8:8821 with SMTP id
 c65-20020a1f4e44000000b004c01cc88821mr530587vkb.9.1708708518816; Fri, 23 Feb
 2024 09:15:18 -0800 (PST)
MIME-Version: 1.0
References: <CACSj6VW3yitnPuAeg=VOXnhB7D5dN2_UD7KStSaDYug39YL3vg@mail.gmail.com>
 <CANNYZj9VBXUESuy91rfF1xbaN40AfU0trdevtLVgXgq37MLk5w@mail.gmail.com>
 <CACSj6VW19X4b7qq+prukimrrUhMYn6Xe2yorn2q6OnDjBYAPgw@mail.gmail.com>
 <CANNYZj-Rm-dKM1xc_e8mTobUgTE3uB8J_xEKDzfPCrJF7cWB7w@mail.gmail.com> <CADkTA4N-8JNL5_EOYicbsvAVtEMDzxUMQw6oyA9ckJ7c5fPA9w@mail.gmail.com>
In-Reply-To: <CADkTA4N-8JNL5_EOYicbsvAVtEMDzxUMQw6oyA9ckJ7c5fPA9w@mail.gmail.com>
From: Konstantin Aladyshev <aladyshev22@gmail.com>
Date: Fri, 23 Feb 2024 20:15:05 +0300
Message-ID: <CACSj6VV4WYA-QMrRub=dj70+V4Luf317Mt3j9yeLuA6YK9MJ2Q@mail.gmail.com>
Subject: Re: [yocto] 'yocto-kernel-tools' requires git version much greater
 than general Yocto requirement
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 17:15:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62585

Should I see the new git version in the linux-yocto devshell?
"""
bitbake linux-yocto -c devshell
"""

I've tried to check it in the current poky master, and it gives me:
"""
$/data/poky/build/workspace/sources/linux-yocto# git --version
git version 2.30.2
$/data/poky/build/workspace/sources/linux-yocto# which git
/data/poky/scripts/git
"""
So in this case host git is used. "bitbake kern-tools-native -c
devshell" gives the same result.
Can this be considered as a proof that git-native is not used?

Konstantin

On Fri, Feb 23, 2024 at 4:11=E2=80=AFPM Bruce Ashfield <bruce.ashfield@gmai=
l.com> wrote:
>
> On Fri, Feb 23, 2024 at 6:43=E2=80=AFAM Alexander Kanavin
> <alex.kanavin@gmail.com> wrote:
> >
> > On Fri, 23 Feb 2024 at 12:32, Konstantin Aladyshev
> > <aladyshev22@gmail.com> wrote:
> > > Thanks for the response! What would be a proper way to fix this probl=
em then?
> >
> > 1. show how to reproduce the issue in plain poky master.
> > 2. check why none of the tests expose the issue. You can for example
> > grep related keywords in meta/lib/oeqa/selftest/cases. I think there
> > are tests that check devtool kernel operations there.
> > 3. see if existing tests can be easily extended to cover it, so that
> > they fail without a fix.
> > 4. perhaps the fix would be to check git version first, and add the
> > argument only if the version is recent enough.
>
> Which unfortunately would still leave the problem that the change is
> intended to fix, so I wouldn't want to merge any patches to make it
> conditional in the kern-tools.
>
> Those changes were made to prevent git operations from running
> hooks from the host environment, for both security and consistency
> reasons.
>
> We added git-native to the kern-tools-native recipe to get a consistently
> new version available for any operations involving the tools.
>
> So I'd add another question .. why is this operation not using our
> natively built git ? Is there something going on with the path, environme=
nt
> or something else that we missed when adding that native dependency.
>
> Bruce
>
> >
> > Alex
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#62579): https://lists.yoctoproject.org/g/yocto/mess=
age/62579
> > Mute This Topic: https://lists.yoctoproject.org/mt/104509876/1050810
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfie=
ld@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II

