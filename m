Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F01D1C021A4
	for <webhook@archiver.kernel.org>; Mon, 24 Feb 2025 13:31:06 +0000 (UTC)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
 by mx.groups.io with SMTP id smtpd.web10.88672.1740403865417895695
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Feb 2025 05:31:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=EJzToNgM;
 spf=softfail (domain: sakoman.com, ip: 209.85.219.176, mailfrom: steve@sakoman.com)
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-e5dd164f03fso3936376276.0
        for <yocto@lists.yoctoproject.org>; Mon, 24 Feb 2025 05:31:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1740403864; x=1741008664; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j+7VLSUiFGiFWcyr3bDi0ANOjN6+z9kLPMobUImTIC8=;
        b=EJzToNgMupFvKWnfT+LWTmhMOjzhsFAHv2nvv4d015yFPKZky49P77OeILTub/R2WH
         N4LyCCFmUxX2GuExDnjNNjEGnyWsJliPxcXbIotF8qqDDgqaWHTuxF+bSMlHX05UqTes
         YFoo7ha3Z839tChCprH0rWhS8jDT9IAuL1CSuwVW7Pb2K2EO4dlhWw2lZvPaQE14iCBs
         EdRWUtEuTyP7u0OfWQFjMJCPnmAYOcWC+YUd2YCIIfmTk+cenI8+lJh6jlq9nkDSSo34
         wU+CNPR2ry7hr1doyXM6wQ31jBejf/LIGn7OivAZ3wRHjO8beS2gdZI1Dd2XPLAAuQKp
         Xlyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740403864; x=1741008664;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j+7VLSUiFGiFWcyr3bDi0ANOjN6+z9kLPMobUImTIC8=;
        b=MBgOLj8dNl++6zA2RB3tZ7rPP40kBETt9/FvZHFFAsvHi4uBPSnTpvuucWF/Yk9D1/
         SwP8CFOsSv7ZJPHDdlUG4iDu5AaKQFOOr99uLB9ZogBhg4tJGmJfIeRkZfaGdEKKx60m
         fp2wdm7mVD8B/15yf6lXNgVyi+ULiwlWURaRn1SM7ZskBeTmos9tuU7NfHspJ4hptoyy
         9KAW9SDwgyySOKHvm5QiysBhKPqi4+PveCtFpm/zZ2Rk65SI3K+PvKjqKnv1ie+Kdaua
         xZQKY6hT4egix+dh6dmHREz7T93eHciki7hWopvROAt90f/n9zSBjoeZYR39gp727jwd
         QvVw==
X-Gm-Message-State: AOJu0Yyv57fRRXZufbWhPkaLPrAgBk9HIXmY9b3sA3sdlj0Sx+jGWTtl
	0qo/SqDBhzWIENdG+0Opy+Hh1d8KwmgREX2un/ZjpFFue5WzgQcGnc+QjGgjxdobQPWuuhPMzWv
	JlbhCSOAmtf/Y7XmPRy3nXBNCtg18QuYbg3x8IA==
X-Gm-Gg: ASbGncvEuNQMSDcRIGAv8RFYLMT+8OT80vnh+ri10uav9RsnvR67OJjePFxlza4x+zV
	bPPL4AerkM2kSnC21of2Ju1UVldgGjw+tybjavSbFP0uYCzcpRuC4powe2nYPTXA8h+kzCpHxy4
	Iv7c0vW9kEPtNGAWVgFfjN8j0ClbmspZO0tq3c
X-Google-Smtp-Source: AGHT+IEhYVQiQejb7OOvhtcL2if6y7tnJlB+DEXqF9ppfR/p8jj0MuF3/xOLWkQeY+QwGFdoF7SV2VLhoU7ooaZJC7E=
X-Received: by 2002:a05:6902:3387:b0:e5d:d11b:a073 with SMTP id
 3f1490d57ef6-e5e2460255emr9805290276.27.1740403863055; Mon, 24 Feb 2025
 05:31:03 -0800 (PST)
