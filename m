Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B02C433F5
	for <webhook@archiver.kernel.org>; Thu, 28 Apr 2022 14:57:28 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web10.11713.1651157841657464662
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 07:57:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OG27KVXB;
 spf=pass (domain: gmail.com, ip: 209.85.208.175,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 16so7016427lju.13
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 07:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=u6w4uFNXf1WTa1JFQcHWWxo40+C4b4W7tNBOhJZoSm0=;
        b=OG27KVXBEJVTX4yb1Ux0/lJ1nHhSBqKss+gsLdKcmgyZlihgsS/yTofGVGxZlsJiZB
         /ahrfhpR7N+r6NxSIctLGvqMH2GGfIczZHbwgqymIY6DU0VAl8/3DuNPxMsLsiZKyBWd
         WgVV9pEp+Bwi+QpzJ2yWsh4hu+h0yf0WKB+FEZUR3TFOh9AjR/8hcTDAaR+JbsGSNpom
         geL1j07vmFpRMbBo47nDnYS2qtYCIqQVrjgOuN5umcWIX+3kbokxphR/4lIntcB5qmOu
         jFG40vJbLRKeFAVoybUhfG3reasHQghzzAWnW5Fh+LIGlxhcBN14hOefrijTXju1q++E
         TNgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=u6w4uFNXf1WTa1JFQcHWWxo40+C4b4W7tNBOhJZoSm0=;
        b=TZPaJ0nEbdxsMBtaUfdG4Hef45XxRkIZcB4ZRVT/+OPK7gycrowUYlg3xKJMgB/SqL
         SOVd0SVgBCdxccPrLxIjLxpbFjW+LcEBtqLLAMiKKtLVFqjAKfOKYqXFajLF09qiPjLx
         v3+W38PQj/U0JQmGyOtnR7pub5VNP/Azwx6VJXezUFlaUaXpN1JdcVnHRXDyGyyAbr5v
         C1KQ2a9ONNanxvfkz7OYBtrzrUkySqBsfcPBALYcHBxCOfurzGFsHoGAcKt37yKOqClW
         YXocfj1CLkaiRXaymvWaon2Mu7B4J6V89XHO6lLJzVL5KjZLfdAAREm+woJK/pOD+E0f
         5r+g==
X-Gm-Message-State: AOAM5323P7MVnMIzWLD5ld3e6LM21G03cq6yhB7DQnqLcbC4Dv1s1+/V
	wrZekaqXlUK95pHGYJFiP6g+GP4iW1ERqekRaBc=
X-Google-Smtp-Source: 
 ABdhPJx0vq9N6KCkJDLVjTWnya3r6GXL5t7ebzi7tx/unkdS8LtJW7euqsCUnBZh8zNLdoJABHrkjwgVBxTeqWcDjn8=
X-Received: by 2002:a2e:8753:0:b0:24f:d10:4277 with SMTP id
 q19-20020a2e8753000000b0024f0d104277mr15832898ljj.513.1651157839888; Thu, 28
 Apr 2022 07:57:19 -0700 (PDT)
MIME-Version: 1.0
References: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
 <CANNYZj8bwSKiBR6=K+EdcbVtEA41v6BTMAP66e1tZQ+A-eec_w@mail.gmail.com>
 <121dd34a-5ae0-ed83-4079-8029c9f903f9@opensynergy.com>
In-Reply-To: <121dd34a-5ae0-ed83-4079-8029c9f903f9@opensynergy.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 28 Apr 2022 16:57:08 +0200
Message-ID: 
 <CANNYZj9RY7nMyXPD=hOoZtEHn76gh_1ASJhhZikTWNtn6ajt-g@mail.gmail.com>
Subject: Re: [yocto] [psplash][RFC PATCH 00/14] Implement DRM backend
To: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Apr 2022 14:57:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56944

On Thu, 28 Apr 2022 at 15:54, Vasyl Vavrychuk
<vasyl.vavrychuk@opensynergy.com> wrote:
> I did not tried personally but it should work under QEMU too.
>
> > Is it possible to automate with qemu targets?
>
> Depends if QEMU/yocto test automation support screenshots.
> Unfortunately, I don't have expirience with it.

We do need to find some way to test this code in our CI system: I
would recommend the following:

- make it possible to switch psplash recipe between drm and fb backends
- use drm by default
- find a way to check at runtime that the code didn't crash or error
out: perhaps checking logs for some kind of success message would be
good
- investigate qemu and particularly qmp protocol for ability to take screenshots

I can help with all of these if you have specific problems.

Alex

