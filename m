Return-Path: <michael@amarulasolutions.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D495C3ABA1
	for <webhook@archiver.kernel.org>; Sun, 15 Sep 2024 15:30:53 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web11.116446.1726414244403524844
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Sep 2024 08:30:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amarulasolutions.com header.s=google header.b=UjKvw7o6;
 spf=pass (domain: amarulasolutions.com, ip: 209.85.218.53, mailfrom: michael@amarulasolutions.com)
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a8d64b27c45so400083866b.3
        for <yocto@lists.yoctoproject.org>; Sun, 15 Sep 2024 08:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1726414243; x=1727019043; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2+5YAfdWUxIEWkHPT3yIxxjezZjPRspLkGzZBpWRF6g=;
        b=UjKvw7o6J78+kizOQJ6RTbLQ6kXkbrhRF0cKb/HF+LNgrIOW1h2L86b5pZdkbh/DM7
         ZIibAGoCKWXcfSy2c12tgpCKzf/C9BywBSPYm9idwCuWHNOz52ER3WMnWs/4PkX+k12Z
         zwgkGTGYnfley0HBIkvRUKq7ZrzKUz8P8yZk8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726414243; x=1727019043;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2+5YAfdWUxIEWkHPT3yIxxjezZjPRspLkGzZBpWRF6g=;
        b=EGldXmlLmKsRO9LJInh8oVNn1nbUH9XJxW0UaF71nmishENwpbxuVMbVGWWdaG/qEA
         +5hZ32Ag6EUmRONh1k8FofNHSqX6fy02hID5Pj+fjZ77jV2bbj3O44qG4JoF+B+pejmF
         +h7QB28/uV4hXqtbe2ca7NE1fxPk/wjA3eTjVw5BHPajzGbfd+7x04h9TNmSscQTQFQ0
         rO50tbMbjFyG7jXwORuIxKbvuTdboCxUJpH7AaQkNxuHuOm+Y+uQKbf7XlQKqYsXHI6J
         IFOgpUIBWYrC9SOAWV48QRiGB03WAmHR7SMwcFdGVdgCKJeu9rRsB56vJ+KaM+LFEDMi
         +Pvw==
X-Gm-Message-State: AOJu0YwZdv3G0CBxfsN8MX0+Xk13lWP09/UEbPAAxKRQj7jTdPxUkEBo
	S7vFrMlwCwAybkZumiZQoGfQjN/RLdY3NNqpSZN0EXDE5qJBtLx+TYcoUR7RiRjeAy1kScQ/8Mo
	Txhu50XUtRRKCGRbyRtkVqAV2rU2x1A2U9DRWnA==
X-Google-Smtp-Source: AGHT+IGuHHRjGjalMhGAic3qsTc8df7kFAZywqFyLskoJbRidvgzk5cv5u9mOIllaP4QWbjjqVMNYGmof0Sa/YNjWtU=
X-Received: by 2002:a17:907:7d93:b0:a8d:495b:c535 with SMTP id
 a640c23a62f3a-a9047b47c20mr768928666b.11.1726414241957; Sun, 15 Sep 2024
 08:30:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAOf5uwkeGHLaV5xoq0PG_yOrX_B62QzXaaTGQP-BqLmUB-ytEA@mail.gmail.com>
 <CAMKF1spHsz6Y5MxLvsiZMyLVAc2o_gWX7Wa2A2ZXHH-wG0ta7g@mail.gmail.com>
In-Reply-To: <CAMKF1spHsz6Y5MxLvsiZMyLVAc2o_gWX7Wa2A2ZXHH-wG0ta7g@mail.gmail.com>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Sun, 15 Sep 2024 17:30:30 +0200
Message-ID: <CAOf5uwnW+5d7UKXC=AV61q_qD779wn=C0bkK=wwkt986PaAWLg@mail.gmail.com>
Subject: Re: [yocto] Jenkins warning-ng icon for yocto security report
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 15 Sep 2024 15:30:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63838

Hi

On Sat, Sep 14, 2024 at 9:27=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wrote=
:
>
> On Sat, Sep 14, 2024 at 11:41=E2=80=AFAM Michael Nazzareno Trimarchi via
> lists.yoctoproject.org
> <michael=3Damarulasolutions.com@lists.yoctoproject.org> wrote:
> >
> > Hi all,
> >
> > I have sent the patches to be included in warning-ng to support yocto
> > security scanning result and looking for some icon representing the
> > can result
> >
> > https://fontawesome.com/icons/categories/security?f=3Dclassic&s=3Dsolid
> > In the free section. Can anyone suggest one?
> >
> > More info here
> > https://github.com/jenkinsci/warnings-ng-plugin/pull/1824#discussion_r1=
759750853
> >
> > The analytic model was already merged but now I would like to have the
> > proper icon there
>
> maybe something like below would be helpful
> https://www.yoctoproject.org/wp-content/uploads/sites/32/2023/09/YoctoPro=
ject_Logo_RGB_White_small.svg
>

Trying to keep one that is representing security but that set and I
found a shield. Anyway how CI/CD is working in yocto,
I would like to connect to jenkins releases to track vulnerability
tranding using the plugin. Nice to allow everyone to check them
and then it's much more easy to apply and find patches that need to be
appied. How is done now?

Michael

> >
> > Michael
> >
> >
> > --
> > Michael Nazzareno Trimarchi
> > Co-Founder & Chief Executive Officer
> > M. +39 347 913 2170
> > michael@amarulasolutions.com
> > __________________________________
> >
> > Amarula Solutions BV
> > Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
> > T. +31 (0)85 111 9172
> > info@amarulasolutions.com
> > www.amarulasolutions.com
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#63836): https://lists.yoctoproject.org/g/yocto/mess=
age/63836
> > Mute This Topic: https://lists.yoctoproject.org/mt/108453353/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gma=
il.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >



--=20
Michael Nazzareno Trimarchi
Co-Founder & Chief Executive Officer
M. +39 347 913 2170
michael@amarulasolutions.com
__________________________________

Amarula Solutions BV
Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
T. +31 (0)85 111 9172
info@amarulasolutions.com
www.amarulasolutions.com

