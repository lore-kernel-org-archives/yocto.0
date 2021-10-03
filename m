Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0602EC433EF
	for <webhook@archiver.kernel.org>; Sun,  3 Oct 2021 03:24:26 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web08.18430.1633231465334537854
 for <yocto@lists.yoctoproject.org>;
 Sat, 02 Oct 2021 20:24:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kJXGut6H;
 spf=pass (domain: gmail.com, ip: 209.85.222.173,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id i132so13192144qke.1
        for <yocto@lists.yoctoproject.org>;
 Sat, 02 Oct 2021 20:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=o14VYDRmtMbqNXke64nhTI3pij/qH69bMlAMbEDWv8Q=;
        b=kJXGut6H8NK6wyOxyBPO+lI0vGReAHn3zDtIwhRzGd7bwkA4PrysxlTjDOtzj3kij+
         xrk60RrXUQclOiE9qZMjeHURgHuy4JRoSZdcNLWUnwJAlo08tkrpngw0Nhu8M4oXx84d
         X372yvBRoB3fdKOwVQSk/mW18eo5UzrcO38mmpD0fDIAkm7zG30Xw2EPAft9AivUDgqS
         WLHS+u4Hn+IZCHBsJPPN3LEJpqe2EYyNa1V5r7ZM7qs+98c9ovz28NEeNqDb2s6TghQV
         VTfTL1r3We+6Rble0Zd8ywE5hy3SoIrMNCS07yKp9li3iKuaTrEFoEkzWoJlIP0ek9mr
         GVjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=o14VYDRmtMbqNXke64nhTI3pij/qH69bMlAMbEDWv8Q=;
        b=0Rb/x4JNtTaSVQrsGjexXwl8rApw7e0Woge182htjzkb1szs4vgYSCMshxiXoWbgbd
         Fy9f4Ntz0cD5/mKOfflgIPG8rFk5VA3DUAV8/vQ2yI98hr8lxQY+QdIwA3JF/Hu/Pxjq
         PCu/G5q0M+qn1nZc0E38tNUybh2vp1+wo1LCfZmJOyt1WKgPmXgVNUO2K9r9epolQz3o
         8quQobYJVLiwHw645UX6+7lOmPgD5Wvw+xB/xPAO281nUmW5pqPXZqmy71hCoGYQwHeQ
         XxH7jyOXB7M/7D67bdHerNN+oqJCqCwXCf6VuB2cjD04U1i+h2Jnp3VIOBobeaORtgdP
         Hsdw==
X-Gm-Message-State: AOAM533UX9cqAGb1J0N/JbUGEJ3Lvsc9txQwZlkyufvTRlt1AeVTs0n0
	HbszjpV4sah2UfZ1P2hrdmL+yUHQDodIRBNmbkA=
X-Google-Smtp-Source: 
 ABdhPJwf60eVLFV8mxFHvjx4ehuOERW93RIrqWsDtBzTFJn9AW3+Df3H+hI+IXiOX05bU+hXz84dHqZTPPSyHXll5xw=
X-Received: by 2002:ae9:dc84:: with SMTP id
 q126mr4686328qkf.128.1633231464290;
 Sat, 02 Oct 2021 20:24:24 -0700 (PDT)
MIME-Version: 1.0
References: <c7c1faf5ec0f43178b03bcd5bdacb744@blackberry.com>
In-Reply-To: <c7c1faf5ec0f43178b03bcd5bdacb744@blackberry.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 2 Oct 2021 20:23:58 -0700
Message-ID: 
 <CAMKF1sp4aDrC4z9MBkM8ap=nqKEckAk9shReHKOifZ5X=KYtkQ@mail.gmail.com>
Subject: Re: [yocto] Shared lib symlinks in target image
To: Lijun Chen <lijchen@blackberry.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 03 Oct 2021 03:24:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54935

On Sat, Oct 2, 2021 at 6:55 PM Lijun Chen <lijchen@blackberry.com> wrote:
>
> Hi,
>
>
> When I build a yocto image, I added some packages into IMAGE_INSTALL, suc=
h as boost, thrift, etc. I notice in the target OS image, the shared libs d=
on't the symlinks. But in the SDK image, the symlinks are there. For exampl=
e,
>
> lrwxrwxrwx 1 root root       22 Oct  2 16:41 libboost_filesystem-mt.so ->=
 libboost_filesystem.so
> lrwxrwxrwx 1 root root       29 Oct  2 16:41 libboost_filesystem.so -> li=
bboost_filesystem.so.1.75.0
>
> Is there a way to add the symlinks to the target image as well?
>
>
> With the symlinks, I assume we can run an old application even the depend=
ent lib is a newer version?
>

unversioned symlinks should not be used they are there to be used for
linking during build time. Unless you need to do builds on targets you
really do not need them
so explain you usecase. Are you trying to build stuff on device ?

>
> Thanks,
>
> Lijun
>
> ________________________________
> This transmission (including any attachments) may contain confidential in=
formation, privileged material (including material protected by the solicit=
or-client or other applicable privileges), or constitute non-public informa=
tion. Any use of this information by anyone other than the intended recipie=
nt is prohibited. If you have received this transmission in error, please i=
mmediately reply to the sender and delete this information from your system=
. Use, dissemination, distribution, or reproduction of this transmission by=
 unintended recipients is not authorized and may be unlawful.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#54934): https://lists.yoctoproject.org/g/yocto/messag=
e/54934
> Mute This Topic: https://lists.yoctoproject.org/mt/86035483/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

