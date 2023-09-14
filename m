Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59F52EDE99A
	for <webhook@archiver.kernel.org>; Thu, 14 Sep 2023 09:04:46 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.7411.1694682276455659431
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Sep 2023 02:04:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=k+x1zLa+;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-500c7796d8eso1193886e87.1
        for <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 02:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694682274; x=1695287074; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C/xfo4h0TxQdscdOyTxgnDlKnfvrjQTNGhpeUOpO5Ag=;
        b=k+x1zLa+fH/RXg1u/NY7RurQ7q8Gaj/8+U3/kEeGHni9Njl4SD0aVBnpTNDVypiHi+
         QLU/e0IyFi7FpT7TzvLvNrhzGLYMPADD6AhlPS3OwYGXJzmGhlWmSDrWa/fQxjWh1mJi
         Unbxez2OTLkDeBeKtuzQ0FPRH3qrFoATrbctwWSmoW2aSUtBOO6ByMDCOjrbOQ9tew3N
         ImHYuzNLarp+lgM0F283kqqPAW0siKk4Bq4kfsVxN753kwDi1kOihj3tThP/kczS+onM
         7i72P3rV5BwoYS19JGuzG9fV23n1WsSbx5vvUH2GjE1IggcSkJZrcFFQ4eEHFSTeiQVK
         BK8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694682274; x=1695287074;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C/xfo4h0TxQdscdOyTxgnDlKnfvrjQTNGhpeUOpO5Ag=;
        b=HHI/9hkgN4nFN6vLUQABMpomSqt1B55DrMPQ4yWgfAlH9FerDcd4sJqeK0Vfz3s9Dh
         ZbAP3+crOvm8SPSdyPXNZYcFq/b61m8eYxDBgRUU0UVQ0cfcgk+uRFEP5Ok0qB3CeWav
         7lbNuJbIrmTdOg2PsvHeZmRWKkt+INxyLIobckaUP5iwiMB8b062Mzm7VoebGVCOLmck
         lj8XTA9jiBh8ONug8HPekvJ21/Z4VOoRy8bu/Simn2lCTpU+QkhIQGUm9BEquSlPkrcH
         moKHapSdSZ5xVjGSGWjmJEmY+A39shqjVnuTNJyeA2Zo0leXXs3aoCwty8A9xVlOlWHv
         hA5A==
X-Gm-Message-State: AOJu0YwhcN2itbYGk3zte/2KO3LSYbKt+ZfWLK5bJUcxYwmXgMkIsC9A
	2mEX8DgxUUr8kZI5jcPCyvjhPkTDzK/QYRL4omRZtouE
X-Google-Smtp-Source: AGHT+IHwYCxn35sVx+ai+CjZLxdlVoqYi1ZCa33sR+cdT37vfkjwrcYFGnRLXASGKWbm9mxgs2Ee3Iyk3sPWUBPV12s=
X-Received: by 2002:a05:6512:682:b0:500:9860:f8a with SMTP id
 t2-20020a056512068200b0050098600f8amr4942869lfe.4.1694682274242; Thu, 14 Sep
 2023 02:04:34 -0700 (PDT)
MIME-Version: 1.0
References: <lnNJ.1694681995425139690.f9E9@lists.yoctoproject.org>
In-Reply-To: <lnNJ.1694681995425139690.f9E9@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 14 Sep 2023 11:04:22 +0200
Message-ID: <CANNYZj-4PZfdj4VAEfjUSxd+b5r9+LDDT1vatsRhDQj+_X6FtA@mail.gmail.com>
Subject: Re: [yocto] Upgrading systemd to v254 on Kirkstone. #kirkstone #systemd
To: Viswanath Kraleti <quic_vkraleti@quicinc.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 09:04:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60989

LTS  yocto releases do not get major version upgrades per policy.

You can copy the 254 recipe into a product layer as a backport
perhaps? Note that such backports are often tricky, and you may run
into significant compatibility issues.

Another (better) option is to set up master builds which have the new
systemd version, keep them in sync with yocto upstream, and when the
new LTS is out in about 6 months, you can upgrade your products to use
that.

Alex

On Thu, 14 Sept 2023 at 10:59, Viswanath Kraleti
<quic_vkraleti@quicinc.com> wrote:
>
> Hi all,
>      I am looking for ways for enrollment of secure boot keys from system=
d-boot. I am currently on Yocto Kirkstone which is bringing systemd v250. H=
owever secure boot keys enrolment support is not available in this version.=
 Patches for this started landing from v252 onwards and for comprehensive f=
unctionality one has to be on v254. I tried back porting relevant patches t=
o v250 but the churn on this project so high that it is not practically pos=
sible to bring the change as .patch files.
>
> Considering the longevity of Kirkstone, is it possible to migrate systemd=
 to v254? If not what are the practically possible ways to bring this featu=
re to v250? Due to product requirements I can't move to a newer yocto versi=
on.
>
> Any help in this regard is highly appreciated.
>
> Best Regards,
> Viswanath
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60988): https://lists.yoctoproject.org/g/yocto/messag=
e/60988
> Mute This Topic: https://lists.yoctoproject.org/mt/101354712/1686489
> Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkst=
one
> Mute #systemd:https://lists.yoctoproject.org/g/yocto/mutehashtag/systemd
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

