Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E218ECAAA1
	for <webhook@archiver.kernel.org>; Thu, 15 Sep 2022 17:21:35 +0000 (UTC)
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
 [209.85.167.171])
 by mx.groups.io with SMTP id smtpd.web12.13014.1663262485266301899
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Sep 2022 10:21:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jtOa1yyn;
 spf=pass (domain: gmail.com, ip: 209.85.167.171,
 mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f171.google.com with SMTP id a133so3041434oif.4
        for <yocto@lists.yoctoproject.org>;
 Thu, 15 Sep 2022 10:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=8O8e5NIHzdIt7LLnGa1Be6vux7svDhO76s5hAL9EDwI=;
        b=jtOa1yynLRcjSNROu17/OWDLR8M+Vy+qpWxdmPgSbtF0s4gyZJbCfbITwou3r/9PvU
         G+XQxfhfqRR9h6JEVsxphKBtTztnvkTxv92+KFLHMNDTfo5Io31vRlJ8cBT9NDtLQlqs
         rxL2dxH3ODFvg6U9TNV8KjV/8jmM4N3LkeHzWvnYDnwmaMPmpCPIZ3L5IxnOI/c3obHH
         TPfX4IM2zcwzIifbx2vWnfp48Elogl9Iy8lz3cgYfw3UVq6IC7nfEvEOa5aWhZC7ZAyw
         smWIfTV2hgKCXuBWLkRbWFHoNU+POerav1+4XkEKg0F1FXPdE70YjvhR2YIlPwT/UxOO
         t/pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=8O8e5NIHzdIt7LLnGa1Be6vux7svDhO76s5hAL9EDwI=;
        b=2dB5nPwzJ8AuWycb0Y793heHO7P9e0MHgDy3/nCXxv4aRElVItn3viMXb5gaZycJjh
         d9XzPJj0N1WVczfGpZCgsMsFwwGV5yiH2iG3uB11yaRME5jOoQtqu9W4b3Ny37yTPav6
         wl7OXrKVdZRMcpfDEE+1CQ7Ta69cRuGFYik8B6uL/YGk0fDpMrjd3EaYi+E6yG1AdsCj
         NK04zKqn75e2+MZ30e1wULvxW0YF76j4bweVeRHM4dvabO2zox2KbXQbX+ubHdbsW2sK
         raUnsHh8BvmEM03rsTJmW83uAPNdyU0tu+RUfOcm5lhgx/wyfJiT3SeslusXeBFQlAvG
         aAgg==
X-Gm-Message-State: ACgBeo1IBUBcy2dsC3hz1o/mFz5pPX/e0W1sEfZfpyYDkqeCdAeKKp8s
	wLcRQMPHP2JDjcQULerLjWRXv7IQRo22odTdwk8=
X-Google-Smtp-Source: 
 AA6agR7SdWyjh6f0BDImR59DXusjAOtJN+qeRE5WM1h0vxNzuNd87hW2Rvl9tYWmshgpI4Sk3ZHLRHv5ZhG6V2zMR+o=
X-Received: by 2002:a05:6808:1988:b0:34f:de19:411c with SMTP id
 bj8-20020a056808198800b0034fde19411cmr4611100oib.262.1663262484555; Thu, 15
 Sep 2022 10:21:24 -0700 (PDT)
MIME-Version: 1.0
References: <7uRn.1663258576792241067.S9kr@lists.yoctoproject.org>
In-Reply-To: <7uRn.1663258576792241067.S9kr@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 15 Sep 2022 10:20:58 -0700
Message-ID: 
 <CAMKF1srBGGDkGiPfvHO98LrfGRTRCf_12-AJy78vvq0VHb5jmQ@mail.gmail.com>
Subject: Re: [yocto] Importing environmental variables to receipe
To: vikkramblossoms@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Sep 2022 17:21:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58051

On Thu, Sep 15, 2022 at 9:16 AM <vikkramblossoms@gmail.com> wrote:
>
> I am working with yocto  behind network proxy. Hence I want to pass the proxy variable (http_proxy) to recipe where cmake download some dependency. I tried to pass using BB_ENV_EXTRAWHITE .. but i haven't succeeded. Can someone suggest better option

There are some examples in metadata where we explicitly disable this
download happening during do_configure step via FetchContent cmake
module. Its better to club all downloads in do_fetch so fetcher can
checksum and make sure that it's deterministic.



> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58050): https://lists.yoctoproject.org/g/yocto/message/58050
> Mute This Topic: https://lists.yoctoproject.org/mt/93703822/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

