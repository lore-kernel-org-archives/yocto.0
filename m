Return-Path: <alex.kiernan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1B6EB64D9
	for <webhook@archiver.kernel.org>; Mon, 19 Jun 2023 09:48:52 +0000 (UTC)
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
 by mx.groups.io with SMTP id smtpd.web10.4033.1687168123616564959
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Jun 2023 02:48:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=E6GdV336;
 spf=pass (domain: gmail.com, ip: 209.85.166.172, mailfrom: alex.kiernan@gmail.com)
Received: by mail-il1-f172.google.com with SMTP id e9e14a558f8ab-341c362a851so13110915ab.2
        for <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 02:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687168123; x=1689760123;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a2B/0bR+FvFi5wjImJA5YyIoJhXrDKkLz+rPTG1itJ8=;
        b=E6GdV336uJetwXKI/ZhmYIM9/+Ubx556fF7WUUrSWouamDPqNQEBv12wl/+n5Tou77
         69WYhbK+rH++f9rEd1gzxN1SkLUqxODwcVBlkcnsKUwl68fcz2rIJJmkk3qgvClqff4K
         ZBA/TK6wbrXKE5oEktgqDbJqoET75YGAkUEw2Sm68fWqngO3h5wOgx2/kL8aB3KzEde4
         Xhn7sPXrxvrMCo6IujTsg4l7+fktJMC/Osjm7pwW2kd2wdnNOLb9ycUvUvkF7qP+H2gU
         l++1VaF914LaxcmX5DfTbcR0j5QPTxHmRe4iWOIRv0TsBksWnCUD8IzoRIFAV9YgkIUw
         mEhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687168123; x=1689760123;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a2B/0bR+FvFi5wjImJA5YyIoJhXrDKkLz+rPTG1itJ8=;
        b=ZG7Z5+ALdW5ESULF01naB/OQs0o16sngU1UfR/FpakkjaDPn/nG6IfguW2GgLwLLnw
         tSj2YdiB8zymeIAdo3nP/pa6Tlhajr9XH38RQp0pjSC5juODjIZrrDZM7UzMmk+51kag
         tMQTsj1vBOH045fiOcdXAj9Zs5eP3WKtk9hkpum5gk1TjyiNoXaJt76dh73+TdQc6w/S
         ADydAHQvsdoXKp74UsP5UQ5dR3uran1PIC+wAeUEpmoVZ6JHY3GprGfBWtAIj8f28Qnl
         9r6lEiYJW1z5YVM/32qJ6wqWzvzZNODkR7c3cueB2PuqqRmPHNkFGUK0Fvq1R29l3Eap
         i3Ew==
X-Gm-Message-State: AC+VfDzlBAE20LhJWai/chXsVWUOnDDtpOc2SkhrFdC9u9jiAduApSdo
	ZOaLnvxDeG5qfxJtv3aReoTYRgcOzNGT9yiPwK4=
X-Google-Smtp-Source: ACHHUZ65kGM9IkdFby5nryBoRnoOQUScI1FHGjOZx0mqNDtsSpcrYRGHN0EhwX/NqRBYIE4y0ns73URXgy2+76h+L10=
X-Received: by 2002:a92:d6c4:0:b0:33d:8347:1a60 with SMTP id
 z4-20020a92d6c4000000b0033d83471a60mr5023660ilp.3.1687168122749; Mon, 19 Jun
 2023 02:48:42 -0700 (PDT)
MIME-Version: 1.0
References: <19697e87-997f-46ff-7017-804e1f344550@bootlin.com>
 <CANNYZj_j57XUfRbALdWSvH5wGOop9ytSk-_niEH24Go0qDCKwg@mail.gmail.com>
 <9942c50b161b8791a3d9b3352f6988e0aab9bf17.camel@linuxfoundation.org> <457A2135-C389-4FFC-8876-91DD1F3E9FB9@arm.com>
In-Reply-To: <457A2135-C389-4FFC-8876-91DD1F3E9FB9@arm.com>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Mon, 19 Jun 2023 10:48:31 +0100
Message-ID: <CAO5Uq5RYQ47LGrfvguMTKOhjvWxXe4HXSov_8knPieVxT4Rvaw@mail.gmail.com>
Subject: Re: [yocto] Going on supporting Ubuntu 18.04?
To: Ross Burton <ross.burton@arm.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Alexander Kanavin <alex.kanavin@gmail.com>, 
	Michael Opdenacker <michael.opdenacker@bootlin.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 09:48:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60344

On Mon, Jun 19, 2023 at 10:44=E2=80=AFAM Ross Burton <ross.burton@arm.com> =
wrote:
>
> On 19 Jun 2023, at 10:34, Richard Purdie via lists.yoctoproject.org <rich=
ard.purdie=3Dlinuxfoundation.org@lists.yoctoproject.org> wrote:
> > The ARM worker worries me a lot more. The 1804 worker is currently
> > stable but I do worry a bit what will happen when we change the OS on
> > that machine. In theory it should be fine and it could well be but that
> > hardware was very painful in the past.
>
> Each Arm worker runs a different release of Ubuntu, so I=E2=80=99ve no pr=
oblem with asking Michael to reimage the 1804 machine with something newer =
(maybe even something not-Debian for coverage).  If it suddenly becomes les=
s stable that would be a very interesting datapoint!
>

FWIW we swapped out our x86_64 build machines for Aarch64 build
machines (both 20.04) in AWS with pretty much zero pain - it went way
better than I was expecting. That said we don't run ptests, or qemu,
or ...

--=20
Alex Kiernan

