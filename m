Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web08.7435.1612348149035742160
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Feb 2021 02:29:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nFUuJf4x;
 spf=pass (domain: gmail.com, ip: 209.85.221.54, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by mail-wr1-f54.google.com with SMTP id a1so23562893wrq.6
        for <yocto@lists.yoctoproject.org>; Wed, 03 Feb 2021 02:29:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=P1DJ5qhCmOdHvMtfHHsOXt0TzL0rm60GWyNtzpCv43w=;
        b=nFUuJf4x1ZLkW+TdzJsGMiHGwckdiUg6ZM2ycnGd8clAYMOrWtMzHZLbLZf1cL+mFM
         8JwGh3poU3P3kZRb4HLJkp03+rRbx/ZBq99X/Hgl0JhrOUAeuyvceCDbdvJMMQ5mCuYm
         nFeWU6lr3BRsSgsNinq99T5yXUUz7BclvGMT4V52uLY5W2kGm1k8Sla/VJCynwDZfMia
         oj0NX7So/3qdnbPTrx1okb1PrfNWrusIrEraH5P2RQGsC6jgEiaPX8hUGzBs6LzDeFxC
         zLUFMLFLUKz5c8K4riu+afxrAfRjg2GKTVJN0sN8zfx9AMS3mqc56zzPVMFLNLckvLDJ
         W0vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=P1DJ5qhCmOdHvMtfHHsOXt0TzL0rm60GWyNtzpCv43w=;
        b=I8d46nPm1uNu9Imb34sQNlRb25bkjg23INfhUek5mmJecg8xQnf6TaEMhiSKxgLKGB
         IxXHOhoLYfEH3KuwpTB4iRexu0DSErqqO06ZxbLF1qbYpr8UxDCsUSCWx5hRyaxSqQMj
         0xmdiBqsjQxMyVBRnZj55gHf0FCVJgR4CLSwehECNppdU73RjPLdRLaHQfuJdupxDa5a
         6F1MVazj+vVRBiVApLTy97P4RDziWvnTp3Ek4lkriCyraxOItdwouuhf6qmKAP8k5A3q
         fw48b/Cd27unLlncb+PU4Bn629wvExNjEmpt+WGKQoytYdhlbWD3Q+6W7Yh0ddIguAJV
         RHiw==
X-Gm-Message-State: AOAM531NcfBF33kv3jAY2EclY5LDH/habu5rJcU0Y30QHvrysn8X3d9P
	Evzr/hchcEtvraGxRdlGjjCFAJjfIqA=
X-Google-Smtp-Source: ABdhPJxhQOLfbUY3lI9eFgi4fLUFRC5Kfvyrquv6vL6f1mt8sdLyeFsHPk+hUI4PrPshkpknWnWCkg==
X-Received: by 2002:a5d:4d0b:: with SMTP id z11mr2719929wrt.388.1612348147362;
        Wed, 03 Feb 2021 02:29:07 -0800 (PST)
Return-Path: <robert.berger.yocto.user@gmail.com>
Received: from [192.168.42.52] (ppp-2-86-147-0.home.otenet.gr. [2.86.147.0])
        by smtp.gmail.com with ESMTPSA id b13sm2846917wrt.31.2021.02.03.02.29.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 02:29:06 -0800 (PST)
Subject: Re: [yocto] 2038 time problem fix in yocto #kernel #linux #yocto #zeus
To: dhandhukiya.paresh@gmail.com, yocto@lists.yoctoproject.org
References: <M0f4.1612336381258288837.tdxI@lists.yoctoproject.org>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <c8c37e54-d704-2c3a-9d70-435b01bedc2e@gmail.com>
Date: Wed, 3 Feb 2021 12:29:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <M0f4.1612336381258288837.tdxI@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

On 03/02/2021 09:13, dhandhukiya.paresh@gmail.com wrote:
> Hi,
> 
> We need to have a fix for 2038 problem for out 32 bit based product 
> which is running Yocto (Linux).
> 2038 time problem was fixed in Linux kernel recently 
> https://www.theregister.com/2020/10/19/linux_5_10_y2k38_fixes/

How about switching to a more recent version of the YP then zeus?

A recent version uses the 5.10.x kernel.

... but it does not automatically fix everything.

Regards,

Robert
