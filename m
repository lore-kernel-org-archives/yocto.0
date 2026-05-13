Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F793CD4F21
	for <webhook@archiver.kernel.org>; Wed, 13 May 2026 14:35:45 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.9066.1778682942225033908
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2026 07:35:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=KoRfa3kz;
 spf=pass (domain: gmail.com, ip: 209.85.219.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-8acb3dab8dfso44750196d6.1
        for <yocto@lists.yoctoproject.org>; Wed, 13 May 2026 07:35:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778682941; cv=none;
        d=google.com; s=arc-20240605;
        b=bS/BKTnZ0AOV6FgV4CdvIStXuInU3qZuyciexrVxPQ+uU93BO1IPl/zEDJOsXGPKKo
         r9OX6wKk4wCA6yq0CsdrAVzeIHuJPb9BsJ2j40FxTSVYLBj9GDI8byLp+QALXJ/SOHnE
         JhHHLwyBYHFzx2HgZuyj4bJ5ah9L16G7CjbFXj5iflSM1471ebFl2dj/AdfHeqORE0Z2
         jdMF0UFlnPZlpHc6iyA73r+AM80FzqfOnG4SMQa9D8pr/cSrQu4fY+1+tr/p4Ee058zY
         ZJymoNqjWJyl2s1SnNKLrrgl26L4HPQiycTLf/bmQAWu3cVFG0PGLilv3ULcWoDIVBb6
         2GRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=mHuqxkVDn75NZeuendo2jQQxh0aTWwtyFCiT0Df46Aw=;
        fh=PaCoefWFmkFLxT8cExE+3jqAoVAW1g5QHgRIWAFRCJU=;
        b=Zi7FQppxouQBQQB6p9xD+dyyqIKOM3ZLKQSIZ00ngBg16Lta/qt6hi8qq5nLIlL8op
         aJCkUMJyweYRMYy4fbPJ+4kbGIuaNgEZiOF0Zwtc7+YWQo00CEe7Iq5SpehiZ5x73L8O
         iCyoaYy5rq8k8SALZYZz10ALDFQj2A7jt29A2HHQEiYs33duqO8YwwSpjTb0XxsWNyat
         xAr8xvhDQyZToLIkDmJ3OeYn8m9qVG2djj8Dsyx+O1rXkL3Y5eezPkVrtiv9q8bijNlu
         xtW1SJ548gvgdptIPFIO/v3+l8Kbg+360paBazzfjEwR3u13IUpmXKDw5gBlO2SdNBEA
         wGJg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778682941; x=1779287741; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mHuqxkVDn75NZeuendo2jQQxh0aTWwtyFCiT0Df46Aw=;
        b=KoRfa3kzb9dlGGkx+/Af7/KDvu/xJOXr9qp+jAEyrKPlK6Hz3fRDDxgBE9CmQkBhzt
         +cADdbypzQTar4msrzG96p3tRpPlrywWH5aI9gMdXHsf19GvIxGMLWyJRXLe0aa591N2
         OZQQA5+u9BHgb9zuAmnieVUqaYb1em3R8BuRKuqmGEZgolZhcO8WXJpekB5OUktyXLfT
         6226NXMm1dXesVwhy0vv5SwvsZB6LvdL6Wyy7/nHGVjaOR3PJLCIIugaZyn+coPg3kw6
         rfgcAvUQJdP43SPw2e8s2Lq9jOPXcjDwEUi8na8sRe2g8CPCdh6kWLhoPIhFe8uwZIX3
         05Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778682941; x=1779287741;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mHuqxkVDn75NZeuendo2jQQxh0aTWwtyFCiT0Df46Aw=;
        b=bVCKBXJ20nd/VcPC998MyaZ8jPOHorfm5NcwhQpAkSnvNXi6j2YwJaA8BfFzLBBk9s
         0TJo1gds6d42fNbF4YQXBdWkwtli5eCFccIN3lqL2EXD2qG7E056DnT/s23vlJf+QGVq
         AaEPvk7i39wkkuO0aB5qzhkgmhCvns6NySpyfpm3AwORb/9xHKGP3ECtMDQIz6NF1nSI
         vEbX6xFwgkAdUkaBspgBxkxbOiVEDj1AGHEHsW/U421KBZh7q2TEtckAqv+zwHXttq44
         tPrWLzVaJr5Ncozk4Ot29YbmPciaOFw7NsHwZcVIPiKwyxoB49UPrMpz1wbFiFyJ7sp0
         Icmg==
X-Gm-Message-State: AOJu0Yz91vjyw1xJJgNWRmloktDQR/gdp3Xe6yueQwhDiVwhy3bMr7Nx
	+5qZ9YrHqC84+iHGFTXClw/9RCwEE80AX/WnMTxB3+9TWmEJZfqrEn6q3ZBBWJq1O0iFlpgkOFH
	QHQlSJofyuE06M7iuurXe4QOmszdESGgsBwQw
X-Gm-Gg: Acq92OEWeNsOowDtbkz250qG/j7S4SOpzsYdpK0DX1o5U325b2+54z2Fst0M6lPkCmi
	dsuF5IYZUH27yU7ih9NGtnetmEN4hVLWOIJc64i+Gfufo9OoklNuCUNLqUOLo8MXIu6Qp9PCxCM
	u8gvEVgm+zCQORE/Z0HCZqJ4McBcgsdZNa8Jsea6285tHyB51gLeQrsFXvx8cB9Oe/h5PN33SjC
	kkGFOaQzRHw9FhS06eP+hmwaS9Qqwa7g+qPaxLNrDaZ2LRqrJHR0Gyf8pCPqmm9Qj+CGtP7v344
	SDxTgRUg+kj+pJAfC9YUq4+4hHQIV3SpkJhqtek7aw==
X-Received: by 2002:a05:6214:238e:b0:8bd:cfab:c792 with SMTP id
 6a1803df08f44-8c7df217704mr50452296d6.34.1778682940960; Wed, 13 May 2026
 07:35:40 -0700 (PDT)
MIME-Version: 1.0
References: <AS8PR08MB72519491BFB65260C510C104D5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj9d4aGunvF3tQPF9frgNGrxqcntb7AQO+XsBTDBsOejTg@mail.gmail.com>
 <AS8PR08MB7251242FD5DCEDE2DFA4374FD5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <3306fb96-8964-4eea-be32-27fd26385bb0@cherry.de> <AS8PR08MB72519BF260608361FE603E29D5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj_VGh3G-b6mWPqJO6WukwRhkh3Gvjffk3GXG8D05ezeOg@mail.gmail.com> <AS8PR08MB7251A410724D0D006312018ED5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
In-Reply-To: <AS8PR08MB7251A410724D0D006312018ED5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 13 May 2026 16:35:29 +0200
X-Gm-Features: AVHnY4Jiqvf-ZgR9OvwJVNU2HTf_EOd4P0V8yc2AMjWvfTBUebtE1oly3pUulZo
Message-ID: <CANNYZj_7Q_aS8yp+ZR3=9xTjHUsJyxL8ep9K2qO3RwSMnFUvoA@mail.gmail.com>
Subject: Re: [yocto] Modifying SRC_URI before it is parsed by the fetcher
To: yocto@lists.yoctoproject.org, ext-antti.garding@kempower.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 May 2026 14:35:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66557

On Wed, 13 May 2026 at 16:22, EXT-Antti G=C3=A4rding via
lists.yoctoproject.org
<ext-antti.garding=3Dkempower.com@lists.yoctoproject.org> wrote:
> For debugging purposes, the appending must be easy to toggle on and off f=
or any single recipe. I would accomplish that by having it packed into a cl=
ass which would make its decisions based on the meta data that is already i=
n the recipe inheriting it.

Then what in Quentin's suggestion isn't going to work? You put the
function and the SRC_URI_TAG assignment into the class. You modify the
SRC_URI in the recipe to refer to SRC_URI_TAG variable, and add a
class inherit into the recipe. Which part of this isn't appropriate or
possible and why?

Alex

