Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A31CEF15E
	for <webhook@archiver.kernel.org>; Tue,  8 Oct 2024 12:13:51 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web11.7616.1728389630065501256
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Oct 2024 05:13:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UJ/McVP8;
 spf=pass (domain: gmail.com, ip: 209.85.208.180, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2fabfc06c26so48256401fa.2
        for <yocto@lists.yoctoproject.org>; Tue, 08 Oct 2024 05:13:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728389628; x=1728994428; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UyecKVARrRgQkeKdnk6+MBNxg/TtIcLMU4zHUL56A4E=;
        b=UJ/McVP80VwMEfUgRnpUrTedl6qzEdfFuvH4MzrKcyCCNdfStlxnufz7iX1kZdZwt3
         KZcR2ajszkMpuKImNhTyhKvpEnyVsU2kXJIdkY6DX/fAmorjuB3tecPErh73IGz2Nm7M
         GYOQOZay2v019rJKaRlvUW7fZYkuWTuDs9lJpd2kdXjtIGzc4ypyFi70Ne7/yMtKtroT
         TAHxEKkKT8kmKS4CAx6OwRK6n56m/jZbzsF1vFXfY1AiQXOSML0srCz2Srrl1PCuvJ/d
         BeXwLVBQHjZimaX8yvyR9EB/s9nCFzL32CPa7B9Oh+Bum18gPSb9AIhv/9wGV+zT9CKy
         TGgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728389628; x=1728994428;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UyecKVARrRgQkeKdnk6+MBNxg/TtIcLMU4zHUL56A4E=;
        b=DU4lz/KxOq9ecZNthnP0dnpEWVaYnVEJGR53pWThYmcGSuz92pMLmle8X2aJzQltKS
         lF7cdyQunqVFQHgVR9uyvewcO11HAr+yVUNa1ZOo+KpUPbbmlC2M4zdpKQ+vXMhU+rcD
         01CLn4wPiNMN3yLRQqZ0d0p/hK/TnZK1DMUCB4Jc/N7S0oVTFBE/htEdrivPOQppHVNH
         ZDiHR4fDcdRzGEvohOPtNPuweEvEY7mK+5/jBRN+FVrvdq5NKmBii77ELEBKxaTe32yx
         OP2qzRp8H3o/gsphk87hI73Z8oryxe6zNGD7q+/APZ6JLZ+98eEBItFB84WHbWrQCgy5
         Mj9w==
X-Gm-Message-State: AOJu0Ywo7CkO+Hgx1/eZsXHh5qvTAV27N7OLbf91/5PZBuEimKN+TCzK
	u11grO0wBoDNvt0cRuKz8a4i5Lk+q/W0QEfaz05XEuRHYGLZwEWFOWX796YEGj0SxxnDSQJsYuM
	UrsqVeUHbJHPUVlXUs5A4VvTiA70=
X-Google-Smtp-Source: AGHT+IHvDTPb5d2QVbvUzgaiBIcPIufGDXPO1hHKDHjP3PK4S7U18fouC1ubF65opjVSai6LlD6M81Nzazb6/E358e0=
X-Received: by 2002:a05:651c:19a6:b0:2fa:fc41:cf80 with SMTP id
 38308e7fff4ca-2fafc41d377mr47080741fa.43.1728389627970; Tue, 08 Oct 2024
 05:13:47 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj-0Dyh12N9-+nYO0V2S_=DBVJt0h-yastxKbF=KGdWtuw@mail.gmail.com>
 <13803.1728389045781254469@lists.yoctoproject.org>
In-Reply-To: <13803.1728389045781254469@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 8 Oct 2024 14:13:36 +0200
Message-ID: <CANNYZj9gbTXutxrxpJ54beyHSqR6c6d1VaML7a=_GLJsrpEh5w@mail.gmail.com>
Subject: Re: [yocto] How I can update the Yocto SDK incrementally/partially?
To: salahaldeen.altous@yahoo.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Oct 2024 12:13:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63972

On Tue, 8 Oct 2024 at 14:04, salahaldeen.altous@yahoo.com via
Lists.Yoctoproject.Org
<salahaldeen.altous=3Dyahoo.com@lists.yoctoproject.org> wrote:
> I would be happy if everyone can learn yocto. but in the real world is di=
fferent.
> We have application developer who is only looking to work with SDK withou=
t knowing how to build with yocto.
>
> One option is to use also eSDK but in my case is not applicable.

They don't have to 'learn yocto' or use gigantic esdk tarballs or even
regular sdk tarballs. They only need to replicate a yocto environment
(blindly following your instructions) and then set up a SDK
environment directly from there (again blindly following your
instructions). Then things will work exactly as they do with SDK
tarball, except you don't need to pass tarballs and ipks around, and
they can easily add things they need to the SDK environment:

https://docs.yoctoproject.org/sdk-manual/extensible.html#installing-the-ext=
ensible-sdk

"Setting up the Extensible SDK environment directly in a Yocto build.
This avoids having to produce, test, distribute and maintain separate
SDK installer archives, which can get very large. There is only one
environment for the regular Yocto build and the SDK and less code
paths where things can go not according to plan. It=E2=80=99s easier to upd=
ate
the SDK: it simply means updating the Yocto layers with git fetch or
layer management tooling. The SDK extensibility is better than in the
second option: just run bitbake again to add more things to the
sysroot, or add layers if even more things are required."

... and then there are specifics about what commands you need to issue
to make it happen.

I still don't agree with all these 'application developers' who can't
be bothered to learn at least a little bit about how their work is
integrated into a complete system, but you can help them self-isolate
from that if they really insist.

Alex

