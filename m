Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9A59C433EF
	for <webhook@archiver.kernel.org>; Wed, 13 Jul 2022 18:36:33 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
 [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web08.772.1657737393094111503
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jul 2022 11:36:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=MyJ6O+R4;
 spf=pass (domain: gmail.com, ip: 209.85.216.50,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id
 o31-20020a17090a0a2200b001ef7bd037bbso5085185pjo.0
        for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jul 2022 11:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=+MaiLYRNj5ju21fvkJx4VExZVjqCSaFxZIv2EFVkJnU=;
        b=MyJ6O+R43lUhIf17tqxIqCIRjxmhldHTNUAaY7/8Z3msuaArWKPhAxxDDinyuLVgJ+
         I7rlOayxBuM6oqy0NS+949fybbl5eLUfJB2Xlduw9TZbHi//Vcz6TuFqjXb+IPAbHHBf
         WoAZ6QvCOkOSlz1jOz+UKI97BimM+e/dQ3oZHXXlmtTk3vwELOZz4C35oUmXEay1bdhh
         O1OK5+MB979W3dKs8NxlzrxWAe7YUpb7/MWj3OxSOeHCzBP523xzJVFINQd+hff7TkQt
         ZC3h37sbAie6JNhYLZtOhI0Y8On91L9WjdYMKpWT0Y/hUtvc/Gm0oBrNbaQfJVjREXZe
         zSww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=+MaiLYRNj5ju21fvkJx4VExZVjqCSaFxZIv2EFVkJnU=;
        b=sK4CcukfR7mjwnhpZLO8+Bloz5KphwgnPYiTeTazlJgJiauLNKpaHLVpxswgfjzEim
         s1qcx1S6lVFwn9lh8WatYmwJ3NAiUINeGSkNTCTFaU6NrTQqfwsLKme14dbuvDeM6Zfv
         PR1uflH/SveCL7H71MLjnTYHTnGnX4pS90oBS8m8AiYZiFM9/CAcCSKUsOSxSsmh1Oda
         0Rui0wxUaaOqyIOSIkXNPTyT2pDjV/RtwIAanT4HLYkpxyGAiZ74+Swh3YfrJTf+pKv2
         2f4oBd6q5C8tpu//NFFLGoE+sirxqB5mIrm/749DcEWDg3UeM7UkWNMRGsAyACwniuJN
         c3LA==
X-Gm-Message-State: AJIora+d1YlqV+7tiLF/v3HJ/mrrOCnmLinOyS6jq2FJZrj6mR5Pvsdh
	d6IQkQbKM6XfNWxCA16syWTvORnbyncswOZSREU=
X-Google-Smtp-Source: 
 AGRyM1sBIEDscAE/D5snIyKhIA51K0nFK/85JQL9kFp49KF+jeygJ9NUiqLwyV/716D0VDUAr0J1kqdiB+S33Y0hdHA=
X-Received: by 2002:a17:902:b186:b0:16b:d762:6d81 with SMTP id
 s6-20020a170902b18600b0016bd7626d81mr4365436plr.88.1657737392380; Wed, 13 Jul
 2022 11:36:32 -0700 (PDT)
MIME-Version: 1.0
References: <20220712144030.32305-1-bruce.ashfield@gmail.com>
 <20220712144030.32305-2-bruce.ashfield@gmail.com>
 <57dd4dcd5002a34b0593078452878626d942fcb6.camel@linuxfoundation.org>
 <1701455333AD8E75.13030@lists.yoctoproject.org>
In-Reply-To: <1701455333AD8E75.13030@lists.yoctoproject.org>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 13 Jul 2022 14:36:20 -0400
Message-ID: 
 <CADkTA4PKG12uULttBKysYh6jy4HzgeSNB685uE8cKYwdumFLdw@mail.gmail.com>
Subject: Re: [yocto] [PATCH] yocto-bsps: update to v5.15.52 and buildpaths
 fixes
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
	yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Jul 2022 18:36:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57529

On Tue, Jul 12, 2022 at 11:19 PM Bruce Ashfield via
lists.yoctoproject.org
<bruce.ashfield=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> On Tue, Jul 12, 2022 at 6:45 PM Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> >
> > On Tue, 2022-07-12 at 10:40 -0400, bruce.ashfield@gmail.com wrote:
> > > From: Bruce Ashfield <bruce.ashfield@gmail.com>
> > >
> > > Updating linux-yocto/5.15 to the latest korg -stable release that com=
prises
> > > the following commits:
> >
> > Thanks, this test build showed two warnings. I have no idea why this
> > only showed up now:
> >
> > beaglebone:
> > WARNING: linux-yocto-5.15.52+gitAUTOINC+f122fe59e7_3ec00e9ee0-r0 do_pac=
kage_qa: QA Issue: File /usr/src/debug/linux-yocto/5.15.52+gitAUTOINC+f122f=
e59e7_3ec00e9ee0-r0/linux-beaglebone_yocto-standard-build/arch/arm/include/=
generated/asm/mach-types.h in package linux-yocto-src contains reference to=
 TMPDIR
> >
> > beaglebond-alt:
> > WARNING: linux-yocto-5.10.128+gitAUTOINC+2f79722c50_aab4d34364-r0 do_pa=
ckage_qa: QA Issue: File /usr/src/debug/linux-yocto/5.10.128+gitAUTOINC+2f7=
9722c50_aab4d34364-r0/linux-beaglebone_yocto-standard-build/arch/arm/includ=
e/generated/asm/mach-types.h in package linux-yocto-src contains reference =
to TMPDIR
> >
>
> Yet another generation script referencing itself .. they seem to like
> doing that.
>
> I don't get the warning, but I do have the file with the reference in
> it here, so I'll send a SRCREV bump with a fix Wednesday.

As you can see, patches are on the list. This one was an awk fix.

So now we have: shell, python, perl and awk to fix the full path
issues ... what's the next scripting language to hack ?

Bruce

>
> Bruce
>
> > So at least it is down to one error in 5.10 and 5.15 for the same
> > platform!
> >
> > I think we're mostly winning and nearly there :)
> >
> > Cheers,
> >
> > Richard
>
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57519): https://lists.yoctoproject.org/g/yocto/messag=
e/57519
> Mute This Topic: https://lists.yoctoproject.org/mt/92334276/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield=
@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

