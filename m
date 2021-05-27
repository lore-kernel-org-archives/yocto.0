Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web10.1423.1622157898228038957
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 May 2021 16:24:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=N3gxe0FH;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id f22so1134323pgb.9
        for <yocto@lists.yoctoproject.org>; Thu, 27 May 2021 16:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=myX74TxPdEy2B4JnA30Q5eVgXPjNMMlmO+NbeeRYXcg=;
        b=N3gxe0FHdY+E3jHF7WqJZ+7pfPdpKtMwxtCW+heSrCl3TUTHXqaD885x5tBchwfWHJ
         nasVpmuaB9LOufKEyp0YS5VkvTvyjBgrjboyM8PPN+3Jgc0Lwyq6FOppDDSwvL+0ZZU7
         ornyaxm7rU6dWNjlSlzt2smEEEPXGgG9Q5JPycQICAcNxSBdrSKlSSLh7o/zukqqBtyh
         1xf/Xibw3fhDslmJHm4Y1OD+O/eyc/qfMcWDFRBNCHGrg2Rf/WkOrbGxC+i1xHlIIZrx
         pjMvD9gtJFBLPho6VtrSRb72EKp1XcgbHt6s82TZRVrY+uMSiGvtSd06eoouCRkUcBb3
         qZ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=myX74TxPdEy2B4JnA30Q5eVgXPjNMMlmO+NbeeRYXcg=;
        b=djjl3eeAyM4boj5hi3viuLWjKDQalHObI/S4muSija8Y4Xaadv5u6FVxai76ntqV69
         KS7Abhnh45CT3BK0hrolhpVFlYptqPK7fnGEkmPJi1y+uiCBffjZ7YzLz+qd9fKD5JMQ
         ElyXfYGsguk6aINSxVrOz3eHQRiCK7sbh8NsVcp9/hq6dV1bh1+s72F2yspKstXFbSuH
         Ww0MzNo46yVn/5OjuGjN97uWZY5sq62Y+WKTjPbHJBebn3fZe/JpvgKcKgBxRQbZKleZ
         vwJaW6H0fZGsnL2fon/MQ0TpTrf7mcNFMioLwviXkMETGFHyPeJiBSYRIHlzQLaJ4PZt
         BSfw==
X-Gm-Message-State: AOAM53034GdcLXbcAOMtmu6ek0uewZdwFXUPiUdioDNoLklzaiC10TQt
	F6JFTqzedru3kZD4uOZ2Upo4Uq9Ke1DhTQ==
X-Google-Smtp-Source: ABdhPJymQ35C3NRT/paAjAkxqXxcae3by/zyZEmm3bJSsgbyQMgn5xAPLjG1Nw3fTypFESJrCitLlA==
X-Received: by 2002:aa7:9606:0:b029:2e3:7728:f284 with SMTP id q6-20020aa796060000b02902e37728f284mr838421pfg.24.1622157897364;
        Thu, 27 May 2021 16:24:57 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:1d7:355f:d5bb:1bea? ([2601:646:9200:a0f0:1d7:355f:d5bb:1bea])
        by smtp.gmail.com with ESMTPSA id m3sm3025713pfh.174.2021.05.27.16.24.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 May 2021 16:24:57 -0700 (PDT)
Subject: Re: [yocto] How to switch yocto INIT_MANAGER from systemd to sysvinit #dunfell
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, sayinswapna@gmail.com
Cc: yocto@lists.yoctoproject.org
References: <dWBn.1622153050533898469.7UFj@lists.yoctoproject.org>
 <1e7a7a18-f281-b72b-36cf-9e1014ab10ef@crashcourse.ca>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <096dc831-7181-9e2a-d3db-bf0feeb9f412@gmail.com>
Date: Thu, 27 May 2021 16:24:55 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <1e7a7a18-f281-b72b-36cf-9e1014ab10ef@crashcourse.ca>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 5/27/21 3:12 PM, Robert P. J. Day wrote:
> On Thu, 27 May 2021, sayinswapna@gmail.com wrote:
> 
>> Hello Yocto team:
>>
>> I just started with yocto and would like to know the process for switching the init
>> manager from systemd to sysvinit.
>>
>> I tried this options in config file
>> VIRTUAL-RUNTIME_init_manager = "busybox"
>> PREFERRED_PROVIDER_udev = "sysvinit"
>> PREFERRED_PROVIDER_udev-utils = "sysvinit"
>> DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
>> DEFAULT_DISTRO_FEATURES += " sysvinit"
> 
>    as i recall, all of the above can be replaced by a single assignment
> to the INIT_MANAGER variable.

it will depend on release, if you are on 3.0+ then yes single setting 
will work, older releases would mean above is needed. see

https://docs.yoctoproject.org/ref-manual/migration-3.0.html?highlight=init_manager#init-system-selection



> 
> rday
> 
> 
> 
> 
> 
