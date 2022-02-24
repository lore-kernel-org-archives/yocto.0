Return-Path: <nikhilvp29@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84CD7C433F5
	for <webhook@archiver.kernel.org>; Thu, 24 Feb 2022 06:06:20 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.web10.7078.1645682779291645465
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Feb 2022 22:06:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ca/9jyjD;
 spf=pass (domain: gmail.com, ip: 209.85.208.54,
 mailfrom: nikhilvp29@gmail.com)
Received: by mail-ed1-f54.google.com with SMTP id s24so1359920edr.5;
        Wed, 23 Feb 2022 22:06:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=/yQm0SLD+WBgNwQm7tVrziavsNIByGHhK43RmuGpaFk=;
        b=ca/9jyjDoahOK3WLWIc5SyPHkpsBC71xOov50XfPklm/vCsqIVL090ymadHpWfHTnO
         ZXP2jfg+RkytRkwNmD2Uy3gjerbXdpWiFa0mtZg3hTMi9yzD9ugzpe+AnZV4af8snKNt
         fOlnf3TANvF4QeniBXUUkmoCPuUCFLplFUnlQLTqsuXnMLgDMKUreyx1Q0T+bNsFWshc
         hvBbbuoqfUvUhzc1aS7fq88xY7Ava6164+coIA5BVGWSAY2rQkq8wijelK4XeDwxtFXr
         CB/SDir15SQF0ooRhuOLYFrcln4j7fw4kX08f98wosQwsC0Uu/wJGkqqBBEfwJ26sXCP
         tXTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/yQm0SLD+WBgNwQm7tVrziavsNIByGHhK43RmuGpaFk=;
        b=EMWnAlMdkUemgHRzyxTqVI47fW4Z+xix5pWiE7NwnJ+jJMcIudbiQaeMX8I8wQVtK1
         aKRMVl607OApwMcp0EMD0nMJMe4m5Ao3CZ2I1AOg9PrUp9li4zK9bAinT5S5erAydkad
         RXMjRruqx3EsAnotQGsOSPiwZDRoE/cxW8TU5XAKz4+WZQx16rNAwtr0hColBdVwEFNK
         3GwDZ7I8PbHQnggd3PJsr19h+oHiW4pwa5BZGz7UcW47TSr5aBno3ypYfKdYAbA49yYm
         HiII8jtLY4aVv9roShFPUdjdpaaQRT7dJJp5gnUdcof/ihPEVjvYJj+czPOqtwoxj1Fr
         cisQ==
X-Gm-Message-State: AOAM533bXcnhAYu0zThyyC593F0X3UjgU8AfhvhxxFZO6IwAW7ZV8nTL
	R5E2vnK7dkk108lD9/zwBbP4rNT3yKWFbnVWs5fTqBat
X-Google-Smtp-Source: 
 ABdhPJxUYnyCxDJ7BcTwpI9LJ1YjZDHm3fEzDjXrZ1n020wixy7UgEITmiKt8w/QH6pT4XkOVq9J2VQ3AotdvbgpPyA=
X-Received: by 2002:aa7:ce92:0:b0:40f:b89c:18fe with SMTP id
 y18-20020aa7ce92000000b0040fb89c18femr855433edv.67.1645682777440; Wed, 23 Feb
 2022 22:06:17 -0800 (PST)
MIME-Version: 1.0
From: NIKHIL PATIL <nikhilvp29@gmail.com>
Date: Thu, 24 Feb 2022 11:36:06 +0530
Message-ID: 
 <CAJw=dJ8-0r5ZM=LyGOAKvPdjUqntq8_zeG-NSOs-DQ1y1QiOvw@mail.gmail.com>
Subject: Regarding mail notification diseable
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
 yocto+help@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000005cc64705d8bd6191"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Feb 2022 06:06:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56272

--0000000000005cc64705d8bd6191
Content-Type: text/plain; charset="UTF-8"

hi ,
    I dont want any mail notification from yocto forum , please disable it
. i am not able to disable.
    thanks .

--0000000000005cc64705d8bd6191
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">hi ,<div>=C2=A0 =C2=A0 I dont want any mail notification f=
rom yocto forum , please disable it . i am not able to disable.</div><div>=
=C2=A0 =C2=A0 thanks .</div></div>

--0000000000005cc64705d8bd6191--

