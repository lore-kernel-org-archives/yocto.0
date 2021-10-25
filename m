Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08316C433EF
	for <webhook@archiver.kernel.org>; Mon, 25 Oct 2021 07:16:42 +0000 (UTC)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com
 [209.85.222.50])
 by mx.groups.io with SMTP id smtpd.web08.29160.1635146200840254981
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 00:16:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZlQ5FIio;
 spf=pass (domain: gmail.com, ip: 209.85.222.50,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f50.google.com with SMTP id e2so20096170uax.7
        for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 00:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IfIZgTmImHZvIVJLHNj5XtdiCfgxCs6PZGGmEe12ajw=;
        b=ZlQ5FIioKieQ6sHfjn+DRpWiaqnUdM5729Ite5AJVtUmTSvybFVIxn74xhQc5c6wB9
         1REc8YtgUfOYwO/p3O8NvjKSy2ceZ8peDZSAwv0eA2zCqYuCeGOQfmkVlI0N9qZ/6Hrv
         FQ3zECjaqG2FgKf3ajBXB9QA7ZpgEBgCCiLiJG7Z9HGvR7qRZahVxRFvGtRLzCTb5fVV
         U8ZHpOFY82TaJ2lqprpsK5i6Ysg49fIfoA6yIHy33uP8YPhOwL4OP2z3B52+1cbVbzY/
         KYX44dDMgRBmj7ogxVQ6p0l34Y8FYGx3zY7Pev42xvLP9/bBsxmRkvrzekW0MEoW8H9T
         6m7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IfIZgTmImHZvIVJLHNj5XtdiCfgxCs6PZGGmEe12ajw=;
        b=seK0CnkqwOC8Jhrn38Y6n4wvGANEBv/nGrJdIk5AZYTS2JfcVgCuSbAS0up0EsTQkr
         c6R+OFK9eeR0K8GAP+Ha7syULR82ppkZ+LMXaC4X+dlOpQjZFn7HppI+VxgdAzWezkIQ
         wJQcsRh+IBM8J4wDEDUSzO+ejPOM0c3OsAxfim1HRjTP4Bwe6GP1krbOj5vEnf/kJYm2
         9tf2uqwuyLkS9hrq860PYmq7eGm/aYQLBFtjgbn7DO5vCc+s58baKA/eStTOHwDGiqNo
         R0FAV+pqKuJ1Tm/1nZ9vEhcgVl6VvOYpAfrmVCI077NGa1LqKV5JaPJ16xvyTGJmixtm
         ETHw==
X-Gm-Message-State: AOAM530i/kWd2+APMy7dibgqR+vFkU1ELZjKKk0ltmMYPpJG2EgOKf0z
	vkFVRz/iNM+zw3RL0X+dE0Ly+sWlqYVecVv9zVc=
X-Google-Smtp-Source: 
 ABdhPJwFtJahqqSjPr8zECSrPe0si7YrHdpmrMOl0eONJfJhKQcyw7WpGiFGeJUtcWGV03kr2H4yttNZYPk6lCxzlko=
X-Received: by 2002:a05:6102:954:: with SMTP id
 a20mr12609081vsi.40.1635146199917;
 Mon, 25 Oct 2021 00:16:39 -0700 (PDT)
MIME-Version: 1.0
References: <31cf8b88-5441-4779-a26d-4b6b3c310b77@www.fastmail.com>
 <CANNYZj_OpPwNOb+jADgG5Escpwj+WLcr_nhihfLd-NUhyHFTNQ@mail.gmail.com>
 <af53ff0e-5abc-40fb-b4c5-3f36a3c1d8c4@www.fastmail.com>
 <CANNYZj-_znrzjOb_cjtDEg4=ZxMCGEaVzCJ+txkJEMoqzBf_Zw@mail.gmail.com>
 <c39ba639-c4a6-4260-83b0-37a88d247a3a@www.fastmail.com>
 <CANNYZj9kPTThuVcbCtNZi8C5NwMMRgeRduO9r0n6TNcewy9OwQ@mail.gmail.com>
 <0a94aca2-2539-4ff1-b892-94a3a42e8aff@www.fastmail.com>
 <CANNYZj-hpvwOZXA3YBUX5QxB2etofT+z5ef-McukLeLuRc=Y_g@mail.gmail.com>
 <3a70acf3-826a-4bd7-92a9-a5a11ec77560@www.fastmail.com>
In-Reply-To: <3a70acf3-826a-4bd7-92a9-a5a11ec77560@www.fastmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 25 Oct 2021 09:16:28 +0200
Message-ID: 
 <CANNYZj9y2odnX4Vt64FLNB5=VOf8NztcCic1zzw2LDHH2zkqdQ@mail.gmail.com>
Subject: Re: [yocto] How to enable graphics acceleration on qemux86-64?
To: Manuel Wagesreither <ManWag@fastmail.fm>
Cc: "yocto@lists.yoctoproject.org," <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000066e89605cf2824b7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Oct 2021 07:16:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55130

--00000000000066e89605cf2824b7
Content-Type: text/plain; charset="UTF-8"

On Sun, 24 Oct 2021 at 23:29, Manuel Wagesreither <ManWag@fastmail.fm>
wrote:

> Hi all,
> hi Alexander,
>
> I solved my problems. Things work fine now. Below I'm summing things up as
> documentation for myself and also others in case this pops up in someones
> search query.
>

Cheers :) you should also try this on bleeding edge master, it should work
the same as hardknott, but if there are issues, you can make and send
patches to fix them.

Alex

--00000000000066e89605cf2824b7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Sun, 24 Oct 2021 at 23:29, Manuel Wagesreither &lt;<a href=3D"mai=
lto:ManWag@fastmail.fm">ManWag@fastmail.fm</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><u></u><div><div>Hi all,<br></div=
><div>hi Alexander,<br></div><div><br></div><div>I solved my problems. Thin=
gs work fine now. Below I&#39;m summing things up as documentation for myse=
lf and also others in case this pops up in someones search query.<br></div>=
</div></blockquote><div><br></div><div>Cheers :) you should also try this o=
n bleeding edge master, it should work the same as hardknott, but if there =
are issues, you can make and send patches to fix them.</div><div><br></div>=
<div>Alex</div><br></div></div>

--00000000000066e89605cf2824b7--

