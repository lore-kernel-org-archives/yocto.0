Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFA44C46CA2
	for <webhook@archiver.kernel.org>; Mon, 18 Dec 2023 11:34:24 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web10.41739.1702899254619068289
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Dec 2023 03:34:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=W+dezu4l;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.41, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a1fae88e66eso313655766b.3
        for <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 03:34:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1702899253; x=1703504053; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6tXSLnJNuclctIY+DmoQr81eQmlqmxOOA0cP+sAtwgo=;
        b=W+dezu4l41OH9rDH1FVUuzVIItZbGiYQ5+1TAxG7a+Hoar25lLlkSlaKWtWWGUMuJu
         WpFJhYwxEl0J/M3wkwOSsDGOuJJDJG83cIFWY6+tiQOCh+BjJXGVjdbUt4HERKN+bjPk
         jS0yjk4DrPMXZSo9Z4rlJlDtD7EFp/7zo8cYhda4JkKR82YBYsBJzRKT8jHyXSO1JnZ5
         PcKEhEceUTkTZSbor9OpNntLh2aAaPUgmxfX2Cae2vKN3U6O1QU8i8ZZaAI1VHMV//p5
         2IeN42O96Nk1Pg4SR/9t90emP8AKwhPsb7LDxfWtgPAOSO1s2+HmKQ8XKOC3ghO2QbdO
         xbsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702899253; x=1703504053;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6tXSLnJNuclctIY+DmoQr81eQmlqmxOOA0cP+sAtwgo=;
        b=cLXb1+lFqrzmwfgbMlf3RZji98QyrvuENqocOwqwXxDj2iwgzwn0o08YKfIUZ4itMU
         8UGVFfsFbyn1LEZNDJLQ9dOO6zQycWX1DEvHb0ig+vhSjPEnIsNO8tK1BJ5B+W3qybPr
         482uc8JZ4SxpS1umzq3OI7dHBTH2GKV1dXAK+f8erdJy6vg6sgH4cbg35U5kEfBluzs7
         giikXptNlaqaMN+DevH3vkkONld4DJKoB+2gsr9kTlE5J9jZp3r01p0739got6Y3u6ow
         Ac6jprEsXZrSA9PCxppGs38voXL8QolcUm1J49UpabBkCuPrpr0RzelPq9lq0tXjrnh/
         jb+Q==
X-Gm-Message-State: AOJu0YzoBDxL/CNf4PO/er2qLgBONOdFSy4BYQKPlAqWbXgtRWtoXiFc
	lofizQDErLENeRvnbVszpzSw5cj1MXIxwNOCI+0iSg==
X-Google-Smtp-Source: AGHT+IEnyb1BfHo+/CwGIig4Njrkjd0vCCm1MBFKoosEZ6mCghw5fPRQg91JkPLJZl28DO6BWYUVENLia7k1t8TYrvA=
X-Received: by 2002:a17:906:5345:b0:a23:4f2e:f7b with SMTP id
 j5-20020a170906534500b00a234f2e0f7bmr701964ejo.56.1702899252311; Mon, 18 Dec
 2023 03:34:12 -0800 (PST)
MIME-Version: 1.0
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Mon, 18 Dec 2023 12:33:46 +0100
Message-ID: <CAEt6Nwrk4xR6KEPYdtPJCzYHV=zsxnJapGCDPm1h8t30TSxeWg@mail.gmail.com>
Subject: CFP for OE Workshop extended
To: openembedded-devel@lists.openembedded.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	openembedded-members@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000005cab0060cc7216b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 11:34:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61960

--00000000000005cab0060cc7216b
Content-Type: text/plain; charset="UTF-8"

We have extended the deadline for the OE Workshop in Brussels, Monday
February 5th until the upcoming Friday, December 22th.

Give the gift of OE and share your knowledge at
https://pretalx.com/oe-ws-2024/cfp

Josef,
Your friendly OE Santa Helper

--00000000000005cab0060cc7216b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">We have extended the deadline for the OE Workshop in Bruss=
els, Monday February 5th until the upcoming Friday, December 22th.<br><br>G=
ive the gift of OE and share your knowledge at <a href=3D"https://pretalx.c=
om/oe-ws-2024/cfp">https://pretalx.com/oe-ws-2024/cfp</a><br><div><br></div=
><div>Josef,</div><div>Your friendly OE Santa Helper</div></div>

--00000000000005cab0060cc7216b--

