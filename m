Return-Path: <leon@sidebranch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A050C7618E
	for <webhook@archiver.kernel.org>; Fri, 21 Apr 2023 08:24:10 +0000 (UTC)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
 by mx.groups.io with SMTP id smtpd.web10.6969.1682065439323699462
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Apr 2023 01:24:00 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@sidebranch-com.20221208.gappssmtp.com header.s=20221208 header.b=cDyPiePt;
 spf=softfail (domain: sidebranch.com, ip: 209.85.219.177, mailfrom: leon@sidebranch.com)
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-b8f51500a82so1714951276.2
        for <yocto@lists.yoctoproject.org>; Fri, 21 Apr 2023 01:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20221208.gappssmtp.com; s=20221208; t=1682065437; x=1684657437;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rDtxYD/UO2dhOKf+7a935GbcsgAo6SERBUgrG5k3iJI=;
        b=cDyPiePtBxtVrqN4ShKIjiJiadm8dajckpxSZVDuZAnfdW7sk24qp+RKYgzDC2DV6w
         J1MVc9Y0AgHJ+lHjQd5CRvRvkYYAfSCXu/TEEnPqQgyCVNcI3AUagD+d6iQpdQsWwmio
         8QNrJpJIXwWAnHaYHsV9iBhuAac42FyqE3JBATN2IizYZwnUOsuqF0VPd3kfTGgLRkPF
         zOH6TggE5ltfsSx5J7Ab4w7wZUDT6DPygZEg2c+7Prwm0wSqAHXKyZZyYTS9rSEYClU8
         L3SwHuUOEmO1AsO5tkIXWTRp7JrpohvcoviBzNl/IUJLwtB6c9Zw3MwLBmV6r10K2Fsq
         x4Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682065437; x=1684657437;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rDtxYD/UO2dhOKf+7a935GbcsgAo6SERBUgrG5k3iJI=;
        b=WJcuRMhU+ycXcEnUhriyOGlZEJjQsz/zWgJ0dBfpn6UwUlJ+SbzinRqJSJ60tJPVqK
         FEXI1Fh/kHkfDeh9THe+hBIvOetoHbY+eru8yNh0o34IpwEKCmIWFb4E0nEYzAh/3sZd
         vLHftOpcSceiWQDp4L1OLLO6R1Pwym1qv9ghWAM2njl1HeYayLg/GZTG0rQLLpcI4VsX
         Z74kYhrh7fzpwbkuJT/0SD4ULKRrMfQ+qRM1dePRhkKYiDbXkBC/H6DR9PhQ6B2BNBKs
         8RWKx+/JFUVENYWhQznGVQkgFVWuefGMAABwypBqV3ocPwN7HkWpTqoPHPuz1qalYGYM
         WMBA==
X-Gm-Message-State: AAQBX9fRUX96KyuEO+x1fwtSoKRgVqIwv0FAlDocinHncqFUsG1iRGGp
	WrOssV5pJsZKBr0EAINeCLzIlK78/JncS2QmZhHVig==
X-Google-Smtp-Source: AKy350bQixvP22r0AcL8Yx1UKQwJ4DmenNJ6ole3+LeD/pA2IAU53JdDfKcCwkN2fxGKWmseZK5I+oP8sP+zY2eorEA=
X-Received: by 2002:a25:c748:0:b0:b8b:f649:b023 with SMTP id
 w69-20020a25c748000000b00b8bf649b023mr1797055ybe.55.1682065437364; Fri, 21
 Apr 2023 01:23:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBngCF34ht+RdS3cNb1ZPLSzobqJXu_pVF_WO+X54pwC7_A@mail.gmail.com>
In-Reply-To: <CAPJWBngCF34ht+RdS3cNb1ZPLSzobqJXu_pVF_WO+X54pwC7_A@mail.gmail.com>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Fri, 21 Apr 2023 10:23:46 +0200
Message-ID: <CAMjhiJgBCe6B=_7859wMzAAuxXLk+z56MOL9VaqNGAPvkUv+Tw@mail.gmail.com>
Subject: Re: [yocto] OTA updates for Application Software
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Apr 2023 08:24:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59750

On Fri, Apr 21, 2023 at 5:53=E2=80=AFAM MOHAMMED HASSAN
<hassanchattarki@gmail.com> wrote:
>
> I wanted to know if it is possible to update your application through OTA=
 updates.
> If yes, then please share some documentation or some steps in achieving i=
t.
>

Also note "ostree", which allows incremental updates and is especially
suited if you want to minimize data usage (for example, over cellular
networks).

https://ostree.readthedocs.io/en/stable/manual/introduction/

Basically OSTree is GIT for filesystems.

Regards,

Leon.

