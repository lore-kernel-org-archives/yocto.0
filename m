Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27E66E7AD72
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 15:22:43 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web11.111109.1696346558089968825
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Oct 2023 08:22:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BgC47p1U;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-65af7e20f39so6860206d6.2
        for <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 08:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696346556; x=1696951356; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TEnJ2oUN2Nn676HckdvGiWfWj5a3ZTJRZZeWIDS8rq4=;
        b=BgC47p1UexsTvibZS+mftenqVdVEEaqwr8TLUgwTxxuFJpwXX2EJdiT0kOJ1pTxqNl
         lwFAE/lWUi2xhBNlAAGPXt5koDbISY0/dtq8qgVjjWGuq1CQKLLo+Mp7G+dIiQAKlNs3
         eAA4hVFSiip8U1dtRKhhmfWMsmffDkwUEYJds/DR06RnbFp4+Ci8/A28Ju+GBR0sCpoA
         MbfZKr8Fxdmu3i7wpmCk5FDX+31mZH9ZzZR+c2a4ayGc9M1dG9OtR6ccVuFGGk634V26
         xyWmGn/ijrWFZ2dKLUQirRTJH7vhtoRYERcxCG3paqNpmaU2eSgMdrqWXJ4bsrQirQGo
         /D5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696346556; x=1696951356;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TEnJ2oUN2Nn676HckdvGiWfWj5a3ZTJRZZeWIDS8rq4=;
        b=ELtSqXH5PVtGRE1uTB+VP7Xr64bXJDJsMqe4LRGJRsStAdGMnf/mdIrt/p+wmX83u0
         yAdh/TAoyRfWc8DTb5w1udnTt/dVAemMXDXm1taW6HvG3hjk4IwqIDcvFR32udKvchi2
         D1hQHbPTyj5LsdQcYeUpfpt2Gg0HDMgjx1A4ADY7SjhXubgz8yP6VTu4781XW4NSaIpB
         OjH2qbfpD5H0qetOasenVDO6NJRYgSjBG881VAr2P7SGox+SRU3HBgdLiyHqaESZBOuE
         VHQU2YlyeQoXDZhlgsTzLGK+CIn3W0nsYVD7VuoBolnZDW7JNq+WJ5H1XRTTtWCMTOOz
         tvwg==
X-Gm-Message-State: AOJu0YxBFhdWf3YyAMEi54pdRRjB2dsUT+wGnU6vFOts3PHLsxPkYxu8
	pgTtfeFPiJrvh3gyqjVcg+QSsXBJax42cw==
X-Google-Smtp-Source: AGHT+IEDEYpO8iVOPhui5yJ9x5wxXox7632chgzW0SePENAoz60+emk/DNrZTPSVo7UwngIDt64Ixg==
X-Received: by 2002:a05:6214:28b:b0:64f:5e42:dc81 with SMTP id l11-20020a056214028b00b0064f5e42dc81mr15654990qvv.15.1696346556291;
        Tue, 03 Oct 2023 08:22:36 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id t19-20020a0cde13000000b0065d0a4262e0sm552267qvk.70.2023.10.03.08.22.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Oct 2023 08:22:35 -0700 (PDT)
Date: Tue, 3 Oct 2023 11:22:33 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH v2 0/4] u-boot cleanup
Message-ID: <20231003152233.GA17314@localhost>
References: <20231003004741.6021-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231003004741.6021-1-twoerner@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 15:22:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61223

On Mon 2023-10-02 @ 08:47:37 PM, Trevor Woerner wrote:
> The U-Boot bbappend recipe was in need of some cleanups.
> 
> v2:
> - breakup the original 1 patch into 4 to make the steps easier to
>   audit/verify.
> 
> Trevor Woerner (4):
>   u-boot cleanup: move task
>   u-boot cleanup: group dependencies
>   u-boot cleanup: group EXTRA_OEMAKE
>   u-boot cleanup: organize DEPENDS
> 
>  recipes-bsp/u-boot/u-boot%.bbappend | 32 ++++++++++++++---------------
>  1 file changed, 15 insertions(+), 17 deletions(-)

Applied to meta-rockchip, master branch.

