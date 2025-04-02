Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 279A7C28B20
	for <webhook@archiver.kernel.org>; Wed,  2 Apr 2025 04:03:07 +0000 (UTC)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
 by mx.groups.io with SMTP id smtpd.web10.296.1743566581539950300
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Apr 2025 21:03:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HGAkqvZK;
 spf=pass (domain: gmail.com, ip: 209.85.210.43, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-7272f9b4132so4541964a34.0
        for <yocto@lists.yoctoproject.org>; Tue, 01 Apr 2025 21:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743566580; x=1744171380; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hwhyh+AwdKjuj3okLcqxjoxAWTw4riOOx2RMPVUT4kA=;
        b=HGAkqvZKFcvzHQkl4rQIKXrmXUI3a1RDo6sx4oRvo4h+wglhccqtss3pAfMMbClhcv
         4qLyex1Hv7K88eS6U+Bk6F8gIeVBVkTkBREYEE+O34hWpZI610qrYt9o/x3JK+/IclO0
         eXw2lBF2JcOcMVYkQLuzlIUW53DT96FrjhDfeMg4EMboWp7eTnPgXpNs1El4E5JZUJcV
         TfnlTyy5S9cEWFjTOsb1K547EmI8MpReIEX1JLRF4gSk0+zTHFs/Easxyun7L57+SEf2
         2MFWZ49H/0otpkUIke/8pOsVAMjbPJ5m1Fak90jfxA7z9+yJWXPwBRGmfrKhmT04q0K7
         vfTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743566580; x=1744171380;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hwhyh+AwdKjuj3okLcqxjoxAWTw4riOOx2RMPVUT4kA=;
        b=IfM/JSQ6cpySFUqpe5mybyBkqz/96jrqe8VDNPTHtU+6eFyP8GZ/WYtMbKyi6ApFNh
         BBlYvbuAu8jisSzDA0wfciOVnGJY1emsj0R9nk8mg5o1HiK1AnDKkI9+eoSF2U10Pm+9
         YUe77GhZy7rdWsiIzjusuh9pBzFzwBwgTnnP5bsAPYnwzMpfJok70ysq4io5RY5HsjDj
         yisvwCVJzvrQT5YJnGU+FbiCEmNBA2r8npn//LLzTfwqzda+2/0bcw1hH8XSlIetkPcc
         LbW/wkL8xoi0aenhVvoOF3Eqd6UPzDcppy9kmEy6cRJ0U3vimzRvhsg/2uVJUXUAjjA+
         jNWA==
X-Gm-Message-State: AOJu0YygfsRC0QUDWQzydgAWi4KjYAEpiBSyY+KvosWk3xOzctNpqBKn
	xZrXZh1sDGHACGjXxTy93UZo94J9dxBBjP2ck6xITbeoXTOWhkqLpw75YgdP08AoQ3TUmvShR9w
	jamnN6xoLmyTj031vFyFqV11ddFHqa4W/KYE=
X-Gm-Gg: ASbGnctG5cqXzC5BVDQo6F7VMuW67NzbVvq+EZ2u2BH8DSvaRbAQuoBpFBQEVmENuJ2
	aYrKa+LuTaw2Q2clChnzVbSooqb5FpFd0D3wEv7TlfmheWvOwdzi5HInI+UzS1leyIyjfO35x9E
	IFksXk2QHDpi2mScVaRv4cQiOJbx58sQxRI9ovs2/6
X-Google-Smtp-Source: AGHT+IFgZcLf39InyGpR45FxV5D369AQI69im6eoZJmHFt0TG1cIPViIlEFTAfsRMmhHeJIX+QXHuKfcyMCjODDtCgM=
X-Received: by 2002:a05:6830:2808:b0:72b:9dc8:7f30 with SMTP id
 46e09a7af769-72c6382d179mr10190685a34.20.1743566580634; Tue, 01 Apr 2025
 21:03:00 -0700 (PDT)
MIME-Version: 1.0
References: <aHB5.1743565906612897283.clRm@lists.yoctoproject.org>
In-Reply-To: <aHB5.1743565906612897283.clRm@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 1 Apr 2025 21:02:34 -0700
X-Gm-Features: AQ5f1JovfLhMxJVnKE3JzF7lMH2ERJC7S62_Ma-sh9qiYT4F8xPA1U7nwVDqZyY
Message-ID: <CAMKF1srf5Q0vvmr1e3RSKRDNu_3TD+jJL4Sb-DvyGTUDxE0KpA@mail.gmail.com>
Subject: Re: [yocto] Replace Bash with Busybox
To: yocto@lists.yoctoproject.org, sateesh0457@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Apr 2025 04:03:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65056

On Tue, Apr 1, 2025 at 8:51=E2=80=AFPM sateesh m via lists.yoctoproject.org
<sateesh0457=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hi Team,
>
> I want to upgrade my BusyBox version from 1.31 to 1.35 and replace Bash w=
ith BusyBox. How can I accomplish this task? Can anyone provide guidance? T=
his would be helpful for me.
>
> I am managing this as described below, but I am still unsure whether this=
 change will work or not
>
> PREFERRED_VERSION_busybox =3D "1.35.0"
> IMAGE_INSTALL +=3D "busybox"
> VIRTUAL-RUNTIME_shell =3D "busybox"
> IMAGE_INSTALL_remove =3D "bash"
>

you can try

bitbake -g my-image && cat pn-buildlist | grep bash

and see if its still in.

Try adding following to local.conf

BAD_RECOMMENDATIONS +=3D "bash"


> Regards,
> Sateesh
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#65053): https://lists.yoctoproject.org/g/yocto/messag=
e/65053
> Mute This Topic: https://lists.yoctoproject.org/mt/112040928/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

