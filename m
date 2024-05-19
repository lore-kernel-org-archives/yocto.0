Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D9A5C25B75
	for <webhook@archiver.kernel.org>; Sun, 19 May 2024 20:48:11 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web11.46713.1716151687311941816
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 May 2024 13:48:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Pyl+FES9;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: martin.jansa@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2e3b1b6e9d1so42752711fa.2
        for <yocto@lists.yoctoproject.org>; Sun, 19 May 2024 13:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716151685; x=1716756485; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=28n+Wtt7MBfBqBvjLOGDHsnOV/ZagKVfuv3FAHTlBqo=;
        b=Pyl+FES9lMajT7dC+X0MFONPNa6y7UlJp3pek/dZ6l/z14im/gkC+qP/iXnV/7FlTe
         JXjEEIqpzKR1zD9L8DZlzthK58Ir33VcIglQ8DCFvDf6WEjF3OeO+yArZ3yLzyy5PVTu
         /jgh4F72KlUxh+kVeyKraKsvoYJxjKEsGZiF6seIfYMGsBVv0EWWEyeWorIS7zp2Up4p
         qLk+03VJsG85fZW28xZ1PRQSt6l00eIn4L+RGK9Jnu+khJIGfdsijpbcd7SYYsl8FJHI
         uJXuxOwZPglCj1GMcTb0flv+Qff0IiPDtjBFyVOtQf/coGcqurFgNlkxZdGJ8XTYzELM
         tpJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716151685; x=1716756485;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=28n+Wtt7MBfBqBvjLOGDHsnOV/ZagKVfuv3FAHTlBqo=;
        b=h9pWY1IKQrVtdYSwYimG95wKVx7+eT7qRsH3shXiptwB2pxFVxSEnglKLabA7sxSps
         lQExorlalj990hNQIsQi2BV9DNY+NyaBIs9YflUEkwgQPBds7b5lOIJhm9ZAMFx8sCfd
         vpWKUGALgnUKkPD9QG6S43+NvyZFhMnsgiaevUZ8GedUU5fGHFb2yzc32YQDxvjtQG2b
         3+CkGKHDKlhQPWMnWOUuA3AFa61DAtUB07rh3gDuPOJDbeK91nlnZggiN/2SoIGFfU0d
         jdpxTy4B4lsi5U9279+Lkd9zVNgAgAD/dwEz52lXJhlStpbvGDaG7n8zkarewFhdwlAG
         JOJQ==
X-Gm-Message-State: AOJu0Yz7H3xyh35iUVRRFFF/37538tlMt3v2ke8WQdZABEm091Zbralo
	QcnHXVDBBfDbRj9vuODSCd666RkVyY3db7XRfj65YnDRAPhI16YKrXVpw4+NNofIpN8o6TCr7Ig
	Bnwpkmgv940/uTLaiQrxFDqvSiMIunWV0
X-Google-Smtp-Source: AGHT+IFa8i3dAbyrAzMGYHVpnCMA3pp8xiHNZC76qkiKEBo/APgjuEMAdEyFG4eM+TjuvBRpS+nH2JC3P9ulPW+KnvU=
X-Received: by 2002:ac2:494a:0:b0:51c:dffc:41f2 with SMTP id
 2adb3069b0e04-5220fa71c21mr17346937e87.1.1716151685199; Sun, 19 May 2024
 13:48:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAHUKmYbx81srtVGCh1iyts893T7d7Sf44fgq+MTaxDSwMsXzZg@mail.gmail.com>
In-Reply-To: <CAHUKmYbx81srtVGCh1iyts893T7d7Sf44fgq+MTaxDSwMsXzZg@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Sun, 19 May 2024 22:47:53 +0200
Message-ID: <CA+chaQeFu93o4PC+jt=SdQxb_+5-L5dqBhtPycuf+OG1mg=PmA@mail.gmail.com>
Subject: Re: [yocto] Workaround for uid_map error on Ubuntu 24.04
To: yocto@lists.yoctoproject.org, ecordonnier@snap.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 19 May 2024 20:48:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63138

Yes, it's also described in:
https://discourse.ubuntu.com/t/ubuntu-24-04-lts-noble-numbat-release-notes/=
39890

echo 0 > /proc/sys/kernel/apparmor_restrict_unprivileged_userns
is bigger hammer, but works as well.

On Sun, May 19, 2024 at 10:34=E2=80=AFPM Etienne Cordonnier via
lists.yoctoproject.org <ecordonnier=3Dsnap.com@lists.yoctoproject.org>
wrote:
>
> Hi all,
> in order to build poky on Ubuntu 24.04, I have needed this workaround to =
fix the error "Errno 1 Operation not permitted" when disable_network (from =
bitbake/lib/bb/utils.py) attempts to write to the file /proc/self/uid_map:
>
> $ sudo apparmor_parser -R /etc/apparmor.d/unprivileged_userns
>
> For details, see https://bugs.launchpad.net/ubuntu/+source/dash/+bug/2056=
555
>
> =C3=89tienne
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63137): https://lists.yoctoproject.org/g/yocto/messag=
e/63137
> Mute This Topic: https://lists.yoctoproject.org/mt/106192359/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [martin.jansa@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

