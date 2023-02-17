Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D58B5C636D4
	for <webhook@archiver.kernel.org>; Fri, 17 Feb 2023 09:41:52 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.3257.1676626910503135142
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Feb 2023 01:41:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=l23Aby2v;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id f22so397925lja.6
        for <yocto@lists.yoctoproject.org>; Fri, 17 Feb 2023 01:41:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+3OOwIeDufAvxzvoU9ImhrC1gv9syw7KscKYBzDDXms=;
        b=l23Aby2vLN3t8VvSiXtl874rTvCk3DzCpHmq2Dc0ULF1kX1qZTFif3Khh6L6WCMOGA
         UjyKYbESB1WCugICRp6NytUUDvXJvZqkYwrp1/6tkhjCf1RRgZGhBV48zD+VgI9+HvWa
         CBMaAIpUSEfcrGzKeEMSJLLq8VLEmn9CiSd9tqm4cAlFxpANLqMILnPenqadSTmHNeVs
         wjaemtLuZQcjH7oK+ibz8YBdp1Ao4lb59BuI8E7bBMyNHtZftnLl8whB3D1x3ODehu5z
         6jmHVxCtdJ/Vo6up8bG+mQIHQZMBvwvDw6JSiu3QkFRa/YRU1O+RAlLNNw7gNwPGt72i
         zRYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+3OOwIeDufAvxzvoU9ImhrC1gv9syw7KscKYBzDDXms=;
        b=Rypx62X/JC7ldCdlNCAR4vjK6mRtj+1nApt/ntLzzxnj/EYqyTqJ7VxCc6FIDYnLrq
         l1fMxRcddfbB5qvct4Eqqa+idpYPk64dCi+d8ebaj1MLUiUs+5WHSZcV9A+0mn718yZP
         Ax0Cr3r1vzsRRbTNVnHC3waKKl/Ob7uJN15N6DlEtTuRLITyrtnfHPyM9L/IoucUKGev
         0ox4iQZabbYteO/eHh+A43Ms0JKtUC0O+VKWksogJDGNioY1rK2/G4+jBilF+D5eZG+S
         dXMMNGxxNLeBX30cFfs0qXOxVC1Ui3no+//UNBTNaNNm0+z1yseL9wmwMPIxG4gf7TZh
         eLmw==
X-Gm-Message-State: AO0yUKXA+uvhiugNARZTj90kdns4vsaFlZiK1OcOxFTokAktGYiPfO+b
	K0HBclbdiGzDrR5Js3S4i1gYUkdlnqEiut5yevA=
X-Google-Smtp-Source: AK7set9ZrTT9IfKCuy+wgPIWgtpJGZJtW//rb85z1dUd8Bk8r7z5DNY2CgvXKQVG7LAB5dKxq4YyvjXABRPotcCz4co=
X-Received: by 2002:a2e:8e2d:0:b0:294:6de5:e637 with SMTP id
 r13-20020a2e8e2d000000b002946de5e637mr1034257ljk.5.1676626908599; Fri, 17 Feb
 2023 01:41:48 -0800 (PST)
MIME-Version: 1.0
References: <D36X.1676610504336239737.JLfk@lists.yoctoproject.org> <CAMSfU+6Vi+ff0sog4EvyTYZQEAaGnUXMDdoe5+ns=T30N-a1iQ@mail.gmail.com>
In-Reply-To: <CAMSfU+6Vi+ff0sog4EvyTYZQEAaGnUXMDdoe5+ns=T30N-a1iQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 17 Feb 2023 10:41:37 +0100
Message-ID: <CANNYZj_gGvuJQhPD26C=v9ywja6UwYDa6O=b5CJkdHkJh_bKMQ@mail.gmail.com>
Subject: Re: [yocto] Importance of ECC RAM on the build computer
To: Yoann Congal <yoann.congal@smile.fr>
Cc: davidskeck@fastmail.com, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Feb 2023 09:41:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59239

On the other hand, I'm yet to hear an actual case of a broken build
due to non-ECC. It's not impossible, but it seems exceedingly rare.
You're far more likely to spend 100x as much time on logical errors or
out-of-resources problems.

Alex

On Fri, 17 Feb 2023 at 09:31, Yoann Congal <yoann.congal@smile.fr> wrote:
>
> Hi!
>
> Le ven. 17 f=C3=A9vr. 2023 =C3=A0 06:08, <davidskeck@fastmail.com> a =C3=
=A9crit :
>>
>> Is there generally suggested advice regarding the importance of ECC on t=
he build computer? I'm very new to Yocto so I'm not sure if there is a chan=
ce the final build image could experience some corruption due to flipped bi=
ts in RAM or if I'm totally overthinking this.
>
>
> Last time I checked. The ECC vs non-ECC price difference was not worth th=
e time you may spend in case of a RAM bitflip.
> Here, we put ECC RAM in our build systems and I guess it's quite the indu=
stry standard.
>
>> It is also possible that Yocto does some kind of CRC checking of its own=
 that makes this a non-issue. Any guidance would be appreciated. Thank you!
>
>
> Yocto does source integrity checks (the stuff it downloads from the inter=
net) but it can't do much more after that.
>
> I've yet to debug a RAM bitflip but I guess it may trigger any kind of we=
ird behavior which may be hard to debug and time consuming.
>
> My advice is : keep your time and sanity, use ECC RAM.
>
> Regards,
> --
> Yoann Congal
> Smile ECS - Expert technique
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59237): https://lists.yoctoproject.org/g/yocto/messag=
e/59237
> Mute This Topic: https://lists.yoctoproject.org/mt/97022997/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

