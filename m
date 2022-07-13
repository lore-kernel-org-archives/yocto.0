Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1209C433EF
	for <webhook@archiver.kernel.org>; Wed, 13 Jul 2022 03:19:23 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
 [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web12.18045.1657682361208755324
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jul 2022 20:19:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=akL7j0qy;
 spf=pass (domain: gmail.com, ip: 209.85.216.41,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id
 j1-20020a17090aeb0100b001ef777a7befso2887593pjz.0
        for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jul 2022 20:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=y/wLhvgdlid7kZcpxq2TW67knWrPcPPgWajAUjU5OyE=;
        b=akL7j0qy6jhLDtOf2HYWFDYJ/Z0I/sDsGK5JqaA/LV0dwZM6zctRknw7GZW0H1B0De
         36Ag+78YmBJbln1y4NLuodWTEV6bmy5FL2X3TnGMPXP8t78s4OYDzxo5QpeIZyjh17Ht
         0iau00ZSJ8M9G8M+WlC3JgmkFtQT3j33Zke9Qgl/KQbH9fiEMWSNxwAdCdtavj0W/JYM
         RSo5HibF37n7IdyYQHZYuDOf82Ek+ZYQWMMIXX59GIKdXnt4bUUyuW0jiNePQIc46C/9
         TcbSvtwp7JM3aMysfvmtohj+jQ11ReCd5TA7Hiz9LVkvrBNc135LV7kahlwkxkZY1Hxc
         uMhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=y/wLhvgdlid7kZcpxq2TW67knWrPcPPgWajAUjU5OyE=;
        b=jyz3XvpDRrZU3sWn0L84GnkVr7rMgnmusfhGMjfvYVqRYObgGa4MsbHKjdJdYw/5lI
         D/hOb0SCNpXZF56o0uFUlZ2woM0iDfGq9YqktwXqJmgGBVHQm0vSg1OutPS8T4Bb1hgN
         uWSmP3T3OIPcL9mbTgwWx1OiWK8blKr+wkt0OqWQ0CzVC2qFfmDnq33+XM+4x/Cp0Ep4
         styW40LZmZ6QOQFPNbN4ngPbXx+DGwcNw2X4zVe6bSwgTtrVcDYvHSOmTXc9wbgLSq8Z
         K8CYIpLWhIkEOwMLsY6ZMPX6fhdqSmbOWnuniYaZh/BfKwFJ9XM42sGmBClMw/Niw64k
         /1Nw==
X-Gm-Message-State: AJIora+oTYk7uUMmHEwvKmgwhwSwZrb8KjopHwQFL9I3ZauoobtL1gKQ
	LcArW0UL98Zruphe4fbcuWSDA2H9Vcwi5t5jknQ=
X-Google-Smtp-Source: 
 AGRyM1vUl2A8HvnolVDFxYljMkZdDhCA81FgkPDdKPpZZWazvhanr6SdlLrf538TX22rZWRG2nvXRA7cVFQ58DrOouA=
X-Received: by 2002:a17:90b:3e84:b0:1f0:3f92:8c91 with SMTP id
 rj4-20020a17090b3e8400b001f03f928c91mr8081327pjb.112.1657682360532; Tue, 12
 Jul 2022 20:19:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220712144030.32305-1-bruce.ashfield@gmail.com>
 <20220712144030.32305-2-bruce.ashfield@gmail.com>
 <57dd4dcd5002a34b0593078452878626d942fcb6.camel@linuxfoundation.org>
In-Reply-To: 
 <57dd4dcd5002a34b0593078452878626d942fcb6.camel@linuxfoundation.org>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 12 Jul 2022 23:19:08 -0400
Message-ID: 
 <CADkTA4O1xB=S2c2tcMOKz_3KQQS0HU1JykbTidXb0-LR-g8tbA@mail.gmail.com>
Subject: Re: [PATCH] yocto-bsps: update to v5.15.52 and buildpaths fixes
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Jul 2022 03:19:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57519

On Tue, Jul 12, 2022 at 6:45 PM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Tue, 2022-07-12 at 10:40 -0400, bruce.ashfield@gmail.com wrote:
> > From: Bruce Ashfield <bruce.ashfield@gmail.com>
> >
> > Updating linux-yocto/5.15 to the latest korg -stable release that compr=
ises
> > the following commits:
>
> Thanks, this test build showed two warnings. I have no idea why this
> only showed up now:
>
> beaglebone:
> WARNING: linux-yocto-5.15.52+gitAUTOINC+f122fe59e7_3ec00e9ee0-r0 do_packa=
ge_qa: QA Issue: File /usr/src/debug/linux-yocto/5.15.52+gitAUTOINC+f122fe5=
9e7_3ec00e9ee0-r0/linux-beaglebone_yocto-standard-build/arch/arm/include/ge=
nerated/asm/mach-types.h in package linux-yocto-src contains reference to T=
MPDIR
>
> beaglebond-alt:
> WARNING: linux-yocto-5.10.128+gitAUTOINC+2f79722c50_aab4d34364-r0 do_pack=
age_qa: QA Issue: File /usr/src/debug/linux-yocto/5.10.128+gitAUTOINC+2f797=
22c50_aab4d34364-r0/linux-beaglebone_yocto-standard-build/arch/arm/include/=
generated/asm/mach-types.h in package linux-yocto-src contains reference to=
 TMPDIR
>

Yet another generation script referencing itself .. they seem to like
doing that.

I don't get the warning, but I do have the file with the reference in
it here, so I'll send a SRCREV bump with a fix Wednesday.

Bruce

> So at least it is down to one error in 5.10 and 5.15 for the same
> platform!
>
> I think we're mostly winning and nearly there :)
>
> Cheers,
>
> Richard



--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