MIME-Version: 1.0
References: <0101019530b7aed0-6f378277-b411-4c66-9553-c505360447f9-000000@us-west-2.amazonses.com>
 <DM4PR11MB7760ABA94533065017A40F6AA1C02@DM4PR11MB7760.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB7760ABA94533065017A40F6AA1C02@DM4PR11MB7760.namprd11.prod.outlook.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Mon, 24 Feb 2025 05:30:52 -0800
X-Gm-Features: AWEUYZmpwu4swIjPs5dxVumXYXckuPOFsn1toNWIAMedXDzZwu6DudspbBn1_Xk
Message-ID: <CAOSpxdYEop4M8MgFKh_rfxVhrquFu2LOBVLniRXJA-drTjcY=Q@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.1.3.rc2)
To: qa-build-notification@lists.yoctoproject.org
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, 
	Pokybuild User <pokybuild@yoctoproject.org>, 
	"openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Feb 2025 13:31:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64855

Unfortunately the rc2 build also suffered from a couple of autobuilder
intermittent issues.  They were different from those experienced in
rc1, and also went away on retest.

Please hold off on QA for the rc2 build.  I will try an rc3 build
after the autobuilder maintenance today in the hopes that we can get
an "all green" build.

Steve

On Sun, Feb 23, 2025 at 10:14=E2=80=AFPM Jing Hui Tham via
lists.yoctoproject.org
<jing.hui.tham=3Dintel.com@lists.yoctoproject.org> wrote:
>
> Hi all,
>
> Intel and WR YP QA is planning for QA execution for YP build yocto-5.1.3.=
rc2. We are planning to execute following tests for this cycle:
>
> OEQA-manual tests for following module:
> 1. OE-Core
> 2. BSP-hw
>
> Runtime auto test for following platforms:
>         1. MinnowBoard Turbot - 32bit
>         2. Alder Lake-S
>         3. Arrow Lake
>         4. Meteor Lake-P
>         5. Amston Lake
>         6. Beaglebone
>
>
> ETA for completion: Thursday, 27 Feb 2025.
>
> Best regards,
> Jing Hui
>
> > -----Original Message-----
> > From: qa-build-notification@lists.yoctoproject.org <qa-build-
> > notification@lists.yoctoproject.org> On Behalf Of Pokybuild User via
> > lists.yoctoproject.org
> > Sent: Sunday, February 23, 2025 10:52 AM
> > To: yocto@lists.yoctoproject.org
> > Cc: qa-build-notification@lists.yoctoproject.org
> > Subject: [qa-build-notification] QA notification for completed autobuil=
der
> > build (yocto-5.1.3.rc2)
> >
> >
> >     A build flagged for QA (yocto-5.1.3.rc2) was completed on the autob=
uilder
> > and is available at:
> >
> >
> >         https://valkyrie.yocto.io/pub/releases/yocto-5.1.3.rc2
> >
> >
> >     Build URL:
> > https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/1067
> >
> >     Build hash information:
> >
> >     bitbake: 58e5c70a0572ff5994dc181694e05cd5d3ddaf66
> > meta-agl: 005d2b0a27ebdd21fb2aaa589c8672650474b055
> > meta-arm: e56a0cd6fe5e796aa59bd0d4bcbbb585ea626199
> > meta-aws: 9d8d77cda988ba59a00b723b0d78f49a206b5336
> > meta-clang: c709a5196f1e8654425b43b478064395386c36d4
> > meta-intel: 0ee9e8454cd41dcb0f49df7dcf2182b4d5e7cc96
> > meta-mingw: 77fe18d4f8ec34501045c5d92ce7e13b1bd129e9
> > meta-openembedded: 6851cbf026088a13b2b45f684838d3dc4d7ccfdd
> > meta-virtualization: 247ea9c3880a257003ce2cc566fcdbb307ea4374
> > oecore: 35ffa0ed523ba95f069dff5b7df3f819ef031015
> > poky: 11a8dec6e29ac0b2fd942c0fc00dd7fc30658841
> >
> >
> >
> > This is an automated message from the Yocto Project Autobuilder
> > Git: git://git.yoctoproject.org/yocto-autobuilder2
> > Email: richard.purdie@linuxfoundation.org
> >
> >
> >
> >
> >
> >
> >
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#516): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/516
> Mute This Topic: https://lists.yoctoproject.org/mt/111335962/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

