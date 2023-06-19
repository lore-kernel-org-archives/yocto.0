Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B176EB64DC
	for <webhook@archiver.kernel.org>; Mon, 19 Jun 2023 09:47:22 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web11.4006.1687168038234260610
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Jun 2023 02:47:18 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=V0OPM7fv;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-311099fac92so3835108f8f.0
        for <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 02:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1687168037; x=1689760037;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3afjh8ed5FsRV70g4a4FpLChMR0rAGpqx06s1+08fu0=;
        b=V0OPM7fvMeQwl7ud+NYn/Jn5mO2fYh8YijNi8eGflVOQ4qlfPBKth/h47aC3bLuwit
         X9ruUN3Qdb7I2LuOvWptnw7AWHCEGZqriE0eWvFV4cgJIHJz9+MNgVisV/SJDwo6I0fw
         NhtGrhEbErnwpRBoOGp9PlLHbFG/HohpfD+LU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687168037; x=1689760037;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3afjh8ed5FsRV70g4a4FpLChMR0rAGpqx06s1+08fu0=;
        b=jozdu43SBJsAg+9V23eS+Nj1G8fmSc3+ij0r+2nqSo/13ovJFmsGN7+QczPtUfhI1t
         dx+BfUMEwXmQVTjT09Wqzrnd91XKxJ0ZLTt4bFFpBGVI0HLR4iGCs7qw7XTSya0ilKeM
         2rOp8wNyUz7nuSQoqIaoFc/O3EJ7xRJppdD+Iop9Rbfcmq1+o8hW31ogEEVagPoH709U
         BDQzhM/TKs0Rlbd3vp9hEn0LOZ1VPOX64Olz2+UFoWU/kFP8TqU8L3PLjXEmu2WEeTRG
         xVElZ2QymSOOpYkOeF30c4BmGlKK3YepkjiAn7ZXtKFlrfDlu05Mee/HcMVbYQHtQPcc
         4pIg==
X-Gm-Message-State: AC+VfDzduU6gAgwd1n/silGqpryvJY9CQh9im0Y827XfJumSDI3g6HZe
	2ogBMMEus166FpR8PqFFXzfzIA==
X-Google-Smtp-Source: ACHHUZ64pbRMuQXKtZboDWo0pcnU8w+cTleY/pHCOzptExigQY5j2F71jbuby6scBsXqWiPP7KzXxg==
X-Received: by 2002:adf:f601:0:b0:30c:2bbf:bf8b with SMTP id t1-20020adff601000000b0030c2bbfbf8bmr7691517wrp.69.1687168036748;
        Mon, 19 Jun 2023 02:47:16 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:a584:d6f1:d866:e41? ([2001:8b0:aba:5f3c:a584:d6f1:d866:e41])
        by smtp.gmail.com with ESMTPSA id f13-20020a056000036d00b0030aefa3a957sm30988361wrf.28.2023.06.19.02.47.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jun 2023 02:47:16 -0700 (PDT)
Message-ID: <8a52e14442488e93b36afa8616bd01aeeaa8214d.camel@linuxfoundation.org>
Subject: Re: [yocto] Going on supporting Ubuntu 18.04?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ross Burton <Ross.Burton@arm.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, Michael Opdenacker
	 <michael.opdenacker@bootlin.com>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Mon, 19 Jun 2023 10:47:15 +0100
In-Reply-To: <457A2135-C389-4FFC-8876-91DD1F3E9FB9@arm.com>
References: <19697e87-997f-46ff-7017-804e1f344550@bootlin.com>
	 <CANNYZj_j57XUfRbALdWSvH5wGOop9ytSk-_niEH24Go0qDCKwg@mail.gmail.com>
	 <9942c50b161b8791a3d9b3352f6988e0aab9bf17.camel@linuxfoundation.org>
	 <457A2135-C389-4FFC-8876-91DD1F3E9FB9@arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 09:47:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60343

On Mon, 2023-06-19 at 09:44 +0000, Ross Burton wrote:
> On 19 Jun 2023, at 10:34, Richard Purdie via lists.yoctoproject.org <rich=
ard.purdie=3Dlinuxfoundation.org@lists.yoctoproject.org> wrote:
> > The ARM worker worries me a lot more. The 1804 worker is currently
> > stable but I do worry a bit what will happen when we change the OS on
> > that machine. In theory it should be fine and it could well be but that
> > hardware was very painful in the past.
>=20
> Each Arm worker runs a different release of Ubuntu, so I=E2=80=99ve no
> problem with asking Michael to reimage the 1804 machine with
> something newer (maybe even something not-Debian for coverage).  If
> it suddenly becomes less stable that would be a very interesting
> datapoint!

Interesting, yes. If it breaks, I suspect the official advice will be
to scrap that machine rather than fix it though and we'll then be down
on build power :/.

Cheers,

Richard

