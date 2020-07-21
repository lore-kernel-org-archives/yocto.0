Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web10.2840.1595358658043631906
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jul 2020 12:10:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ptCv9ruF;
 spf=pass (domain: gmail.com, ip: 209.85.216.51, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id b92so2131206pjc.4
        for <yocto@lists.yoctoproject.org>; Tue, 21 Jul 2020 12:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=zLm6g7Bs7uU96mYUgT75GvspKqkaEoBYa6bCI9SxfuU=;
        b=ptCv9ruFntC2uXp1cQFUVFWrU2kktajIxiojViRGAzrcJLUgw4v9G77ltM4o+YYSW7
         AUNrVhzaA4yyRFd2F2kQsiCPV4ygfzb7sIpwJJVojdTGbqwqI8mgdphCHZen8+W3qAK3
         9QE94n4/nZ9MeqMM7XAzBqGx4hHz085J2hMLjMiAXefYULgZ0nNDMcaubCF48uOpy9Cf
         EOjzQq2wuxJwBlKaDGNrysstAsTse7xXGk4RDoh9jwqYchXFHHpSLwbZtK7wCQGXWOO5
         ZVK9rFKbsFqzd9svO6yn8bklI/3i40WRM3cuv2syZYWLZXK+KrrAkk+TuDjvJ94Ca/Z2
         yBQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zLm6g7Bs7uU96mYUgT75GvspKqkaEoBYa6bCI9SxfuU=;
        b=K4mhuphnYyoVI5bGhIUm6AqdYwCtS1E+tpRmUwmLpUbawVemteEXgGi6dmHGD/ZlFg
         fTEex9f7bJhvMUTw6jSRtpmY9DGFCLn7LAiR8FNCUpGw+gz3RmRClJSKs6d2E+LoX8Kt
         GkhGpG+Bk9OwF4KJywU1GXnjmDc+OdvsPAlBFEWqO/zxXIMJvuk1qh/DoQHfc7O9F0nZ
         ABWICN/V9/W5W8NcCxmt7Jwg1ZvV7NRHYIHZGVWEtYE9dY9sKTwBteyM8q4L0tTWq3mV
         +wCM3EpHeQgaebbMLgDYQLX0DkzKTUXypnNKg+SvL5CfoAc5I4QwOet2xCGbSZ6nqrpe
         PBnQ==
X-Gm-Message-State: AOAM532LKmNf9ZU6JC3zjeP8JN7qGwFpM8S26z1yL4u7MQ+8ohcope2n
	Ba8dxGnXfPnKF2PECxfW1DZc0OqB1Ks=
X-Google-Smtp-Source: ABdhPJwlWM/swJP0+qEQZR13LdZlE6LS/yRJNDem8AgCR/5/KhLQ7VoPkYG/GuZryX1rAzAyy0um/w==
X-Received: by 2002:a17:902:b685:: with SMTP id c5mr23164141pls.115.1595358657119;
        Tue, 21 Jul 2020 12:10:57 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::6651? ([2601:646:9200:4e0::6651])
        by smtp.gmail.com with ESMTPSA id w9sm21552476pfq.178.2020.07.21.12.10.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2020 12:10:56 -0700 (PDT)
Subject: Re: [yocto] Linker error undefined reference to `_rtld_global_ro'
To: Robert Varga <robert.varga@getinge.com>, yocto@lists.yoctoproject.org
References: <31567.1594972310474932989@lists.yoctoproject.org>
 <5730.1595344075792268885@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <659b0db3-ad58-0686-e88a-191327606088@gmail.com>
Date: Tue, 21 Jul 2020 12:10:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <5730.1595344075792268885@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 7/21/20 8:07 AM, Robert Varga wrote:
> Hi Khem,
> 
> Do you have any ideas, whether the passed compiler parameters ("-pie" or 
> "-fpie") are the origin of this linker issues?
> 
> Does anyone know if glibc is compiled with "--enable-static-pie" if the 
> passed compiler parameters include those "-pie" or "-fpie"? Or are they 
> unrelated?
> 

can you try setting GLIBCPIE = "" in local.conf and see if that helps

> Thanks a lot for your support.
> 
> -- 
> Rob
> 
> 
> 
