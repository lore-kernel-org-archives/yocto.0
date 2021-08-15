Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web08.6761.1628991000527295584
 for <yocto@lists.yoctoproject.org>;
 Sat, 14 Aug 2021 18:30:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NjLcZ8Y3;
 spf=pass (domain: gmail.com, ip: 209.85.216.42, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id fa24-20020a17090af0d8b0290178bfa69d97so21817248pjb.0
        for <yocto@lists.yoctoproject.org>; Sat, 14 Aug 2021 18:30:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ScSQi89oUFHTqmw7DSARDfCq6XPeSfNrmjdR5qX3zM4=;
        b=NjLcZ8Y3lJ7MMULmJIgQ9EVDnZvnalWS2UZDmuO+f2ZDS+IuNKxDAf1kwbjUz2Yd4O
         E7yvtBtQQ5diEDdKUDUSdcwp0/ykojInLlXvqTYGjYpJ+0XayY5oQE9fkBWb/ho1h9h5
         D7dIY5ELwNXulVoP/odj523TGEVTfWHacrNNTVzcWzruhiQ/LEGAaXW7cLks3sK5Eics
         7OrJtv6TbiRyxi4M7H0cHmvsSJePuk/Ga1ojLG0xj9Mkli3iNYM87jIdtW89ZdrOgCmO
         fNWGXsuFfRHC5IuOXUD3sq7rx6Fd4144zSc5npM1jYFCEdw1zb6AUoYbBxiuLO321uVx
         u4nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=ScSQi89oUFHTqmw7DSARDfCq6XPeSfNrmjdR5qX3zM4=;
        b=NtVcy5+jnh/XAc+3AjMOoG6Rof40+PrwigSzfxbPfmeDk4+LJYLPGdgnmRuzjAKHd5
         +OOr7gDEnpkdasQap3VT9RHOmfrsSOv13m+y7yBCEcJx37vAg6Z+imT5+wYVUVUZCicX
         gWNnkXZCeDHu0Q56F1kaK1aAO1DX+p/xL/udrEAPs1ic29M3wvqLdkjJ37haF6g1+qtX
         /wzrf794heULLgnigroaPQ0tzIhYUb6gvbn/o9mqvEeBPX1Cy9j+XBTOdD5mW9VJA4NZ
         /KaSRZRUKT6tXvfsfVhLQ9ZUD+VT7lbVqYH5b/cUYZFOoNyCbbe9GR+CVYbdW6b6jy0k
         VCrA==
X-Gm-Message-State: AOAM533Ebd1OIahkmDEdVa0QPf5GR+aZCaUz1lOyCDonac/f6jmT3WVZ
	oTBDh/hjCdDbeWu0FOxZxtEMLnbVSgwIpA==
X-Google-Smtp-Source: ABdhPJyPl9Ap8JbqxmptgY4yDBRs2LgWttPw/jBUnMzF9V/lx2crJDocLpMPx6yDimFRGN4cDSCd2A==
X-Received: by 2002:a17:90b:4b84:: with SMTP id lr4mr9894565pjb.32.1628990999615;
        Sat, 14 Aug 2021 18:29:59 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0::f40b? ([2601:646:9200:a0f0::f40b])
        by smtp.gmail.com with ESMTPSA id q21sm7767993pgk.71.2021.08.14.18.29.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Aug 2021 18:29:59 -0700 (PDT)
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 1/2] auh-config: enable systemd only for glibc
To: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
References: <20210814085644.19989-1-alex.kanavin@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <68996294-9080-5139-4b1f-a7a5ead2d831@gmail.com>
Date: Sat, 14 Aug 2021 18:29:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210814085644.19989-1-alex.kanavin@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 8/14/21 1:56 AM, Alexander Kanavin wrote:
> It is not guaranteed to build or work otherwise, and causes
> update failures in unrelated recipes when building for musl for instance.
> 
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>   scripts/auh-config/local.conf.append | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/scripts/auh-config/local.conf.append b/scripts/auh-config/local.conf.append
> index b18590f..417d228 100644
> --- a/scripts/auh-config/local.conf.append
> +++ b/scripts/auh-config/local.conf.append
> @@ -1,4 +1,5 @@
>   
>   INHERIT += "buildhistory"
>   LICENSE_FLAGS_WHITELIST = "commercial"
> -DISTRO_FEATURES_append = ' systemd pam'
> +DISTRO_FEATURES_append_libc-glibc = ' systemd'
> +DISTRO_FEATURES_append = ' pam'
> 

Please report the problems to mailing list and we can try to help if 
they do not work with musl. We do support systemd/musl combination and 
try to keep it working
this will limit testing this combination.

> 
> 
> 
> 
