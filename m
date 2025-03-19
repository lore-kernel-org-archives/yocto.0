Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2854C35FFA
	for <webhook@archiver.kernel.org>; Wed, 19 Mar 2025 11:02:30 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web11.5012.1742382149188905925
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Mar 2025 04:02:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DHBB5tqq;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6e1b11859a7so24028346d6.1
        for <yocto@lists.yoctoproject.org>; Wed, 19 Mar 2025 04:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742382148; x=1742986948; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OMWtFwSzCmuG8NLLGmYzWQwFBcL49PnhjAoBMAjSgvQ=;
        b=DHBB5tqq4YvtJNMMs4Zi4CuT0eBSZ9m4ujJncwf3kcorY17kCQRKLm9B6t7XFzaKs5
         Vu1riHKkmpNh2WL/h2b30GejphYYvmwQWP8Idq+mYkdcHXwRmACQrxqIPdTbyoU7s4SQ
         QR7xgH52/0RiahjrhApjLgAQG+XCxYCwqQdIYwSakBuETIiHosCAaG6scpy1j0thixLN
         Rl7Woz/meZM+Atut4csfMURSlGrBfglfbFaNf027xpOqdTNuy0NKA6f4JDTxak2yPiV0
         K+IxSJ2WuY45aEJBP0kRMwomAE1+j9rxkeRXbUy+ogrsSme7S3fIwwpeEyOR5+gEqEhO
         ws/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742382148; x=1742986948;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OMWtFwSzCmuG8NLLGmYzWQwFBcL49PnhjAoBMAjSgvQ=;
        b=Uv0dyyY9Qa1YeV5iSOMjydc2cH3IvYRlO2pNuW4iybZw49m/NijPoips+vWVAmMY9g
         3RhzdT/ZzVwtQbTM/hS7J4OsDXdf8CEI9RzWdAG0V5Mm5fSK7rBVJCb+ilOOHbfUAfMl
         zSbRZr2+Yn+WWCVqmx5NAzrTYIrpvdv5XTAgS/0Rcl8kJt+lStTwzwYZ/ReYf2epwiek
         rcbUQUQVps0dppunHgHUMEp9TzGBV/4RGQEMsULLZHQkKrq36SPsg0Lj0+oUSP3XK7RU
         uWbOjXQlDKvSedZgf9nWinTu125TwPsMmhnSQp6Kcz0pwfhCbUtirvUE8ID6KZoJV1s9
         n+oA==
X-Gm-Message-State: AOJu0YxW1w+uwgVeZjgeId+OdxQ5n1BWfcy8Jf61c35bEePvSusQ2YTI
	snJrp8goDdKBwL/XW3eWWW38X8RZ7oWLqrRYFITZalT8DiRSzXlyesmtEfYRjYOv790Xy6V8c0p
	3xLX3uPiZMXONoeCueREKkUSd8mclBw==
X-Gm-Gg: ASbGncsyXSoZHwwynGLSR7SRvJYgEeaFoFxX9Kd1MphPXkbwtt1xXU6zBLEq/Uf/mkW
	Ho2PaYKEH8apuN331He9cK1sgFuyk3CVqRWGvRVdZgdoQfi8Q5xUAJVrHNJo42GoQxd8wPZkI24
	JuebBQobKPMxANoKlAEmqrYtn1DEqj71YnZhveSn/gsUPt8rcIiUdXgGX48/uDAOgFCXvRHeo=
X-Google-Smtp-Source: AGHT+IH7IAN8WcSiZz9GX1Z1OiN6rYGtkYtBXHjjitejr689lI5SKlVPpvB1GAOzjLcSajh8jp/IqNT+qrnf4HTBmCM=
X-Received: by 2002:a05:6214:2425:b0:6e8:9e9c:d212 with SMTP id
 6a1803df08f44-6eb28f694a4mr38613346d6.0.1742382148013; Wed, 19 Mar 2025
 04:02:28 -0700 (PDT)
MIME-Version: 1.0
References: <NdU8.1742380849995763023.L2UF@lists.yoctoproject.org>
In-Reply-To: <NdU8.1742380849995763023.L2UF@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 19 Mar 2025 12:02:17 +0100
X-Gm-Features: AQ5f1Jq8fFO9k0Fq-bGOVhbzPuWvV-GWBo2JfKU42WFOK6a3yr8fA8ptM9eEE9w
Message-ID: <CANNYZj9ezHHK2gfc3k9twdtS-X7tPpNr_orb2+HOEzEnaxdpfQ@mail.gmail.com>
Subject: Re: [yocto] How to build a yocto image with two different python3
 versions ? #python #scarthgap #sdk #toolchain #yocto
To: yocto@lists.yoctoproject.org, 283982@ust.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Mar 2025 11:02:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64981

On Wed, 19 Mar 2025 at 11:40, 283982 via lists.yoctoproject.org
<283982=3Dust.com@lists.yoctoproject.org> wrote:
>
> I am new to building images using Yocto and am currently working with the=
 STM32MPU157F, which is shipped with OpenSTLinux as the default operating s=
ystem. The default image that comes with OpenSTLinux includes Python versio=
n 3.12.4, but for my project, I need to have Python version 3.11.5 availabl=
e on the same image. I=E2=80=99m looking for guidance on how to modify the =
Yocto build process to include Python 3.11.5 alongside the default Python 3=
.12.4, ensuring that both versions coexist in the same image without confli=
cts.

The quick answer is, you can't. You need to fix the code to work with
python 3.12. What is requiring 3.11 specifically?

Alex

