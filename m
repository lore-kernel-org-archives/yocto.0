Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05EEBEA4FC3
	for <webhook@archiver.kernel.org>; Mon, 23 Feb 2026 14:41:16 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.36401.1771857667410019447
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Feb 2026 06:41:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=cjRpzf4i;
 spf=pass (domain: smile.fr, ip: 209.85.221.52, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-4327790c4e9so3330796f8f.2
        for <yocto@lists.yoctoproject.org>; Mon, 23 Feb 2026 06:41:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1771857666; x=1772462466; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DIKtBYxLARTNvDO+x1TkXHKiJDY4bo3+Zhwf23KE5x8=;
        b=cjRpzf4ibsJ/r5PvkJ0CaSz6maM/kjjwGCPcxlV/S1IXDrbsraAYpZabQ8mRxUM26O
         wmXn9z0YpqodGl8tARRnQUF0qEptq7L+g7/L3yOldoWBF6dzfRO85lPyVl3bYLOBLMRM
         sM7jHJZh+Kw773lUTaF2fFkrAp2QndjuZQVVc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771857666; x=1772462466;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DIKtBYxLARTNvDO+x1TkXHKiJDY4bo3+Zhwf23KE5x8=;
        b=i7LEjb6RMJEUuC1ReHoPnXrn/AT3UGdgt7Zlmz1E1h7sxqhsqYU6BLC+rwiwpDA7L6
         eqdIfeNLJRCqpERzoa2vs6sinyb61+lZA5hKR0OwdtZvSspXmCNMT4lOdG5eLi5bgrFV
         nhNkojRTDvfm05vPdOjjO3T8pYayC8jsuk2OHJDkoaNhCcWdRqhMGEFiwUad5ZTHYJGr
         u4In9ebyNp6ac0Jo43VgttgPcaRalwbNxiwMAIeGG41iacrDKb9DSsQjnC6nRY01cdPi
         al8asmeWNukCnarA3S3AyKFDsMD3CSzo1IUzb9UwVIJrCiuD0NnW13erwkqsTsTVVCpl
         NKcA==
X-Forwarded-Encrypted: i=1; AJvYcCW89kqJX5c6GHsKpoZH93lyzF8cI31QRImVTsofYpwBCEVM/7qD9OPQm20aV5CXFhtUSrs1Og==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxrLL8yi+7rsO9KF7gB7Lfkx19P4RD/UoaPCvnt63GAVhbB6kUY
	U5kt0C0FdSxVUwy+fZrIE9/nNckPeHXyzo1QZ26Hhxxa5E1xHUIH2sBWAM+KDIpCRqE=
X-Gm-Gg: ATEYQzzTsT7TTrJrGNtJe7n+b7k0IEPfsS3s57jmQf/s08DNmDxX15KDC6U1iB+qMA1
	MroJWd5pqx1P6jSb26P8kxJm7vPx2OK43u94k9OLRMP2Vy0+v9w7ZwG5XT5/Ozo5DkO15o8j/bh
	vwySo+pMRBf40LRKyc3qcjSUvqIywtYxaRn+d1d8D3RmHO8eHrnTr6em9wH7+3C8ViLZxNoKcUo
	V0hfXzHhJkQsuRRkMSOSGUhY1BUQ7oELqfKIYeSDosYL1UlAlhbGfF1tzdpUnhmfXoSno5MlqqX
	xLbSceD0VrHzFuwoYV9iQ8nAP0zSSp+J2Zs9qGQyByl9zj0t73EVa3XYNOR3QwiLY0otjVDelDN
	DDsRQHj+XCMXPCy1x3ELsY1ldLEG5+Bwk5N8iA2gbzpZRwyjxhQkjNuCx+S03mVWeCOzTcSeMTQ
	MYuiwunkVkX2dufEo7mPTdTrDHRwqWRD3CzkOu5xf2qpTYFlk7+cAQjX0lOhzr7vYOnvTbYwlyp
	9dK5iRZGV+56ucG
X-Received: by 2002:a05:6000:26c3:b0:437:6d8c:c08a with SMTP id ffacd0b85a97d-4396f19e6c8mr16272722f8f.45.1771857665473;
        Mon, 23 Feb 2026 06:41:05 -0800 (PST)
Received: from localhost (2a01cb001331aa00f13df544104db802.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:f13d:f544:104d:b802])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d54760sm19887373f8f.35.2026.02.23.06.41.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Feb 2026 06:41:05 -0800 (PST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 23 Feb 2026 15:41:04 +0100
Message-Id: <DGMF4E4ZLI94.39TXTZNW1NIFJ@smile.fr>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.3.2.rc1)
From: "Yoann Congal" <yoann.congal@smile.fr>
To: <qa-build-notification@lists.yoctoproject.org>,
 <yocto@lists.yoctoproject.org>
X-Mailer: aerc 0.20.0
References: <0101019c8ae412ff-845f6e40-3349-408d-bf21-31af2cb42d7b-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019c8ae412ff-845f6e40-3349-408d-bf21-31af2cb42d7b-000000@us-west-2.amazonses.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Feb 2026 14:41:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66273

On Mon Feb 23, 2026 at 3:25 PM CET, Pokybuild User via lists.yoctoproject.o=
rg wrote:
>
>     A build flagged for QA (yocto-5.3.2.rc1) was completed on the autobui=
lder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.3.2.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/3262
>
>     Build hash information:=20
>
>     bitbake: 7af7e04f3adc8ba144d9e2e6b37ed4ddb3b59df0
> meta-agl: c1761e898d7fca3d8438e9b010eaf234f94fa407
> meta-arm: 73460c53949658ab6c8b46269c3a69caccd3f745
> meta-aws: 49ee51b051ffa9a0eb3325cb8fea351eaf8cb9d6
> meta-clang: cf20f8bd1366d41094c945597b95dd746e87b871
> meta-intel: 8ca2f37f456db6693e696174ada1f4317e3ebee2
> meta-mingw: 00323de97e397d4f6734ef2191806616989f5e10
> meta-openembedded: d28d0a23615f4d91d125fdcd247a71245087dab3
> meta-qcom: 49bc2113adb0b86d463c311d32d4fb1007fe4845
> meta-virtualization: 8f03a0cc8950ef5d5e4f11d9ae494946d1991e45
> meta-yocto: 691ff0fbeab54eceb26d90140d7a8f672532235b
> oecore: 21314665e198c1abe458d0bad5c4d14d4c3ad856
> yocto-docs: 9c363d270ab45f3443391fb7275817db69d8a5d4

This was an almost "all green" build, so OK to proceed with QA:
The only non-green sub-build is meta-agl-core. AGL does not support
whinlatter, so this build should have been skipped. I've sent a patch to
skip that build in the future:
[yocto-autobuilder-helper][whinlatter][PATCH] config: remove meta-agl-core
https://lists.yoctoproject.org/g/yocto-patches/message/3268

Yoann

>
>
>    =20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>     =20
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#659): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/659
> Mute This Topic: https://lists.yoctoproject.org/mt/117957391/4316185
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/14721440/4316185/830777862/xyzzy [yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--=20
Yoann Congal
Smile ECS


