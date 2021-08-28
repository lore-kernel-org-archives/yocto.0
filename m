Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.web11.3699.1630158412765267308
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Aug 2021 06:46:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=U4kkMdNQ;
 spf=pass (domain: gmail.com, ip: 209.85.214.176, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f176.google.com with SMTP id n12so5852209plk.10
        for <yocto@lists.yoctoproject.org>; Sat, 28 Aug 2021 06:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=sbyhxoLuZTmi+NzcYajlIJSFhjdtXplBtdImxIcmD30=;
        b=U4kkMdNQF3ZaOG6mEuz66SpC31jFH4wIUkuDBVW8w/x7b4gdDqgkn2b8oZmP2KTaGN
         nL2Xho/iaErU3FcFxyPT6BK7q+REAa2VFtGr1WV/YgLIDKLgvfScSPkuG2Hw4U1aQWYn
         4EpEMnJM2wcfvNSPNZVREMM9XKgJf/G3xypHd6d+twnemxH/IJ5ewjXHbWGVCVx2H+5O
         +xSf8vt1QMOlZDwIljxI7xSdyK1zLUQ8mupev0rgFka9OFU3Ryua/yzsJwEWNGyvnsvd
         8Mj0i+W7WYnYPnzJC3w2TgT8iQaVFWrbffIi2JLf0Be4dhRXxRlTH6psz5OsiuU5KQvH
         VX0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=sbyhxoLuZTmi+NzcYajlIJSFhjdtXplBtdImxIcmD30=;
        b=LU9rJB1cofE72lh4//usi/pjmLyNNvY9VbD3Btgw5AG5J8XXE0l1wbCR8dLTI4Vbc9
         ucIMZbg/MEb4r1o64tJKOkVvLJVIYMVDky0wVaDVfv46eU/P+YHleCSsfi9l7gu0YRKp
         1z/T0TTXFskr5rvKgH+YU2Ou/J9L3hgoEjisWvep+hwrTfTlond7E/bXfS4NffEG/8+S
         +cNWDeYvuUOmpwWqoH6yO11OuYcf4YrGG7eFio7XByewH2qI7FdMvlXCv7M3ZB3/zkX7
         h2GtVpvXqHK49zNLV9j6oDgAFMTB75/9CgQnsJ89lrlXtnM71OSmrbbfvdFSSK9gKx9C
         hgYw==
X-Gm-Message-State: AOAM530yQ8sw5Esw4aVQS4nBKQe4Q4pxIniikHFhC/n0fiZPUDUi/ccU
	cjtxHUAgpwStVCzswH0SNDpx5JLW9ME=
X-Google-Smtp-Source: ABdhPJyLKjLZaj+XI86I0h1w8qO8OOwaF0grGmuvG4MyVdQVOjl0UuwcBIqq4Bez6RXBbeas3ukj3Q==
X-Received: by 2002:a17:90a:b016:: with SMTP id x22mr28841685pjq.205.1630158412182;
        Sat, 28 Aug 2021 06:46:52 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:b66e:f798:4f1:7aab? ([2601:202:4180:a5c0:b66e:f798:4f1:7aab])
        by smtp.gmail.com with ESMTPSA id a20sm15263579pjh.46.2021.08.28.06.46.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Aug 2021 06:46:51 -0700 (PDT)
Subject: Re: [meta-tpm][PATCH v2] README: fix mailing lists and a typo
To: Marta Rybczynska <rybczynska@gmail.com>, yocto@lists.yoctoproject.org
References: <20210825132543.24390-1-rybczynska@gmail.com>
From: "Armin Kuster" <akuster808@gmail.com>
Message-ID: <fa89bd7b-67df-3bff-9e3d-8f16078ce499@gmail.com>
Date: Sat, 28 Aug 2021 06:46:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210825132543.24390-1-rybczynska@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

merged
thanks

On 8/25/21 6:25 AM, Marta Rybczynska wrote:
> A number of typo fixes:
> - tmp->tpm in the DISTRO_FEATURES
> - update the mailing list address as it was out of date
> - update the distro name in the subject
>
> Signed-off-by: Marta Rybczynska <rybczynska@gmail.com>
> ---
>  meta-tpm/README | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/meta-tpm/README b/meta-tpm/README
> index 4441dd2..2b32a9f 100644
> --- a/meta-tpm/README
> +++ b/meta-tpm/README
> @@ -5,7 +5,7 @@ The bbappend files for some recipes (e.g. linux-yocto) in this layer need
>  to have 'tpm' in DISTRO_FEATURES to have effect.
>  To enable them, add in configuration file the following line.
>  
> -  DISTRO_FEATURES:append = " tmp"
> +  DISTRO_FEATURES:append = " tpm"
>  
>  If meta-tpm is included, but tpm is not enabled as a
>  distro feature a warning is printed at parse time:
> @@ -57,15 +57,15 @@ other layers needed. e.g.:
>  Maintenance
>  -----------
>  
> -Send pull requests, patches, comments or questions to yocto@yoctoproject.org
> +Send pull requests, patches, comments or questions to yocto@lists.yoctoproject.org
>  
>  When sending single patches, please using something like:
> -'git send-email -1 --to yocto@yoctoproject.org --subject-prefix=meta-security][PATCH'
> +'git send-email -1 --to yocto@lists.yoctoproject.org --subject-prefix=meta-tpm][PATCH'
>  
>  These values can be set as defaults for this repository:
>  
> -$ git config sendemail.to yocto@yoctoproject.org
> -$ git config format.subjectPrefix meta-security][PATCH
> +$ git config sendemail.to yocto@lists.yoctoproject.org
> +$ git config format.subjectPrefix meta-tpm][PATCH
>  
>  Now you can just do 'git send-email origin/master' to send all local patches.
>  

