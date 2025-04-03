Return-Path: <alex.kiernan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0186EC3601A
	for <webhook@archiver.kernel.org>; Thu,  3 Apr 2025 14:25:32 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web11.14626.1743690324757327631
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Apr 2025 07:25:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=StK6L+bT;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: alex.kiernan@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-549b159c84cso1160228e87.3
        for <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 07:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743690322; x=1744295122; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8o0ZBIpyBYcr3zve8IAeA0eQNQnencu/bDIIrCHBXbs=;
        b=StK6L+bT6rVk3XzHQxbgvvag2lI01lEjB/snFVy/Hp19nf3GzIckqLEHroMz6tzjs3
         kwdgDKYV2jJeGeCaq/+AmS5owmPiqJt3fhLe5NV9cMLLb+WaWwVf2ahUH8v7BNQI/T89
         VUsS8p3+RrmnjfbYw6b2U5daD4SX9w2JMECDIczw1+mlu6BQ/UtZKRlddZX+6zQ2+JxV
         1aNrcKzy/cjtITrc8O2qYs4WNeKpQPATt1FdTCq0gAnGtr0GT6OtXYHR9NK1wTMP9T1Y
         o1yAcSZqxqgZzuwJRZ0q0vCTk00s/WJadh6JG78hQVqAsmf1BeSg3UrFiiV0V79Qq7rH
         426w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743690322; x=1744295122;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8o0ZBIpyBYcr3zve8IAeA0eQNQnencu/bDIIrCHBXbs=;
        b=XFHrWxs+iJF0wDL477ZfcOki2Sz8IDK49tJBp19UQrNdul52JJOxsZuR4oI8GTbOaH
         QNlRx6uwfgApX4xnXN4iYnar0COXGw/Ct10k5USHGKd4LAQ9jkxi09WlE/aaLSugtJ/Y
         SZ6TyXWhwR/9TiDrf+M5GFei/VwBdcyCu5hC7Tstf6Zx5dzX/q7UBC9wPAm1CT3DW1hZ
         8re1yXYW1fCtdcV13+n0CopQBHjk+DFfS7JYW/e4mjDZoIl57Wgc1h/GlvbUoxLUQ5wk
         gXEW8KyIGZCdw/UYkNy5ScyeS56STRv3c6vkQN6KAmsS7eQxojLNVev9jGTgG7Ej5WPp
         7dLg==
X-Gm-Message-State: AOJu0YyE9KNIH61W+CWTojyhdy+PQip0t33ZueWZjirh9QuOypQXVtkM
	hcGP3KXsuDQ+AzaNP3fwDpBW5jpGW+BZfH4F3LqSaSpGWePgxS+hNYqqUkWi83WNlo1bhIluBzn
	QEzjEA1Ft334rqDfEL/zJot5W7jgLzS/tDM8=
X-Gm-Gg: ASbGnct79/AV3fBrbF/WMB3FiozwU3b45PMG61ILtajdOShb29tYjGcbbrqeGSVfM/z
	Ym5PwTSORL3YnHLEv1fYuZGIm4yPU5h1psVomljFzfnzDT81CqqVT85IVA/7VxHN7sOC+9nZ2iy
	X7dH1GlQKa9SomCKiVoIjQDxjuSAHrrABKH73eZxdPoM+8WGdYgG2+isg6I/QOz3F6
X-Google-Smtp-Source: AGHT+IGv/aaBRjfNsnqey1kAev2lj8E2XS2P+J3yl91dVLcaWaRtANpQqQb0mTJXXr0L4gm5oGjS69if+yKslHRerJ4=
X-Received: by 2002:a05:6512:3d23:b0:545:56c:36c7 with SMTP id
 2adb3069b0e04-54c1d8dbf5fmr1209515e87.41.1743690322257; Thu, 03 Apr 2025
 07:25:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1srf5Q0vvmr1e3RSKRDNu_3TD+jJL4Sb-DvyGTUDxE0KpA@mail.gmail.com>
 <19208.1743571877535931497@lists.yoctoproject.org>
In-Reply-To: <19208.1743571877535931497@lists.yoctoproject.org>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Thu, 3 Apr 2025 15:25:11 +0100
X-Gm-Features: AQ5f1JqSAHMCd9-Ersxr5B_Ox4lfNUCAiMA_OjLp6lAkh9AMBpP8p8rQ61Q2VKE
Message-ID: <CAO5Uq5QXPTqx3CEpRniX37Ymwp_QS+G46EWMNsYVPfMoHnMN2w@mail.gmail.com>
Subject: Re: [yocto] Replace Bash with Busybox
To: yocto@lists.yoctoproject.org, sateesh0457@gmail.com
Cc: Khem Raj <raj.khem@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 14:25:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65085

On Wed, Apr 2, 2025 at 6:31=E2=80=AFAM sateesh m via lists.yoctoproject.org
<sateesh0457=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> If I keep these lines in layer.conf instead of local.conf, will it work? =
I added the following lines to the layer.conf file:
>
> IMAGE_INSTALL +=3D "busybox"
> VIRTUAL-RUNTIME_shell =3D "busybox"
> IMAGE_INSTALL_remove =3D "bash"
> BAD_RECOMMENDATIONS +=3D "bash"
>
> However, when I run the command bitbake -g my-image && cat pn-buildlist |=
 grep bash,
>
> Bash is still present.
>
> My actual requirement I need to upgrade busybox replace bash with busybox=
 and remove bash.
>

Add

PACKAGE_EXCLUDE =3D "bash"

to your local.conf. Your image build will fail, from where you can
start working out who is pulling bash in.

--=20
Alex Kiernan

