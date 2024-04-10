Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A716CD1296
	for <webhook@archiver.kernel.org>; Wed, 10 Apr 2024 09:06:37 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web10.161227.1712739995568133987
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Apr 2024 02:06:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=K4vneW4U;
 spf=pass (domain: gmail.com, ip: 209.85.208.169, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2d87450361fso56268311fa.2;
        Wed, 10 Apr 2024 02:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712739994; x=1713344794; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EFs/Z+5of9uYv4GCE+TMmAO9AnfMiY4Em/9/IsVslQk=;
        b=K4vneW4U5r7KG24Ics4jjq/fmLlpg/bIa9xETonTxwFdDLI0Man/rWthx6PLsPRRnQ
         5BSW3+gkfYm9m1KiLwDdSBA0RrMNFKHcIaKWzs8p9iF594EvvXapD36N8uF4ioJU9c0u
         qrGLGVlmzQrb8q1VziWXYKUl2OwK4NfBhlAx6meqOUAiUHzTeImORtL7xNxIac4TjWA0
         DaQG40O66zruuQ0pnx9NRJUQybQgwC0bfYdu9lKAnPW7u2ml9b59Bb0zIGLQXzx0dUCb
         7wPKJB8TVcQaSbhWHQvH+Fnq5wxLUqctHFfIpHUBcDCOO8pVC/dajf+/FYgVlWAZdtZY
         E/6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712739994; x=1713344794;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EFs/Z+5of9uYv4GCE+TMmAO9AnfMiY4Em/9/IsVslQk=;
        b=RQH12GQpeUXwoMQ1rpnKlecfiaW1qcWNmlXONaTogkq05LRIhSxcuZPsszV8mUtbt4
         Scsp+WTJvAZDoBZGr/71IXimfkicMxFLDj2am1j/zHzgF83izafGosdQAMqlGI9VwrCX
         fEM7qrlF7DUpsOkNJShLW6AQIxDayxafnge/wthiLVdr6Rng0qzMoq1sXBICZ4SRX9Nv
         Fuximuy+deqIoGkqIcLVIK1/P7hQ/h21bNvwx+wnwspkmDEAiuvPoJpQrVrpf/z69ET8
         loAIYWcZ4zgQnR1AZLVM65GSF2wDwJ3fOakpyIrqO3AURD8TlbINybhKFfKIcHe/L4p6
         +zWg==
X-Forwarded-Encrypted: i=1; AJvYcCWG7GIMFdfgVrBEtohTk7s8H/HRZTdWsa38LPessw6BN0lRlyOHHf2qI7JRZ7vRacLODAhqqk6C+AIKS2rOJnE7A4ydOuL5mxW2O29QLoaBheE3gw==
X-Gm-Message-State: AOJu0YyIWpddYOKnrgaB/rB0x+xaqRWLn7sD3oda2Nb27aw8erM5Ork7
	f9a+jE0bn4i2/ABvEuLcxfREOPzRKf2RXZeXVyC9fUJVpLXkmb+fRV3DDaTl+Z1hfpUce1zjI1W
	oLLT1wKg0guT+TbvofwtbsFZMqtg=
X-Google-Smtp-Source: AGHT+IHfKDmoXnvXzwrwod7rFl7K2WWsxgXWKZzo+y+jCKaV3pQdJ+XccFvXEmF9lOjdg4AbJqEZUTzTersll6Ycyfs=
X-Received: by 2002:a05:651c:21c:b0:2d8:9baa:50ae with SMTP id
 y28-20020a05651c021c00b002d89baa50aemr1645710ljn.31.1712739993454; Wed, 10
 Apr 2024 02:06:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb8v4nejwGYPj3YYRQnz7xDeL_3v=dk3_RkrvJCaysPdqA@mail.gmail.com>
In-Reply-To: <CAK5yBb8v4nejwGYPj3YYRQnz7xDeL_3v=dk3_RkrvJCaysPdqA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 10 Apr 2024 11:06:22 +0200
Message-ID: <CANNYZj90YBS2YviX2CUwaJoEN_dwRK3MyGZ7LGmKmuTLuMf7Zg@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status 9 April 2024 (WW15)
To: Stephen Jolley <sjolley.yp.pm@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	yocto-status@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Apr 2024 09:06:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62911

On Tue, 9 Apr 2024 at 16:55, Stephen Jolley <sjolley.yp.pm@gmail.com> wrote:
> We received some disappointing feedback from a key organization in the RISC-V ecosystem that the Yocto Project was not important and not worth funding. We will take this feedback into account.

Can anything else be disclosed about this?

Alex

