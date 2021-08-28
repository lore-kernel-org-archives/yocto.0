Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web12.3629.1630158302813325719
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Aug 2021 06:45:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lP5qXpcN;
 spf=pass (domain: gmail.com, ip: 209.85.210.175, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f175.google.com with SMTP id 18so8275485pfh.9
        for <yocto@lists.yoctoproject.org>; Sat, 28 Aug 2021 06:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=fzV/C1HoLc+ftjinG2PApkKe2ufqethSJ+Kp9FXFvKs=;
        b=lP5qXpcNRH+YY6e4CX9DsW6+X9jnh+/niWVBjcDF/UVAbGFMA9Y+DsQiNIF3I0acRG
         ddpg1gh004FAMbtqyanOjI7A7eRCWuJQ7zqJwq33eAldJ0txGztAv/rLUKaW6VBeTudx
         r6pc58jzOYlxs6cnQwnyiTgUsArnWl8IqDIFZgauXmGS8YdB31TYMSRoYPLVxlkidNjc
         QeAngmqGD7WDHWvr6iX/IzSE+S5WKxIbNavkZgG429nEOH+Lao0KMIkm7eK5k9/NyWQr
         66d6mugkwYvH20LYhX4t6sWFgeyhZBJIL3l5U3j/YIfwSHoT5PfmA3u6PtThtqMviWKZ
         UB3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=fzV/C1HoLc+ftjinG2PApkKe2ufqethSJ+Kp9FXFvKs=;
        b=bfRjeZNR40vnthpykP09sWSeAvyoopIY131sBruwvo1KMI+exI+1d1tEE78ijAtwua
         R1SCJlDNNzzU6pu1SxCeCiCL1GmPlw7DU3o1qPQGrtWFIfM7xASI21aN6xKkecfeTWlv
         AmLkINNWt1iPQi5wsFcavQZRxFk63wA1ZAxHncGmROeG+2eT1XRHc8IQid3jXRWNuMSs
         uPjDvs8xn+oUYV9M0YND/ZjVbE/PHuJZTL/Uxrx3vQbh2e3e5EALUrfkUrG/LzCNO96h
         VRgKaAyTEjbl1sk1zAwJCR1mQWwqppdftR01YwcyOSQlyqoMctuXrfHOLXC5vNHVE3F9
         63nQ==
X-Gm-Message-State: AOAM530nKM9jQxvpbrFNgkGfrihQf0wDLCSwLKYjzLAC1TROpMt8j7at
	VFJAOaz5VmSgu72eIX2fC2zcQk179a4=
X-Google-Smtp-Source: ABdhPJzpgz/N3ZMPn8OHIURY8+b59auVPihlObyxIbgPK5F+YZj2xgroSxALjBBlBP1Mil04GqKoXg==
X-Received: by 2002:a62:7c02:0:b0:3f8:f3c3:1b32 with SMTP id x2-20020a627c02000000b003f8f3c31b32mr3752340pfc.62.1630158302097;
        Sat, 28 Aug 2021 06:45:02 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:b66e:f798:4f1:7aab? ([2601:202:4180:a5c0:b66e:f798:4f1:7aab])
        by smtp.gmail.com with ESMTPSA id q4sm8906229pjd.52.2021.08.28.06.45.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Aug 2021 06:45:01 -0700 (PDT)
Subject: Re: [meta-hardening][PATCH] README: fix mailing lists
To: Marta Rybczynska <rybczynska@gmail.com>, yocto@lists.yoctoproject.org
References: <20210825062000.10223-1-rybczynska@gmail.com>
From: "Armin Kuster" <akuster808@gmail.com>
Message-ID: <00fa9a02-c05f-d7a6-682e-22232461a05b@gmail.com>
Date: Sat, 28 Aug 2021 06:45:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210825062000.10223-1-rybczynska@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

merged

thanks

On 8/24/21 11:20 PM, Marta Rybczynska wrote:
> The address included in the meta-hardening documentation
> does not work and was changed in other places in 2019.
>
> Signed-off-by: Marta Rybczynska <rybczynska@gmail.com>
> ---
>  meta-hardening/README | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/meta-hardening/README b/meta-hardening/README
> index 37a0b7e..191253c 100644
> --- a/meta-hardening/README
> +++ b/meta-hardening/README
> @@ -64,14 +64,14 @@ layers: meta-oe
>  Maintenance
>  -----------
>  
> -Send pull requests, patches, comments or questions to yocto@yoctoproject.org
> +Send pull requests, patches, comments or questions to yocto@lists.yoctoproject.org
>  
>  When sending single patches, please using something like:
> -'git send-email -1 --to yocto@yoctoproject.org --subject-prefix=meta-hardening][PATCH'
> +'git send-email -1 --to yocto@lists.yoctoproject.org --subject-prefix=meta-hardening][PATCH'
>  
>  These values can be set as defaults for this repository:
>  
> -$ git config sendemail.to yocto@yoctoproject.org
> +$ git config sendemail.to yocto@lists.yoctoproject.org
>  $ git config format.subjectPrefix meta-hardening][PATCH
>  
>  Now you can just do 'git send-email origin/master' to send all local patches.

