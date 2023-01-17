Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B8D3C3DA78
	for <webhook@archiver.kernel.org>; Tue, 17 Jan 2023 19:55:26 +0000 (UTC)
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
 by mx.groups.io with SMTP id smtpd.web11.207829.1673985317030760424
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Jan 2023 11:55:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hFuLSDPU;
 spf=pass (domain: gmail.com, ip: 209.85.160.42, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-15eeec85280so12041717fac.11
        for <yocto@lists.yoctoproject.org>; Tue, 17 Jan 2023 11:55:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MiL9eZoeVNHN8TAwfj91bE6UVpgg8irrzZvWvAwzeN4=;
        b=hFuLSDPUwYf+XpMX/h72QQxfF/MSmYdIc+wD5RD2qAXAHx5wZON9KSHigqtcXORm7p
         3cBB9x5uyFsb/K9X5CT5fdrBr5nIlBJH6kTaM4E3y33V7zmenS2dSaNA/ZdEJR2GPf0Y
         AhUtiNUcFQCZa4RjwWy/8/Wms3omno18ORUOZOqgqVyeuPbHjiGxpGgPl0PvJA4V5SKG
         HjU+TwluWyGFKptiZdA4/RNyM25z4MBtgSc6fkv9wuQgO8JO0sGknfgUmQZlkom6NuKN
         9TxM/KgSWXzOBmj40/jmEnIuOsAqBrSQ+I0r7ljD2lHgtCMXCcdmFLfNPf4zr8i+/HxQ
         BJtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MiL9eZoeVNHN8TAwfj91bE6UVpgg8irrzZvWvAwzeN4=;
        b=jT4+CaSx5cqBTqwSLNif2R+tSqjTNeM/TlVIPPlo+WppYEjjRR0cxRkKWoWp4Chahn
         ZBBIak4jj83ITP8rrCssQ9NKrHz+RJl+/Mq6R3LSNo127Q8tOHbBr5LXGzp3BuDXoyJQ
         WxakNytGDdCjMZwRoqE+5HndnqsSEvC28cILGbWN5DzWxgJP5Pp+St23OBzZuNQvKJJa
         QuKxqF7hrtKPdWOwPzoA5sz7fbTZ4ihMBrdDSjmtiAzcmoFBWNjGBU2qClyeBUueRPTe
         Ru7Rl6RgM9/D0F+wYCGHERvf2l8ShH4kYgY7XzLmOizpGxdR+EzWG06A4INXXejLefzE
         EUxA==
X-Gm-Message-State: AFqh2kr8kmODcb5Yi1Zk+JijefQkQKpwwPOLj19+nna3cZYEIMX6qYUu
	dUP9PYn6A2zTtr1EJIqOdEBgDT0znSyKIkkSD54=
X-Google-Smtp-Source: AMrXdXu45RpBDibuu9tWPyfhI7+E89bDpPYBguQJnqyGY8LeiWiqycLS9aHpSEluoxD9TMMnUwq5/iF2rRqsaDGrv1U=
X-Received: by 2002:a05:6870:514a:b0:15e:d5b1:33df with SMTP id
 z10-20020a056870514a00b0015ed5b133dfmr325897oak.55.1673985316012; Tue, 17 Jan
 2023 11:55:16 -0800 (PST)
MIME-Version: 1.0
References: <UJ70.1673979468308754075.EgUP@lists.yoctoproject.org>
In-Reply-To: <UJ70.1673979468308754075.EgUP@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 17 Jan 2023 11:54:49 -0800
Message-ID: <CAMKF1spHrXdQH+R-zsBi+cqTi3nyN7LeO_WyOcvDXSdWnGE5TA@mail.gmail.com>
Subject: Re: [yocto] Possible to replace gcc-runtime libraries & libgcc #gplv3
 #yocto #llvm
To: William Huang <whuang8933@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Jan 2023 19:55:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59011

On Tue, Jan 17, 2023 at 10:17 AM William Huang <whuang8933@gmail.com> wrote=
:
>
> Hello all,
> I'm in the process of generating an image without GPLv3 software. I have =
removed everything but the gcc-runtime and libgcc libraries. These are gpl-=
3.0 with GCC exception. I'm not sure how feasible it is to remove these or =
replace them with llvm replacements. Just wondering if anyone had been down=
 this path before and if you can share your experience that would be great!
>

You can do it to certain extent with meta-clang. Select RUNTIME =3D
"llvm" in local.conf after including it. However, this is not going to
be drop-in replacement due to some packages ( e.g. glibc )
still not buildable with llvm + llvm-runtime and there are more
components depending upon what you distro uses it might be more to
consider. Its perhaps easier to get C++ runtime using libc++
than say replacing libgcc and crt init files, which might need more work.

> Thanks
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59007): https://lists.yoctoproject.org/g/yocto/messag=
e/59007
> Mute This Topic: https://lists.yoctoproject.org/mt/96336692/1997914
> Mute #gplv3:https://lists.yoctoproject.org/g/yocto/mutehashtag/gplv3
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #llvm:https://lists.yoctoproject.org/g/yocto/mutehashtag/llvm
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

