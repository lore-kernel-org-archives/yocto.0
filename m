Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.47.1617139205090155132
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Mar 2021 14:20:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pm+iQVL0;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E515238C057C
	for <yocto@yoctoproject.org>; Tue, 30 Mar 2021 21:20:01 +0000 (UTC)
Received: by mail-pg1-f177.google.com with SMTP id v186so12629081pgv.7
        for <yocto@yoctoproject.org>; Tue, 30 Mar 2021 14:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MBHL7kRymEKPTMaE5PA2HQrN45786vJ2NRQwnNz25UA=;
        b=Pm+iQVL0E77gWu3oGBKjtowlT0ny/rD0wXElexprhdUBAXLo+VAcwDck5Hh5jv61aI
         aZU7+I+8KEIcYuWHFN9mH0qHasCvi3vdez7GfbHmTatBK7VzpG8PjZs4HB301vAG2fGG
         wfENnpOgMQsTpjeBH9Y8/xOjhDYdNG6SCedQZVGoV4HFffIdFDSsl66WPHUy7XlLOT9g
         Ca6CnV/5dzvyzE4xVDHKkVtsvzEHdukf5UE0IFm+JXTkGDnT38UYKo6zLXOSdqqybIDC
         OXm51Mxf46QQabbaLNafJPvUABYEffX2wnn3MTB6A+15piIrh94+U+KEudU0T1UvLane
         hoYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=MBHL7kRymEKPTMaE5PA2HQrN45786vJ2NRQwnNz25UA=;
        b=dJNsfXgcWlv66MthCgLVRk6gpegsRN9gekXjoToFO32Dehtmzjo3mGtukkiZHJFPDN
         GDphrmaEqEjM0zPauzwjEuoFwA8I4H+5gUnqNNF54LqFyeoRe4W1njrkwsidsEJwPd6s
         OIn1C/5OrLjb7Ppo/JOhtxQoKenAuKEpDz0xWnr5Pz6ORP81/ertwO7ZvULPztPP4OX9
         kLg0itMOJUkDoMqxBGNF2NsgsKdLqtkEHAoNmJCSUo5FSXXnuLnl9Y0EJkC7TGCRuaIS
         sNATbs6IcLUP8wP96K0F9kaZs8DZHG2CCyFkuq30iO1IPUW850K6rR8CyXvNZv85tfKI
         5o/g==
X-Gm-Message-State: AOAM531H4xXaK+QBB1CgylLr3KJsiAElFn0M4Jvhbqhl5MyNJMVaOgnC
	u2PW4pCWF24I/C+RyHa/KpdLCm+DDEKLDg==
X-Google-Smtp-Source: ABdhPJxmfW/gLgTVhKrT+4BWLqO6/17qmNfkb3CM34TuZ8CQrQSApVuk9kO4PiVh/xquom9eyaxLIQ==
X-Received: by 2002:aa7:86cf:0:b029:20a:f9d5:da77 with SMTP id h15-20020aa786cf0000b029020af9d5da77mr25673pfo.16.1617139200713;
        Tue, 30 Mar 2021 14:20:00 -0700 (PDT)
Received: from ?IPv6:2601:646:9200:a0f0:d828:cc50:358c:26a2? ([2601:646:9200:a0f0:d828:cc50:358c:26a2])
        by smtp.gmail.com with ESMTPSA id i13sm148158pgi.3.2021.03.30.14.20.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 14:20:00 -0700 (PDT)
Subject: Re: [yocto] No significant diff b/w qemux86 and qemuarm poky build of core-image-minimal
To: Ross Burton <ross@burtonini.com>
Cc: Randy MacLeod <randy.macleod@windriver.com>,
 Yocto discussion list <yocto@yoctoproject.org>
References: <4eef7ff7-0bcc-3bb7-6b08-a194de2b2491@windriver.com>
 <111337d5-90b2-2bcf-8d7b-b68ed39e265b@gmail.com>
 <CAAnfSTs54V+AvonHAssbvwzO6fM3zxJ3dgFOU7BN38Sp2xj=gQ@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <4e4b5508-dc30-5f6a-a664-9462eca41c04@gmail.com>
Date: Tue, 30 Mar 2021 14:19:59 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <CAAnfSTs54V+AvonHAssbvwzO6fM3zxJ3dgFOU7BN38Sp2xj=gQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 3/30/21 1:48 PM, Ross Burton wrote:
> On Tue, 30 Mar 2021 at 20:41, Khem Raj <raj.khem@gmail.com> wrote:
>> Thanks for this infor Randy, really appreciated, I think I will also
>> look at the h/w angle.
> 
> Khem: if you can reproduce this on demand with a clean build (ie
> oe-init-build-env with a clean build directory, just set DL_DIR) then
> enabling buildstats would give some interesting metrics.
> buildstats-diff can compare two build runs and tell you what the
> differences are.
> 

yeah this is doing world build of not only core but several other layers 
included a usual build takes around 10 hrs for this machine config, I am 
planning to

1. Collect build stats
2. buiid another qemu machine on this VM

it could very well be rotting hardware underneath the VM.

> Ross
> 
