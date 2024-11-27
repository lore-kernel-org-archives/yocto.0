Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C4AD609D8
	for <webhook@archiver.kernel.org>; Wed, 27 Nov 2024 11:13:59 +0000 (UTC)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
 by mx.groups.io with SMTP id smtpd.web10.69577.1732706036311913221
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Nov 2024 03:13:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fgAL/xnS;
 spf=pass (domain: gmail.com, ip: 209.85.160.176, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-466a0ac9211so17034881cf.0
        for <yocto@lists.yoctoproject.org>; Wed, 27 Nov 2024 03:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732706035; x=1733310835; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wdVYtbDhQRnXRWztR7Iqxdkp4Y8+f9VRaWqK7i3j49w=;
        b=fgAL/xnS/+T1rPChJWvUAXk8qn3W/3MDsY23LM6bWQsQL6AViEWq8e/dKKHqgnZLyU
         5CV0Yr6uG5vDrIYAWiH29/vTuo/bQ9W6Qqo8VOExQPhky9LXcY/5KRoe6itbKg/dMN7B
         hJGb2GAq3nZm4bO3LO2QVGAGk3jgplFAg9USzCfaeby5GJSMFd/6Ln/zwz6OaOP4bbjw
         VAjR4Gwp3UZMv5E8iccsUGQl40Hw2anuSP/mAbPuDyoKLZ+IRbs89tyK6bLvDLN+3FXt
         SIlturgUzk5WbVCjCn1RthTJfa3wrlKrl3/yWUSZcHQcm57hwwDlJqUxgHS2wr2WOOqs
         z9eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732706035; x=1733310835;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wdVYtbDhQRnXRWztR7Iqxdkp4Y8+f9VRaWqK7i3j49w=;
        b=Dv9hXDT80NdbbbJtICkPEDjFnbwa/LTOwHdrigW/sXqn9NqyuZNMqR92ucJT6YC7ap
         LjynFw9R5f87MAHLFcR+fx+mWZfmeU5Ot52F/47+Ru1Hh7XxHvbR22Dltbd968kwxD2n
         w33Zepl0GK2vMhMt2Wm4Yb3GPldJDTVSlqzqYDZqFo2FKxVnyC/9thrcXuRux2Ds2BUp
         pUfS8byXxuQeudaZzLk8MVBdTVXDsM71J3rFBtxTNvCElsJKvKlSZo+4dM1CeukVCcPS
         SNhFP1i0aBrmnV2vrDlWxZzhJ3qoiWaBpC8VziRQI3wfKyBVWselR3JHoZAgqwUl5pPm
         9iFQ==
X-Gm-Message-State: AOJu0Yy5EK8OAzNHdBHwYCSvcnK2gO0gth6RXyf+LHa4EcfdbfzLVOeu
	fcPDNp6KLu+6EzS4Q+aEUZhtAcen5ONlSE5MKJUV5wW5fyWFf6dOiZs0CwKSlU9Vhdguo3f+NPz
	I1Wabm48Qa4m+7VkZ3SswCXn8pcOV6Wh0
X-Gm-Gg: ASbGncsfCyM0yhvYxd342gEPrY1TC8Bfd/+EWKHHViuUt4GKFGTVazNZdqXkB/GrEk9
	Lo9RWEaTtvcoauQW7ktpBtWUk5JTAq0ttSmy/ieEbKw+9rh7O5PCKj8ZDPAdh0BRLlg==
X-Google-Smtp-Source: AGHT+IGlaPh+RSQhv7OqAA/ZFKT28BKVm11z8QdoKexi1VoviSeichsPcirUyNWrE687/SqtIDZbCob2A5rXsGpK/wE=
X-Received: by 2002:a05:6214:1d25:b0:6cb:ce17:e80d with SMTP id
 6a1803df08f44-6d864d25b37mr34937516d6.18.1732706035384; Wed, 27 Nov 2024
 03:13:55 -0800 (PST)
MIME-Version: 1.0
References: <8757f1f3-d680-49b1-907b-9b96c6a482be@hqv.ch> <ae9140093ed616292002522752109636a9ad0be9.camel@linuxfoundation.org>
In-Reply-To: <ae9140093ed616292002522752109636a9ad0be9.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 27 Nov 2024 12:13:44 +0100
Message-ID: <CANNYZj-oaGjqX=iQHmbUG3rzW+NzjgsqbN+G__aOZO3dKYVmLA@mail.gmail.com>
Subject: Re: [yocto] [yocto-status] Rust on MIPS for Yocto
To: yocto@lists.yoctoproject.org, richard.purdie@linuxfoundation.org
Cc: Lukas Woodtli <lw@hqv.ch>, Randy MacLeod <randy.macleod@windriver.com>, 
	Khem Raj <raj.khem@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Nov 2024 11:13:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64364

On Wed, 27 Nov 2024 at 11:46, Richard Purdie via
lists.yoctoproject.org
<richard.purdie=linuxfoundation.org@lists.yoctoproject.org> wrote:

> To explain a bit about the challenges here, rust is now a "3rd tier"
> platform in rust itself, so the issue goes beyond Yocto Project. At
> that level they'll take patches to fix it but they don't test it. That
> will make it hard for us to support if the upstream is not doing
> testing themselves, which is why we made the decision to stop testing
> ourselves.

This is the link where the tiers are set:
https://doc.rust-lang.org/nightly/rustc/platform-support.html

I'd say if you can't convince rust upstream to move things up from the
third tier, the only reasonable way out is that you do your own
private testing after the fact (e.g. after oe-core master gets rust
updates which may regress on mips). It's standard practice in
distributions, e.g. https://fedoraproject.org/wiki/Architectures

MIPS is dying out in general, you can't fault the community for not
having any interest in it. When we volunteer, we want to do it for
things that have a future.

Alex

