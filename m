Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web11.3805.1613137897960695654
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Feb 2021 05:51:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HSEj4TpZ;
 spf=pass (domain: gmail.com, ip: 209.85.221.42, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by mail-wr1-f42.google.com with SMTP id n6so7989319wrv.8
        for <yocto@lists.yoctoproject.org>; Fri, 12 Feb 2021 05:51:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=TnF2CYVXN7A/LWlOEUvxTsUzCiLHL/QZEo5ECb0GxcQ=;
        b=HSEj4TpZBKvieQTbcmMkAXC5j8j1NUz+9zBlEUOtUv0tr4+BQjAcZQuD9mZchIDZvO
         3i3jQj56+rjnGt25YmbhEMgBSruMyfHKHMwfTb/N4ZXLY+rmgSZ5Rvk4He7wbSNscpya
         rUGoXiM8wI2dujvxT/SMB4IW63XK6kyQBept/11XxrFhpaMQcS0WyuAUUzv+JkGpc2nM
         UH+JQtH0oYbU7wS6id1Oh2jGT9jg69N8H39DoWob7rzwZQ5O4a36d4AWwZwATOv9eMVw
         rcZIqrRZEYHZ/E+JMjZD01N4CW3Ubf380IwknAxob5kkS/NIUs4zgxWliM5aP4fszBzu
         5GWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=TnF2CYVXN7A/LWlOEUvxTsUzCiLHL/QZEo5ECb0GxcQ=;
        b=E61kZS0UnDK7rtVepUD9s9+YrguMHilOLftS7HyHUg0GEE7jvM8Ajz1HUBkwECxCiF
         AP6owO48Ggr743MVA2GSOagisna5nijFKWkj4534kIgYUPKwJXKuQodRZS56uOG7o3NI
         POOM7AeyHtFeq4hrGFuFLU4xcOTzBYu5ppC4tAPjGpTORWa5DZA0s515SnfIYB39rMyG
         rhKdIJF7EuRmThQQw5szk15Ii2iEE7ZvHgqHv7EjyTztPVIA2FVpaFeOSGmiIIc8CDqj
         5nxGQBwLXzwsd4w2WFJg3go8GM+dFUyyeLyutwnqQg3U/VLyFCZQNgASp++3bF6+G6uY
         bFqQ==
X-Gm-Message-State: AOAM533tfgy+3MeAynk2t6js/1+nHeWWv7UVdPpUh9EK8o0nP2QYDx0k
	fqDhmRh+Edr3pWSv/fcWQbCrF/30YDw=
X-Google-Smtp-Source: ABdhPJxBFTz7R5FzwQcya039BjjdknxgRxDUy2Llb9p6EGv/vIlKPtKkUfnHN7/WOdrmCx3Kst+PIw==
X-Received: by 2002:a5d:49d2:: with SMTP id t18mr3566548wrs.224.1613137896444;
        Fri, 12 Feb 2021 05:51:36 -0800 (PST)
Return-Path: <robert.berger.yocto.user@gmail.com>
Received: from [192.168.42.52] (ppp-2-86-140-5.home.otenet.gr. [2.86.140.5])
        by smtp.gmail.com with ESMTPSA id h9sm10494105wrc.94.2021.02.12.05.51.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Feb 2021 05:51:35 -0800 (PST)
Subject: Re: [yocto] Integrating Ubuntu 20.04 root file system in yocto for i.MX8M #yocto #kernel #linux
To: poornesh.g@phytecembedded.in
Cc: Ross Burton <ross@burtonini.com>, yocto@lists.yoctoproject.org
References: <sA16.1613130550517284980.m91e@lists.yoctoproject.org>
 <CAAnfSTvej0OyaGp6TTgQ8t2invpFmvBU4EG5QZaNz5VV0ApgJw@mail.gmail.com>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <d5ef9bef-b4de-a98b-4234-52860079547c@gmail.com>
Date: Fri, 12 Feb 2021 15:51:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAAnfSTvej0OyaGp6TTgQ8t2invpFmvBU4EG5QZaNz5VV0ApgJw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi,

My comments are in-line.


On 12/02/2021 14:30, Ross Burton wrote:
> The first question is why.  It sounds like you want Ubuntu but the
> bootloader and kernel built by Yocto.  I'm struggling to see what this
> would achieve.

... a legal battle maybe?

Bring in the lawyers!

I would also ask:

"What is your use case?"
"Did you ask Canonical?"
"Does Canonical allow you to do this?"

 From [1]:

"Copyright licensing[1] and trademarks[3] are two different areas of 
law, and we consider them separately in Ubuntu. The following policy 
applies only to copyright licences. We evaluate trademarks on a 
case-by-case basis."

 From [4]:

"
You can download, install and receive updates to Ubuntu for free.

You can modify Ubuntu for personal or internal commercial use.

You can redistribute Ubuntu, but only where there has been no 
modification to it.

You can use our copyright, patent and design materials in accordance 
with this IPRights Policy.

You can be confident and can trust in the consistency of the Ubuntu 
experience.

You can rely on the standard expected of Ubuntu.

Ubuntu is an aggregate work; this policy does not modify or reduce 
rights granted under licences which apply to specific works in Ubuntu.
"

"
Any redistribution of modified versions of Ubuntu must be approved, 
certified or provided by Canonical if you are going to associate it with 
the Trademarks. Otherwise you must remove and replace the Trademarks and 
will need to recompile the source code to create your own binaries. This 
does not affect your rights under any open source licence applicable to 
any of the components of Ubuntu. If you need us to approve, certify or 
provide modified versions for redistribution you will require a licence 
agreement from Canonical, for which you may be required to pay. For 
further information, please contact us (as set out below).
"

"
We do not recommend using modified versions of Ubuntu which are not 
modified in accordance with this IPRights Policy. Modified versions may 
be corrupted and users of such modified systems or images may find them 
to be inconsistent with the updates published by Canonical to its users. 
If they use the Trademarks, they are in contravention of this IPRights 
Policy. Canonical cannot guarantee the performance of such modified 
versions. Canonical’s updates will be consistent with every version of 
Ubuntu approved, certified or provided by Canonical.
"

"
You can use the Trademarks, in accordance with Canonical’s brand 
guidelines, with Canonical’s permission in writing. If you require a 
Trademark licence, please contact us (as set out below).
"

"
You can use the Trademarks in discussion, commentary, criticism or 
parody, provided that you do not imply endorsement by Canonical.
"

[1] https://ubuntu.com/licensing

[2] 
https://forum.snapcraft.io/t/commercial-usage-of-snaps-and-dealing-with-licensing/6211

[3] https://ubuntu.com/legal/trademarks

[4] https://ubuntu.com/legal/intellectual-property-policy

Regards,

Robert
