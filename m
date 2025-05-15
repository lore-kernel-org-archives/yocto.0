Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13A89C2D0CD
	for <webhook@archiver.kernel.org>; Thu, 15 May 2025 14:06:55 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web10.13698.1747318010406420053
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 May 2025 07:06:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=brlINXe9;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3a0b9625662so874552f8f.3
        for <yocto@lists.yoctoproject.org>; Thu, 15 May 2025 07:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1747318008; x=1747922808; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WL0cSVADpldnnMpGPEaawDLGuHxnQIfZQBCF/alr2FQ=;
        b=brlINXe99BoR6j4ZDmGBTw7CBJlh2jWYKjfr6IojraFpN9lHPznd27FfzdZsJsgVnl
         rVBUakx8IkaQyvu3Qj95OXMgILTCGkgUnvyN7Q1FpXvav9J++RdnkOpCTta6l971t5DL
         eopFTtup1UJ8LPjRz15XKlu5B5yJtG1wUBmeQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747318008; x=1747922808;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WL0cSVADpldnnMpGPEaawDLGuHxnQIfZQBCF/alr2FQ=;
        b=DsvhWlYDjwxzon92CWh1vqHIFU7QpMMiL39i9EwxJvQIEoPBvHiVdnqvG2Qb6NW5DX
         AbMJMv7StMlJoh+VYJwdUrbYznn8x1kik/DKYbqBSQsN23mF7Rp6T1El8ksCtb3AGp1m
         3fWByrtRDrzrz4MpWBvzjfaBw/DBjGjA4LNqqdriwf161GgcVeeMGZEg4yRW8KF6cso/
         foey/YUsIhRQWuAxd8fghQG235uXsuojgLyQyNrJMny4O9btxZZNbyLjP2FZy6K7LWYb
         X8UQQBw0me/zgK0V6v9OccG5rFRqzBnOLoA7MmeQMHnJSrYw+Sa4aKoHZBAwNYYLC7gH
         Ta1A==
X-Gm-Message-State: AOJu0YxQW2fYSM9OKu76KbKOXygPT+BU3igcBLkrWDDDeNptOQUAAowN
	fKeK2nRdIXFKV10sNjg723SQ2lJbeKxVaUBodARMs24o90O8PWKICnE8iOHDghWlqfbqFuQ2b/P
	L
X-Gm-Gg: ASbGncvVydmylsqJjkBRtKmUp0oNvm3zA4BSwUHTg7gVHgZfEd1ziDSVQLxrpf/cFNY
	Nd5SHyIFhHddYzPHV87DpKDfHLlYdGOaThEmePm1oKbCgopebMCj5y4Vxo9bN/WI6lxxp9TQ3NN
	UzM4nnrsTa0RSv70YON62WIkcdAE0Rk8ucMWHPhroSVlT9tW41tpQGEFbiHEruem8PmpEvtiUF0
	dMyBGGWw9b/mCzYctWmAIflXA+Ktg9KKPVg9rpjxy3qouw4SymloD4zAXu8Xr9+YGnBsn8XCci/
	862qkxRVQk8QaQymj7QbXE8YMZPDfjbjG9ZdlmkV9flwAgbyDPbAntgNx8Nn2LwFcB6xVrnlQZd
	YR092rR2gShggcBxbY+AZ2PsiA2DaozQfMnMhlQ==
X-Google-Smtp-Source: AGHT+IGWgCVhyl6pWhef2NPc1oR+yMiXKChIibx1X3n8A59tK/MwOVgGVxvKFSuvWkjt7a26/RzNcA==
X-Received: by 2002:a5d:5f90:0:b0:39f:fd4:aec7 with SMTP id ffacd0b85a97d-3a34969a09dmr6743084f8f.7.1747318007884;
        Thu, 15 May 2025 07:06:47 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:7c21:701d:240:45b5? ([2001:8b0:aba:5f3c:7c21:701d:240:45b5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f579aa5bsm22678134f8f.0.2025.05.15.07.06.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 May 2025 07:06:47 -0700 (PDT)
Message-ID: <38f148f040a26552f42d436a77731267cc58fe0c.camel@linuxfoundation.org>
Subject: Re: [yocto] meta-mingw - how to use the SDK on Windows
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, david.daniel@vrag.ch
Date: Thu, 15 May 2025 15:06:45 +0100
In-Reply-To: <b1c78474edf596f1cfccab131218ab653de794ce.camel@vrag.ch>
References: <183DCFFB81DE0E31.22015@lists.yoctoproject.org>
				 <313eaa317c8b09936c20623afaa8087f0bb97c3a.camel@vrag.ch>
			 <CAJdd5Gb0=dN0_63sAWUTOLD+Zw5BT6Crzjq2DJfJLQztWG9-KA@mail.gmail.com>
		 <183EB64B80205975.2891@lists.yoctoproject.org>
	 <b1c78474edf596f1cfccab131218ab653de794ce.camel@vrag.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 May 2025 14:06:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65346

On Thu, 2025-05-15 at 13:36 +0000, David Daniel via lists.yoctoproject.org =
wrote:
> Hi there and sorry for spamming - I am still completely puzzled and
> still spending loads of hours trying to the the Windows SDK to work.
>=20
> Simple question - please - Is the meta-mingw, yocto generated SDK for
> Windows supposed to work? Or is it just a place for testing /
> evaluation? I see the last change took place more or less 2 weeks ago,
> so it seems it's still maintained.
>=20
> Is there anybody out there who got the Windows SDK to work? Or do you
> recommend not trying to use it altogether?=20

It gets built and tested on our autobuilder and there are automated
tests that run under wine:

https://autobuilder.yoctoproject.org/valkyrie/#/builders/7

It has been used in the past by people and we assume the automated
tests mean it should work but personally, I don't use it.

Cheers,

Richard

