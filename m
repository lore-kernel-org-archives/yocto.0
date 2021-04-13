Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web09.9776.1618322894347876178
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Apr 2021 07:08:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=EWzGzBte;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id y204so7426088wmg.2
        for <yocto@lists.yoctoproject.org>; Tue, 13 Apr 2021 07:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=Od/sqGWAX0K9Rcm+zVWiI8P4nJLanX7qQKKCIgoge40=;
        b=EWzGzBteyTKKdFR1W6g3cQ5CEnn27ohEkYVRm3W7BUVHdBbNtOtTEvN6nQlYKpICuk
         wDSiGt1BVxjYmMbLdxOxjuZwR/jFMoFrBHuQqg1DzOVmpihzODYLjky3pqMi5Gmg+cVl
         D+B/j9FLJ7pHmXbb7ZyKhuY1YeBvsdf/KLfOM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Od/sqGWAX0K9Rcm+zVWiI8P4nJLanX7qQKKCIgoge40=;
        b=Lvh7jlIHn0sRA5GgGspJXLTF1d43kc9BSyO400tQxoFW+5tHkM3cJ6YYW8+2CmEuTG
         SmbeIBWU7L3JfTw5MdLubo2ARR0dlSYdriFV0isrY6A0amLVSKUZWZXVkpo5ruBWu4Rx
         Lb/unkyzi1enfAAexFn0neLD52gjG85URAbZm8o7o6U+pxi/V8D+x7z3aeGfg1LVslu6
         7fg4YCgHiPWy2/IZku2q5uIwxReTMp/cm77BC+HHC00W47KOJJaQislJU7wnOeQYOlCR
         X0ergYRO71uV2huHRp3Ca0GIkaKulc+5BylJF1d3KffWV8IKoLBMG2Et6CMSj+WgohBR
         RBKg==
X-Gm-Message-State: AOAM531Kp8DLbU4L+a6Uon/LHdOjDA2QH3BNcbkG82C+WPKvnkX4pGaF
	wNX5EWgfD33CSPwbdnC4Kz9XDcEnIZy+7Q==
X-Google-Smtp-Source: ABdhPJwrDiv9biN3moGN16CPATSx9uQPaEA9h7dRL8YSHCP5XpsoHcvpC7QalYu49o+qd5+4e0HcQA==
X-Received: by 2002:a7b:cc86:: with SMTP id p6mr196111wma.164.1618322892687;
        Tue, 13 Apr 2021 07:08:12 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:cfa:4562:e70e:c00b? ([2001:8b0:aba:5f3c:cfa:4562:e70e:c00b])
        by smtp.gmail.com with ESMTPSA id s8sm20096909wrn.97.2021.04.13.07.08.12
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 07:08:12 -0700 (PDT)
Message-ID: <7de5b34457611538ccd3058c9fd005edc497cd8c.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder2] [PATCH] config: Add meta-aws to base configuration
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Date: Tue, 13 Apr 2021 15:08:11 +0100
In-Reply-To: <16756FA64268414A.2444@lists.yoctoproject.org>
References: <16756FA64268414A.2444@lists.yoctoproject.org>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2021-04-13 at 14:59 +0100, Richard Purdie via lists.yoctoproject.org wrote:
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  bsp-addition-example.patch | 54 --------------------------------------
>  config.py                  |  3 +++
>  2 files changed, 3 insertions(+), 54 deletions(-)
>  delete mode 100644 bsp-addition-example.patch
> 
> diff --git a/bsp-addition-example.patch b/bsp-addition-example.patch
> deleted file mode 100644
> index 7f92789d..00000000
> --- a/bsp-addition-example.patch
> +++ /dev/null

Not sure what happened with the file deletion but I'll fix that.

Cheers,

Richard

