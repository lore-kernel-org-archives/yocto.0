Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web12.7093.1598423758733923722
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Aug 2020 23:35:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hm/MjyCy;
 spf=pass (domain: gmail.com, ip: 209.85.210.176, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f176.google.com with SMTP id k18so448726pfp.7
        for <yocto@lists.yoctoproject.org>; Tue, 25 Aug 2020 23:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=wJ+2EfGwMmtHbRNVzjT7oPzR8QR/5w0E81V5Zr+Uels=;
        b=hm/MjyCyiBnFe3Gq+vOvz6c4B3keIPUn/56SGFKruT4Gnc63SjvZ8CZTdJbF/hWVHI
         qlqy2h1cQ478lYPCOy+k76ZXqr0o/tDSmcgvp97556rL+O7IYzDi3ItgmHxiDOiOvcIm
         akWNBiowNaeIvLot++gyVFU27agoBifmNE0o5k2vdYPvajnUc/ExyIUaQFWSXfgsYjnE
         3svH4o2ON12YZsZ4WL0BcdA6k6LyIYxgJ+cnb90+eXzfitwpyUMWFIhWEvaOQP3+nF2Z
         JkVubXvNdb5H0odnmJirWahVsUPuQzkzuogctaQWrEkZUeYmFr8nOvrSxtiMPcLlBzoa
         4tlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wJ+2EfGwMmtHbRNVzjT7oPzR8QR/5w0E81V5Zr+Uels=;
        b=JpKEdfRQb4AelosSOwW9lg3EgB+hz7s62hVKY+jpa+4NWyNjWXqq8BvpLuWmrf1r0I
         Dq6DfH+PhCBBcQCigZ7ZnWOLz8Oyob0zdHvBMpvoDdZyRqVkuwm6AFdR8tRzsIl8WaO1
         k8AGO0ty5eH4QP39ZO86g/c11EdtQgXXGjUquhwSCZDocQaJw/dGAww+2XjBfRMX4ml0
         ez8w0rXeAWjmzy2qszXEGXvgIhZN2t4DFCpw+YItEFL0p/Ak4jJOUOcR3sy27yl8dKnW
         0zkguhIcFweVZtOn4rjTb9dls0+VFAC6QukrHU/X1ab/NPZMQqwMNPclXPeIDwOd3bLM
         ADmQ==
X-Gm-Message-State: AOAM532B/GNPXqGp6okJMzhd/JZt77NMU14cFMZUNxA6FObAWQALZJ5J
	HQeN74+Hua6BRcTcoFAUCk38HLXrxQJALQ==
X-Google-Smtp-Source: ABdhPJwFzFxGf/bn3Od2oidKLZuVzPFvhj9+xdsLCvcjdEQ2HtKWHendDp25Ti3Oq7Wz/SE1r39J/Q==
X-Received: by 2002:a63:1848:: with SMTP id 8mr9553776pgy.347.1598423758016;
        Tue, 25 Aug 2020 23:35:58 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:e8b6:ed97:4b5a:9e46? ([2601:646:9200:4e0:e8b6:ed97:4b5a:9e46])
        by smtp.gmail.com with ESMTPSA id a1sm1178842pgc.54.2020.08.25.23.35.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 23:35:57 -0700 (PDT)
Subject: Re: [yocto] #yocto #devtool -Update packages
To: majid.nasiry65@gmail.com, yocto@lists.yoctoproject.org
References: <oQSn.1598360513807709046.MCZn@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <48c9e21e-0be8-5e90-629b-5098f54c0d2b@gmail.com>
Date: Tue, 25 Aug 2020 23:35:56 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <oQSn.1598360513807709046.MCZn@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 8/25/20 6:01 AM, majid.nasiry65@gmail.com wrote:
> Hi
> I using a freescale-bsp release (based on Krogoth yocto version) to 
> build my board images, and I need to update some packages (e.g php) to 
> newer versions. There is no new version of freescale-bsp that support my 
> board (or I could't find it after search a lot!).
> What is the best way to update my FSB?
> 

look at layer index
http://layers.openembedded.org/layerindex/recipe/39864/

and you would need to then do a backport of desired version.

> Tanks.
> 
> 
> 
