Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0BC9BC5B552
	for <webhook@archiver.kernel.org>; Tue, 10 Jun 2025 09:12:15 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web11.82232.1749546726125646452
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Jun 2025 02:12:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hZOvTevk;
 spf=pass (domain: gmail.com, ip: 209.85.219.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6facf4d8ea8so54798276d6.0
        for <yocto@lists.yoctoproject.org>; Tue, 10 Jun 2025 02:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749546725; x=1750151525; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ETPjWcLl0iNNXJMAPh3eaPhJ/UOuwtpkRrqlfn8EoF0=;
        b=hZOvTevkLub8EUq+PAi3DcxkLHtGIn0cKGIfAm9WofMWoYDHLiVDtbUr8/ni0W1bn5
         PBu9c/L4JndKpQuNUh+P+/3EhweVSIUiFJSH14fpVY18LJrOciphtoryb6Q7+clob0YA
         hHKgwyV+NuhwC89ku1SA4TKNvZHWxWjCdXBrWiB5+oTUpbxX8mm0oJRjUHpSmwxSw9Dm
         CfbbXkejRjlFHe1FHtcEIbmAyBmUCmjelveRWK/s1e3Cm0v3oBkaiaeADSAuX5rCORXN
         3pC6aABOkQGVPAB3OCV+nSWaayqi4bpsWanvsW3xiA8ekC3F+lA85w2R3vx1Dx+iv+N4
         0r/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749546725; x=1750151525;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ETPjWcLl0iNNXJMAPh3eaPhJ/UOuwtpkRrqlfn8EoF0=;
        b=GWlmjeeV1ysMA9tQvnU3uWpiPsmaLOvc/HCXb4xtZfyuxqH/EcF9deSUgRA3ZeexZz
         A2tFTNrgK3RlEEU1TBQgazbCzUUoZ6sS6cZd4A9h8GXBTTkPnmpHxJrar+a4xATjPpiE
         5Koa86O9WV+Lbgmom2V5km88uC9UCG5srvfMqOoKgdrJ+olTBqsdL7u36yQDA0Q/IuXZ
         A2seOZvTmKcQ1QhNRkwhAzZwTp1mistYyRczs0wDyw9p9ALftmis30eqLymIFUFHqhEa
         lHYsshrpZJ8GMFXjtqJnwRrdoNiledXeeck/YU/Yy7zPB+JUhpq0AtJqgVOHGHzOxgCK
         05lQ==
X-Gm-Message-State: AOJu0Yyc8YcGgq1Bl5JxDH6oA1azdVR3BNWcUWLw2oj6Ol50QddR0EmV
	VEtsaSd3ga8e6ix6zzzTbG1NMzksCvoMR5zDOdEakyTOmRb63s7cRkihnuiU9PbV6DbDX2yTHeO
	NntRF1N301hJGrLpBENvm5+0PCFXk9SEXbQ==
X-Gm-Gg: ASbGncvNx1UgS5Z4nVjMxh2q4tmer2KYXgH5KiovmYV7VtNTKpUwNk2qkkcje64h7lP
	yOu1davoRmv3MWYE+S2K2WcZT2mVhqrG5PE5fJCqkMmCzsrtz7EnWBA7QGSyHcvpYkKD7u0dYQu
	Osyzo2qc6pQvO5hQpWfWKWh6c/491FfeyVuLHpJs353fc69M4B4fTn1mTmGvPkIul+dqA1ouqov
	4C3dQ==
X-Google-Smtp-Source: AGHT+IETnBgXXj2Oxh4I6nmbyQMWSi94xQn0ZlN4wn09v2MLl2dWYmn0VhAKPhuSs8DbnYSiWVOsYSVwLqEeSxGxiuY=
X-Received: by 2002:a05:6214:f05:b0:6fa:d8bb:2945 with SMTP id
 6a1803df08f44-6fb08f6db96mr260270686d6.17.1749546725079; Tue, 10 Jun 2025
 02:12:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAMSfU+6UF+FqN_eWFwoNAMHDCqyZBMmnaTBHmyOqjXP4jQ6-TA@mail.gmail.com>
 <27221.1749534670455072587@lists.yoctoproject.org> <CAMSfU+7wr96L8VHhy2bCWxgsEn8fa_+Yeadn-qXM-UUK3-MqeA@mail.gmail.com>
In-Reply-To: <CAMSfU+7wr96L8VHhy2bCWxgsEn8fa_+Yeadn-qXM-UUK3-MqeA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 10 Jun 2025 11:11:54 +0200
X-Gm-Features: AX0GCFuN1n1h0lmrfJsgSBwWPiVUR-FW62dY0z7s5S_yW9qrFi3GsFxPoFzIKWA
Message-ID: <CANNYZj_vN-jQtT039k=G7fx0RPLCfD97TxvtWFS-UQCHGbhBaQ@mail.gmail.com>
Subject: Re: [yocto] Inherit bbclass from bb file with a certain condition
To: yocto@lists.yoctoproject.org, yoann.congal@smile.fr
Cc: haimbachar2008@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Jun 2025 09:12:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65496

I'd say the correct thing to do would be to put the condition into the
class itself. What is it specifically that you are trying to do?

Alex

On Tue, 10 Jun 2025 at 10:34, Yoann Congal via lists.yoctoproject.org
<yoann.congal=3Dsmile.fr@lists.yoctoproject.org> wrote:
>
>
>
> Le mar. 10 juin 2025 =C3=A0 07:51, Haimbach via Lists.Yoctoproject.Org <h=
aimbachar2008=3Dgmail.com@lists.yoctoproject.org> a =C3=A9crit :
>>
>> Hi Yoann,
>>
>> In my case im working with the Kirkstone ditsro and its seems not suppor=
t with inherit_defer.
>>
>> There are any way to to it in Kirkstone?
>
> In kirkstone, that is done with a simple inherit but it does have limitat=
ions (IIRC, around order of variable creation/affectation/evaluation)
> https://git.yoctoproject.org/poky/tree/meta/recipes-devtools/btrfs-tools/=
btrfs-tools_5.16.2.bb?h=3Dkirkstone#n45
> inherit ${@bb.utils.contains('PACKAGECONFIG', 'python', 'setuptools3-base=
', '', d)}
>
>>
>> Regrads,
>> Haim
>
>
>
> --
> Yoann Congal
> Smile ECS
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65495): https://lists.yoctoproject.org/g/yocto/messag=
e/65495
> Mute This Topic: https://lists.yoctoproject.org/mt/113553190/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

