Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D91B1CDB47E
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 10:37:35 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.278171.1697625452933468605
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Oct 2023 03:37:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=msDoqaG1;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2b9c907bc68so86471251fa.2
        for <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 03:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697625451; x=1698230251; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IZ0Xe8iI1q1duSNNTXKiSVj+cD4dCBiqDVjIbxaIps0=;
        b=msDoqaG1v0B9aTtZPpeWF5Ca4evV/FvBmdV5uqPlfxDu0j3QHZj+EXZAuCwwefvh+3
         Yh6xRYyrbdsGH9fxGWZthCrQ9dI8vzvmXiGl6KMzaybNQmDMBGLzhLUhmHPjx0MC9D64
         YRk3RYMXPkL8M4bN19sbz4dZNtsAtv+hr+kahhRGsO9WnNYRcTjLkb+stpvcPvhwqoJH
         inmQ/4/oXVKuod3f85K3BPhdpYgHOEEvhnmvebPnjOOO7TyC+04vF0CakVBiNQ95Whu7
         9iU/6kwlz8b/Qxdl9FHA/VZcW6/rGVsxPboAbV1l/uOd6kjYDzMQNTHru7q9k/atQe1C
         sxiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697625451; x=1698230251;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IZ0Xe8iI1q1duSNNTXKiSVj+cD4dCBiqDVjIbxaIps0=;
        b=S63JR+f7ygo239No2ekNisidj2yGt5Gfdu78XumJFqvq4pGJJWnJZ7Rao/WGzSZ0k5
         cQrCopHYP/Ukl/SWA7xbBOdjso7GiYzscCIlhPuu/4e4417LBOeTgq1zb799VdetFIYS
         h581GSgcZ+rfHj7UZARdcrz7jom10wEvHYr2YnTkgkTEfbQp5mwtY9NXlHHMuNrJTZ6Y
         EBfPgR33QFCHNlLNnQFuLFRn/jPB/C5Vim+nC/UQlfrUyzmYnHThNFjZ9Ceb0nI/dNpz
         CejbU1x95PwlYl58mgbflKTRnDtV1/xXT91j32cgVjiOZ/52lb3gC4Y0ep/MXA3+4cqZ
         RjRQ==
X-Gm-Message-State: AOJu0Yw/oycjvJCHlcYvR0HXAmV5tHw4G8EADnV5puUpafxxAvB5MJ5U
	vXOIc/29XBX8G8zxpFTaB4HbQFeZFMrcOkXydZs=
X-Google-Smtp-Source: AGHT+IHwlspentPM0PYmDEWKf9hEJZVdaeAtL06pqsSFTdf0c86mis3XM1smeBzW56JfGMGvPOm0re4NJm07xsQsBnA=
X-Received: by 2002:a2e:a994:0:b0:2c5:1640:3c97 with SMTP id
 x20-20020a2ea994000000b002c516403c97mr4265345ljq.22.1697625450926; Wed, 18
 Oct 2023 03:37:30 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj8P62x8q5TP59Xhajq6XNS6--Ox-G+N2pEH9hnr=Hoo=A@mail.gmail.com>
 <30180.1697619630482083755@lists.yoctoproject.org> <CANNYZj8Rj08B4vvQ8EC6v3S31U9ZAWoxdmJzh43T6CpoK5bqww@mail.gmail.com>
 <ecc7db27039d38992b6423f17bbfdd44e1967249.camel@pengutronix.de>
 <CANNYZj_scVXe2iPwTcrt-xDy2rN9ObJFo5qJmQG0ix+=J7R61w@mail.gmail.com> <2520ab418aa18b4b96b0fcdad4fb2364c1e8e930.camel@pengutronix.de>
In-Reply-To: <2520ab418aa18b4b96b0fcdad4fb2364c1e8e930.camel@pengutronix.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 18 Oct 2023 12:37:19 +0200
Message-ID: <CANNYZj-CD490Ee2NfpPnw1+Wqs+sc3Nv4bukYsJ7ENdn1H-2ng@mail.gmail.com>
Subject: Re: [yocto] Remove packagegroup from image recipes
To: =?UTF-8?Q?Enrico_J=C3=B6rns?= <ejo@pengutronix.de>
Cc: Ivan Stojanovic <ivastojanovic@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 10:37:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61395

On Wed, 18 Oct 2023 at 12:24, Enrico J=C3=B6rns <ejo@pengutronix.de> wrote:
> In how is this different to the default packagegroup handling in oe-core =
where package 'force
> themself' into images based on specific DISTRO_FEATURE or MACHINE_FEATURE=
 settings?
>
> Thus this is a mechanism that is explicitly designed to be used by oe-cor=
e exclusively?

I see that as something of a historical mis-feature. I would take
those things out of the packagegroup recipe and into a class used by
images if I had a bit of time (core-image.bbclass most likely).

That's what you could do as well, define a class that pulls in rauc
for those images that inherit it.

Alex

