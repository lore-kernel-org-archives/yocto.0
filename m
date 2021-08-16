Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web09.20700.1629095870700596397
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Aug 2021 23:37:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gpboLt4V;
 spf=pass (domain: gmail.com, ip: 209.85.216.51, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id n5so4404210pjt.4
        for <yocto@lists.yoctoproject.org>; Sun, 15 Aug 2021 23:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZQtSz5AUHxtAx8dGKk5QZGBx5/OIrbteYqTXO0tbTgo=;
        b=gpboLt4VUzUUbyTmOuymK0mVLhiCxxTLQmG/sBghnimbv9bT1V1o2S07mFw/MyRewe
         ipOr/pPpoRm2N1qfCQEduZBPKkyP2tv+BvUqXTCeLXSqp4BfWnlDK9J6/lSvDmUuWKc1
         oNZ99f94G/int36lZumvxVJOF5cdxvag5e8aWGKo6mWJSnCAbr73B7VvdZ22UcbbuJRX
         yAbhpnspSnfUxOhoCwzQBbo2hndRPmVW3Y5OWSYsL5dJazLb/LcqKYlteHp+M6ZN0T67
         Pss6HhAusQXyGEVKs1XEPtleooE4G4s006V75K6NDdoSaNpFvKCGoV+qdP2KtlD2vDo4
         wYqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=ZQtSz5AUHxtAx8dGKk5QZGBx5/OIrbteYqTXO0tbTgo=;
        b=AKjOm/6DFJt8NtArHSrZY0zZUF52GSpoT/2IoZputQV6B/dAAPxsM3EiVT6T6ceVY8
         W1j0xNByt8k2J9eu79oz4MYS93Vi0zIk9fZR8yYoXKDmmsZcvc26+Vu1TvTMnIlYVQ8O
         r2ZHByoVqvXaY2p/NRCqj8ge7BFAVYGDEe3VBvLs58GZdBHN+ANhkUF5YThjKF0KSB7J
         4eM/p+fhG7JqqeH6ew+uNn2mViWCBpCkUXjlR+VUHUoTYZR+TxQtDxE9grXDij6XV2n/
         tFDQjskHCQjXPA1G71L8kNGxPhWQnBKd5GvcOPusClhhEAPn/+ZuNEzSKoUEgzf0DpTg
         NNYQ==
X-Gm-Message-State: AOAM533LAI8QnPrFDasPO1sT0r0ojtVmzlZWGB5Xtcjw8JtTw5VFBksB
	8ltR/iif6WUstRPgu2m/pSI=
X-Google-Smtp-Source: ABdhPJwUpQ1vXsbcvgP/ZtWeP7N9gYmLSCakxBWsVzezCnWOjHBe2sCKcy2D1N7u3c1MAgt3MLSTSw==
X-Received: by 2002:a17:90a:c305:: with SMTP id g5mr15481782pjt.79.1629095870185;
        Sun, 15 Aug 2021 23:37:50 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0::f40b? ([2601:646:9200:a0f0::f40b])
        by smtp.gmail.com with ESMTPSA id a6sm8235386pjs.40.2021.08.15.23.37.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Aug 2021 23:37:49 -0700 (PDT)
Subject: Re: [yocto] Failed to boot kernel 5 after upgrading to Hardknott
To: Zoran <zoran.stojsavljevic@gmail.com>, JH <jupiter.hce@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>,
 oe-core layer <openembedded-core@lists.openembedded.org>
References: <CAA=hcWQ==cXXBygi+DGkx0D=sVs7hsZnZ3zDs_6d392oHhaqmA@mail.gmail.com>
 <CAGAf8Lzejaip+Jxj66xwdSnG=E=vbhrh5p_no53s4o9DmJ2qMQ@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <863d48f1-1893-eb8b-a18f-d4001c4985ff@gmail.com>
Date: Sun, 15 Aug 2021 23:37:48 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAGAf8Lzejaip+Jxj66xwdSnG=E=vbhrh5p_no53s4o9DmJ2qMQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 8/15/21 10:36 PM, Zoran wrote:
> You are using systemd with the wrong defconfig setup, my best guess.
> 
> cgroup option in the config must be set to Y while using systemd:
> CONFIG_CGROUP=Y .
> 
> Zee
> _______
> 
> On Mon, Aug 16, 2021 at 6:24 AM JH <jupiter.hce@gmail.com> wrote:
>>
>> Hi,
>>
>> I upgrade Zeus to Hardknott, the kernel version is 5.10.4
>> (oe-user@oe-host) (arm-oe-linux-gnueabi-gcc (GCC) 10.2.0, GNU ld (GNU
>> Binutils) 2.36.1.20210209), it was failed to boot the kernel :
>>
>> ---------------
>>
>> [    9.418302] systemd[1]: Failed to mount tmpfs at /sys/fs/cgroup: No
>> such file or directory
>> [    9.431805] systemd[1]: Failed to mount cgroup at
>> /sys/fs/cgroup/systemd: No such file or directory
>> [!!!!!!] Failed to mount API filesystems.
>> [    9.463151] systemd[1]: Freezing execution.
>>
>> What could I be missing?

Look at kernel kconfig options that should be enabled here
https://cgit.freedesktop.org/systemd/systemd/tree/README#n38


>>
>> Thank you.
>>
>> Kind regards,
>>
>> - jh
>>
>>
>>
>>
>>
>> 
>>
