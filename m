Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web10.4132.1583244024210872571
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Mar 2020 06:00:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JDvsWv41;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id eb12so1664432qvb.10
        for <yocto@lists.yoctoproject.org>; Tue, 03 Mar 2020 06:00:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ht4kVmYs46OGaea5cHhY1SamqjiLTRc+5hxUeM6VMKQ=;
        b=JDvsWv41SM+nn6nrqk7NdobmdQYLaqCG987FLo0iFmcmN+D5eAb15oF1RMUQYF7DR0
         nCj1N2LtvMB0hzoH5FKPytZuW7AZMPqWEGRzq9/ycPb0PX6+lXkU1Alu36k5bTNIeecS
         ZDi7r9aSr6YPMDNiOBEDwek+Jyx6VKRtnSvhtQiDnmYqGzrYmoD8amfhkeuZpM2DGzKa
         dR6HXft3/3t6PSlumDzQaOks7EARn/Sgzc19wEMTJzbdTrvjjE2LBrzSrmNtHBZQ0qFG
         vouiFTKMh7iziKhvSeg+RuBiyd1K3c4jzFFmRnveMNnZmdLnjYG0eAN07vYiqzWvuiju
         gBww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ht4kVmYs46OGaea5cHhY1SamqjiLTRc+5hxUeM6VMKQ=;
        b=HQdCbsGYq9WBItyWjapPqxLP30pGVV5ySxY1IaxnP1O986TE6H0AbPQNXbNqccNush
         +HCBAXMInTApWgxKtQaH8UzYMGqKYhXaWq4/7vgvt9xsueFOLV3IfcGoGjTeEcAkz7bb
         JWRBbGXu/aEEJ1vxbx1R57KXe9Cn0UngnwwrlJEwxLTT1HD42M0/SK/jzXPANN9opVx1
         Qg5E09egBwzxO5WIJ7lUylZ+MAbFh8MGzmLKF2M8U1YFmYTqXZT0T4uHrOlSOS7a56Uz
         hBz4uV/v4yt/569k2qXw/3yN6X/E310KAoMrTm2xsQKv1YJwascm8bFZsIyAfohGFVw+
         48Wg==
X-Gm-Message-State: ANhLgQ2wkb1rF0kHTyqR4OHtMySp7htzsDm2Khcr6A4ZG70uOGSCDvLe
	9gx9yafXaBpHLAOcF1aY5nONtruBxW7XpUm71lg=
X-Google-Smtp-Source: ADFU+vu5+AInr6fpSOgyE2YTjvyxQVX/noGBBVQkdtVtY9GQOCOVKrZK9Fkn/8SQXLr68jer9/tARNQzaWQ8Vv+qtcE=
X-Received: by 2002:ad4:5349:: with SMTP id v9mr4120771qvs.177.1583244023050;
 Tue, 03 Mar 2020 06:00:23 -0800 (PST)
MIME-Version: 1.0
References: <CA+ABUwhXdEgn01xtYi9FK1ysp71CjF-_LqDXc-2GoEXm88gZVA@mail.gmail.com>
In-Reply-To: <CA+ABUwhXdEgn01xtYi9FK1ysp71CjF-_LqDXc-2GoEXm88gZVA@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Tue, 3 Mar 2020 15:00:11 +0100
Message-ID: <CAGAf8Lw5i=jZJzupWacMT_wtEt+UCLRqGxp4NDK1mMduwPaPig@mail.gmail.com>
Subject: Re: [yocto] Imx8m mini boot
To: =?UTF-8?Q?I=C3=B1igo_Vicente_Wali=C3=B1o?= <inigovicentewalino@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

What about issuing dmesg command after the boot?!

Zoran
_______

On Tue, Mar 3, 2020 at 1:56 PM I=C3=B1igo Vicente Wali=C3=B1o
<inigovicentewalino@gmail.com> wrote:
>
> Hi,
>
> Is there any way to see the traceability or registers by the command lin=
e of the secure boot on my imx8m mini board with u-boot?
>
> Thanks
> I=C3=B1igo
>=20
