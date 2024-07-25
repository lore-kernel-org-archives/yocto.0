Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4AA86C3DA5D
	for <webhook@archiver.kernel.org>; Thu, 25 Jul 2024 09:35:36 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web11.32475.1721900134342295299
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jul 2024 02:35:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KSpcgiRX;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4266f3e0df8so4868445e9.2
        for <yocto@lists.yoctoproject.org>; Thu, 25 Jul 2024 02:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1721900133; x=1722504933; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:date:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=y7xWJf3Y5wvStVrnrF4ssh2tv0XOpKa5B4GjvU+hEgE=;
        b=KSpcgiRXDSzxINPXIi5LSl8+x7iBZN1ZEi8aV9CGKcYJMwbuHY7ai+yRJrW61M40LN
         FLq0Xn8AbhQDZfoMCSe9Vp/HNZnEiz4lBRm7ZUv8nupxrNgc9KBNjfI7A6JgS85YvqRm
         OMU6fqqs7qHZSolDFWTKhqDlavNPK/PALaGAY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721900133; x=1722504933;
        h=mime-version:user-agent:content-transfer-encoding:date:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y7xWJf3Y5wvStVrnrF4ssh2tv0XOpKa5B4GjvU+hEgE=;
        b=hmxwsjarHPyXS/AuzV7UszwlSDAKhZ01Ue6gj3UKO6rWwzrkJttxMt6u1z7Bw5EqW0
         cwLw9Sj/y0Lai/ByZ79AiFBjBp+US7Y660mqt+MytcYPD9xkY6ck6/lWXn9KeM1XfbPg
         uL5y92TqpjEBz+eRUFZR66HkU96vR5lCCgNv06jP/5wVfRGCv5HSb72c3FqbORzbqmSS
         YihQu+J5V/2YrVeuwpxBmFcRbGAQT+kg9NLqOkn4Dvq8OWvuVMM7FkPm+ym5rBVERaAl
         AUc2OnPn38rI0A7/7D09z1Y/EF5A0jigOsovpJr+sgnuL+1TBFU+Fi+i2w9E53Gh9sUs
         sHYg==
X-Forwarded-Encrypted: i=1; AJvYcCXs0XrhQWNt4fb4BR0d6P9TQthdrkd4dGJgppte5Rn7K0TxwKVNs+3eN8yNixgo58O/g9eJaWoBxtdccf6oYwVLhC8nRvG4Bo+oFtSQ
X-Gm-Message-State: AOJu0Yx+Dk4BofZh3ezvQ17mKyBBUW3AVoGKg1hl7u/DOK53fflwdci/
	zmP4xhdj5pS9pjNERzol5cjb/95EvUfG2P17wVrXUP33sC1AD1zUFW+udvlUs1Q=
X-Google-Smtp-Source: AGHT+IExY0uJ+S8bAJgwsj/yseeuXGpFWV1CxLeYhPqRSdA4pikntXWs3En3rs/kF/lsIZ8wqNxFRQ==
X-Received: by 2002:a5d:4a51:0:b0:368:7427:5205 with SMTP id ffacd0b85a97d-36b31af94ecmr1308248f8f.32.1721900132694;
        Thu, 25 Jul 2024 02:35:32 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:267:c2d:5abd:7ee6? ([2001:8b0:aba:5f3c:267:c2d:5abd:7ee6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427f9397285sm63792115e9.27.2024.07.25.02.35.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jul 2024 02:35:32 -0700 (PDT)
Message-ID: <9882c3d9da920df6d645fd4aceaa9d732bc63424.camel@linuxfoundation.org>
Subject: Tuesday Tech Call - 30 mins on our autobuilder infrastructure -
 30th July
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Stephen K Jolley (via Google Docs)" <sjolley.yp.pm@gmail.com>, 
 "neal.caidin" <neal.caidin@linuxfoundation.org>,
 "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Date: Thu, 25 Jul 2024 10:35:31 +0100
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.0-1build2 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jul 2024 09:35:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63569

The project has been asked some questions about our testing
infrastructure, how it is setup, what it does, how we configure it, why
and so on.

I think these are good questions and ones that a wider audience could
be interested in hearing discussed so I'm proposing we use half of the
next Tuesday tech call to talk a bit about the autobuilder and try and
answer some of the questions. This won't be a formal presentation,
there might be some graphics just to make things easier to picture.

We all know I'm overloaded but sadly when it comes to the autobuilder,
I'm probably the person who knows a chunk of this topic well enough to
talk about it. I do worry that as soon as I agree to this, it will
escalate into people wanting slides, recordings, new chapters in the
testing manual and so on. They're all wonderful ideas, I just don't
have the time/energy to do more than I'm doing to keep the project
running day to day. If anyone wants to listen and then document things,
that would be very helpful and welcome.

I started to write down a description of the things we should cover and
realised it could take a lot longer than 30 mins. I'm thinking we may
have a second session in the meeting the week after, assuming people
find it useful and we have more to cover.

Please pass the message around to any colleagues who may be interested
too.

Cheers,

Richard



