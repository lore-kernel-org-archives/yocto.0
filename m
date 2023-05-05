Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67069C77B75
	for <webhook@archiver.kernel.org>; Fri,  5 May 2023 17:47:30 +0000 (UTC)
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
 by mx.groups.io with SMTP id smtpd.web10.1053.1683308849966143345
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 May 2023 10:47:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=SJ3ju/Zq;
 spf=pass (domain: gmail.com, ip: 209.85.161.45, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-54caba50d07so1134552eaf.2;
        Fri, 05 May 2023 10:47:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683308849; x=1685900849;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bRJZG93FyW7J3xfZhreMNDaCQ80fDGXIkccsu7GdbSA=;
        b=SJ3ju/ZqDwLTqNgRQfl0hjdIMFDEsL9+RJrKHIXjbGMOrNUinjdOkzqOysd8jl9vi3
         NWFrEb+LSKg+aUh5DfzL5bWQSIULbCn0JHpnIg9IIaoNIt0d1PxPtIP0Xp6usK8XIQ3s
         YP73g09uXwyvySvERVjteaiHjHEWavbEtUiLZYwS4jPNgJ6gVaZJTiFVrEi23jE0/OWt
         tqb9h/wW8X2xAXpftPP84ShYWbAFiGY9PftCGKUQf86BwsQfaGK8kmNI8AQpjsSIWlQp
         tQa92t8l2Nkf6s2htZgYviBjHs+K53AAd4JIGAwnQsQVu1tQ6Kgsa58LTGi6FxW0v3oR
         +Lbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683308849; x=1685900849;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bRJZG93FyW7J3xfZhreMNDaCQ80fDGXIkccsu7GdbSA=;
        b=jBUUZeADTJDYoIwTag30Qm3/TB4YOQ3885cS1bmt0D2aGipQEm8+NmH5/oWsSgX20H
         sgVHkDXc1Tkih2XTv6JuTZK8e0jTs03uJuyRzo18CoEIWv/0v1nF3TOV+j3VNAqY3zVA
         X/3OGxVbWNMANQAm9gkWB2meQvMF7tKPWpCf0cpsSITHRXeiqarGji/1cb1C39zVYPY0
         WBmgbhMnRQmtJL108bd5ywlNc2zVwpp19wZ9kWOVzspYwxH1I3R5wMsR8LfGjX5I2SwV
         Jr/AR0mu3ziW6xmgeFpIJgkv678CXuZacGvhnYKIbU0qmFlrMLQIa10CmI7cl57aCFgt
         94kw==
X-Gm-Message-State: AC+VfDzdDjZ42VGsagA9KIZ/6bs0C1OYziZsdf5Vpgh3JB+R4+grdqfF
	sJwFJEb1Av/AfQPACOyviClsDtggTWfck6E9pys=
X-Google-Smtp-Source: ACHHUZ4rDqZmmhjCArFIc0hz6QyJ4flbCscUMrFmeNewbhmH91/51sRi4dpX7c02zSrT0Evts8i/rMe/oR8TOBjKerA=
X-Received: by 2002:a05:6808:5d9:b0:390:7f21:5dd6 with SMTP id
 d25-20020a05680805d900b003907f215dd6mr933655oij.32.1683308849078; Fri, 05 May
 2023 10:47:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAOT3mi+DorC4uSqCwO7HmmFVuXX3BLFWJNp_o-NH4OmqP=6ZSg@mail.gmail.com>
In-Reply-To: <CAOT3mi+DorC4uSqCwO7HmmFVuXX3BLFWJNp_o-NH4OmqP=6ZSg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 5 May 2023 10:47:03 -0700
Message-ID: <CAMKF1sq-grYZTE6iLqEuFc4O5_EHoUYDzanywi94a_cNsmG0Bg@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Community Manager updates
To: Nicolas Dechesne <ndec13@gmail.com>
Cc: yocto@lists.yoctoproject.org, yocto-advocacy@lists.yoctoproject.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	Josef Holzmayr <jester@theyoctojester.info>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 May 2023 17:47:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59889

Nico, thanks fo all your contributions to project. We will miss you.

On Thu, May 4, 2023 at 7:40=E2=80=AFAM Nicolas Dechesne <ndec13@gmail.com> =
wrote:
>
> Dear all,
>
> After five years, I have decided to resign from my position as the Yocto =
Project Community Manager. I joined the OpenEmbedded community around 2008.=
 I have fond memories of my early days, and still remember some of my first=
 interactions on IRC and mailing lists! This is a very welcoming community,=
 always helping new people with patience and kindness. Serving the project =
during the last five years is something I am very proud of, and I will be f=
orever grateful to all of you for accepting me!
>
> During these years, we have gone through a lot together, the pandemic gav=
e us an opportunity to rethink how our community should come together. Sett=
ing up our Virtual Summits has been a lot of work (and stress!) for a group=
 of few people, but the never ending success of these events has been very =
rewarding! Our online presence in social media has dramatically improved, a=
nd allows us to reach out to and interact with our community faster than ev=
er before!
>
> On the side of all the technical changes, and releases, we have also esta=
blished the Yocto LTS process which was a recurring request from the commun=
ity and has become a strength of the project! We also revamped the project =
documentation to make it easier to maintain and contribute. The Yocto Proje=
ct documentation is such a great resource for our community! I have spent s=
o many hours on these PDFs in my early days!
>
> Anyway, let=E2=80=99s not focus on the past! The future looks bright and =
I am really excited to announce that Josef Holzmayr has accepted to take ov=
er the Community Manager role. Josef needs no introduction, he has been a k=
ey member of this community for so many years. Thanks to Josef's relentless=
 efforts, we have grown our social media presence on Youtube, Twitter, Link=
edIn and Mastodon! His energy will be a great source of inspiration for thi=
s community! I wish Josef and Yocto the best for the years to come, and I a=
m convinced this community is in good hands and that Josef will be a great =
community leader!
>
> Many thanks!
> Nico
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#180877): https://lists.openembedded.org/g/openembedde=
d-core/message/180877
> Mute This Topic: https://lists.openembedded.org/mt/98685136/1997914
> Group Owner: openembedded-core+owner@lists.openembedded.org
> Unsubscribe: https://lists.openembedded.org/g/openembedded-core/unsub [ra=
j.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

