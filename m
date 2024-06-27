Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA1EC2BD09
	for <webhook@archiver.kernel.org>; Thu, 27 Jun 2024 14:28:43 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web10.9303.1719498520117311989
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jun 2024 07:28:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VDQ1hpSO;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: martin.jansa@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5295e488248so9506980e87.2
        for <yocto@lists.yoctoproject.org>; Thu, 27 Jun 2024 07:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719498518; x=1720103318; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uV6xZY5GNGmvNJs5aQOMX9yuSXV+0pk22GAOGyoD/XM=;
        b=VDQ1hpSOSKT+HDv9L32RXlh/vlj4qieGj4a8t5I3JLtUhMLoQGh91hzCaZZUObL9kR
         O/8osLIrYaBVjzJknWun6aQN2zDjoCGO2EMzGxZqu2B87UHi/vpXgnzC4uu58V23mstW
         DUoJhWlWwCXK53R0kPc9iAqC/ATaIGeT9vEFmM3lngACzybzGlEwJbpTTe2Bslg71y6D
         UhcUbpQQXd/Eu2oO/t2dPpbuaqZlRy9Rg/x/xYE2Vvn1ShP7H7ZX9pdk/jSJKtwRmXjd
         Ds+mtcRe5Xj9jmoJJplpxPF8lzK8NB68ZcHSavFTqRgppZsqJgXBs5eL8OsPr2eIrg1H
         rwDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719498518; x=1720103318;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uV6xZY5GNGmvNJs5aQOMX9yuSXV+0pk22GAOGyoD/XM=;
        b=OqqgRttsMALzOFvh1LvXNeM0dUNupe1yK23zlw7OItlZRfVFy2f00Nfl/7hJwzpn+y
         LmPzh6xPC7QeVgh2cnwvsL91P5S6N5aXKChagCt3p3Ibhyr+JiZxUKxgNs+uoBJHweAV
         2R0LPEwyc1kestoFZsavNb92PsnmeZ/5PXjHvZeoWbT/rAa5BK9uhFvVWEPGbNEZx56h
         IXfvSN9qM6HkFrpGEgX5qM/Wfej3NqKSCpzmf6jXV8hPVSw1NKq/v/Mzal/qVqtRmedv
         WLqTpkNVa2GvAZXXX9c9K3jBIOvCPOat4OjDYmwmGouCyZtVhwUZbwovAe1ZkXD9P2iC
         EuIg==
X-Gm-Message-State: AOJu0YzEh9yAGNg8PV2eBMBIYyOGt0HtUFJshwiscrdaPEg67Ngc9Qq8
	eW5mhqGLp1GzBtKI1nQpNKCNZs2SshjfmcgqulMkdn9jYZvq07xiuoFsilbXgvz/B90/qwF42zQ
	BjncjJlFazFxI6TuABpovldQ03LbNmAJF
X-Google-Smtp-Source: AGHT+IHrwBxAGEJmFkRnhUjT1F7tMJqU7lbdUcAHXhEz0J2Pt+ozde9Ytp+62Tdu2QYu0RsoG7yx5JhgRIomgzO4n84=
X-Received: by 2002:a05:6512:3b96:b0:52c:dcab:6738 with SMTP id
 2adb3069b0e04-52ce1832bbcmr10158206e87.1.1719498518029; Thu, 27 Jun 2024
 07:28:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAPfD7w=LCH33=5C9=F83pGuwYSJFaaNap-eR48R9Mwzqg=XL-A@mail.gmail.com>
 <83b7b88acf6a2b3b1e2b3c42cf0c830535617bd4.camel@linuxfoundation.org>
In-Reply-To: <83b7b88acf6a2b3b1e2b3c42cf0c830535617bd4.camel@linuxfoundation.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 27 Jun 2024 16:28:23 +0200
Message-ID: <CA+chaQe0SRoVzDAbZ3L+u2PRQTUQ3cE6bwVGp5OB6ZNCXssgrQ@mail.gmail.com>
Subject: Re: [yocto] Class file priority between meta-rust and oe-core layers
To: yocto@lists.yoctoproject.org, richard.purdie@linuxfoundation.org
Cc: mcorbin@lunarenergy.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jun 2024 14:28:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63403

On Thu, Jun 27, 2024 at 4:23=E2=80=AFPM Richard Purdie via
lists.yoctoproject.org
<richard.purdie=3Dlinuxfoundation.org@lists.yoctoproject.org> wrote:
>
> On Thu, 2024-06-27 at 13:35 +0100, Mark Corbin via
> lists.yoctoproject.org wrote:
> > Hello
> >
> > I'm currently updating my project from Kirkstone to Scarthgap and
> > have run into an issue with bbclass file priorities.
> >
> > We are using our own modified 'meta-rust' layer, but rust recipes are
> > inheriting the 'cargo.bbclass' file from 'openembedded-
> > core/meta/classes-recipe' directory even though the 'meta-rust' layer
> > has a higher priority. This wasn't an issue under Kirkstone.
> >
> > Is there any way to ensure that my 'meta-rust' classes are used by
> > default?
>
> I'd just note that the behaviour hasn't changed and that inherits
> search BBPATH for the class. I suspect your BBPATH ordering has changed
> or needs tweaking to do what you expect.

Priority didn't change, but to use cargo.bbclass from your meta-rust
layer, then you need to move it from classes to classes-recipe as all
other "overlayed" bbclasses you might have after they were moved to
different subdirectories in oe-core with:
https://git.openembedded.org/openembedded-core/commit/?id=3Df5c128008365e14=
1082c129417eb72d2751e8045

