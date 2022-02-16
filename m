Return-Path: <leon@sidebranch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13322C433EF
	for <webhook@archiver.kernel.org>; Wed, 16 Feb 2022 13:23:47 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com
 [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web12.11575.1645017824291866997
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Feb 2022 05:23:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20210112.gappssmtp.com header.s=20210112
 header.b=ezXkGYL8;
 spf=softfail (domain: sidebranch.com, ip: 209.85.219.51,
 mailfrom: leon@sidebranch.com)
Received: by mail-qv1-f51.google.com with SMTP id d7so2016430qvk.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 16 Feb 2022 05:23:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=xFm74GN5VAX/8UPI0Bz/vkNwnzUd+uUhlEH6MmDVU+E=;
        b=ezXkGYL8G8l+qN3vd/SaVKdlJA28+PfZ/ShTFTdhSaXeVhufmN3GjIdRSm4zc2RAOg
         EJemLlYU7o/KhpNpaaObG9u3CueD2YxExDumsTwiWL55hEqAWV26BAbP+utlras+C8fB
         RQfzwUPZbVFUuTTyxeO7wHOo3IIfoUYFZpR8VtvRaUP4q01JyYWHnNrsGX5tFRuIsep2
         zzUXTssw1JqMEE4VyRS0/cs820ntb40cBJ3tY/5nV1MTkxlxF60L9HYw2lWWMoH9SVyY
         JTJiDnBfnXvOQr9RuC+DhfxuaGIVv66gS9rRmH9X2rcTuLYVjuHQc/SIHEA2VFRPiRgx
         EfBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=xFm74GN5VAX/8UPI0Bz/vkNwnzUd+uUhlEH6MmDVU+E=;
        b=A/Xul/R154QSxBv2vwffp3W0v+eb++EvyS+m9lM5qMZ++BDAW7RFBw69KVRTXtdNSq
         yjlC0xudUcHbSWEteoBe0G3BpK1UEC0+TK8FHwV53EmKxZ81j45oMJ038XWURBjZRkUm
         vUa3SDWwiR5qIHstMLvrdL1mk2IJuvWuzJsbg+GyshHUU+ivc6+RjgVcQPy5TmQwaSUa
         kt6g5Ca6fkU4OZC4ppVJtp/QxqJH/Hhx1Aw1C0punBhJXfWHiZXys/5+rV7MxQtdy4Vv
         kXnDemZl7I631mjHKcais2K313bqrNEhMkDYwrfl/yCuX3b8OBqWLYYHDL+sSr2kdAeJ
         mU5w==
X-Gm-Message-State: AOAM531E48qJK467nSzn4x/7UOhKhM1MlKrvZMse9X4aeReggPQRsqXg
	kVMt+YiY1PhTMXEpjpGD+giJfO4H0bGBQiVKsZy9Gw==
X-Google-Smtp-Source: 
 ABdhPJxlknJaBDGdYTWMRbWbzNF3N8//vx+AZzYxT+tnEkOSrPq121R83S70xaGbTle8iMjZEhIGF/dZXwI6ujB/rik=
X-Received: by 2002:a05:6214:dac:b0:42c:421:e128 with SMTP id
 h12-20020a0562140dac00b0042c0421e128mr1650912qvh.50.1645017822882; Wed, 16
 Feb 2022 05:23:42 -0800 (PST)
MIME-Version: 1.0
References: <MADEUP.16D4433FCCA0D46C.23215@lists.yoctoproject.org>
In-Reply-To: <MADEUP.16D4433FCCA0D46C.23215@lists.yoctoproject.org>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Wed, 16 Feb 2022 14:23:32 +0100
Message-ID: 
 <CAMjhiJho=eG5Zz=AoG4O9PMosRc_pvNTyDzXWSQkh6JqrZ-r2w@mail.gmail.com>
Subject: Re: [yocto] Yocto Zeus -docker/PREEMPT_RT
To: steven.monsees@baesystems.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Feb 2022 13:23:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56208

Hello Steven,

> Last entry, from July 2021, in this blog says not supported;
>> Docker for RTOS? - General Discussions / Feature Requests - Docker Commu=
nity Forums

No, that remark is completely wrong and is mixing up things.
"RTLinux" has nothing to do with the mainstream Linux kernel (except
that RTLinux can run the Linux kernel underneath)
Forget about those remarks.


Mainstream Linux is now almost fully-featured with the PREEMPT_RT work
merged, and the Linux kernel can be configured as an RTOS capable
kernel.
There is more to hard real-time than just the kernel, but that is the
kernel part.

I would see *no reason* why Docker should not run on Linux, even when
preemptive realtime is enabled.
In contrast when searching for the PREEMPT_RT / Docker combination I
see successful results.

What is probably the cause for Docker not working, is that the kernel
configuration for the PREEMPT_RT a.k.a. "-rt" kernel in Yocto does not
enable all name space support and other capabilities that Docker
depends on.

I would start comparing .config files at this point, together with the
debug/log output of Docker.
Especially first learn which CONFIG_ options Docker depends on.

Regards,

--
Leon Woestenberg
leon@sidebranch.com
M: +31 6 472 30 372

Sidebranch Embedded Systems
Eindhoven, The Netherlands
http://www.sidebranch.com



On Wed, Feb 16, 2022 at 1:15 PM Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
>
>
>
> I have 2 platforms one with a standard kernel the other using PREEMPT_RT =
kernel=E2=80=A6 both work as expected.
>
>
>
> All things being equal, when I add docker container support to both platf=
orms, the standard kernel works just fine, but on the
>
> PREEMPT_RT kernel docker does not appear to initialize/work correctly=E2=
=80=A6
>
>
>
> I have also tested using both ARM & Intel based HW, and appear tosee the =
same behavior on both.
>
>
>
> Checking online it appears there is chatter about whether docker will run=
 correctly under a PREEMPT_RT kernel.
>
> Example:
>
>
>

>>
>
> Under Yocto, will docker & PREEMPT_RT kernels function correctly, is this=
 combination supported ?
>
>  >
> I am currently running zeus based platforms, docker is at version 19.03.2=
-ce.
>
>
>
> Is there a patch to correct for the compatibility issues being seen ?, or
>
> Is there a yocto version I might move to which supports both correctly ?
>
>
>
> Any input on this would be greatly appreciated.
>
>
>
> Thanks,
>
> Steve
>
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56207): https://lists.yoctoproject.org/g/yocto/messag=
e/56207
> Mute This Topic: https://lists.yoctoproject.org/mt/89183692/1051774
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [leon@sidebranc=
h.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

