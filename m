Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
 by mx.groups.io with SMTP id smtpd.web12.835.1601389386287888330
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Sep 2020 07:23:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=D9Cw1LI8;
 spf=pass (domain: gmail.com, ip: 209.85.210.196, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f196.google.com with SMTP id k13so4721568pfg.1
        for <yocto@lists.yoctoproject.org>; Tue, 29 Sep 2020 07:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=RroT+G6DH7nydHbd53TQ9dpZo5qcIHuyqV00+sup1IQ=;
        b=D9Cw1LI8VpYorx+fOTwmoeKLYzDmqQMPze8IzVMpoi7cEXMy7ewc1WA+5DtCLXF/IH
         26Dr0jgvnE1e3r9c5V87WqBg3oq4vzL7ftPfDU6p7oAM8Hmg4FvKo5Q+TL2he+yUMZLl
         ixzMNxvkjonMC8IhDdj2MLr/Y4UPMmgI4Ol+49V7hO6IaKxtFoaWRzQyAEjwFJQbHS2V
         W6i0R6nxzkwIoMCP/ISxyJ1w8O1EBNDIpuHzMu0TGhgl4hvkxlnZxyMN6oXSk1Mlb/H2
         mow05IsLxuIgxrFv6Iv2h5ATtAquKTyrmpVdy1VXJMhuRQ/gTKw7vIzI8n9eLORJoYN0
         XI6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=RroT+G6DH7nydHbd53TQ9dpZo5qcIHuyqV00+sup1IQ=;
        b=i6pGy6p71Wgu0OToon4eb2jeoVtuln/nz1L87aY94fVqZhHBBNR6K46Y24FmDpcIB3
         ZQeuUN9jw4xDhFkznk0PgpKDbLbIZWNcda6divj8LWR6x5o75OLzkucF8ZDFZqBzgzXe
         n/r98bwOSvsy4HE0Z5UnWEOUMPcITeqYSlZVcEMlgEux5P5AaieHErsmhRI1WC+OOZji
         biaJqVMFOBz6XUjku+ldn57WykhB3/v18gVKY2mogE5ogVqAxchtSeh2rs0H+OZ448GR
         /fsxQB9Ppb7rIvYG668xE78H2pv4XNLenFOoMGX5G59n0PLuq75M+Hunkp1VjUJFUWn/
         taQA==
X-Gm-Message-State: AOAM530DKXqcrhNZmLkW4jVPLGpD6DkVMqfKWP4eHHQctwy+bjrksob1
	MjWaLzg5sEnGGbPi1Pcz1e4=
X-Google-Smtp-Source: ABdhPJzF8Ez9sUbUh5SII4U+DndCp1lGsXx1MxpeGmol3Hj03TlpqdPLnh/XrAQlHmp1AcqgNsCfzw==
X-Received: by 2002:aa7:8ec7:0:b029:13e:d13d:a137 with SMTP id b7-20020aa78ec70000b029013ed13da137mr4358900pfr.31.1601389385836;
        Tue, 29 Sep 2020 07:23:05 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:9d97:e0e:5802:c8f4? ([2601:202:4180:a5c0:9d97:e0e:5802:c8f4])
        by smtp.gmail.com with ESMTPSA id r3sm5581514pfh.88.2020.09.29.07.23.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 07:23:05 -0700 (PDT)
Subject: Re: [yocto] [meta-security][master][dunfell][PATCH] gitignore added
To: Adrian Freihofer <adrian.freihofer@gmail.com>,
 yocto@lists.yoctoproject.org
Cc: Adrian Freihofer <adrian.freihofer@siemens.com>
References: <20200923062503.708024-1-adrian.freihofer@siemens.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <78af4553-f6e2-62b7-65fc-4b996f602c92@gmail.com>
Date: Tue, 29 Sep 2020 07:23:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200923062503.708024-1-adrian.freihofer@siemens.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 9/22/20 11:25 PM, Adrian Freihofer wrote:
> After running testimage there are some python left overs at
> lib/oeqa/runtime/cases/__pycache__/
>
> Signed-off-by: Adrian Freihofer <adrian.freihofer@siemens.com>
merged
thanks
> ---
>  .gitignore | 7 +++++++
>  1 file changed, 7 insertions(+)
>  create mode 100644 .gitignore
>
> diff --git a/.gitignore b/.gitignore
> new file mode 100644
> index 0000000..c01df45
> --- /dev/null
> +++ b/.gitignore
> @@ -0,0 +1,7 @@
> +*.pyc
> +*.pyo
> +/*.patch
> +*.swp
> +*.orig
> +*.rej
> +*~
>
> 
>

