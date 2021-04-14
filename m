Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
 by mx.groups.io with SMTP id smtpd.web11.13305.1618408672546054846
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Apr 2021 06:57:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gqiPBQXT;
 spf=pass (domain: gmail.com, ip: 209.85.210.178, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f178.google.com with SMTP id w8so10326112pfn.9
        for <yocto@lists.yoctoproject.org>; Wed, 14 Apr 2021 06:57:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=s4CVZh5dpY7bTi0sCq9L+hgz/TevioIGl/DJNgxQOcA=;
        b=gqiPBQXT5z4m8KoeJJhqt9BunUjDOKXzPkGYT887oBB8bkmT86Bv3tsiyaPEld/26i
         pqcqdO0w+/UCv0ImA2y9nayYc3dSYwixexvWQe2Rwylm+g4aFZvq5njXaRa9swyFNCa6
         p4mB4n3xci8sY7GCHD2fxcQRndbe3ReYNoz2yJhCpay2OnVrvcYGetAXhPvKGZSkETnf
         stbOOFuZi93MU2JzSUiZwvqbsvZKkRbIN7P1gr8uLW4Yba+0oKSGclH+BAStBC12QRdW
         3MMxzi/5JzqEbjqN5u5LbFpXAUlIcmZDxPLr6imVwRsh5/F0AV32uVyvX5v6EOwnfDxu
         75qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=s4CVZh5dpY7bTi0sCq9L+hgz/TevioIGl/DJNgxQOcA=;
        b=rJd7tmykN6XUv0qxhrccvlksipLdSdJr09Jc4nJHxj/ohrn1YSnKlAnmBOw8Uen0ee
         biK77HNIVjOrk7kZMgZyTpSUf6Wc/kp5r2DFKfA6DKAmiRcEqIRECDEs8qDecBQusFqI
         Ul9DuLbj+oe4XWOpdARXzDQmF0zYF13j+iUnvl9JC0oIavuPAi7DIY5YZzidi1pOF7Qh
         0ttNkAFS33zDZUsptFG1eZJIeg0nQf/7Tou1W2mxH5u9gd74oOFkDshFMLPfK8oADARM
         9rt85BmyFyqZhOdiP/hyHFqaQowvzq8PUkauaYE4UuppZyEK0Yq24Hw8TuaqBIw9JOPh
         DXdA==
X-Gm-Message-State: AOAM531CrDgNBWrKkWvDg/8bQk61NX1weNQ0w876BFlg2hpP3HmsLgki
	t+Xdt0VIfE2VPBU5IKyMeW01CDbCiC1Fqw==
X-Google-Smtp-Source: ABdhPJzv0t8BPW9Huimzgr5G+lspd/As3/Y/bbS9t/S8+jtJHTEjX8rrO7B6oAq5VygEhM0AmDX9Ow==
X-Received: by 2002:aa7:998d:0:b029:247:74a8:e552 with SMTP id k13-20020aa7998d0000b029024774a8e552mr23696462pfh.66.1618408671604;
        Wed, 14 Apr 2021 06:57:51 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:2d0c:893d:5593:863c? ([2601:202:4180:a5c0:2d0c:893d:5593:863c])
        by smtp.gmail.com with ESMTPSA id y3sm15279829pfo.79.2021.04.14.06.57.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 06:57:51 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] Clearly define clang toolchain in Parsec recipes
To: Anton Antonov <anton.antonov@arm.com>, yocto@lists.yoctoproject.org
References: <20210412153026.9413-1-Anton.Antonov@arm.com>
From: "Armin Kuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <2ce3b812-ba3d-261c-6021-824b60bbc076@gmail.com>
Date: Wed, 14 Apr 2021 06:57:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210412153026.9413-1-Anton.Antonov@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

merged,
Thanks

On 4/12/21 8:30 AM, Anton Antonov wrote:
> Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
> ---
>  .../recipes-parsec/parsec-service/parsec-service_0.7.0.bb     | 4 ++--
>  meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb   | 3 +--
>  2 files changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb
> index b3f7b21..0e14955 100644
> --- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb
> +++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb
> @@ -10,8 +10,8 @@ SRC_URI += "crate://crates.io/parsec-service/${PV} \
>              file://parsec-tmpfiles.conf \
>  "
>  
> -DEPENDS = "clang-native tpm2-tss"
> -INSANE_SKIP_${PN} += "dev-deps"
> +DEPENDS = "tpm2-tss"
> +TOOLCHAIN = "clang"
>  
>  CARGO_BUILD_FLAGS += " --features all-providers,cryptoki/generate-bindings,tss-esapi/generate-bindings"
>  
> diff --git a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb
> index 939e771..35c65c0 100644
> --- a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb
> +++ b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb
> @@ -7,8 +7,7 @@ inherit cargo
>  SRC_URI += "crate://crates.io/parsec-tool/${PV} \
>  "
>  
> -DEPENDS = "clang-native"
> -INSANE_SKIP_${PN} += "dev-deps"
> +TOOLCHAIN = "clang"
>  
>  do_install() {
>    install -d ${D}/${bindir}
>
> 
>

