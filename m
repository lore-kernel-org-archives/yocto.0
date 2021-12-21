Return-Path: <sakoman@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7530FC433F5
	for <webhook@archiver.kernel.org>; Tue, 21 Dec 2021 16:59:44 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com
 [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web12.8238.1640105983857637979
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Dec 2021 08:59:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZkakLU1/;
 spf=pass (domain: gmail.com, ip: 209.85.219.171, mailfrom: sakoman@gmail.com)
Received: by mail-yb1-f171.google.com with SMTP id x32so40576666ybi.12
        for <yocto@lists.yoctoproject.org>;
 Tue, 21 Dec 2021 08:59:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=C3GpLes6pGnME63/TafAZppUUVAYe9jeWRlDQB0pWEc=;
        b=ZkakLU1/6xLHrt/EOfQsdCplpi62lKhp46iaS154k6UJAAiDM5GSl+mFgqgV/8SaxI
         I+fw5uypVvbQIbQeaSPdIsLdhN+ZVzOD5G4y1dyXweUccW0hTB9BTvF0PS4EiECFMdqE
         +PErVasEVcNCu+ZXeYLUUXgvs71rEtRHKuoDnZKeirlI5pWRe9s60wP/Kekw+Yip8Qli
         +dIOtiOWVHvxSno7O0kD60WsRcEjB7JbM1RgVWwJicapc5Ae7yBRgxXwO+caosZfhl05
         YAVnxFjT7e0Us7ICSniSnuGyZ5J5HHrPtLBPwAu4rtbU/Q8dnZIdkNr+QVt6KMkQ8fQs
         BE9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=C3GpLes6pGnME63/TafAZppUUVAYe9jeWRlDQB0pWEc=;
        b=TCN57fyNSTVo1kdfy1a/6MTbx1YSM39tBDS2OaY1xVz9heXM0q1EoNvaEKyzHHJsAP
         fJvm6pmrBja3oUbnYFdRT1YZFFzQ1bmnogly6hYfqPjMPgMHM2WZ6zc0gA53OUyXOmZv
         f1KVuX0n16Fie/fwXHUW1OPWSVnFuZ44F10Bx8cD0uYuB9bx66Ku+1piYS5NESQlghtr
         CJIR5Cq/KYjq2MiHKMbKr0dXmRCsnwhjNd3d7P3O3/iXE+jjdWoh8DiJOWkL0oMU3P82
         GAHbitQGx0K5sPebGFje7xSjpRuKl0dlAATnoKLXZvhCdXVWLE/Szb4gGz8aaz7bV9mj
         lbow==
X-Gm-Message-State: AOAM5323ZWynSySnt1eCvds+3tgFa7a+UZdqi1oXNoV1WnqM7EU9VTWU
	eSfNmv+V+EYu6vviAnMid8fdyVBuryhbl55oV8I=
X-Google-Smtp-Source: 
 ABdhPJz8on3488meKNk50yv4z4QdfUOiey6JYKHUmVjkspMTHYxJ1TBo9q5B05p4s5rE8dm5uAfJrEX7GSqujsSa3J0=
X-Received: by 2002:a25:9bc9:: with SMTP id w9mr5666791ybo.398.1640105982979;
 Tue, 21 Dec 2021 08:59:42 -0800 (PST)
MIME-Version: 1.0
References: 
 <99e75b930d85e240c51074406b0cd896c93257cb.camel@linuxfoundation.org>
 <DM5PR1101MB23482FA91A07CA4057E768D9BB7C9@DM5PR1101MB2348.namprd11.prod.outlook.com>
 <CANPvuRkqyngQAqhqfou9ka7J3oufuSCubf9J7cgZ-ZU9KLTJjg@mail.gmail.com>
 <97b16a070ca838dfe87ae579edf36c0e01d01175.camel@linuxfoundation.org>
 <CANPvuRkxfQ60H_OUwru_a+Xhkx6WCJu2f-EgGkONLB8GSvL2vw@mail.gmail.com>
 <f325951fd82f373bbe505a574a10f91697e495cd.camel@linuxfoundation.org>
In-Reply-To: 
 <f325951fd82f373bbe505a574a10f91697e495cd.camel@linuxfoundation.org>
From: Steve Sakoman <sakoman@gmail.com>
Date: Tue, 21 Dec 2021 06:59:32 -1000
Message-ID: 
 <CAGDS+nkeaEzVKSSdjy1K3BoS+5e9uW34DnM-bRZox_-j2Eqz1A@mail.gmail.com>
Subject: Re: [OE-core] [yocto] [qa-build-notification] QA notification for
 completed autobuilder build (yocto-3.1.13.rc1)
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Jose Quaresma <quaresma.jose@gmail.com>,
	"<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Dec 2021 16:59:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55641

On Tue, Dec 21, 2021 at 5:50 AM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Tue, 2021-12-21 at 15:12 +0000, Jose Quaresma wrote:
> >
> >
> > Richard Purdie <richard.purdie@linuxfoundation.org> escreveu no dia ter=
=C3=A7a,
> > 21/12/2021 =C3=A0(s) 14:19:
> > > On Tue, 2021-12-21 at 11:15 +0000, Jose Quaresma wrote:
> > > >
> > > >
> > > > Teoh, Jay Shen <jay.shen.teoh@intel.com> escreveu no dia ter=C3=A7a=
, 21/12/2021
> > > > =C3=A0(s) 07:46:
> > > > > Hi all,
> > > > >
> > > > > This is the full report for yocto-3.1.13.rc1:
> > > > >
> > > https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/=
tree/?h=3Dintel-yocto-testresults
> > > > >
> > > > > =3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
> > > > > No high milestone defects.
> > > > >
> > > > > new issue found
> > > > >
> > > > > Bug 14669 - [QA 3.1.13 RC1] failure in ptest :gstreamer1.0.gstrea=
mer-
> > > > > 1.0/pipelines_seek.test
> > > > >
> > > > >
> > > > > =3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D
> > > > > https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14669
> > > > >
> > > >
> > > >
> > > > This patch is a bug fix 14669
> > > > https://lists.openembedded.org/g/openembedded-core/message/159911
> > > >
> > >
> > > Great, thanks!
> > >
> > > I assume we don't need that in the version on master as it is already
> > > present?
> > >
> >
> >
> >
> > https://git.yoctoproject.org/poky/commit/?id=3D7b90027aac9fa41b3dc98765=
151d761df8dabb97
> > The first version of the patch on the master branch is this one and it =
fixes
> > the [YOCTO #14194].
> > I cherry-picked that with some adaptation for dunfell but the content i=
s the
> > same.
> >
> > We need the patch on master as well and we will drop it with the gstrea=
mer
> > 1.20 update.
>
> Thanks for the info, we're ok with master then and can backport this.

It will be in my next patchset for dunfell.

Steve

>
> Cheers,
>
> Richard
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#159925): https://lists.openembedded.org/g/openembedde=
d-core/message/159925
> Mute This Topic: https://lists.openembedded.org/mt/87875320/3617601
> Group Owner: openembedded-core+owner@lists.openembedded.org
> Unsubscribe: https://lists.openembedded.org/g/openembedded-core/unsub [sa=
koman@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

