Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
 by mx.groups.io with SMTP id smtpd.web10.7400.1630068072072886041
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Aug 2021 05:41:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=YCnV/9zV;
 spf=pass (domain: gmail.com, ip: 209.85.210.49, mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f49.google.com with SMTP id c19-20020a9d6153000000b0051829acbfc7so7644320otk.9
        for <yocto@lists.yoctoproject.org>; Fri, 27 Aug 2021 05:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=10qjXjPeVWESUS9Q0bwDiJRhArCeRH6+UercRLFPQQ8=;
        b=YCnV/9zVPLwUlm5tHUTE7ktXQ863srrkfJDkkWP9PCbhpJ9L5eoUGEs2tyJyT+8gKL
         NLDXia+EP3ELrjpCgtV5opgD7Ax++oXA8Uue64CSkmKd3W6rdKV3vOw9hWMI1b4fJFMo
         GZY7xlr5d4q09AgcnEtE7BZtI9s66dTayXrirXZPDzPr5h/R+P0qu2qqOhH1siYFxiQX
         MiHRK4HKKoccycdwlSi+twFOu+9uMpr+HS6BP0Am6g+7CD+qZX04JC92jbDQ5Gqi+mIh
         mBp+Amj1TJ/o4x5/IdOdh8HNjAV9RixKP5H9qGoG6Xx5+jvWVs1VmX79kSJTkQIfY+wC
         avrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=10qjXjPeVWESUS9Q0bwDiJRhArCeRH6+UercRLFPQQ8=;
        b=I3mpe+9CT69mY/zJNUMZtZ0C+0EulPnHDk0jwrsOJGkHE1qmuZe8aQ39h4q3qMGhfw
         LsgLeOYkgPwq+JDuhk11s1S1GQVi344K6ae6PTb6i7JJHPX6WyqEdoDy0hEkdUNL8NDC
         G+Xbxw4aAh0a8bU891qdF8ch0Cw70zVYMLLyyhBrnS1KI1HlqsnauTK8z1Gsk1Ksb4K0
         7RO5R13W5bxrJ7ju3ATRY7dMWPJe/PuWDxwSVGdpF60YgpQvqR6Y5aFb9jMTGj82h4q4
         MH4y7r3UCh0jZNB9hqFyFBsFxupX8ahypQye6rOi9GnxgRClaBT9aPOh4Q5CHH0Ee3FZ
         Z3BA==
X-Gm-Message-State: AOAM532xO/gON0b1P7Ahrf7qheD90QZ/0q+fOS8OgOC5JEUkcJvIRWqy
	g2oLD9p5Tu/slUNVNxL7BtvszpJXJ7I=
X-Google-Smtp-Source: ABdhPJzD8PJihwXaxMbHqHK5Aw4VYpWqcwbqvOafbLKoGNpsocYLKuZhRdZYyRELEDX1zgJg3UBlFg==
X-Received: by 2002:a9d:1ae:: with SMTP id e43mr8016138ote.26.1630068071054;
        Fri, 27 Aug 2021 05:41:11 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id a23sm1247076otp.44.2021.08.27.05.41.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 05:41:10 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [meta-mingw] [PATCH] grpc: use the new PACKAGECONFIG to disable shared
To: Sinan Kaya <okaya@kernel.org>, yocto@lists.yoctoproject.org
References: <20210824164849.12717-1-okaya@kernel.org>
Message-ID: <6ae884e8-4ec4-9595-d8ee-942fad9b0945@gmail.com>
Date: Fri, 27 Aug 2021 07:41:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210824164849.12717-1-okaya@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 8/24/21 11:48 AM, Sinan Kaya wrote:
> There is a new PACKAGECONFIG for grpc to allows us
> to selectively enable/disable shared builds.
>
> Signed-off-by: Sinan Kaya <okaya@kernel.org>
> ---
>   .../openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend  | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/dynamic-layers/openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend b/dynamic-layers/openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend
> index dc0ea42..4cbd1a4 100644
> --- a/dynamic-layers/openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend
> +++ b/dynamic-layers/openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend
> @@ -1,5 +1,4 @@
>   # doesn't build and not required
>   DEPENDS:remove:mingw32 = "libnsl2"
>   
> -EXTRA_OECMAKE:remove:mingw32 = "-DBUILD_SHARED_LIBS=ON"
> -EXTRA_OECMAKE:append:mingw32 = " -DBUILD_SHARED_LIBS=OFF"
> +PACKAGECONFIG:remove:mingw32 = "shared"

This is good, thanks. Is the libnsl2 also tied to some feature? Perhaps 
you can explain why it needs to be removed from MinGW


