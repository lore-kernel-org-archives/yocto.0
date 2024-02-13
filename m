Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36C21C48BC1
	for <webhook@archiver.kernel.org>; Tue, 13 Feb 2024 14:05:35 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web10.12024.1707833131158509878
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Feb 2024 06:05:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=exWn25ui;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5114b2b3b73so5006474e87.0
        for <yocto@lists.yoctoproject.org>; Tue, 13 Feb 2024 06:05:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707833129; x=1708437929; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TU9QnFWD8fhxxrihDxmvUsNnMbkco9+vgYCYgeEPSmo=;
        b=exWn25uiT6tkPIToucA9WuGVHdKYoN/2w+ei6hbCeVpj5UrlNJtG1cs8MKMw02ylkK
         uGEKn6B3GHxs3WNbh5p4XNeB7Wbwa4x2kwbw+i48bB9mTao0cB2MLgpoQzAM79UtYMvZ
         GuqA1UhpHj+/vOZ5Kz4raRks5McyfXCpU38WDWnr2lqH0Ni+KAUAw4DCEUucyYWMcEyF
         IALicpzLaeZ5lVAkrUQ4izxKAlxPa+GvNzNk04X4/cF+GuRlxANDsbQMS4oeSeKL5MX4
         1T9kM8PLLGHwsnF4wtWj2GJikzi+uMHSbQVdcEDqV3XQDZS8oV+2VuS4NRuUVx0skjyl
         Jn7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707833129; x=1708437929;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TU9QnFWD8fhxxrihDxmvUsNnMbkco9+vgYCYgeEPSmo=;
        b=q4EroO9yk9zTVResqb1p7k/0w0PMRi+JO5oSnRulZ4ra34mSOdttmQPaFNcbHXL2eU
         4G8lA6XduZC8Oa0Z0U/jec1CF3/iqa4bPAyC5EPusEsJwdstAPggQISuDYz/5pFSubjE
         P+CTEl+uZH1doe9hRsvRfUNTLAYltjcl0GfVvS/ZfQvq2cajp6WNdt3EyGbhp8D0U5vy
         It+jo9dbuKIY5qksZFc7JTXb50Cmnp1SKGqsghRQ1tZp5O6n0YgQVIFANnWcl9cg1jUn
         x9L6s7Aow9s3MyLAzOoIiFLG7rL8IiFRZzZCS1i7fZUF8eTIEzPnU4JJwAEp//jzOjXB
         aPxA==
X-Forwarded-Encrypted: i=1; AJvYcCUSSEmYq9ZN+cF2fXGEUuNpUbwy4qVa18mJxY/xPPx7HnEH3P18pES0p6S4dYrcwOwzXIhTGYEwjiSu+cy2usHW9aKoZ6XNea/ZFF4L
X-Gm-Message-State: AOJu0Yxjrvzq1PszePEZj7B46AnvLw+oX6yenTs1sJ8YQqr4aJkDc410
	9erxG2i3lOpznwxZkRSxC5UhHhGDUqc4yTx+T+Dmce01/rwouf2a64YAaUv3uKSpa+cFb/TWcJL
	SjvQiU7Z71te8hbMGKF99k0fyfRs=
X-Google-Smtp-Source: AGHT+IG21yPxcm3hkvEhWDsBSwk+IQZAA+VwhwHq/Lwi/0CJ+/t2T3L9qkyotBP9ueNR/QYA08HGMOIgke1pg57e2wE=
X-Received: by 2002:a05:6512:138a:b0:511:8cb1:7c9d with SMTP id
 fc10-20020a056512138a00b005118cb17c9dmr5897156lfb.24.1707833129259; Tue, 13
 Feb 2024 06:05:29 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb9gO+WOJrv4TArzXK_1Bxu5AORp2oi=P-v=2nn6PgJE5Q@mail.gmail.com>
 <CANNYZj9QpstUj_A8Vb2RbiaFGZkHkFjHkUfF=E1HR-nDJ_Vk6w@mail.gmail.com>
 <17ACA59E7A7FD97B.16230@lists.openembedded.org> <CANNYZj9X5qRSup7i9S=rtRpwo5nCNHp8VJOZAuvu5JzqhLYD_g@mail.gmail.com>
 <f1c9d0f8cbf8ea1972aafac0c29690ca400178d7.camel@linuxfoundation.org>
 <CANNYZj8tyOy=z3L=uM9L_R8uP6eZSUkYXm9BwvsU+ERpE9QcZw@mail.gmail.com>
 <018185898b86e2fccabf68570a6aec6039a0c6d6.camel@linuxfoundation.org>
 <CANNYZj_UMqZe+hDs2RzOPaLZzRmyg=8X74+HCwytN5616jZgNg@mail.gmail.com> <e26e53be93a4f34b75e3e66becbaa4c6ac15133d.camel@linuxfoundation.org>
In-Reply-To: <e26e53be93a4f34b75e3e66becbaa4c6ac15133d.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 13 Feb 2024 15:05:17 +0100
Message-ID: <CANNYZj_GFnmvmYRNGBFkivTNY7Xi-Ok3GoDEJ7+wO3A=fW3JQg@mail.gmail.com>
Subject: Re: [OE-core] Core workflow: sstate for all, bblock/bbunlock, tools
 for why is sstate not being reused?
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Joshua Watt <jpewhacker@gmail.com>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Feb 2024 14:05:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62479

On Tue, 13 Feb 2024 at 14:44, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> In theory you can start a local hash server and then report all the
> hashes to it?

Yes, but I'd like to replicate what bitbake does: check configuration,
start the local server if needed, and only then do the mass-import
from the file.

Alex

