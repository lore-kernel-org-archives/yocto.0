Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46662E77198
	for <webhook@archiver.kernel.org>; Tue,  7 Jan 2025 10:24:07 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web11.17242.1736245444828918099
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jan 2025 02:24:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RqVmclie;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-aa67333f7d2so2247314566b.0
        for <yocto@lists.yoctoproject.org>; Tue, 07 Jan 2025 02:24:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736245443; x=1736850243; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YfSm+IpCzJJfn7ku+i+CwdqltzgJGn9jczR20UT1OYY=;
        b=RqVmclienyuho7eBGLcHCMeMvasoxqWAP6ldzIYIx9xgHJRp0kPmPVanZtEgxVavhS
         cXpJsr39ASnPwLEgq34OalP7DgC4zjD+4kRtd+IWeZ4bHO9WxPJFBmbD4xxU7VMnRQlE
         iiC8RrVMgJC5g/RgoFhv7Svk3No2bC9tJC4V0jmsYo2fC6qWr9szSKaZ/dpJlrjfuDRK
         MXl8PyW0n6XnbfGURCfpDymIKUDl67KdRyqORw7RCQEntmm4hEXlBUaZL696FmCW0Duu
         Pw3NAVWMHg4Y6JEFezptMPMzc7UfRRyaHYBj5oYYyMOmWMK4n3MYCPzbb9hwnxxy4Iob
         hBMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736245443; x=1736850243;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YfSm+IpCzJJfn7ku+i+CwdqltzgJGn9jczR20UT1OYY=;
        b=WAqq+EFWO8wgbd8QgytvRF1bQTZK7ay694DQdmJ60NKvbGZ0ITdPaGizjqJ7lUEh0Q
         RGOHccaLq+ihgewTNbasYI5qswr2S6BRH3508FDcQ2vcRSTMO7FMKkYX49XhycmGCRgL
         QsZfa9+7EKpOVwmY6LLxVqJWwEQ2dAliOeOGbbRyIvxuA72+fS1UHdHu4A1+crUVoofM
         1sysD1W8ETkK1MK66Jy/OR8ymqil/7ii62zJ49XkhywRjz6q+9kT4DL8WBJAOy9FkQWd
         26wTVAwKnYIZcmy8B8y/IoCkr1y1TJiJg50/Pn6ds54+jpSEnHceMnhLb3DVqorf5dum
         8n0g==
X-Forwarded-Encrypted: i=1; AJvYcCUIyLkZ1tOOpWSIrw159FXdf6Me+i818E7UhNcPWKYkcO5O3j2nJyDcs8G1vLnJ0l4VY0TYlw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyAVMXFhGXbC1ALpr0UsL+RZAbWFCj10+gJh8ncOGGxolVNZcwv
	DSip6qY6vD9mopUR+WDpNJfo4C7Y6gUZzdVDGoJXa8yHD0tkToAl
X-Gm-Gg: ASbGncts9GL4leVNdlib0DBqf1woGIhy4SZ2IhRSmxOrzdQ7p13OBVqElMnggr9QlrS
	EZzmAuyurgIFlyuQmBxvTSLDX1sN+K7izd0LomG5QEYcH04uPUaxibYgard92FYF9H70j9nXlTD
	VZaJ9G1zaKCVM7a8vIWY9zUttbtEyqUNXrU+D1MLjAHJA0qVAExs93NoZLSd3E4M4I1qdSzgAbZ
	2LckQRm5ZGXM6k4mRN2UU4KlzTKZR+6HvcBQHcFHOQa8GHtEDCqERBAm4O8w0qa
X-Google-Smtp-Source: AGHT+IGOIMe7SHleBOilw8cmS6d/cPPmZbyvZiK82aoGBEIdxhkoobnrj0yehSIQSO/kEOa4PugP2w==
X-Received: by 2002:a17:907:3f9b:b0:aa6:5ec2:966c with SMTP id a640c23a62f3a-aac270385acmr5513176466b.7.1736245442687;
        Tue, 07 Jan 2025 02:24:02 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aaf57c2e24esm1060008466b.205.2025.01.07.02.24.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2025 02:24:02 -0800 (PST)
Message-ID: <6bd68955-44a5-4a5b-b1f8-990643cb698a@gmail.com>
Date: Tue, 7 Jan 2025 11:24:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not
 copying
To: "Kumar, Manu" <kumar.manu@siemens.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <TYZPR06MB5178D4A9A5949582BCFB9C5286102@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <b8af4304-ee4b-4903-8d4d-2d91b804e393@gmail.com>
 <SI2PR06MB517020EDA3F2E22BC5EA20B186102@SI2PR06MB5170.apcprd06.prod.outlook.com>
 <767702b3-302c-4695-96f2-7299547f2da8@gmail.com>
 <TYZPR06MB51784D93F9A0D31C8265747A86112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <5af3a54b-8f9f-4a16-ab36-e886d23fc2c9@gmail.com>
 <TYZPR06MB5178AF5905FCB5E5C445A0AB86112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <TYZPR06MB51783A4E0A436D1469C9120286112@TYZPR06MB5178.apcprd06.prod.outlook.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <TYZPR06MB51783A4E0A436D1469C9120286112@TYZPR06MB5178.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jan 2025 10:24:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64509

On 07.01.25 11:05, Kumar, Manu wrote:
> reason behind ask this question is.. in earlier tisdk all the modules were there in "/usr/lib" as when we start lightpd service(which was there in (/etc/init.d) it will check modules in "/usr/lib". in the latest tisdk also if I run "systemctl start lighttpd" looks like it is searching "/usr/lib"
>
This change comes from this[1] commit (look at the very bottom of it). 
If it causing problems, you can try overriding it in a bbappend or 
similar. Though maybe it would be more interesting to look into why your 
ti-sdk is looking for these files at the incorrect place. TI layers are 
usually reasonably maintained, I'd expect them to follow changes in the 
oe-core layer...

[1]: 
https://git.yoctoproject.org/poky/commit/meta/recipes-extended/lighttpd?h=kirkstone&id=3755f6c4eb404b6218784ad21c3a56312c425cc2


>
> -----Original Message-----
> From: Kumar, Manu (FT D IN PAMC MI EMB FW)
> Sent: Tuesday, January 7, 2025 2:37 PM
> To: Gyorgy Sarvari <skandigraun@gmail.com>; yocto@lists.yoctoproject.org
> Subject: RE: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not copying
>
> Ok , I will try and let you know !!
>
> But how can I make all the modules to be present inside "/usr/lib" instead of "/usr/lib/lighttpd" ?
>
> Regards
> Manu
>
>

