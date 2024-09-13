Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F237FEEEC18
	for <webhook@archiver.kernel.org>; Fri, 13 Sep 2024 05:14:27 +0000 (UTC)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
 by mx.groups.io with SMTP id smtpd.web11.66945.1726204459537995591
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Sep 2024 22:14:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RePZR9VK;
 spf=pass (domain: gmail.com, ip: 209.85.210.45, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-711009878e2so689931a34.2;
        Thu, 12 Sep 2024 22:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726204458; x=1726809258; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rgvVgAeSJzX1ch0sKp0RXKpG0ot3hFSwJXd/VikdHTk=;
        b=RePZR9VKG0QnSdl8pV0DW9cDO9RqQgOtw2DYY//5m7MFKw8YsCzAFvM+cWUoINkMVK
         9rw4b+VQRqMgCbZYOSCXw4BbTGN1oFfJ+zpD8EoNnaCHl//t1ngjaywJbo52u8y30L6z
         1ltAGYrZe7SdNvltw2Vkkv0rA1AJVw5BuFGA5HXD5R0F+49YRPIGlyyM1xQvOIu5p+AZ
         p/ey+yXLxb2pIOTX2+iB5XJInBbSVYMnfH0DVsKrMkyKVCArcxGkuV3w12OJniPg2JvI
         vmSKYOKT3YwN9zzbul4zwGgpwWgqW4XuxFc9kuZGS3VXb4VmGBOJ5JOj811uT5jTf0B5
         ipEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726204458; x=1726809258;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rgvVgAeSJzX1ch0sKp0RXKpG0ot3hFSwJXd/VikdHTk=;
        b=OlYPpehxGZQ16BjvW5Axn5rbB4uRb/W/hnm7lNeAZMtrt+R6LwRWkH+C93lgUKDvcy
         pvWCPBz0zfWKvq1W+NqpgIerqafFtM4Au0y9giyO25/lBnSKbmAi6MmaUD4pBKn4NpL6
         KdcF1kLOXS46BTew21vGQgQEiAOqp0AKYnXYtNRqGSzBzP8i0haLR2H5ooGbDw7BKEKf
         y1FwIcIHHbJ//vDlsQcyUrzr9HsPUIjr9rqPsFbdVGQuLN5VTRSrZSzPBFPntjV+HFtO
         YeLdbTlvVH3y1cBAyCesXiNSk5DILlQK8Y8+s09TLQhF7O84OsgUzXvhHSDmA0Uf3EnQ
         vJEw==
X-Gm-Message-State: AOJu0Yz7pIEKwm+8hpq99GNxYO6NxdjaI4Z3GKs0ea8Ke0ewNcdSMO3L
	r50kpMPzNb8RxXLrGe6m1xRZcfXDZc5qPV+zHiYQqzfY+UKn2zgzS2m5T8P3pb9uf/N6jJkvX2M
	xhFmlGT53cdj9xaitXqVf6NC4MPJAFeGC
X-Google-Smtp-Source: AGHT+IGqIsqe9mVZnYWNWnq61e9hZSlYOmO4HA4MVg3zPMpd6UHKTDIgK0gPp9e08KY6T7tuX5PSEg9vsI7JjQIKIFg=
X-Received: by 2002:a05:6830:620b:b0:703:6ac4:2ab8 with SMTP id
 46e09a7af769-7110949321bmr4184864a34.0.1726204458276; Thu, 12 Sep 2024
 22:14:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAOSpxdacOpY9zesTGSJTkCqxdjH4sCEpcQjphTQeGR-7nXPNAQ@mail.gmail.com>
 <DM4PR11MB77605B8BC7B4A1CFD1F09C0BA1652@DM4PR11MB7760.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB77605B8BC7B4A1CFD1F09C0BA1652@DM4PR11MB7760.namprd11.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 12 Sep 2024 22:13:52 -0700
Message-ID: <CAMKF1soCMvLa309PZqktSV7xFx+bUYy7LeSx+xBA-fQnvzjVZA@mail.gmail.com>
Subject: Re: [yocto] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-4.0.21.rc1)
To: yocto@lists.yoctoproject.org, jing.hui.tham@intel.com
Cc: "qa-build-notification@lists.yoctoproject.org" <qa-build-notification@lists.yoctoproject.org>, 
	"openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Sep 2024 05:14:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63830

LGTM

On Thu, Sep 12, 2024 at 9:56=E2=80=AFPM Jing Hui Tham via
lists.yoctoproject.org
<jing.hui.tham=3Dintel.com@lists.yoctoproject.org> wrote:
>
> Hi All,
>
> QA for yocto-4.0.21.rc1 is completed. This is the full report for this re=
lease:
> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree=
/?h=3Dintel-yocto-testresults
>
> =3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
> No high milestone defects.
>
> No new issue found.
>
> Thanks,
> Jing Hui
>
> > -----Original Message-----
> > From: qa-build-notification@lists.yoctoproject.org <qa-build-
> > notification@lists.yoctoproject.org> On Behalf Of Steve Sakoman
> > Sent: Sunday, September 8, 2024 3:38 AM
> > To: Yocto (yocto@lists.yoctoproject.org) <yocto@lists.yoctoproject.org>
> > Cc: qa-build-notification@lists.yoctoproject.org
> > Subject: [qa-build-notification] QA notification for completed autobuil=
der
> > build (yocto-4.0.21.rc1)
> >
> > A build flagged for QA (yocto-4.0.21.rc1) was completed on the autobuil=
der
> > and is available at:
> >
> >
> >     https://autobuilder.yocto.io/pub/releases/yocto-4.0.21.rc1
> >
> >
> > Build URL:
> > https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/7317
> >
> > Build hash information:
> >
> > bitbake: ec2a99a077da9aa0e99e8b05e0c65dcbd45864b1
> > meta-agl: 7af3c4ada26dcdb93496962b7189a6d72e14a824
> > meta-arm: 260e3adc2bf322f52d81c0642c825088a88bb051
> > meta-aws: c5f55dfcfdacdc88428e848900ddc64d8b0512c8
> > meta-clang: 8bc893d735e5f779a2dcdc3992621d5ab371800d
> > meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> > meta-intel: 3cbfddf8819bdf6c10343c81de419a0e05aca074
> > meta-mingw: f6b38ce3c90e1600d41c2ebb41e152936a0357d7
> > meta-openembedded: 52ecd66835dcfd8b4e55c9cb6325908ccea6a4e7
> > meta-virtualization: e0cd09e3b8367e2745a27db2e7ff1f8452c8cf41
> > oecore: c40a3fec49942ac6d25ba33e57e801a550e252c9
> > poky: 4cdc553814640851cce85f84ee9c0b58646cd33b
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
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63829): https://lists.yoctoproject.org/g/yocto/messag=
e/63829
> Mute This Topic: https://lists.yoctoproject.org/mt/108426925/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

