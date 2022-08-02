Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF9DAC00140
	for <webhook@archiver.kernel.org>; Tue,  2 Aug 2022 15:10:32 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web08.7361.1659453023050242737
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Aug 2022 08:10:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=SjogF1pe;
 spf=pass (domain: gmail.com, ip: 209.85.208.42,
 mailfrom: jpewhacker@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id o22so2555107edc.10
        for <yocto@lists.yoctoproject.org>;
 Tue, 02 Aug 2022 08:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=+aACMZh9ZR76qz7gmB8SiLxT8WoEhm7ccBWJKqfxqu0=;
        b=SjogF1peAgPsvMzXYJDfd8zPvEIPcp4TjQsadu6Ud0bxqIqBXq1ven2pqi8Wtb/ReX
         zQGVQJDqaXlGXqtZ7c9C1L7ecl2/YdGrvpkBKFV+3e1jCoX3wH7dMpEt92+wpp6KBVSI
         JGuczPhZ3MzkRohWZL3Rl6i8CkeSL4oisCsfA3w6qLTSAUEGaib9s2giVHNvW67WO5g+
         eKIK6d3+KWwjJu8hHzc7d1xNJwr3Q/CQR9eyW1F6NEHK94/FQ3Ky3I8HMVZTGSfxOjT6
         uSriP/jsJTQdDtdgpqv+c8jNjN1swzwIvOruG0tDFzwrSTgLimwpwHsY5C4dV5su4k2u
         ++5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=+aACMZh9ZR76qz7gmB8SiLxT8WoEhm7ccBWJKqfxqu0=;
        b=oisD22mpRT2UlSKYutoNMBBXUkPjHdl6ZzvB9oO24xH2yRCT45wo6SaCth+sJHC+r3
         +PDoHy0c6iMwaWbAkGzocPUOHp668RYTtMY+RyZ11fBeCiZ+wz/mvtzv2FpRSN4Yj8+N
         oAPqMIoyzObo6Bp8hlo28YBAQxoFLnwaWUAGQak0uGvYJDCCAFwjmu1pqqEKQhWomcMJ
         GK29+YUvq1IBv0yi2yNHJQnW9GVpfjmmQaSnDtGnSxcfa5ZD/WroVKgQKZh2D3dhDyUr
         wouDyWyArnfMWzh7gLAbwReClPJvJSNTXpc/4ybdyYjgFNO9fSHQJPBrFvOr9Fn3WIjG
         mUPA==
X-Gm-Message-State: AJIora8h+C8ojMRnQ6SY3cuk1nvYoHWfqc/W7aLJKER6/9c/jPuEWZ7u
	JHonZKdh0lHY4/e46289TcwGJbeXyVXCF7r1In0=
X-Google-Smtp-Source: 
 AGRyM1uxBwOaDZuU+APo+lKfSfYlRrrMXmZ2xhVpAS+B9HqvNqyA9zhhAUDRQGnHGOiOkuc5KAf8TYMWUuRnrzq7Zgk=
X-Received: by 2002:a05:6402:11cb:b0:43c:c7a3:ff86 with SMTP id
 j11-20020a05640211cb00b0043cc7a3ff86mr21514045edw.383.1659453021441; Tue, 02
 Aug 2022 08:10:21 -0700 (PDT)
MIME-Version: 1.0
References: <oqsz.1659447842876164805.WW8H@lists.yoctoproject.org>
 <CAJdd5Gbbh3gSuKtxAAHm-tc0er_EA93QCq+yyiHQ2YMWHC6cfg@mail.gmail.com>
 <17078CF9F8D6FA72.19085@lists.yoctoproject.org>
 <PA4P189MB118378328707E20AE31CF9D2969D9@PA4P189MB1183.EURP189.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PA4P189MB118378328707E20AE31CF9D2969D9@PA4P189MB1183.EURP189.PROD.OUTLOOK.COM>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Tue, 2 Aug 2022 10:10:10 -0500
Message-ID: 
 <CAJdd5GYJ+ob4PLbUXkOM3J2jZS=3X0azBAK7TMoYKfXEcWgZOQ@mail.gmail.com>
Subject: Re: [yocto] BBClass function and symbolic link (symlink) ... I throw
 in the towel #python #bitbake #kirkstone
To: Martin Leduc <martin.leduc@luminator.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Aug 2022 15:10:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57736

On Tue, Aug 2, 2022 at 10:02 AM Martin Leduc <martin.leduc@luminator.com> w=
rote:
>
> Hi Joshua,
>
> I've founded a second function, in the same class, using ln -s
>
> set_log_folder () {
>     bbplain "Set var log folder BEGIN"
>     rm -Rf ${IMAGE_ROOTFS}/var/log
>     ln -s /mnt/general_data/log/ ${IMAGE_ROOTFS}/var/log
>     bbplain "Set var log folder END"
> }
>
> The logs show "Set var log folder BEGIN" and "Set var log folder END" and=
 no issues ....

Your set version function looks like it's running from the logs, so
don't think your function is directly causing a problem. My guess is
something else later is crashing or something else unrelated?

>
> What the hell I'm doing wrong....
>
>
> Martin Leduc
> T : (418) 856-6896
> martin.leduc@luminator.com
>
>
> -----Message d'origine-----
> De : yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> De la pa=
rt de Martin Leduc via lists.yoctoproject.org
> Envoy=C3=A9 : 2 ao=C3=BBt 2022 10:20
> =C3=80 : Joshua Watt <jpewhacker@gmail.com>
> Cc : yocto@lists.yoctoproject.org
> Objet : Re: [yocto] BBClass function and symbolic link (symlink) ... I th=
row in the towel #python #bitbake #kirkstone
>
> Hi Joshua,
>
> Thank you for your quick reply.
>
> Please see the crash log in the attachment.
>
> "Also, I'm not quite clear what you mean by "works like a charm with Warr=
ior"; it sounds like something still isn't working in Warrior that you need=
, or just in Kirkstone?"
> This bbclass is imported from a previous build make using the Yocto Warri=
or version and the build report no failure using "ln -s" directly, well it =
compile.
>
> BR,
>
> -----Message d'origine-----
> De : Joshua Watt <jpewhacker@gmail.com> Envoy=C3=A9 : 2 ao=C3=BBt 2022 09=
:57 =C3=80 : Martin Leduc <martin.leduc@luminator.com> Cc : yocto@lists.yoc=
toproject.org Objet : [EXTERNAL] Re: [yocto] BBClass function and symbolic =
link (symlink) ... I throw in the towel #python #bitbake #kirkstone
>
> CAUTION: This email originated from outside of Luminator Technology Group=
. Do not click links or open attachments unless you recognize the sender an=
d know the content is safe.
>
> On Tue, Aug 2, 2022 at 8:44 AM Martin Leduc via lists.yoctoproject.org <m=
artin.leduc=3Dluminator.com@lists.yoctoproject.org> wrote:
> >
> > Hi team,
> >
> > Well, I throw in the towel.  But it's looks like so simple .... for me =
=F0=9F=A4=A3=F0=9F=A4=A3.
> >
> > I've a function to replace the version file in /etc/version.  This func=
tion is integrated into my mybase-image.bbclass, defined in my layer and I =
add, in my core-image-minimal.bbappend recipe inherit mybase-image.bbclass.
> >
> > In my bbclass, I call my function using
> >
> > ROOTFS_POSTPROCESS_COMMAND +=3D " \
> >     set_version_file ; \
> > "
> >
> > My function is written like this
> > set_version_file() {
> >     bbplain "set_version_file BEGIN"
> >     mkdir -p ${IMAGE_ROOTFS}/etc/tmp/
> >     echo ${PV} > ${IMAGE_ROOTFS}/etc/tmp/version
> >     chmod 644 ${IMAGE_ROOTFS}/etc/tmp/version
> >     rm ${IMAGE_ROOTFS}/etc/version
> >     ln -sf /etc/tmp/version "${IMAGE_ROOTFS}/etc/version"
> > }
> > Note: /etc/tmp is just for the purpose of this test
> >
> > I mean, I don't try to do anything outstanding but the ln -sf line make=
s my compilation crash BUT.... it works like a charm with Warrior but Kirks=
tone rejects "ln -sf" command.
>
> Can you provide a little more detail about how it crashes? Also, I'm not =
quite clear what you mean by "works like a charm with Warrior"; it sounds l=
ike something still isn't working in Warrior that you need, or just in Kirk=
stone?
>
> >
> > I'm definitely not the only one who adds symlinks to the recipes
> >
> > I've also tried:
> >
> > lnr
> > inherit relative_symlinks (don't have any impact but I've given it a
> > try), from the poky folder I've tried grep -r "ln" ./* | grep bbclass
> > (to validate the syntax) Read many posts on this topic
> >
> >
> > I'm unable to find where is my issue.
> >
> > Any ideas are welcome, even if it works like a charm on Warrior but not=
 in Kirkstone.
> >
> > BR,
> > Martin
> >
> >

