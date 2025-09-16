Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D05C8CAC598
	for <webhook@archiver.kernel.org>; Tue, 16 Sep 2025 13:48:55 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web11.20827.1758030534758697055
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Sep 2025 06:48:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YWfrAo84;
 spf=pass (domain: gmail.com, ip: 209.85.218.52, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b04b55d5a2cso952998166b.2
        for <yocto@lists.yoctoproject.org>; Tue, 16 Sep 2025 06:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758030533; x=1758635333; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BDqc6JwFPt6g+zkCtcN8zBgihcPZV7fCBTqjBtLKC8U=;
        b=YWfrAo848zkg98BBYi/SCCmlGMGyYP2S7oh4kw7we6QyE8GWXYkG46ktMV05dU1cnl
         gBe8Gt7prORwxqlZeEu0cADrskyjWyjN+UfkL2D5jHeoFTIlafFSif56onrMpIWkuQa7
         lTWNZhP9MWOPTJIqrxcFCf4B8UaEdg4HmHW/o5cxBP/wrt8AndVamNGRKNThSEtXi1Ji
         ehYSY/ahQajUYOVGJ/pCwZXDydcLjzpcj06uBfRllPjkvY/XTII3gNeme1FsTEEfJ0nA
         4ucrdjlESKeUtkPFRGtKIvu/q4GpBD1EUo8Dj4CK0/DFqRku3U8zGN3XwtADXlbBCoqj
         OPmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758030533; x=1758635333;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BDqc6JwFPt6g+zkCtcN8zBgihcPZV7fCBTqjBtLKC8U=;
        b=T1Frk9WNJOYuG3lOoAdL/gjTLwvTHfBNHrCuV8RCgRZFOIQsRsD+M+nT4iJPyNW0i6
         U7buB3FWat1lsuqt1kiNrlNttnRHNG3rg0eiMil1HLulUOikzxZKKp4Nm8J08Nqb0RfZ
         LQbMYED6fZ+gHXOMihwMKSlTFX7vjkv/CIOOINth4pLItDPVPHWweljQJmkA+vKQVVc2
         35zbzVhjTh5LXLMAq7qfqVLZwwOtDOVtm4bOgIFQvEWfcSD6VRWkuSN/ZmtbcSWW5FVj
         UVOoTrZbStjP6tOrjrHWtqUr/pNV5dXk5wqxqOvcK1PCcyr04At3USPV+Zz+dkaATvtF
         VTUg==
X-Gm-Message-State: AOJu0Yz48d2p0Ilap91jkzdfeVAJCtYbgFbwcbpBrXV4XeNrgGaSbK2j
	dGcIS9VRRJv5SLKoOXWkTfOi6XWGcZRWb/ne+WSwH+jGdOWxaY0SM1koacO8i0xq
X-Gm-Gg: ASbGncsoPcBB+tQRJudI4VTpvKXViaXMpr4/A/UjQDdO8x5KDDjQzL6Tr1Ne/GDzbbw
	WTOVJgS3s79bYa/jMBesIxUxdQYr5gVbGNEfaWHm2jUK0XkpMThLZ5pV4ESD9EECKPDc+JAKfVQ
	eGmyHHnVH+aLVpCoMKIAqQfChNsH9BE31LyDIW6UEus3QbXV6TGGEh+utTjKcSn/yFGCSaM5LvI
	tFhGnupxuV0D289jWxE7RoteimF81IQk7/cvhvXhL+eQJBekYvxn6fjBEf7rWcuSshQYRXqSpqr
	8OMb7CetzqC3z9wCv9SruPXzFi7Z3cFYyOeoo9PI7tuObN1mJd+lqzjTx3x3yI0/XZIsWhLrJ4k
	QUlVLsQt6UELvRUAV2fkEATQgyWNkvf4=
X-Google-Smtp-Source: AGHT+IEhkPAxjdUgd+UJp6x5bvnzbjns5hHS009aAw+HPfZpLiJVfQ5hCZmycRSmBGra3IPixjBE3g==
X-Received: by 2002:a17:907:742:b0:b04:32ff:5d3a with SMTP id a640c23a62f3a-b07c333e6f9mr1626387766b.0.1758030532735;
        Tue, 16 Sep 2025 06:48:52 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b3347a2dsm1154091466b.98.2025.09.16.06.48.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 06:48:52 -0700 (PDT)
Message-ID: <22fc023e-0937-4c6d-a726-54079059463f@gmail.com>
Date: Tue, 16 Sep 2025 15:48:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] bitbake-setup configurations for existing LTS releases
To: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com,
 openembedded-architecture <openembedded-architecture@lists.openembedded.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <CANNYZj8nqMP_riFmfOeaig0XA1MkArTcL48g9iYVdZHdjrsXvQ@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CANNYZj8nqMP_riFmfOeaig0XA1MkArTcL48g9iYVdZHdjrsXvQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Sep 2025 13:48:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65840

On 9/11/25 19:03, Alexander Kanavin via lists.yoctoproject.org wrote:
> Hello,
>
> I've been asked to look into adding bitbake-setup configurations for
> existing LTS releases (e.g. scarthgap).

I have one question: would introducing bitbake-setup in LTS mean that
poky repo would be abandoned in those branches? If yes, I'd plead to
reconsider - it would silently break countless setups and tutorials.

> TLDR: this is not impossible, but bitbake-setup relies on a few
> important features in oe-core and bitbake, and so such configurations
> would be limited, and awkward and not really showcase bitbake-setup
> well - basically reducing it to an equivalent of "clone poky;
> oe-init-built-env", with more steps and hurdles.

I don't have a very strong opinion, but I tend to agree with your
conclusion: if the feature wouldn't (couldn't) be actually useful, then
what would be the rationale to backport it? Yocto is already considered
to have a steep learning curve, new hurdles are the last thing new
people need.


