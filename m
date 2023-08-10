Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 206F8C04A94
	for <webhook@archiver.kernel.org>; Thu, 10 Aug 2023 08:35:35 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web11.12871.1691656534018585284
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Aug 2023 01:35:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=lDFDFL18;
 spf=pass (domain: gmail.com, ip: 209.85.167.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-4fe55d70973so761965e87.0
        for <yocto@lists.yoctoproject.org>; Thu, 10 Aug 2023 01:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691656532; x=1692261332;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=c1IZHmKlWNkutp/wnK5kVD5DTSOxGLGgkOTz6tAhNW0=;
        b=lDFDFL183haiQvmZQsSRRxxEH1iYVnWCfiuEIKnIy+8ide8FDcY9780CPhgE7Hnmcn
         +Ym9/pqsLw1kuHmLin8pkY82j0IEt/i4/f+/+tU2j2Vq0+rjZu1qUfIGT+jVHGJf2+4h
         /GPYLRgEovCTnamfg2UCauPOelvc2C9Hum1kZQwNeSS8h7AX9QKa9+JOT0xY6WwfXK+t
         FLDUTF3OgsxjPbIxCu8dK/NQJmiIfX3U6ibQtQbqqCzYPaOTja456+U6LSNVVSwYaEAA
         Kv3sU+vZ1nd5CpUsYJPdgCdJai5EY+3Xn1aJZ5ICUoLY0J2beZhm9Hrahg4vyHoLXum+
         QzIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691656532; x=1692261332;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c1IZHmKlWNkutp/wnK5kVD5DTSOxGLGgkOTz6tAhNW0=;
        b=DFZ9w/hMweZyccVvEV1i0DbZbgWieySh7t0/lmAYLpAzVyWfeagO7bQddUtx8RlARB
         0Q8zeww7ynywN9H6Eu6crwDfweULCICsDicfCyjIFSQyODxZYf9Ga3XAtDnKqkAdQI7i
         v4djYujk0CsekYhssqd5GtNiBPsTEVUwNOY6AUFl+GPBYrDWpmLxQjvYrtF9MfY2AHvw
         MiKNauT/cElXosVfIXJ7r6y3CwnlOGJwdjVBFZ1+SnuxDCGbLO6aeSyiI9G3Fx95n9MB
         4RiUh62YnpI4GWJni5knzGkm0/gZpjHqufRqpNjzoc/KZhklgOA2R2S+4tyK9WBxvvtH
         oNyw==
X-Gm-Message-State: AOJu0YzhxLmWDib9xZXZS5km+wM5i7LVjNm/vTvdlAEs63aspthH6hv3
	YgMlALB0Erz7ZIRO7cOJ1LxgdaVXrrQGIrHxwsg=
X-Google-Smtp-Source: AGHT+IGj3oshxHbdUQIx0uJdoRZheyt+q8P6Kr7tDkXFLF1CacSdKCLXYib4JqR84sFNkdFK6OC3v/1LEt6hgzUDTAs=
X-Received: by 2002:a05:6512:401d:b0:4f8:6253:540 with SMTP id
 br29-20020a056512401d00b004f862530540mr730059lfb.19.1691656531635; Thu, 10
 Aug 2023 01:35:31 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_sYoP+61NGtMrNJfT+m+hZyz=cxJAcOcE1kSkb6SXKUw@mail.gmail.com>
 <19617.1691654254670907270@lists.yoctoproject.org> <62798ed9-66a8-0e70-0670-a48bf24d7e50@bootlin.com>
In-Reply-To: <62798ed9-66a8-0e70-0670-a48bf24d7e50@bootlin.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 10 Aug 2023 10:35:20 +0200
Message-ID: <CANNYZj8P7+u8hwGTCsf6UyRbyRi74k3P7wJP7Lk7Tcbdxw8n5A@mail.gmail.com>
Subject: Re: [yocto] How to migrate an older version of Yocto?
To: michael.opdenacker@bootlin.com
Cc: msenturk <senturkmurat1999@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Aug 2023 08:35:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60769

On Thu, 10 Aug 2023 at 10:28, Michael Opdenacker via
lists.yoctoproject.org
<michael.opdenacker=bootlin.com@lists.yoctoproject.org> wrote:
> You may actually prefer to use our latest long term support release,
> Kirkstone, which will be supported until 2026.

For what it's worth, I would not recommend anyone to start with the
LTS. It's useful if you are shipping a product (or are close to it),
and need a stable base for the product lifecycle, but in the setting
up or active development it's better to stick with master or latest
release. If you discover that you need LTS, you're gonna get it
naturally that way when the next one comes, with the bonus that that
next LTS will be supported longer than the one available now.

Alex

