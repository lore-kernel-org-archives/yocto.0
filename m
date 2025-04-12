Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17F8FC369A1
	for <webhook@archiver.kernel.org>; Sat, 12 Apr 2025 07:07:06 +0000 (UTC)
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
 by mx.groups.io with SMTP id smtpd.web11.6086.1744441621094242449
 for <yocto@lists.yoctoproject.org>;
 Sat, 12 Apr 2025 00:07:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ePNSQ4w4;
 spf=pass (domain: gmail.com, ip: 209.85.161.52, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-6042c04fd18so1355817eaf.2
        for <yocto@lists.yoctoproject.org>; Sat, 12 Apr 2025 00:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744441620; x=1745046420; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f+vwlD24L+xT4XcCUt/GPN4KwpBAyd5ZqqhaHcHRl6k=;
        b=ePNSQ4w4cPffb3EFAQQwRNpweDhHqsaVaubDtGOu3pAmeMZQRBcN8xW50DN/1CfdpO
         ZkGOdAFRy2oG2otElVnVYDUQvBkAJRTc0GYJ3TcMU8btvqVRpkWrgrPJ/BdPfYNcyTpg
         TgJ8xhxP5Bdq+jGfi6cE3dWFmKbGKNNiTLqSEpSG6uTPibpGsft0j/PC4R/rSOd3bnuS
         t0oWec+ogAJaZ4Ga+sb6JlRi6gKUgd6K0o2JW258WrUO+gX34S43Y1KKVJfWForH9lQf
         M9Vfpro7vmdpXLUSG6qKIvoZHrrDaKX482X/c1TIZlxQNmIO1pZQ//ZFSOW8mSUL5EEX
         tEdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744441620; x=1745046420;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f+vwlD24L+xT4XcCUt/GPN4KwpBAyd5ZqqhaHcHRl6k=;
        b=lvJHg9bdWCsknPBR82rX7w7vOdooVN8UxR/fZthML3tZu7jLbeY6o7rNN8QZV2m98S
         uWQ39r4VvzwO2K74+YMZmqK370C03n2vv3Sr2KpjJWLSdIwSpR6/bJSlB9fbdbeJM8Jg
         UFYREJqwN7zBVvbDjqnH/WtX7gKeI275/N5e5Z5nLs5oIsWWZ2cBPNbbw1K/ofoXy8ue
         EiQ9qiVA9h4+9AhgLP6HZfyfxucqpurVTF119ixQVWXWfub3yVRSmEEjnkw73+mi4AhA
         dVvUg6rBLzP1nhPVxlez7BRVE4TEL+8pFxxIpi0DvoKw0WVmUkJN/QUWED+yi4C3xuBQ
         ZplQ==
X-Gm-Message-State: AOJu0YxZDqUkN1cdWsQfQdQA13UXjaqvT96QAnwZnHptVV1HPCavsauk
	nNWZ2cDZPWjdjjo+Apvwa7/USc4Or/g+UYA+UxnxfN2f9V4QdUW+coY+E9TYXAbYC1gH9hzVXbH
	uKCnJLk6MWAkMS6l9vqJIXp5U8PWVQnXg
X-Gm-Gg: ASbGnctWaLIzDshvioOFJfXjCWO4Lxdkj3e6hsuju2PvZKw20OmlXwR2/MqS2vWfGxH
	voOjqdX36zqod5vdZdL9uNlQbT7rWeTcgBdgU7jvV7WG2GXoMv/Hbk5Wp7siujXPmpQBN/AWUIa
	urTDJRcXbgBtSDTa+yIvBzEw==
X-Google-Smtp-Source: AGHT+IE6+KoC48u035KgqBCKUTEy6TrtEyPhis42RjnN+bRgbNrFlgV5Y/Sk276Ur7pPEFbehW7Sk5BPyB8Hb1/ct/E=
X-Received: by 2002:a4a:c183:0:b0:604:710a:1955 with SMTP id
 006d021491bc7-604710a196bmr1865986eaf.0.1744441619778; Sat, 12 Apr 2025
 00:06:59 -0700 (PDT)
MIME-Version: 1.0
References: <20250412055805.3647089-1-jan.vermaete@gmail.com>
In-Reply-To: <20250412055805.3647089-1-jan.vermaete@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 12 Apr 2025 00:06:33 -0700
X-Gm-Features: ATxdqUGhAAYOkCdDebo7LSMO-EcVBqvhPk9rl0sfVyeO6hFEqQ58EeNYijGSDCI
Message-ID: <CAMKF1spG9PK5d44cfwfzk+71edj87mqPCZMSOjSceJCp5ZMLXg@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi][PATCH] doc: added raspberrypi5 to the
 list of supported machines
To: yocto@lists.yoctoproject.org, jan.vermaete@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 12 Apr 2025 07:07:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65151

On Fri, Apr 11, 2025 at 10:58=E2=80=AFPM Jan Vermaete via
lists.yoctoproject.org <jan.vermaete=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> Signed-off-by: Jan Vermaete <jan.vermaete@gmail.com>
> ---
>  docs/layer-contents.md | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/docs/layer-contents.md b/docs/layer-contents.md
> index 3882339..78d66e3 100644
> --- a/docs/layer-contents.md
> +++ b/docs/layer-contents.md
> @@ -11,6 +11,7 @@
>  * raspberrypi3-64 (64 bit kernel & userspace)
>  * raspberrypi4
>  * raspberrypi4-64 (64 bit kernel & userspace)
> +* raspberrypi5
>  * raspberrypi-cm (dummy alias for raspberrypi)
>  * raspberrypi-cm3
>

Looks ok. You should create a PR on github

> --
> 2.39.5
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#65148): https://lists.yoctoproject.org/g/yocto/messag=
e/65148
> Mute This Topic: https://lists.yoctoproject.org/mt/112223350/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

