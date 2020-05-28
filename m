Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
 by mx.groups.io with SMTP id smtpd.web12.14702.1590679859355181052
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 May 2020 08:30:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mxZ2TxQ+;
 spf=pass (domain: gmail.com, ip: 209.85.161.48, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f48.google.com with SMTP id v3so1176794oot.1
        for <yocto@lists.yoctoproject.org>; Thu, 28 May 2020 08:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=CQDb6NfcPgekiHOJyWlfPEMYIO8ZIKx7Th63xJSbnl8=;
        b=mxZ2TxQ+kOFkofio3dSaVXHfWj5WKF91gE0dM0KPMphA6AM13juW6hLSLTARV9tWQr
         C/WnuOJKdMLoIutPSjAme2b/QSYv8bK6cumC4FW1CPh7S/ogxMPXOqIJP0noFXKEfGl7
         adeMZpE4z48f2g6DZNxeQz+eHIdPRarSD/+3+v0gX/AF0G+BFMorXza9j11wLCTKEtlf
         MPZu446ZREODTR2+/OpSwbr7yM0srkCq+CJkm1+kh460rDU+PWqZFfz41xsbH/T4SKSF
         inodmqCeGjD4nAYrfWkUDMlDYcpMite7CGgbrQHQ0w0AFynmbvcch1/9EdWaGS38vUFZ
         MqjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CQDb6NfcPgekiHOJyWlfPEMYIO8ZIKx7Th63xJSbnl8=;
        b=kR6Ca6GlMAjnYuqGlXmwjjdcPuFEGd3aQi+Gy2pZRctlWoskSP49wJgwyuNbKGfkpZ
         WCFgfnKN8Udpwfgc8FupP64UMNZntre55HChQfdXtKBcTH7srLNcW3NKBNi0yhoRiJHa
         ZeemFc73vAjB1nV8Jhr3k6Fqex7H5XzslpO8QQW8LEtcOHXseGyOhMLhpd06aGafYsRo
         VymkD2g52T+kpXRubdNPKy6CsUxNjDdb04uPNP5ZMwzOfETRDY/I4USCw3LMzM6p0baM
         0O3QW/GhJWywAatR7hV/AWwhC1qa8XJ6gjGnJwqAwxs1EgVV7F0y7Y53FF8O6YiGEqCZ
         fCYg==
X-Gm-Message-State: AOAM532ZU+z/UBBpIYUCwwQBX2AwurqCSdJj3KucqEtTZQYGUCHRIZu3
	/hSuTwxzWNDK1xnV2wzHL5mFUU2Fhno=
X-Google-Smtp-Source: ABdhPJxgCWyDQMEETYeDaJNFtM9hCvim1ESa9AeDo9+fw9N2JpW6viZUYIGO0Qt+6nfYoVqO14GS8w==
X-Received: by 2002:a4a:6b4b:: with SMTP id h11mr975846oof.4.1590679857988;
        Thu, 28 May 2020 08:30:57 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:5cfb:80e2:2942:9b65? ([2601:646:9200:4e0:5cfb:80e2:2942:9b65])
        by smtp.gmail.com with ESMTPSA id r17sm1791787ooc.27.2020.05.28.08.30.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 May 2020 08:30:57 -0700 (PDT)
Subject: Re: [yocto] #yocto
To: yocto@lists.yoctoproject.org
References: <rud8.1590333778048678194.rbAK@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <81946cc8-1eaa-6ac1-3f28-e26c44969cbe@gmail.com>
Date: Thu, 28 May 2020 08:30:56 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <rud8.1590333778048678194.rbAK@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 5/24/20 8:22 AM, msrinivasan@mvista.com wrote:
> Hi,
> I am cross compile nodejs 12.16 recipe for ARM v7 target using Yocto 
> 2.2. I can built nodejs as a individual task (i.e. bitbake -c compile)  
> (with some changes in recipe) with dependency over openssl 1.1.1b recipe 
> from Yocto 2.6. But further build (i.e. bitbake nodejs)  fails with 
> dependency rpm-native's compile which depend on default  openssl 1.0.2j 
> from sysroot folder (STAGING_DIR) (currently has openssl 1.1.1b's header 
> files at sysroot folder). My aim to have quiet build of nodejs with 
> dependency on openssl 1.1.1b only and rest of build depend over openssl 
> 1.0.2q. Finally with reference from sysroot (STAGING_DIR), image must 
> contains both openssl versions (1.1.1b, 1.0.2q) share libraries.
> Please let me know your inputs.
> 

they can live together, but you need to tweak the linking pieces, 
however, I wonder why rpm-native is coming into play for a target package

> Thanks  & Regards
> Manjunatha Srinivasan N
> 
> 
> 
