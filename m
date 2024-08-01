Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B1ACC3DA4A
	for <webhook@archiver.kernel.org>; Thu,  1 Aug 2024 13:34:17 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web10.61665.1722491550924167028
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Jul 2024 22:52:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nJJcTp9n;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2cd2f89825fso4496916a91.1
        for <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 22:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722491550; x=1723096350; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k0KJ8AGJu63qJg2M29odg7AMemPCYImjQA5Z7vvwwv0=;
        b=nJJcTp9n8TSG+hWimX3p0pAqOyGyVWAmHcQZZ7z+iTziBuhxTDyKtR1GmXFdLiA7Cd
         ZDECU8xlnPW0mDKzfFsX5x1Sm1Egabm46T9v9RsCwZ5EwclFMks/SeLyyAt+3KAV53xQ
         sVEYvDJrZHIriTpD5BbSH0zUN41aysKC/VoQj1lEclUk8Kk2mW8nbD9hIZ+o5SSCB3tX
         RHmyDIKt2248NIYV5ZXoVQ2seXuVW9NNkqpZFHa0n43FUp4yzASYVXxvxF1j6iICP9As
         iIFL13TJ5k7D2QPq5uTeJF4ddva4/ZgBnC5hrvnthuZMyhCwpXGoMjv8zYKXZkSU5g7Z
         6U8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722491550; x=1723096350;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k0KJ8AGJu63qJg2M29odg7AMemPCYImjQA5Z7vvwwv0=;
        b=Nvnlpx1pi45nc00Xdr/IHxknXreixo2xVwfDxux3LexGDnoY3v6EwXCKrUiQhjPTu1
         OXzYAEVxYANYjo4gVgIkvbH1HfswTsewUzMqv42h+ESssQchqMvTjODcxQ0dz4ilQsyf
         ZXWmDM/PtSEnLFlFF33FGCTuhtfgQO845GBg8BdnQx1Oi8bjGtyNwW61MdB8bRuJ/Pk0
         8YDBWrIUuZOQVAiSe0xE2FGHu4ehKUNhpYXWarWhZTZT5eMGca8kWFZRfOC2QokMwaMO
         FIMXoISZf5sKdMNn8Sdm+vL9aY/H2SfWl51l7eYlUyWek3YNr2hCiAK78E9PYqpBOtCY
         TAlg==
X-Gm-Message-State: AOJu0YybzMBZpV6k/Q9gaJZX/6GhexJ+3APcSW2Lt54qcmForfprEzWC
	ICC0ytC1zqjtlNt0SKIwPsHkBmSWS2hjmr+tm/yRLXoXHdntSERXpPUjjh8uyd5/UEr0D2zDsNx
	MOp0XGiEdBiic1DNhzqoZ70tEw+t8NWh5
X-Google-Smtp-Source: AGHT+IGyfqmWLJyS3XnGZnUTgCesS1tNGhzmfqRyscK92+zdBGppFdnQkIgwyw9PZhQk2c+OohF9EKwjARYfrfdCiiY=
X-Received: by 2002:a17:90a:3ec4:b0:2cb:4e14:fd5d with SMTP id
 98e67ed59e1d1-2cfe7886018mr1860638a91.17.1722491549713; Wed, 31 Jul 2024
 22:52:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAPfD7wkdkC3Wsu92gcPa9RtQs=hWyxXgKbH4kPfOmEfqhzmJNw@mail.gmail.com>
In-Reply-To: <CAPfD7wkdkC3Wsu92gcPa9RtQs=hWyxXgKbH4kPfOmEfqhzmJNw@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Thu, 1 Aug 2024 07:52:18 +0200
Message-ID: <CAGAf8LyJirHKKfw2Rh9Xf64WdkrnqFAEZkxGGGaGu2K+K0g4bg@mail.gmail.com>
Subject: Re: [yocto] Using sshd with a non-bash shell
To: yocto@lists.yoctoproject.org, mcorbin@lunarenergy.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Aug 2024 13:34:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63640

Hello Mark,

Just one question out of my curiosity?

Why ash (used in u-boot shell), not bash???

Thank you,
Zee
_______


On Wed, Jul 31, 2024 at 5:55=E2=80=AFPM Mark Corbin via lists.yoctoproject.=
org
<mcorbin=3Dlunarenergy.com@lists.yoctoproject.org> wrote:
>
> Hello
>
> I was wondering whether anybody has any experience of running sshd succes=
sfully on a system with a 'non-bash' shell?
>
> We're using kirkstone 4.0.12 which has openssh 8.9p1 and systemd 250.5.
> Both ssh and scp work as expected with '/bin/sh -> bash.bash' on the targ=
et, but with '/bin/sh -> busybox.nosuid' (ash shell) the connections fail.
>
> The sshd logs on the target show:
> Jul 31 15:24:56 hc sshd[17826]: Connection from UNKNOWN port 65535 on 192=
.168.12.246 port 65535
> Jul 31 15:24:56 hc sshd[17826]: debug1: kex_exchange_identification: writ=
e: Broken pipe
> Jul 31 15:24:56 hc sshd[17826]: banner exchange: Connection from UNKNOWN =
port 65535: Broken pipe
>
> Some extra debug messages that I've added to both systemd and sshd show t=
hat the incoming socket gets closed somewhere between the handover from the=
 systemd socket service to the systemd sshd service. This results in sshd b=
eing unable to get any peer details.
>
> I can't see anything obvious in either the systemd source or sshd source =
that suggest a dependency on bash.
>
> Any ideas gratefully appreciated.
>
> Regards
>
> Mark
>
> --
>
> Mark Corbin
> Senior Software Engineer  |   lunarenergy.com   |  LinkedIn  |  Instagram
>
> C2:Restricted unless otherwise stated.
>
> Lunar Energy Limited is a company registered in England and Wales, author=
ised and regulated by the Financial Conduct Authority under reference numbe=
r 767876. Company registration number: 05631091. Registered office: 55 Bake=
r Street, London, England, W1U 7EU
>
>
>=20
>

