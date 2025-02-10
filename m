Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C2BC02198
	for <webhook@archiver.kernel.org>; Mon, 10 Feb 2025 17:59:41 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web11.58734.1739210377239137072
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Feb 2025 09:59:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=eHk6vGH0;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4364a37a1d7so46714715e9.3
        for <yocto@lists.yoctoproject.org>; Mon, 10 Feb 2025 09:59:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1739210375; x=1739815175; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=72fDjsHMjLGQK7456B5F7Qxwp/rkgkjR6DmY3oQn6VI=;
        b=eHk6vGH0kMom7qU4ovvxzDs+2hU6QoP/NOc7XK632FQUvmbon0Ga6039r/9zET96+V
         exG4kZeMNASuOdvuBwR6ZbIeO0UEOCAgVJF9wVS9Oge+ubEvVfEngASIaaWiBIVGLpgL
         HnnQGcFOykpnIe9WmGC+CIrN/bKikdBImwzOc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739210375; x=1739815175;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=72fDjsHMjLGQK7456B5F7Qxwp/rkgkjR6DmY3oQn6VI=;
        b=bRpgdNIQ2R1opvuaNixSxlblyKnhlp1lBurxyUupIkIMb6sSjMcWARW9P9RpAHgCRr
         qCXvKv+26zpmGSYW9+NiZBDuYEz7L8Gy86NF3CbCOkoeY2iFlqgtyERnT8mrHx9VpI96
         VupGd+LLvcQ4/lWw6mW3i06D0/tSbplr5J5ORw0PSlkwW/ElM1L1mdIG5aWuzfnG/BSX
         W9PlSuKzdyxzzd7wrjeSb5MsFE/XPdNMf/jIoNm4dPUPTvmSXNw2BoCPcc8IIZfr6hHR
         wNmVuN/2jxU8f3sGAaSPtBA1Kmj8KcIylgfStUairsjkJVlQkXeEClp+qmvUMaEpM0rF
         lF+g==
X-Gm-Message-State: AOJu0YwpsMnf0d9J/yf/IsJfFcuEproLbdnefAtxr7ofGOMZlKYydKzg
	f+HVRQTGyV+nWMwZcQo9jRk9k0T2uXlB4KQtkQC0mgtR3UcVAt7Fa+Vel2X1MhAfnMHmp7tmxUg
	t
X-Gm-Gg: ASbGncuGFry2ocPYmql+nkKTqeQUVqsamExd+o8WJkKHti952m/wHLjO8pJ+6AETjrP
	zVPE4YrQzeg/vcbnpNYj9/Ttnbfu/0KMcbs2p3SP2yCcO25hbkxJPqgVAafJ5zCN6FXhV9VQfLu
	TMeiVzPVbRoBmtBj5HyqsG6xRlUu9CP4qUqu72SOyiGXXUe35EA8xC1CtMbOpe/biOv78CgLY34
	7gEuSV2Xv0wr9H8WmCdbL7g8oIWVccSLggLw5T2X1M5ta25g1IDZyZJ+yexRvvPPyXlsB0sU0m/
	LFtNQO7Ys0JYgyF7nIA/6wPHHqE8iNrfnvG2vWcaIYKO0dNShJc6LCUfH20qU3e78Rg9r+ny/gI
	r4A==
X-Google-Smtp-Source: AGHT+IHygZ9T8v1EdYZ4b9fHSoljp2w5WS6Ds5iBf0SEiFGKwIj279Sdfq1/g7I28gO2JXTBY2wwbw==
X-Received: by 2002:a05:600c:3552:b0:438:a1f5:3e38 with SMTP id 5b1f17b1804b1-439249c75c3mr139351085e9.30.1739210375273;
        Mon, 10 Feb 2025 09:59:35 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:d33a:26d6:1846:991? ([2001:8b0:aba:5f3c:d33a:26d6:1846:991])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dcd0fac67sm9830499f8f.54.2025.02.10.09.59.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 09:59:34 -0800 (PST)
Message-ID: <183f59485c3278d8b0b04fc8ee1b0fec69b36241.camel@linuxfoundation.org>
Subject: Re: [yocto] [psplash][PATCH] psplash.c: fix crash from length
 becoming negative
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, cmoore@hanoverdisplays.com
Date: Mon, 10 Feb 2025 17:59:33 +0000
In-Reply-To: <425c68c49ab93d982c494417ce6573f7dd330c36.camel@hanoverdisplays.com>
References: 
	<425c68c49ab93d982c494417ce6573f7dd330c36.camel@hanoverdisplays.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Feb 2025 17:59:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64755

On Mon, 2025-02-10 at 08:53 +0000, Chris Moore via lists.yoctoproject.org w=
rote:
> From: Chris Moore <cmoore@hanoverdisplays.com>
> Date: Fri, 7 Feb 2025 15:21:02 +0000
> Subject: [psplash][PATCH] psplash.c: fix crash from length becoming
> negative
>=20
> Fixes [Yocto #14806]
>=20
> If there is an error in read(), it returns -1 but this is just added to
> length without checking first. This can lead to a runaway negative
> value
> for length which eventually crashes when memchr() is called with the
> negative value.
>=20
> The fix is to check the return from read() first and handle the error
> state.
>=20
> Signed-off-by: Chris Moore <cmoore@hanoverdisplays.com>
> ---
> =C2=A0psplash.c | 6 ++++--
> =C2=A01 file changed, 4 insertions(+), 2 deletions(-)
>=20
> diff --git a/psplash.c b/psplash.c
> index ee1af6b..0db0aa4 100644
> --- a/psplash.c
> +++ b/psplash.c
> @@ -140,6 +140,7 @@ psplash_main (PSplashFB *fb, int pipe_fd, int
> timeout)
> =C2=A0{
> =C2=A0=C2=A0 int=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 err;
> =C2=A0=C2=A0 ssize_t=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 length =3D=
 0;
> +=C2=A0 ssize_t=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D 0;
> =C2=A0=C2=A0 fd_set=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 descr=
iptors;
> =C2=A0=C2=A0 struct timeval tv;
> =C2=A0=C2=A0 char=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *=
end;
> @@ -170,15 +171,16 @@ psplash_main (PSplashFB *fb, int pipe_fd, int
> timeout)
> =C2=A0	=C2=A0 return;
> =C2=A0	}
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=20
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 length +=3D read (pipe_fd, end, sizeof(co=
mmand) - (end -
> command));
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D read (pipe_fd, end, sizeof(comman=
d) - (end - command));
> =C2=A0
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (length =3D=3D 0)=20
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ret <=3D 0)=20
> =C2=A0	{
> =C2=A0	=C2=A0 /* Reopen to see if there's anything more for us */
> =C2=A0	=C2=A0 close(pipe_fd);
> =C2=A0	=C2=A0 pipe_fd =3D open(PSPLASH_FIFO,O_RDONLY|O_NONBLOCK);
> =C2=A0	=C2=A0 goto out;
> =C2=A0	}
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 length +=3D ret;
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd =3D command;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 do {

The patch came through as line wrapped but I've managed to get it to
apply, thanks for the fix.

Cheers,

Richard

