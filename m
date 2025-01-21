Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C1BC0218B
	for <webhook@archiver.kernel.org>; Tue, 21 Jan 2025 14:09:03 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.16315.1737468540724549024
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2025 06:09:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=msZl7rPS;
 spf=pass (domain: gmail.com, ip: 209.85.221.48, mailfrom: skandigraun@gmail.com)
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-385d7b4da2bso5129457f8f.1
        for <yocto@lists.yoctoproject.org>; Tue, 21 Jan 2025 06:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737468539; x=1738073339; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1DFr3LoMPYP0fu3GFyAcUmAeQuFC9SKSQ5NRxuzxYI4=;
        b=msZl7rPSgdVTh1j2vgKFj7MEnfxqNZqmAtQIMUYUQHPUMqDxtuqof0cK9CFPw7xUPs
         H4gM4fOL6Gv/q2o+NiBa6d9Z7EOcHPLygQYXfRkQdArlTFveASu05keNmZ4Yf+MAoHFq
         KuVA7h+LsIyszQd1Q8YQz7BnyYWDBzlDGrEJY3bE+xrnDRHPJwj1ZDi/6UzPTAYE+C6I
         XOGvwAYpngJS/YsrLcz8sO2k0nn5u7TmmauSwQ4dBjYibHOssCdInyC0e7YXCqy/XIn1
         7/3tkScdJ8McJ/JfZgh09yZhEVvSIw+s1m5QeZGTXbdP9RtzFzzWByK3xS/6WMFh8vux
         9Mfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737468539; x=1738073339;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1DFr3LoMPYP0fu3GFyAcUmAeQuFC9SKSQ5NRxuzxYI4=;
        b=MMtBkbJX0oz+6m4+9l+BV+Gyo2JD6628Oj+PKOnXBKPl9Fz0OW4Emg6T7rMwvu4wKq
         3h1T5jxiW6zP9TnLewXa3bfCeR2HkwaqHoeXbpl9LC1TOfM28GGtWT0SUc9ajHyMUhHE
         X+WlQhzuSnckzuRKowdaqflzBduXlDewMYBhBgFEY2raBBey5ybcNbpXnumhJijduBTj
         eABC5TnQAe8bjoA0BsKmC5reeFXCkbgsy0uW3yGQh2+catixGv08FMWUMNduBaY4XY9L
         +9lB77bOE/kcto2MG1QniLuUUdTGJV16v8dnXegXCEErUqEMErmTIcPhwu0+H8ItCYyv
         sOaA==
X-Gm-Message-State: AOJu0YyWjuJmWzhQIanIoK4ptk7pXnkbYxNZPbOsONPtZR498r4p76yl
	Ap0UF4wI7mkR3Kn0Vupc9Yc+1Wk9ZnNUJESmYjqFf0XCvCKIdZlpI18zAA==
X-Gm-Gg: ASbGnctSJzzX+ldBdvqAt5aOeIZgNLKmkfPOVY2YViSdFELWOiAqyUkW0a+ipChlgIZ
	ApZ/CG5lS1Zq4CoTx1EqMLXlWjGai+Kch2JzQAhnP9oeC8/8QBABniBe5MZOYD2dHBa8gEMeIBN
	5sYh/1rvl+1wXsbK7DcQSDiQKlBi/MZ2+BpQ7oCVY+kJuLNjPN+ZTxiY6sgzUumr5ww2N8rxnnp
	lnAf1fiIy53zeNlhXzHhzK5nyXBFJIBKFzpqZQG5D3BvqIaqeQFOGJd6ibtbN0x5/3J3MZnh32a
	mQ==
X-Google-Smtp-Source: AGHT+IGqPkD4uYB+5/EVhyNQPBloQlpiu2HogkBK632wCpJH1oLx8PBonw7zplOfU86sreDPcC4yjg==
X-Received: by 2002:adf:ec0f:0:b0:386:375a:8322 with SMTP id ffacd0b85a97d-38bf565989amr13181352f8f.13.1737468538790;
        Tue, 21 Jan 2025 06:08:58 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38bf322ad74sm13655179f8f.56.2025.01.21.06.08.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2025 06:08:58 -0800 (PST)
Message-ID: <0a34bca7-0b1f-46e6-abce-db156ba8686e@gmail.com>
Date: Tue, 21 Jan 2025 15:08:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [scarthgap] TUNE_ARCH error #scarthgap
To: yocto@lists.yoctoproject.org, ganesh.manoj.mahajan@signify.com
References: <xP2L.1737461252807526183.47GA@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <xP2L.1737461252807526183.47GA@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Jan 2025 14:09:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64601

TUNE_ARCH has been present since a long time (always?) - it was present 
in Dunfell too. It should to be set automatically, based on other variables.

tune-cortexa72.inc is in conf/machine/include/arm/armv8a folder - it 
supposed to take care of these values. This path might have been 
different in Dunfell though, so you should definitely check if you are 
including an existing .inc in your machine config, and not have an 
outdated path there.

(Tangentially related: If you are using "include" keyword in your 
config/recipes for non-optional includes, consider changing it to 
"require" - it will fail with better error messages in case of incorrect 
paths)

On 21.01.25 13:07, Ganesh Mahajan via lists.yoctoproject.org wrote:
> when tried to build image using command bitbake -k wac-core-image 
> below error poped up.
> ERROR:  OE-core's config sanity checker detected a potential 
> misconfiguration.
>     Either fix the cause of this error or at your own risk disable the 
> checker (see sanity.conf).
>     Following is the list of potential problems / advisories:
>     TUNE_ARCH is unset. Please ensure your MACHINE configuration 
> includes a valid tune configuration file which will set this correctly.
> Error, the PACKAGE_ARCHS variable (all any noarch 
> ${PACKAGE_EXTRA_ARCHS:tune-${DEFAULTTUNE}} wacin) for DEFAULTTUNE 
> (None) does not contain TUNE_PKGARCH ().Toolchain tunings invalid:
> No tuning found for default multilib.
> I am upgrading from dunfell to scarthgap-5.0.5 (LTS), were dunfell had 
> no TUNE_ARCH (tune-coretexA72.inc) but scarthgap has it.
> or is it a good practice to disable the checker? Location for 
> tune-coretexA72.inc should be /conf/machine/ ?
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64600): https://lists.yoctoproject.org/g/yocto/message/64600
> Mute This Topic: https://lists.yoctoproject.org/mt/110732051/6084445
> Mute #scarthgap:https://lists.yoctoproject.org/g/yocto/mutehashtag/scarthgap
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

