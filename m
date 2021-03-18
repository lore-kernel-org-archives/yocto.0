Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.10814.1616081623401813175
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Mar 2021 08:33:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MiLQXN7Y;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 5ED3F38C069A
	for <yocto@yoctoproject.org>; Thu, 18 Mar 2021 15:33:42 +0000 (UTC)
Received: by mail-ot1-f46.google.com with SMTP id v24-20020a9d69d80000b02901b9aec33371so5573490oto.2
        for <yocto@yoctoproject.org>; Thu, 18 Mar 2021 08:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=j9YhJgNWuwdSIQMU/VG655IuDHZaPsAvzC8GuOw21kc=;
        b=MiLQXN7YnS3NZ5ilUpNIkmXZSYqVNYBLJv0PoPPifUbBzes0xUF30CBa7rJ2ETNfSw
         24uy3tyShnAKJsLxLuslGfX5WQp77dJ/QUGzkwZFLR9rlO/9w1dR6G9VzMFf0Z8Uj1IP
         bvU90F1JCIXBE8LgNws/zYlsEJ9MylrH8Y7uxeoB5oxtsS62hZSgAUhw0ttd9ZnxkZSN
         YLNdfYtogZye2ZZqPX8Zk54boFDCDGh4tXgvXz1et8tZ+Yh/DGiPk9T0DokqZWVCC3Ac
         +nwOnS4dP9JB4BQBxDpdBflphn+5RVQYnBAEEX6lsBgMTeY7+XYEpqdf7T9QmLS9054L
         ObRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=j9YhJgNWuwdSIQMU/VG655IuDHZaPsAvzC8GuOw21kc=;
        b=h0Pr+o+p08NRPTTN0xQaWUU/AnjQlTSGozLJBMEH4uhg3hwEo4tYRmyvhGFz90q+2B
         /3dLVZ4fPiuYu5NSqXiE1um3jC19azK7osETuVQcwUFqXEMLb3YY7fQaT2A3vbc5xuwo
         7IUGC/Tsul3Mec7fketF7kc73kuYtlFbpgO6UgBUh2Pa9AdTnMDgwnT6m/ceyaMZ0A21
         XhO2MqRYMBiXLH+7fYIq038cBOjnFi2JHQsef+hBxFXABosekv2EFrUI3FxXw/HQbCRL
         YfmNol1fxnQZlq/Sm2MYadbFEBEG8SnIn/tbd/wB9yGK7RJFsd9uqsilOaGsV46QQTVx
         Q7Hw==
X-Gm-Message-State: AOAM532SRG1gHhhbrAW4aqzUMAni1OsX+nXWZpD4yYE0Fj2xVWOhxqk6
	GZtSZj+AiDLr8KjJ9jtjgfg=
X-Google-Smtp-Source: ABdhPJyBfZGFGQVwSrY33kPkOHnKVTzA1Itzmvbnru6vDGO68lC7ebhEtStiQKusqguwIsj0JF1OlQ==
X-Received: by 2002:a9d:6a14:: with SMTP id g20mr6144395otn.205.1616081621571;
        Thu, 18 Mar 2021 08:33:41 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:3162:4312:5c6d:827f? ([2601:202:4180:a5c0:3162:4312:5c6d:827f])
        by smtp.gmail.com with ESMTPSA id s191sm580312oie.0.2021.03.18.08.33.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Mar 2021 08:33:41 -0700 (PDT)
Subject: Re: [meta-security][PATCH] ima-evm-keys: add file-checksums to IMA_EVM_X509
To: liu.ming50@gmail.com, yocto@yoctoproject.org
Cc: sergio.prado@toradex.com
References: <20210312095324.31413-1-liu.ming50@gmail.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <16730d86-3f5c-33b6-219e-3e24df039eda@gmail.com>
Date: Thu, 18 Mar 2021 08:33:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210312095324.31413-1-liu.ming50@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

merged,
thanks

On 3/12/21 1:53 AM, liu.ming50@gmail.com wrote:
> From: Ming Liu <liu.ming50@gmail.com>
>
> This ensures when a end user change the IMA_EVM_X509 key file,
> ima-evm-keys recipe will be rebuilt.
>
> Signed-off-by: Ming Liu <liu.ming50@gmail.com>
> ---
>  meta-integrity/recipes-security/ima-evm-keys/ima-evm-keys_1.0.bb | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/meta-integrity/recipes-security/ima-evm-keys/ima-evm-keys_1.0.bb b/meta-integrity/recipes-security/ima-evm-keys/ima-evm-keys_1.0.bb
> index 62685bb..7708aef 100644
> --- a/meta-integrity/recipes-security/ima-evm-keys/ima-evm-keys_1.0.bb
> +++ b/meta-integrity/recipes-security/ima-evm-keys/ima-evm-keys_1.0.bb
> @@ -14,3 +14,4 @@ do_install () {
>          lnr ${D}${sysconfdir}/keys/x509_evm.der ${D}${sysconfdir}/keys/x509_ima.der
>      fi
>  }
> +do_install[file-checksums] += "${@'${IMA_EVM_X509}:%s' % os.path.exists('${IMA_EVM_X509}')}"

