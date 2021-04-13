Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web11.160.1618327690262237873
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Apr 2021 08:28:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XdZF52ZE;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id z22-20020a17090a0156b029014d4056663fso9200923pje.0
        for <yocto@lists.yoctoproject.org>; Tue, 13 Apr 2021 08:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0OXvODoVelEsKVs5opiIOG6pGOWqj4xxi/RSvAs7tlQ=;
        b=XdZF52ZErzeWfxwuIoCDh9q69LTyDCQsvSHv9NhoiAzCD5KHQXKJnYjiuuDyKMkj75
         0HUDfcHyVPoZYCwINs7FpoezL+Z/4zJub7Dtx06cv7uVF9D4kqwGVt+162GIFWHXPpO4
         s+iAWiGAWUP1MrfprKowT/aXQPsbQZen/aJuwzI8RuQ5XHwpup0NRr8ZV8Mm1r6vtMeS
         Vef1vfa14ErLxfUFLITJY7NXv3V3ct8BYv6NNGfHfXBV06kbRVRYsjEZPcLJkO3sxFTH
         iUwe7p2e6JCu1Jl7ARztV1+DveLCrxcojyEgmG2x3UXoLDcZ7TqLe2lMLGk0L3mg0xQF
         wM/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=0OXvODoVelEsKVs5opiIOG6pGOWqj4xxi/RSvAs7tlQ=;
        b=dJKO2M7sN6sX2MJZgiKrila2WfG1eKbLjmFsXBEfjeH13bmg3s8YBa3cmE0XTMEtmw
         sUsif1QR3F77oXrR2cU+9K7lZ8Plucb4aNSdpIMDLoODBOy8Yyj0b4SX4+iX86gGIW7X
         XJntTbrzbDvAj8yH4fRMnPfGug5YPBoWpLIh37t1fjknpxWzuBqCsukaz0F8wxbZCgup
         5WKsL+EwhB984sRkSpwCB9KU4luwwelTfJiOm0dS+T1WAPwItcs/Dk1TeQw+lUHrc/Ef
         VmFwFmcu6yxRU2/ILorqxy93y64ynJPr78+q6ETzIKQUvZDKhoUhlDEQXKAJfpNVOM8M
         ifGg==
X-Gm-Message-State: AOAM5337Ti8HcOptEv32+uKkVtqYsj8jTXcEj9jiUbnzw1r0zfhhR7lt
	IFDX20eZqpoppr76q/oPi87WP5GZJCIRcw==
X-Google-Smtp-Source: ABdhPJwQF9WMIrpchwKP77z7ySZYrI2b+dr6NYc11uPoAO5Qiy+aFkz1I6/2eyhEglvzGA7bpMZHrQ==
X-Received: by 2002:a17:902:e9c4:b029:eb:4626:feba with SMTP id 4-20020a170902e9c4b02900eb4626febamr230099plk.39.1618327689288;
        Tue, 13 Apr 2021 08:28:09 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:45ab:75b7:17a:f9f9? ([2601:646:9200:a0f0:45ab:75b7:17a:f9f9])
        by smtp.gmail.com with ESMTPSA id n4sm13084030pfu.45.2021.04.13.08.28.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 08:28:09 -0700 (PDT)
Subject: Re: [yocto] need Sysvinit as system manager in Rocko Version #rocko
To: rohitbjadhav1@gmail.com, yocto@lists.yoctoproject.org
References: <1Z2R.1618308149078356804.m8K6@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <c7e79329-c831-55b3-9457-d011cb97ea0f@gmail.com>
Date: Tue, 13 Apr 2021 08:28:08 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.9.1
MIME-Version: 1.0
In-Reply-To: <1Z2R.1618308149078356804.m8K6@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 4/13/21 3:02 AM, rohitbjadhav1@gmail.com wrote:
> I have created rootfs with Rocko yocto version.
> 
> I need sysyvinit as system manager instead of Systemd.
> 
> I have tried with following in local.conf
> 
> DISTRO_FEATURES_append = " sysvinit"

remove systemd from DISTRO_FEATURES as well.

DISTRO_FEATURES_remove = "sytemd"

> 
> VIRTUAL-RUNTIME_init_manager = "sysvinit"
> 
> VIRTUAL-RUNTIME_initscripts = "initscripts"
> 
> It created run-level folder like rcS and rc0.d to rc6.d. but did not 
> created inittab file in /etc .
> 
> And after booting it rootfs boots up with systemd only
> root@imx6ull14x14evk:~# ps -p1 | grep "init\|upstart\|systemd"
>      1 ?        00:00:07 systemd
> I need init as system manager . can you please guide me in this regard.
> 
> Thank you
> 
> Regards
> Rohit
> 
> 
> 
> 
> 
