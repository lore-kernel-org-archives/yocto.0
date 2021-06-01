Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web12.58821.1622559529601095610
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Jun 2021 07:58:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=OafjlLcA;
 spf=pass (domain: gmail.com, ip: 209.85.210.173, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f173.google.com with SMTP id z26so7592739pfj.5
        for <yocto@lists.yoctoproject.org>; Tue, 01 Jun 2021 07:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7WyZInY6+Twc3DJ9LwnJSKZB0+5JcwyNKZFqF3FbrRk=;
        b=OafjlLcAjUDoSFosWhXdO+tuPbdLE5gKjOGh+qLUMvpyB0QCI/k9YGTzYVb+Kpuz0H
         rAW4h+h8nhB4bx8MSSa7//QkrJgafMDSlIGtz9Np3KOgaPrr05KzW9YujmVT9UdY6llz
         USSjaT9Q+r7E5do0gKfMxXTJbMTlJTM+pJOL+BdangyAXdwFECxeUIz2hzvE7Xxo3/hu
         xBC5eJBE9pp1GCDnrIuXtK2ydhLldkD5VsirporxJyh4m2M4N4bT11BhDI57WcwD5XFW
         7Oy2ONJ/PRJ56+atqlijxXyx85AkfrqNgylrusn+q9e7L+KEg4OkVU+eKtEiAWJtZAEt
         HECQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=7WyZInY6+Twc3DJ9LwnJSKZB0+5JcwyNKZFqF3FbrRk=;
        b=Az6V96yaDUF6ZzduB2QbapbDcXwqj13EkHjmdObn9ewus+ObpUUZbN4JTbrI6Cnog8
         8lZr1ABIes6l84L6Ba/hAMZ9NlW32kQ/svlpMWEnEY3E8q9+ckSP2JBxCA+RJnVPIR0Q
         ogtJ4S7M8STxJYqddmsKsFBLjN6+3LbWwq/kgC3HNmTm1+GyW5j999aT4ReMqvmWVb8g
         FdktNTsgZC0c1grj7ctojOBmuz5ToEuNAMtmdjGVuPi+APyTIXkw4Vslj2cG61rhJdZu
         NB6TatAUSXpKnjJnf35UdLCZxv7QkERaA/660hUohCRtA+JiT6nNg6AasVqTWd2CULYF
         3xrQ==
X-Gm-Message-State: AOAM531LG/eygQEhOG+67sstv9zMxwCM24mfXTA8drKhQhGt1aEcYlZ/
	JaVFXZcdP6V6uoKYU0+BMRM=
X-Google-Smtp-Source: ABdhPJx8exTmkIKrDC6Xr6KSlstzJC5GD8thATc1fXxACCGIY99LTz6HYFGLklG09P3p2d7ZJFa02A==
X-Received: by 2002:a05:6a00:7c5:b029:2e8:d5f5:9677 with SMTP id n5-20020a056a0007c5b02902e8d5f59677mr22211567pfu.68.1622559528902;
        Tue, 01 Jun 2021 07:58:48 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0::6bc9? ([2601:646:9200:a0f0::6bc9])
        by smtp.gmail.com with ESMTPSA id br14sm2415463pjb.41.2021.06.01.07.58.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 07:58:48 -0700 (PDT)
Subject: Re: [yocto] systemd, ELF binaries and runtime dependency tracking
To: Paul Eggleton <paul.eggleton@linux.microsoft.com>,
 yocto@lists.yoctoproject.org
Cc: Luca Boccassi <luca.boccassi@gmail.com>
References: <20210531224016.GA24592@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <71099fe9-7acd-186a-e204-18347a83359b@gmail.com>
Date: Tue, 1 Jun 2021 07:58:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210531224016.GA24592@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 5/31/21 3:40 PM, Paul Eggleton wrote:
> Hi folks
> 
> Upstream in the systemd project, a proposal has been made to add a special
> section to output ELF binaries to record soft runtime dependencies, so that
> they could be read and utilised by distribution build systems such as ours
> (they would be translated into RRECOMMENDS in our case). At the moment that
> doesn't seem to have generated a huge amount of interest in the traditional
> distro space, but would it be interesting for us?
> 
>    https://github.com/systemd/systemd/pull/17416
> 
> For clarity, we (Microsoft) will volunteer to do the integration assuming the
> above pull request gets reopened and merged, which is more likely if we
> express our interest.

Finding dlopen dependencies is a neat idea, but it has to be accepted 
cross distro, and also applications have to manually declare it in code 
if I understand systemd's patch correctly.  This will be hard to 
accomplish as you can see changes are spread across apps from distro 
point of view. Perhaps there is a smarter way of detecting adding them 
in ELF spec itself and then have tools like linker help implement this
and also possibly collect the information or guide the users to achieve 
this would be helpful.

> 
> Cheers
> Paul
> 
> 
> 
> 
> 
