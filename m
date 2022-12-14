Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6E1BC4332F
	for <webhook@archiver.kernel.org>; Wed, 14 Dec 2022 09:40:43 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web10.98632.1671010839835083091
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Dec 2022 01:40:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PISV51ib;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id j4so9551557lfk.0
        for <yocto@lists.yoctoproject.org>; Wed, 14 Dec 2022 01:40:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HT/jnzCgh+DYVuQUUq66UxZ9Rdx0VbCm99F37PvsRpk=;
        b=PISV51ibbdAV1JG6jxlJYtV2TVdXpNytf1KK9JTTIR9kZ1WR73V7zBBuLdURut01Xd
         +IFyJZhi7UmZx8RLkG3ybafsj6jrNK1h67gHHKNbzeegSnHR8WNQHmZuLwCB5t7aoujt
         M0XcKvI0DTOvsLJvZQSQoGbn24YeZFGWSgcErTxhn875oMrUJwZTACXUz3+O6aQEhbTf
         IK1uS56O/G58QR3BHgd6q8Xo/UmgZkELm++CvQEdPJ9aaJIzy90+1KOonXYdtcCNLz7B
         uRVo+RGSIiN+2JAwIsq/obBZSAhB2l9ewqj2hgy4KFMGlS6LYaH6Gy+sHDnGmr+6Spqc
         TjJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HT/jnzCgh+DYVuQUUq66UxZ9Rdx0VbCm99F37PvsRpk=;
        b=GhRvjRxAmPJ4pL0pMG2CSS4LjNabKXIp0GQy190S7cDUUvtUMmx/G7N71fhi9twtYB
         BXGrxknoykdCmGQ4nf+UfZZawCB+YUrRtviPR4HUR+RZgCMWJKu7vCLD1Rtb38kcaTE9
         l4GoOKdYXMfD011wMw2VHIE4v02XdByTVoozPdmKYa81bYinyMIjbUYYPlhH8MHU6Z5l
         7QCO+NYmPW8jY9lYd6YJCek7z7KK8MxNRgtK/8qK5YhiU2Vb+uqzj44cX2xqMHTDSGbS
         H4dEzEZarBpCx6p7vAtAb9OaEeZXOz+LCY0MwGG5fqXP/y6CIO42QKb3YOQ/4Xg+qr23
         u6ug==
X-Gm-Message-State: ANoB5pkP1wBkNFSWmlViWYWCZx2CmAaBrc7jwnAw//C05kcMqmTrmp6Y
	+ht3kNBntYfYqN1ZtupxJO8SHOL7oPzV6d2fodU=
X-Google-Smtp-Source: AA0mqf6VImxH5/7H3UEFbJLM0a51n8wDMU9ZnI+oXBmeYgMWEvsHm93Z6LaQ0SjjpHEW9yxzS5Leo5jC4kPIL3R0XNU=
X-Received: by 2002:ac2:4c47:0:b0:4a2:4d53:8294 with SMTP id
 o7-20020ac24c47000000b004a24d538294mr30054642lfk.263.1671010838043; Wed, 14
 Dec 2022 01:40:38 -0800 (PST)
MIME-Version: 1.0
References: <SY4PR01MB679719971DE5378023DF6F3FB1E39@SY4PR01MB6797.ausprd01.prod.outlook.com>
 <CANNYZj9pSipKkwpRwaCo3NwO1O=uK_BXazxvS7t70qWTpaSpJw@mail.gmail.com> <SY4PR01MB6797E2185B27B31256010857B1E09@SY4PR01MB6797.ausprd01.prod.outlook.com>
In-Reply-To: <SY4PR01MB6797E2185B27B31256010857B1E09@SY4PR01MB6797.ausprd01.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 14 Dec 2022 10:40:26 +0100
Message-ID: <CANNYZj9_WD95_=bRi7OubjJ7eoGhe8+Y+QAmPu=2zLknjZ-4+w@mail.gmail.com>
Subject: Re: [yocto] Yocto with Monorepo - best practice for building apps
 that have source within the repo?
To: David Antliff <d.antliff@unsw.edu.au>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Dec 2022 09:40:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58794

On Wed, 14 Dec 2022 at 10:34, David Antliff <d.antliff@unsw.edu.au> wrote:
> Good question! I would prefer not to use a monorepo but it has been impos=
ed on me. It predates my involvement and I=E2=80=99m stuck with it, unfortu=
nately. Consider it an unavoidable constraint. There's a lot in the repo, a=
nd the yocto project is just one part of it.
>
> Frankly it would make my life a lot easier if I didn't have to work with =
a monorepo, but my leaders insist that it makes things "easier"...

Let me guess: they heard that facebook is using a monorepo, so that
makes it a 'best practice'?

I would symlink the sources directory to the sub-directory of 'files'
('files' is in the same directory as the recipe), then list the
symlink in SRC_URI, so bitbake can copy the content into $WORKDIR. But
I have no idea if it's going to work. It's not a setup that is tested
or used much.

Alex

