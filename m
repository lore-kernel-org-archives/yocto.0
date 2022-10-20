Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 147CFC4332F
	for <webhook@archiver.kernel.org>; Thu, 20 Oct 2022 05:56:44 +0000 (UTC)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
 by mx.groups.io with SMTP id smtpd.web11.6424.1666245396778977453
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Oct 2022 22:56:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=CTHCeF9I;
 spf=pass (domain: gmail.com, ip: 209.85.160.48, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-13af2d12469so707599fac.13
        for <yocto@lists.yoctoproject.org>; Wed, 19 Oct 2022 22:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=A/wAMvb8JaKK1jyhldi8roR289YvqtdYYhM8TUhOkUU=;
        b=CTHCeF9I4QbMMe3RpRcDIL31clglEOgI+2oxyZyMKW7a1/WC8zhPknlmcV1oOOy6jr
         Qu5j0fcBxpSoWR1o9nR9JuI3VK2xDBwzlTHHRk+saxAJImKNx1QQWJfbhhADAlqkfBGg
         Asgbq77KuldJ/4wlVIL/8GkeG33/f29HgTBAf4DTk0HH5xIMfN0axKxpQGpsbNW7uu9+
         aSf+kRaXUWrFnL/AqYjQCtgYVm3muUG8zHSQJ6GA8ysFYFRRLnKSeo+JB0GS1xRzAhFq
         1e3crTxrGWiir0oPswsOY+qv5uS+yrOxMhYQJLwvRJKFfkNsIfrNLTIAbjsabhHQSeBU
         m+Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A/wAMvb8JaKK1jyhldi8roR289YvqtdYYhM8TUhOkUU=;
        b=BlIEOjcXxUILTgpB+1KyH95AcvxbKjyMqrOPmfNSTrY/DCEhCeE1eH+xfN3wijQGxB
         pt3b1mC6tEOo2fmegwnIFHmvQCGMYSPw/KXBChXUUPw6ehvqevcFPPBpr5+TOF0Xp68j
         Z4k51vKPIr7Kmvss83f/W3aatOkHO58oZUlDD0MRzpbqEk+BoFsadKzwX1bVR+F21u//
         9jArog7EaS0x60ZuIuSdg7/kctnSHUPe4wqt+zS8IOFwiSrlznL7kFAabYrsCfXSZEgi
         GdL4filsWVkj0mo15VpIJOyzLc/8i2wfsKGkIlGVTGb7yeMPArW6exttjZgRxvlswLoF
         bd8Q==
X-Gm-Message-State: ACrzQf04W7h36Jy/SVq084XnO5UvO3dkYSDmkoIeK/w/hcLnZX8+uT+x
	a9GLPquwwwyCdpEXvYdEVEOma0CfVpZ9bL2BtbI=
X-Google-Smtp-Source: AMsMyM6YE9lsmQttfKceKi5lR5QK1iepWR2TUzqiF4QAtSmzxaDxTwOuCMBRbWqejLKM6HsbDPRjUNXKAdWmUKAWZtE=
X-Received: by 2002:a05:6870:b00b:b0:127:2d3d:3c16 with SMTP id
 y11-20020a056870b00b00b001272d3d3c16mr23725280oae.262.1666245396073; Wed, 19
 Oct 2022 22:56:36 -0700 (PDT)
MIME-Version: 1.0
References: <sf1Q.1666244018160426868.BYsg@lists.yoctoproject.org>
In-Reply-To: <sf1Q.1666244018160426868.BYsg@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 19 Oct 2022 22:56:10 -0700
Message-ID: <CAMKF1sqBr77aR+aUzTZ2YeuKahU+f6zbvsE=UZgj6zjrUfEdBg@mail.gmail.com>
Subject: Re: [yocto] Adding msktutil in yocto #yocto
To: poornesh.g@mindteck.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 05:56:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58368

Try something like

https://git.openembedded.org/meta-openembedded/commit/?h=master-next

On Wed, Oct 19, 2022 at 10:33 PM <poornesh.g@mindteck.com> wrote:
>
> Greetings !
>
> Can any one help me out to include "msktutil" (used for fetching and managing kerberos keytabs in an Active Directory environment) in Yocto (Zeus).
>
> Thanks,
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58367): https://lists.yoctoproject.org/g/yocto/message/58367
> Mute This Topic: https://lists.yoctoproject.org/mt/94448165/1997914
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

