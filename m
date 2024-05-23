Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C20DC25B75
	for <webhook@archiver.kernel.org>; Thu, 23 May 2024 05:48:09 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web11.10020.1716443286688165090
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 May 2024 22:48:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=AmYu32n0;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2e72b8931caso45721211fa.0
        for <yocto@lists.yoctoproject.org>; Wed, 22 May 2024 22:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716443285; x=1717048085; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GfyYh7dSnwpNeKsmo2FWld2d6k9JwMInFxirmelgRrU=;
        b=AmYu32n0Qm1fQhTZHaT/9U+yqchIjKIoMX89YNT1EfkL9i91dX2Ehj77AX09E7UwWt
         1p8l3rM+M5l1bjFnmyZ0dcDBTJ6D4razNS2nynUWfncsmdpLgGqU1TQlCvHj5I8sFzUN
         hr3QUse4HKsdUrXFzfHjcSF4YrIMPzXyBsEGTq+QmqRKQwuWIA9FZO07s3/N8WfTvIr4
         D5eQN6PE0wuCZIopAObuXrf7NDnKWSPWKpEs0fQ2vbyc0Ti1djhahue/fNuyd6Jz4WUF
         4LOQHaQ0ZmECHMeoP+PmlUxPg/o7IG3wMJWwc7gDKxkg9ywKI6qaKzclNzU7EVvkjj6i
         U8vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716443285; x=1717048085;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GfyYh7dSnwpNeKsmo2FWld2d6k9JwMInFxirmelgRrU=;
        b=cbFjhwmZk8Erc7zBbpoIedL3uBWOaIH7doDSpx7n7yIIqVQee8ah+r5bzAxvrfDF0I
         K+x/w3W2pfz8sodEO75ah5egmwvtfKYab1+2j0HJCSvNIBIOGmEiKUBUe3OkPFS4Ka4Q
         2aPUTxKA2Vqnku9gQHy14kSB7WDiXNfwoWTrn4q2YUKyvE1zQKqa99EqGH29tgikYyEV
         TCAvge6FVl98X/neeqTpuIDMPBqVpDd2pE+X04x1izAb/aMwrdQE5Nnkd7vam8Z3Ky+m
         5KtxcGvPpC4YVFeQhZIvOmLChJl6dDUNdITG52uNw5KHnNR+7Rb3NLrN91TZaxOdcC1W
         2Qrg==
X-Gm-Message-State: AOJu0YwZk+uVHZZUKhGTNphKldocjWn6MoEBWXfvmTQIwkJS1LAOLn/w
	bc0QYnjgQHh/4b6irXuxw2d2/xUPPEKypiNLEv+/p4D8dxu2BylQM1iJIA6jfFwYr1f1qjzEJhI
	PetxsbdgVUpx87DlCeFTaPSUFdY8=
X-Google-Smtp-Source: AGHT+IGKOeeJXk09T5rSOFbRQrhAGYE+bmMcCDbwNqGpSKfW9ZnCkxbQ0xh1zEnvpcSUEzB89q7wg2MvLbcqhA18lXY=
X-Received: by 2002:a2e:8ec7:0:b0:2e9:48db:353a with SMTP id
 38308e7fff4ca-2e9496645camr22627291fa.53.1716443284233; Wed, 22 May 2024
 22:48:04 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj9M8M1FEfKurCJwceuPff3EGTGN1gPXWTxPkdkzQhFHaQ@mail.gmail.com>
 <423.1716442662251903836@lists.yoctoproject.org>
In-Reply-To: <423.1716442662251903836@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 23 May 2024 07:47:53 +0200
Message-ID: <CANNYZj-T2DMBVPQEbREOoWHVxwTOzF=EdPC6iiZn2K9vUHJK9w@mail.gmail.com>
Subject: Re: [yocto] runqemu qemux86-64
To: sasikumar.e@fdss.co.in
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003be81906191898f2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 May 2024 05:48:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63170

--0000000000003be81906191898f2
Content-Type: text/plain; charset="UTF-8"

You need to delete the build folder, not the poky folder. You also need to
start a new shell session.

Alex

On Thu 23. May 2024 at 7.37, SasiKumar E via Lists.Yoctoproject.Org
<sasikumar.e=fdss.co.in@lists.yoctoproject.org> wrote:

> yes Alex, I have deleted the poky folder itself and retried the steps
> provided in the URL "
> https://docs.yoctoproject.org/4.3.4/brief-yoctoprojectqs/index.html#welcome"
> and I am facing the error

--0000000000003be81906191898f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">You need to delete the build folder, not the poky folder.=
 You also need to start a new shell session.</div><div dir=3D"auto"><br></d=
iv><div dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu 23. May 2024 at 7.37, SasiKumar E via =
<a href=3D"http://Lists.Yoctoproject.Org">Lists.Yoctoproject.Org</a> &lt;sa=
sikumar.e=3D<a href=3D"mailto:fdss.co.in@lists.yoctoproject.org">fdss.co.in=
@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-=
style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">yes Alex, =
I have deleted the poky folder itself and retried the steps provided in the=
 URL &quot;<a href=3D"https://docs.yoctoproject.org/4.3.4/brief-yoctoprojec=
tqs/index.html#welcome" target=3D"_blank">https://docs.yoctoproject.org/4.3=
.4/brief-yoctoprojectqs/index.html#welcome</a>&quot; and I am facing the er=
ror
</blockquote></div></div><br>

--0000000000003be81906191898f2--

