Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB04C04A68
	for <webhook@archiver.kernel.org>; Tue, 26 Jul 2022 17:01:34 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.9253.1658854889413799571
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Jul 2022 10:01:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=sOiBkTV2;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.208.181,
 mailfrom: jdmason@kudzu.us)
Received: by mail-lj1-f181.google.com with SMTP id z13so16788065ljj.6
        for <yocto@lists.yoctoproject.org>;
 Tue, 26 Jul 2022 10:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=M9VxvIxZ0kCXRDZi0k7cshzSoKGER0lNdA0/UfaX8DI=;
        b=sOiBkTV2Xmi7pYIuH3LKsHWASJzOj/8TjFK4cSIr3sjLteRev1JAsLEbzyVy1YuxGF
         rr6DfcYZP1VbiOyCeMJQA90d7X1rCZE2XfDv8jiZi3KUCXL0UBIz9U0yFkTtaZAmKfTS
         FdfLv5hIuBC2SzF/My4sXMKLqxK1DZDw5ekahr3emqsp/fpBgHNC6F5mAOhKLChysvcP
         vakOyA/zdO8xH3Yj8MSj4Bu/adwz/tK4k1RGXMtvnWwe/HbViJZrj0m+KIm09CzOq4qW
         QBD9CcaoZsaE+akzxllxzhdGdeaBnRAMj0z0QG+yLrSIQUi6zfx/sPcQIpqx3xxeg+QH
         IEqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=M9VxvIxZ0kCXRDZi0k7cshzSoKGER0lNdA0/UfaX8DI=;
        b=7qEM1fT+tTWaMpudQzzoWVt0tiHldS75rLm9RV/PaRTpoLlz5pinsLA3qdzxAigUKn
         uitESER7ER4AWTVxrhaH631zmtfD6pZuTLGwv/jy7kSX1A6sqMLGgT8MNKZ0q9CMCPhu
         BidtlKgKteH8VO8torqDVQQiH+40RrZyJn+YCG/dsC5WJ/UCXxlhI0DMCEMGUSC1xWso
         a+MEKL4vlUnLQ15IB6AL4CK/E/rS/ODDVtI/ErTH0FGG7+rTwFtjSM/qW/jY+D5OVtbZ
         3QAL2Q1YVoXpMXUflyxsstolXG7Q1CVTG+rvN2zH2+7G57wYWoyGEmWd0FZAedEYVAVx
         QBfQ==
X-Gm-Message-State: AJIora9JmWmkdCurLwLzEjKJB6edvaEYXa4jEvcjl52luqU1fBtcHc8Z
	ZS1kfEKo5mCCU4fWQzOCL8FiVATVrKpoZtkJL2JVsw==
X-Google-Smtp-Source: 
 AGRyM1vAxt4KdWb74USCSPw/Gq375UiRKGa6A5RPahNuF5v8aWIUNBRmSltLsmfsR7YifoY6psU65b7C3JlxiPaShgw=
X-Received: by 2002:a2e:570b:0:b0:25d:fe99:7b3b with SMTP id
 l11-20020a2e570b000000b0025dfe997b3bmr5217095ljb.355.1658854887469; Tue, 26
 Jul 2022 10:01:27 -0700 (PDT)
MIME-Version: 1.0
References: <20220726165013.4030-1-jon.mason@arm.com>
In-Reply-To: <20220726165013.4030-1-jon.mason@arm.com>
From: Jon Mason <jdmason@kudzu.us>
Date: Tue, 26 Jul 2022 13:01:16 -0400
Message-ID: 
 <CAPoiz9z94y7m8J3fS7V13HzugnvXeCQZZ-c=E5gONUs6D+9n2A@mail.gmail.com>
Subject: Re: [yocto] [meta-zephyr][PATCH] CI: revert the gcc workaround
To: Jon Mason <jon.mason@arm.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Jul 2022 17:01:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57647

On Tue, Jul 26, 2022 at 1:00 PM Jon Mason <jon.mason@arm.com> wrote:
>
> The fix for the gcc issue has been upstreamed and the workaround is no
> longer needed.

Oops, I forgot my s-o-b.  Here it is:

Signed-off-by: Jon Mason <jon.mason@arm.com>

> ---
>  ci/base.yml | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/ci/base.yml b/ci/base.yml
> index 5e1683e..3467c74 100644
> --- a/ci/base.yml
> +++ b/ci/base.yml
> @@ -29,7 +29,6 @@ local_conf_header:
>      BB_SERVER_TIMEOUT = "60"
>      CONF_VERSION = "2"
>      INHERIT += "rm_work"
> -    EXTRA_OECONF:append:pn-gcc-runtime = " ac_cv_func_fcntl=no  ac_cv_func_getexecname=no"
>
>  machine: unset
>
> --
> 2.17.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57646): https://lists.yoctoproject.org/g/yocto/message/57646
> Mute This Topic: https://lists.yoctoproject.org/mt/92631898/3616920
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jdmason@kudzu.us]
> -=-=-=-=-=-=-=-=-=-=-=-
>

