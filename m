Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8C5BC47DDB
	for <webhook@archiver.kernel.org>; Sun, 28 Jan 2024 12:48:49 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web11.36710.1706446124909220398
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Jan 2024 04:48:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fqRPC/6x;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5110c166d70so420891e87.1
        for <yocto@lists.yoctoproject.org>; Sun, 28 Jan 2024 04:48:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706446123; x=1707050923; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I/x38S36QDkhzV+8MwnhOs0P+cE7JK4m8vtZmvDiUfE=;
        b=fqRPC/6xOxIjBog+/2ZjjEe9+AUIfTvvPOnIUbGv4mTeQv78gKtnDr3jBY01HNZtay
         SnrDhajjl2+mLp8Dp4DztKr5xyz64ca15CpJ9rFUAU3KKJDrGA1mhp/9fRRvHY79miXY
         g+rns0AswhidOXaiS4mZSbjPJduWH4PnNL1xrV1A1NU4l0LP0ktuIouyd/dXlwaJ4qCv
         xgtVk3cpgesAkT8jMqjoMM6/ze7M+NfCVPc/FYarPtx4TgHCTa5Uty3p45pRYeCKejwQ
         TKaWPRK8JZK/Vk7XIPEMocxeNFRZybjWzoW7GHmvV0lHuwD4foGs6ybQe7IQGTmQ8yOB
         zCgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706446123; x=1707050923;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I/x38S36QDkhzV+8MwnhOs0P+cE7JK4m8vtZmvDiUfE=;
        b=f9DRDe7N/nwqDAwG3L0HHgS36ofdULmMK5wAkAdRjBuU+ipxkOKs9cTCQr0P7qBqYz
         Xew0Vmnkk4mulUX1vdnY4Ie358AflkT4DRy5cdFAy1yNQI32In8N9e/juIgzXc6vMlhR
         iWE0mDFMSZ0ph8y6CQePJQglPMrWYwyPAgbHLOXybYpsQ99P18vqLGgaKAQB4FzPlfpg
         o+YmaxRaHhdEIJrNDAgVP1PHakxcvFuVUB2g1TxsZn7DdVo6YhAPRUlCbFcvXGwWnRhr
         OjOUv2axrxv6vmKnVWeh1t3DNNhaYxhMJjASK4odZHdSFm9G0ix8NzzytidBlR8psHgh
         yiSw==
X-Gm-Message-State: AOJu0YxUxTk35binjF6AyO38+EU2SsGWZvr8eSNe2N2H8gsf1373SgVu
	DCBIS2OYQGpFuIy9pZxeoUVCZj4y4E3FqShPkGyACDmp3UvOMgolVEpD5Fx0jfdv44C6o7Wy7Yj
	Rpv2pljaIrh3eO/avGA5kQA5Ur5Q=
X-Google-Smtp-Source: AGHT+IHv0UN9NFWoybAXXjOHPoGQ1s4oi578+GlpCaIZAJV+OS1TgE6g11sGDHQuxnt4qMxPPE5+V0O+cV91v5gNCNo=
X-Received: by 2002:a19:7618:0:b0:50e:7225:38fd with SMTP id
 c24-20020a197618000000b0050e722538fdmr2052714lff.35.1706446122776; Sun, 28
 Jan 2024 04:48:42 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj_1VzMf12EPRQgm=zG2pAJR+_6BRrJ-Ejgq7NGwOfpnYg@mail.gmail.com>
 <3472.1706432485345899127@lists.yoctoproject.org>
In-Reply-To: <3472.1706432485345899127@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 28 Jan 2024 13:48:31 +0100
Message-ID: <CANNYZj-EnSVQaxW69fyW-xypBW6LiyCzb6sXpjC=ZhBPS8HHAA@mail.gmail.com>
Subject: Re: [yocto] How to build two images with different settings of a
 recipe in Yocto
To: =?UTF-8?B?SsO2cmcgU29tbWVy?= <joerg.sommer@navimatix.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 28 Jan 2024 12:48:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62314

There's no way around this: you can't build the same recipe in two
different ways for two different images in the same DISTRO. The
different behavior has to be specified through config files and picked
up at runtime, and not through build time settings. All products and
builds and CI infrastructure for them must be planned with that in
mind.

Different local.conf is essentially a different distro in all but
name, and less understandable or maintainable.

Alex

On Sun, 28 Jan 2024 at 10:01, J=C3=B6rg Sommer via lists.yoctoproject.org
<joerg.sommer=3Dnavimatix.de@lists.yoctoproject.org> wrote:
>
> Thanks for your reply. It helps, but I see some issues with the ROOTFS_PO=
STPROCESS_COMMAND.
>
> For the config file this is a possible solution. But what can I do if I n=
eed code changes? SSH announced they'll disable DSA support by default in a=
 few months and for all other images except one I would stay with this defa=
ult. I have to supply another setting to configure when building the recipe=
 for one image. And I have more images they require reduced (or widened) se=
ttings of packages.
>
> And editing the image has the drawback that it doesn't play well with pac=
kage management. If I install/update the sshd ipk, it doesn't contain the c=
hange from ROOTFS_POSTPROCESS_COMMAND.

