Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB6BEC48260
	for <webhook@archiver.kernel.org>; Thu, 25 Jan 2024 09:52:33 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web10.13851.1706176351256899877
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jan 2024 01:52:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hbYJU1Ve;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5100fdd37f7so2585882e87.2
        for <yocto@lists.yoctoproject.org>; Thu, 25 Jan 2024 01:52:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706176349; x=1706781149; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8dNg+2B/EL/S9yENDw1TtQjRCfH27u09gNJTh4fZKX8=;
        b=hbYJU1VePnnsdFH0VK9ZVmTwwQv2Poib9XjQSO0326NH9wAIzRAzwmXQRqq+Q/LhXO
         i2WTPdaLPOazsbUoKBWY9fDezuHvXeZA+KB+3BRQEzMdo/ijkgMC3Q956EyMaRO8ZzcB
         UFyZ7nNwPos7Www/C1pqd5+jq0IhbDRXUOfe8OygKxjcotWSD6T48xd4PdEgHgtiA3O5
         BSiNpCWxUe1+QRdEJu2DRhoL6UWlpmWa8odGBAYIMRwfIOp3K3LQeM+l0P9BaCU/FQUq
         bYyztwek3Wy/wT1QoNhLDOoWx7/FtNkDGueQ7cPtnvz1deECzI2wlQJhX7pbLkO/DeTa
         XcKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706176349; x=1706781149;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8dNg+2B/EL/S9yENDw1TtQjRCfH27u09gNJTh4fZKX8=;
        b=Avj1x2/JmF6EVyHI7q0u2Es+d46nd+aIyBMq5puhJSlFV1NMkVv5dR4/gLWrSyEHzS
         j75GfkT4HtPRC8J2vamEsQ1kNrspjCB8s6GFuVNhZmbm6/L+WlKWP1cQPXRBPUKDV2s4
         2EmibpL2qvPscZsZEFwevQbOoRP5FkebJJurahQcCm3bCghgVN0SJNmLdl27z9SfyMlU
         esYLF6MB0owdZxs/VujvPO0HAxiETu115NRu2CaTZpas3Ax+BCUfYSmZgulmLW61Z08o
         7RKIJsCJCUSAkT7ZeDe+haWz/OuPgfJTmbIzKubjKPByxeOsJOn/j8WCX3cwS0K/wu7X
         0Mpg==
X-Gm-Message-State: AOJu0Yxf+Lww5NerlFnFbp+Q4ao3GoaSEWYO2cK7baKyHmYUO2LGXq1x
	xMGpL4/ec7GVD1cPn9d74KyAdZPjn+VdYbLejnDzz7lQODgYFAOfgf5ri255JmaKPd7cc2ofiFQ
	ez6RxPDVbpY5+oor0P/fX2LypxSuvyhcS
X-Google-Smtp-Source: AGHT+IHodGq45YVEtk+X8+cSk51Faf0o5fnPVgnbAI6gAzlSWD3MPklWvX9mkdS6MpKv3Vfvgma11gTIyk8sUVuagPI=
X-Received: by 2002:a19:6757:0:b0:50e:75f8:ac9f with SMTP id
 e23-20020a196757000000b0050e75f8ac9fmr479134lfj.28.1706176349059; Thu, 25 Jan
 2024 01:52:29 -0800 (PST)
MIME-Version: 1.0
References: <44c1.1706175462811078525.y4F1@lists.yoctoproject.org>
In-Reply-To: <44c1.1706175462811078525.y4F1@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 25 Jan 2024 10:52:17 +0100
Message-ID: <CANNYZj9zmCp1AoEFws7x0_YMOFaqF3QPYn2-uq4vPzpdni364g@mail.gmail.com>
Subject: Re: [yocto] Using Yocto for development on the host
To: yocto@lists.yoctoproject.org, an010@live.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jan 2024 09:52:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62286

Producing docker or some other container with yocto is not impossible,
but it's a huge maintenance headache. From my experience every
developer team wants 'their stuff' in it, and of course they never
clean up something they no longer need. So the artefact grows in size
indefinitely. There's also the problem of distributing it, and
ensuring everyone is on the latest version. It also doesn't really
match the actual target hardware: just the userspace root filesystem
is the same.

I'd say using Yocto+qemu directly is better overall, if you set up
sstate infrastructure so that no one has to do heavy builds with their
feeble laptops.

Alex

On Thu, 25 Jan 2024 at 10:37, Aleksandar Nikolic <an010@live.com> wrote:
>
> Hi,
>
> is there a way to use Yocto for development on the host as well? Usually =
it is easier to develop code and run some basic testing on the host, howeve=
r, I would like to avoid to have to set up the same (or at least a similar)=
 environment by using Docker for example - some of the issues being having =
the same versions of dependencies and their config files, the same or simil=
ar compiler flags, etc. - this would be a lot of work in Docker after an fr=
om e.g. Kirkstone to Scarthgap.
>
> I know we could use the SDK and run the code in QEMU, but this also requi=
res a "bit more" work, is however, IMHO, better than using Docker for the s=
ame purpose?
>
> Any thoughts, ideas or proposals?
>
> Aleksandar
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62282): https://lists.yoctoproject.org/g/yocto/messag=
e/62282
> Mute This Topic: https://lists.yoctoproject.org/mt/103951003/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

