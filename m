Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web10.8978.1605206390586990869
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Nov 2020 10:39:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rAQyR9+n;
 spf=pass (domain: gmail.com, ip: 209.85.210.171, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f171.google.com with SMTP id q10so5381724pfn.0
        for <yocto@lists.yoctoproject.org>; Thu, 12 Nov 2020 10:39:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=Uk/rVcP2F9ID6Np42X0qV10n7LwL9rASKiTHA97MYXE=;
        b=rAQyR9+nZoMqUHmIGdNuJakHiIPeF7jFCm7VDpGmXIM8ij4seOwLnGd6UOKG9L3Mhz
         n7WBXIem+5aZFaShLoC6YGhT2P7AdNFAmM97L3RTsC0lGwdX/ZmjPZIll7FZWe43OCW2
         HUwQ4e+piduxNPGhpTH2NbfcIoyjq98xh3Y1WSXnQYea9pvUYjddSQqcCk7Tf+lqkvIQ
         zi+wbGNtRR8q40+mcIElOCOHClzAk0NTaTmQxoOUu+fsb215dvVIpKAQRwioVLeOPlI2
         w7nMAKCfqyvj7B1EJeDrdNhWcPPTFHeirgHNKrkQKc4Evbpmlx7+QMcMaVq1qqO59b44
         dnww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Uk/rVcP2F9ID6Np42X0qV10n7LwL9rASKiTHA97MYXE=;
        b=C9MEqlALlN26NLV2bUOJ6BqMqq1wzUmo3W0yD9vCHiw18mLTlJ9sDk96k3yTlg2loj
         XgbMYGosb7qs8iuxRdmVulJywxPH3qTQ+pYjg53cjBfXrXEH0hvgbnXiafwvvLtsl8zr
         8LeTvx+4i8OXqxeSBXVbKaUIzHv9UrvpDx01voauT0gJ1nCoQNcfm82g9d3aHgyeOZFJ
         hhiE4GKo0CjbHBXuR9UMGsIaOGMgWYRAo3qt/I0LC5JSgriXEkm+p95raqcE5kfI1Buf
         7VVdKBZu1sL0D+BuSzEhVsQov0ux+c/TeVeDywLns2rgR0XegRRTWlYdnv7U5Tf2bCnx
         fQHg==
X-Gm-Message-State: AOAM53344S3xGx76I0pfJGzftJZW6yVj6gN7YodBn9KW62au0vAOYlCN
	YB5FATbuaZZBXu56tpzyF0PA6ZW9/zE2VA==
X-Google-Smtp-Source: ABdhPJwW3a5bcA+ako15oeAVYL/lRp6OC3xT4F+Cu1TuDrDcZ9O9/Y1hoE0x8tBIGZ/+BIVj572uLQ==
X-Received: by 2002:a62:2cc1:0:b029:18c:85f5:864b with SMTP id s184-20020a622cc10000b029018c85f5864bmr735005pfs.29.1605206389403;
        Thu, 12 Nov 2020 10:39:49 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::740e? ([2601:646:9200:4e0::740e])
        by smtp.gmail.com with ESMTPSA id l14sm7631794pfd.113.2020.11.12.10.39.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 10:39:48 -0800 (PST)
Subject: Re: [yocto] #yocto "zeus"
To: steven.monsees@baesystems.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <MADEUP.1646C10EBE4A8CF0.4377@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <5c222c27-5f97-9ffc-ddf0-7fd774da5442@gmail.com>
Date: Thu, 12 Nov 2020 10:39:47 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <MADEUP.1646C10EBE4A8CF0.4377@lists.yoctoproject.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 11/12/20 4:03 AM, Monsees, Steven C (US) via lists.yoctoproject.org 
wrote:
> This is probably a simple question, but since I am new to yocto there is 
> a lot to learn…
> 
> How do I establish kernel access permissions for the “zeus” kernel so 
> that when my application is up and running, (or an application startup 
> script), can create read/write files for access/updating in the ”/etc” 
> and “/dev” directories ?
> 
> In the few cases I do this I am seeing unable to open errors…
> 
> Note the same code appears to work correctly under “rocko”…

you have to provide more context to help you more, but usually /dev is 
populated with devtmpfs during kernel boot. and similarly /etc is 
mounted early on. So access permissions could be mounting issues perhaps.

> 
> Thanks,
> 
> Steve
> 
> 
> 
> 
> 
