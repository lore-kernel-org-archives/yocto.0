Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web11.3692.1630158385353027708
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Aug 2021 06:46:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dp19Kf5z;
 spf=pass (domain: gmail.com, ip: 209.85.210.173, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f173.google.com with SMTP id v123so8272179pfb.11
        for <yocto@lists.yoctoproject.org>; Sat, 28 Aug 2021 06:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=GspX68744ooZsJ9InBtB7qZ60TWB6RhkZAPfS4vkhvA=;
        b=Dp19Kf5zMDJwZ2qBNXCZ6DyBmuKEvAh9Te3blnKuUQWbJWHCjG2Fzn3ygcK/Wp+VGf
         qdTblZizZ9xA7/HZj3fVq1TsSycZuCnzRC9fpaiE2hytl7UylzFOSgJhzCv5zFDEOu3U
         ITinHrWjP7lVtpTwP0SWQYIQV5ZzaLbhSzfWSbikLfm5YJYUXifVsgdOZfTTdkuTp7KX
         4r/Ov7JTrbQF/QaHCwJqibN0FGzuwVluA81XHmHHDzOvAPnFd9ii5b+c543UGfr7CVxR
         0b7ry+Bd96Hb1zQ0xrEN7Q6BVutGN+LqFOuYG7goUTE/qwcMISKIeOnZAkvnoIz07JCX
         u85A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=GspX68744ooZsJ9InBtB7qZ60TWB6RhkZAPfS4vkhvA=;
        b=EuB7skUPsezVcxv7SSQUV4LJY3lC9dz8LLdfhBAze2Eni212rEgOq/QGrO899g3a5W
         RVW1TVAHyFX9xabRmKUg40XQ81JeXifSoWs4t5Kv1ns63N01be+Glo92sh6NbZfz3Pzj
         6ENwFsCDfIMJ4k6N1jE4XqLriHO7akrexSzg0JZjnl2463bDtQRiXnN6Rtq8po9YUosO
         D2jx80IZBLIrE7wzNL5b3qc9g8p8h//YX9aABPpu4tcUBubF1du7qrT554+eyEhGye6k
         OOLsQPyzVlRcfCo+bBHH0dhvzueNcX6a3fixeQQa5B8pLUztxlgrW7rJNE0Jb+GdXcMy
         3UJA==
X-Gm-Message-State: AOAM53049cLKW3y9/dIhMASPT4ZVGx9PT3goS9bO2ApQWyERMscJtXXB
	5vzello+WIx33rFDBIQBqvEtC1ld1Tk=
X-Google-Smtp-Source: ABdhPJwFZ6LjEsO2zVR2ob2vIOLBugQ6vQFOUZbvrjFNIskUnNHacAY5qJAjc1/yIcWnKfOe03nPaA==
X-Received: by 2002:a65:6392:: with SMTP id h18mr12544547pgv.397.1630158384774;
        Sat, 28 Aug 2021 06:46:24 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:b66e:f798:4f1:7aab? ([2601:202:4180:a5c0:b66e:f798:4f1:7aab])
        by smtp.gmail.com with ESMTPSA id n14sm3668651pgd.48.2021.08.28.06.46.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Aug 2021 06:46:24 -0700 (PDT)
Subject: Re: [yocto] [PATCH] meta-integrity: kernel-modsign: Change weak default value
To: Daiane Angolini <daiane.angolini@foundries.io>,
 yocto@lists.yoctoproject.org
References: <20210826171441.13246-1-daiane.angolini@foundries.io>
From: "Armin Kuster" <akuster808@gmail.com>
Message-ID: <0df28641-34c4-3e54-23e4-093e125b329b@gmail.com>
Date: Sat, 28 Aug 2021 06:46:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210826171441.13246-1-daiane.angolini@foundries.io>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

merged
thanks

On 8/26/21 10:14 AM, Daiane Angolini wrote:
> Assign a weak default value for MODSIGN_KEY_DIR so the other layers can
> set a default value for them as well.
>
> Signed-off-by: Daiane Angolini <daiane.angolini@foundries.io>
> ---
>  meta-integrity/classes/kernel-modsign.bbclass | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-integrity/classes/kernel-modsign.bbclass b/meta-integrity/classes/kernel-modsign.bbclass
> index cf5d3eb..093c358 100644
> --- a/meta-integrity/classes/kernel-modsign.bbclass
> +++ b/meta-integrity/classes/kernel-modsign.bbclass
> @@ -2,7 +2,7 @@
>  # set explicitly in a local.conf before activating kernel-modsign.
>  # To use the insecure (because public) example keys, use
>  # MODSIGN_KEY_DIR = "${INTEGRITY_BASE}/data/debug-keys"
> -MODSIGN_KEY_DIR ?= "MODSIGN_KEY_DIR_NOT_SET"
> +MODSIGN_KEY_DIR ??= "MODSIGN_KEY_DIR_NOT_SET"
>  
>  # Private key for modules signing. The default is okay when
>  # using the example key directory.
>
> 
>

