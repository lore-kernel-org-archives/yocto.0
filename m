Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
 by mx.groups.io with SMTP id smtpd.web12.866.1607540780702977651
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Dec 2020 11:06:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=e4ddS5EI;
 spf=pass (domain: gmail.com, ip: 209.85.210.182, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f182.google.com with SMTP id p4so1647109pfg.0
        for <yocto@lists.yoctoproject.org>; Wed, 09 Dec 2020 11:06:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=3j8AYuw1Y2qm+M1VHLu9XBUeiVqr0I9tH1F/nb5275w=;
        b=e4ddS5EIPCtDFpqnpK2zNWx9eJgRGLjZHL2MqfHrRvOqjUIGAMAqLXRc4jNHuJc+AC
         DgcpHRLmId209lEIFV7R5+MZffNIcpJup1gegwMKFWzM3/wUFZkHjrOwzNOicUo86zww
         HqiSDl0REJzS+p3oW6KU1Pzy6V0Gcx7905FWUaYDIvrZ39Kk0/zRs82Qep0/VC5P6iQo
         ro34RqTMweSDA4GlmqD8KkxeHlsccKVCWhMRQyHgr2ps1nooMgxSPRBzrxfobRx/nA4w
         aYqBuIx23g25qe9htP1yDkrlyV8waHAUjJSewGMuWTW13nuhy2r2hHCHxGm1B9Ym0mmC
         a27Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3j8AYuw1Y2qm+M1VHLu9XBUeiVqr0I9tH1F/nb5275w=;
        b=F+IlwZWLUyHsB3s4tRZpxMiQVvBQ8R9ndjJ/fU52YlX/bm6WpMdFdsfBqbPYNHEOd8
         lHWkvtwsZCx5GjB3v0wWiDO7HR/np/2UgaxmewiJhNxY7YdfTvg4dwgs/L+1tb9vZGkn
         4vLl1Y9HRtjfYgXF3FmyibXOiL2nwHthihsiBdZgPjlZgxIMJWjYQ+Gm7ORTb5w4DIm1
         4MR7pc40dcSa/F1mTGMiKQsSTJNXk6R3sI36h6S03h/0oVzaNXVbWjXjHZLL/2RsGU7K
         utbFxDk9VzaPlky6EnrnRU8KGS3I/sK0e9be2oWJ+AF0vMM6jpuWEcK5LtmDt2weDunv
         H/ow==
X-Gm-Message-State: AOAM5310qqwGlLobGyxDAp77O+WePHHtT/e3eC5weUkw8caErT162o6O
	nnNg/KjV/wC4UoRt9lNx/1zsaQNFONQcfw==
X-Google-Smtp-Source: ABdhPJyqeoaVKWyu9/uX5Dy5dhg34ijJ5+DQA7lgSOBCPvB5+sF/N0s0LV23EnslLiDtnavc2YiXUQ==
X-Received: by 2002:a63:150b:: with SMTP id v11mr3302912pgl.257.1607540779753;
        Wed, 09 Dec 2020 11:06:19 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::5bf5? ([2601:646:9200:4e0::5bf5])
        by smtp.gmail.com with ESMTPSA id v186sm3503241pfb.152.2020.12.09.11.06.18
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Dec 2020 11:06:18 -0800 (PST)
Subject: Re: [yocto] #yocto #zeus -broken atomic modsset
To: yocto@lists.yoctoproject.org
References: <MADEUP.164F21C7D4A92E9F.11239@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <bbb90827-29ac-6a3b-ea59-5c06ec7ada15@gmail.com>
Date: Wed, 9 Dec 2020 11:06:18 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <MADEUP.164F21C7D4A92E9F.11239@lists.yoctoproject.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 12/9/20 11:05 AM, Monsees, Steven C (US) via lists.yoctoproject.org 
wrote:
> 
> So, this is expected ?, no current work around ?
> 

seems that way, I guess you can fix it on X11 side of things
> 
> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf Of Khem Raj
> Sent: Wednesday, December 9, 2020 2:00 PM
> To: yocto@lists.yoctoproject.org
> Subject: Re: [yocto] #yocto #zeus -broken atomic modsset
> 
> *** WARNING ***
> EXTERNAL EMAIL -- This message originates from outside our organization.
> 
> 
> 
> On 12/9/20 10:12 AM, Monsees, Steven C (US) via lists.yoctoproject.org
> wrote:
>> I'm building/running zeus 3.0.4 on intel platform...
>>
>> Can someone tell me why I might be seeing the following error and how
>> to resolve it ?
> 
> https://patchwork.kernel.org/project/dri-devel/patch/20190905181834.6234-1-daniel.vetter@ffwll.ch/
> 
> might give some context
> 
>>
>> X.Org X Server 1.20.5
>>
>> X Protocol Version 11, Revision 0
>>
>> Build Operating System: Linux 3.10.0-1127.13.1.el7.x86_64 x86_64
>>
>> Current Operating System: Linux sbcb-default
>> 4.19.135-intel-pk-standard
>> #1 SMP *PREE broken atomic modeset userspace detected, disabling
>> atomic*
>>
>> MPT Mon Nov 2 15:55:20 UTC 2020 x86_64
>>
>> Thanks,
>>
>> Steve
>>
>>
>>
>>
>>
>>
>>
>> 
>>
