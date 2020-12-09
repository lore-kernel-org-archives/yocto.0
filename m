Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web12.39.1607538199486488629
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Dec 2020 10:23:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nrMfphp9;
 spf=pass (domain: gmail.com, ip: 209.85.210.173, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f173.google.com with SMTP id i3so1556073pfd.6
        for <yocto@lists.yoctoproject.org>; Wed, 09 Dec 2020 10:23:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=CmVqCKQP8N24WdVtpA1kH/qhZYS17QWPNj733jplLcs=;
        b=nrMfphp9eTy7KY0oY2l2mgnYNYP1jQS9saUA+M9YDeqgXTW4s2ERD3K0WWIk+pgtOF
         9InY9VWKA9+uukjraoSO7hSq26dR89ucKU33kbPvlcbVcYSYzJDvyTLvdYohZeBYQbAP
         BTGXZd3FG4QTNvUSc5nZJgYtiPyLCxD5uA35BQyChIFT0CSFTI8tj/HsAl+A1VsDpHcN
         nlhcdnTg94D2AaXCRRCjmmoaHTA7nWi8ZFMmmb0gG8e6Es29D4uqwdheIlzwzS/XpagF
         0v3g6AWiyKCOFe93WuyqJaSseDlS/7N9FcS2d2+1WDgsRCORHvRG0UGsUlFe69Kr/e7Q
         h2VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CmVqCKQP8N24WdVtpA1kH/qhZYS17QWPNj733jplLcs=;
        b=LYjyl4rL46lYMHntjGcwHfmdWdeA5Fg2gtdWa8Z6BcAhb6EbONiaNzXCEGRrhpdrTG
         jh3MJIUTRvqjQYDiaGlxszjxBcJYdr6QxYLHLl8YEELQdUWL+Y1izUaioMMXqP/IlxBe
         6tqN0YyevjvFT6PYCWjAhfTiJ4Xo3CUpZVwEgut64DoegoOYzi34Yb4AdYODOycDrVQZ
         3TlOJhhzZ4jhx3wWDx1PW71CEP/WfZWjPX20RKAyHMS5MHT2AXjVWmYzkWEK6XTVcGLm
         lafkvBIK31hOHIdcK2HvmG7h7kf5FgEsn0KBMnneg7TOOoSRF+6kykoevNEKmuqsvxah
         80dQ==
X-Gm-Message-State: AOAM532T4v+pZI+KFeANRB4ivgU4LseMxtOCOUkJ8NOYqdyj7i5Gw1l2
	8LJP0ODzbDgnQdTkxFQKagOmt4M6KH6bog==
X-Google-Smtp-Source: ABdhPJzjyIvSrEHDBsz0OTkLf3XkY7SOkiASKTJj374HwsnH/eU9Qh3ILs9ujpIgvsi7I5dLyAoh5g==
X-Received: by 2002:a63:2885:: with SMTP id o127mr3095031pgo.391.1607538198285;
        Wed, 09 Dec 2020 10:23:18 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::5bf5? ([2601:646:9200:4e0::5bf5])
        by smtp.gmail.com with ESMTPSA id s17sm3246084pge.37.2020.12.09.10.23.17
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Dec 2020 10:23:17 -0800 (PST)
Subject: Re: [yocto] Cross compiler which runs on the target architecture
To: yocto@lists.yoctoproject.org
References: <1419325725.1777.7.camel@linuxfoundation.org>
 <026b39f3-9c86-6488-8504-10c6485c0216@herbrechtsmeier.net>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <fbe32ce1-e555-0418-c219-722af7586b95@gmail.com>
Date: Wed, 9 Dec 2020 10:23:16 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <026b39f3-9c86-6488-8504-10c6485c0216@herbrechtsmeier.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 12/9/20 4:38 AM, Stefan Herbrechtsmeier wrote:
> Hi Peter and Richard,
> 
> does a follow up of this old topic (thread) regarding a cross compiler 
> which runs on the target architecture exists?
> https://www.yoctoproject.org/pipermail/yocto/2014-December/022782.html
> 

I dont think there were further discussions. However, I think the 
cross-canadian approach is perhaps step in right direction. We would 
need to enhance it to be able to build multiple cross-canadian tuples 
instead of only one that we build today which is based on SDK_MACHINE 
and TARGET_ARCH,

> Kind regards
>    Stefan
> 
> 
> 
> 
> 
