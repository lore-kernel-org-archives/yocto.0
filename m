Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6CA9C02196
	for <webhook@archiver.kernel.org>; Fri,  7 Feb 2025 11:16:21 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
 by mx.groups.io with SMTP id smtpd.web10.67168.1738926976635107528
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Feb 2025 03:16:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=i3RFUBe6;
 spf=pass (domain: gmail.com, ip: 209.85.219.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6e17d3e92d9so14590876d6.1
        for <yocto@lists.yoctoproject.org>; Fri, 07 Feb 2025 03:16:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738926976; x=1739531776; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t2vIbzloJpD6jKbFeQ95a0tI/hxVCV6uh+YhI36VHKc=;
        b=i3RFUBe6N50f4KXm1+/hoe/gE2BgbcgcqGNQLAysTljn7Ml9bv0ic4s3wc2dBz3Gyt
         qDS3cEvtrxuPilH37eEmZIpb1hodGbB8rhpZY9ZlDN48aoeZb8qe1TVEDqJGGKuE8A0Y
         ACrYYxmBJcemS+N1S14sCJDSZD84P3aDIU4ftdtY0L+j+mkKkb/CoLB9WDlsuGwe/x2+
         EqLgOadjFB12e3pOuLtYcdntDa3yMbXBlB4uE+BIiG08M4k7H13fq2Sil6teXPX815Sm
         RPMf1MYfA0/JPKklBeAxesEJ4albgR5LEORfdYlUX682tZ4Otkdfu3zG39O0aRKGNKwY
         UdEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738926976; x=1739531776;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t2vIbzloJpD6jKbFeQ95a0tI/hxVCV6uh+YhI36VHKc=;
        b=rmR0QXLG1HMv+u06cYJtTSBtGeL5BXdDBuA9RLHBV7Y4/DodZnFLy2Ejs/Z7awvMZr
         d/b1Y8sXR4XIPrVUP0MSWeF7Q0sIZ7NBbZXh/uwG5dzV4CjFbhvZjWaYd/w/FxgNyiFA
         UWkeMoM4xWx3VwBvUAAFlGXJVlIUCd3qY5vcDqEWZ/FWwy9b+9ViK1zTVX6EUOEKu4KG
         oKgb45KUtXpkALalKebQR2+bBD0iCC2WyzyqQUcTtBgceAcfQ681DgmqVu7lHEgQ4Uii
         GL3a+Xyg9ZhFQkCWJe5JAtVqT9uVuOzVhzcIZD2aWi6s8zQ8B6UaliNYjXEGO86WWCy3
         VnOg==
X-Gm-Message-State: AOJu0Yx+PWQwb51bZxvQz30Le9lLtT4fYKtVNeZRgAMj+ehNY1j4zvxF
	g32C2lKoxb7sLQKgWBY2aKpFVPPdpev/1v9flAmfa8Q5H0il8ObArbpzt4oAqZGxZA7IEeDxTBP
	MCa0IU93Ha9rJSH6pjE10vueGTkYVmg==
X-Gm-Gg: ASbGnctE6rtIt2F/R40S/TMtOZF0EcB3TAWxmtrE5NpNdWsKPYN75ekCFHp/uLHUPRm
	q3/Ftv71YNPAms7svpICt1kB8GQRAhlXq59WDjJWUiaO5bPYacAkhXxx+s2l53IXw4HU6bxo=
X-Google-Smtp-Source: AGHT+IHQt6VSETwQk4W/YfGujRyLVWmiVZFXFHrkD3NLI7ZHvqw87T4JnSqXVS+Qi97k+tTwpcYd+rvNgfxbDaqxruE=
X-Received: by 2002:a05:6214:5098:b0:6e4:2d89:3a92 with SMTP id
 6a1803df08f44-6e4456f8d8cmr42522046d6.34.1738926975400; Fri, 07 Feb 2025
 03:16:15 -0800 (PST)
MIME-Version: 1.0
References: <5JM1.1738926389537935531.kq6U@lists.yoctoproject.org>
In-Reply-To: <5JM1.1738926389537935531.kq6U@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 7 Feb 2025 12:16:04 +0100
X-Gm-Features: AWEUYZkpHvRuK8BNSQeMboZHpdlSQGcmkH_PCjSua5XaF2BlGBSpWRFg8W2KsRQ
Message-ID: <CANNYZj92b2Nb65b=01kCaLNXMifAwiStv8cfGr+RWg=RG-HU9w@mail.gmail.com>
Subject: Re: [yocto] Shared package feed between different projects
To: yocto@lists.yoctoproject.org, patrick.huesmann@desy.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Feb 2025 11:16:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64745

On Fri, 7 Feb 2025 at 12:06, Patrick Huesmann via
lists.yoctoproject.org
<patrick.huesmann=3Ddesy.de@lists.yoctoproject.org> wrote:
> use a dedicated package feed per project, but also keep a shared package =
feed; deduplicate the unmodified packages so the project specific feed cont=
ains only the project specific packages. Configure dnf on the target that i=
t uses the project-feed first and falls back to the common-feed. (This is m=
y favorite so far, but I'm not sure how to implement it efficiently - is th=
ere any existing work I can build upon?)
>

The best option is to drop package feeds altogether and set up proper
sstate infra.

Alex

