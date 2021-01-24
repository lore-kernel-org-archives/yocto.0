Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web11.27772.1611524909516197067
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Jan 2021 13:48:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DPlPKAwX;
 spf=pass (domain: gmail.com, ip: 209.85.128.52, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by mail-wm1-f52.google.com with SMTP id u14so2291018wml.4
        for <yocto@lists.yoctoproject.org>; Sun, 24 Jan 2021 13:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vV6TdJ/kvv+8bZygtcdemz4/f5VgAE42sR9nqTYu+q4=;
        b=DPlPKAwXRgsKAUDdzkoTri1FwXNc2Emt05yrphAtchHLPgB6c6ON0l6a5/s0qGhK+E
         g0bvkRw2ggc7meGjOYcoPFJNI4QY/V1aN9qYnNsqqgJ2RgV+QLeT4SXvPDOPPISnj91Y
         jZb+htfZO9pIH8mEdWDM4Lznys7K850bOnwuUH3jk2dTVGakksKScGfBqlJPSuFGoQZG
         PsE9skf7QalxBWO3xK6UPG8sVm+UqiHYzkYOpCrT862/vEuYEk5YVqD5Yju/NOHrEWRc
         et85rTAagdqza/4/uvV6X89UkusYzeYKSkUgqchE5/D5vsyOQM8ZY5oXjoqaWNLCL4/2
         9NrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vV6TdJ/kvv+8bZygtcdemz4/f5VgAE42sR9nqTYu+q4=;
        b=EUzgi8jEazMa4TAV1vlsrtC4rqZRmJ/GatIFiaGHc3MUm2ZJacnzhmkOFVpM6EZVqD
         LbTgIlTzrQSGBegINHXIlvhOa55LXpXOizLUHySZihwyR7pOynMLk8p7IAzQHcQdVYaZ
         N4BLF2dY3MGi/mkzFiWxRhX9h6mt82nZPMP4ZPkmdtr7hddb3gG9dXJzBKsxRCiXDpeM
         5RNxkkiV2g5H8pAVdQ10TVC0OGAzn1+32Tm0vtlULnIu27PdS7g+tScwLMGE9vkFKVsl
         y1QObdt2dBBY9bk9ziOlN40SR/ZznreOdNrFt1Jsdo2eTnpOuv5U+mgAE9he87P6DsV/
         m7iw==
X-Gm-Message-State: AOAM530NqDO3HOi+jea81EGWwIye1w6CY4oCr+bxrmfgm677j5jikXYK
	WSScfkk04s5akreY725PSmmEFs5pvn8=
X-Google-Smtp-Source: ABdhPJxIDbI69fgtor0fCc6dhPmRgYtHTHXFMp/t/P/343H9LCZB6QO+dxByUyhsPCQnCp/qnH/qZg==
X-Received: by 2002:a05:600c:4e8e:: with SMTP id f14mr13214453wmq.139.1611524907701;
        Sun, 24 Jan 2021 13:48:27 -0800 (PST)
Return-Path: <robert.berger.yocto.user@gmail.com>
Received: from [192.168.42.52] (ppp-2-86-143-170.home.otenet.gr. [2.86.143.170])
        by smtp.gmail.com with ESMTPSA id j7sm19463072wmb.40.2021.01.24.13.48.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Jan 2021 13:48:27 -0800 (PST)
Subject: Re: [yocto] #yocto #kernel setting up PREMIRRORS under zeus
To: steven.monsees@baesystems.com
Cc: "Robert P. J. Day" <rpjday@crashcourse.ca>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <MADEUP.165D434E10AAA4F1.7203@lists.yoctoproject.org>
 <69eb3c98-1389-f74b-ea1f-291094707f23@crashcourse.ca>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <c3e9076e-e1b1-627e-88d9-c7e27dbed6b5@gmail.com>
Date: Sun, 24 Jan 2021 23:48:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <69eb3c98-1389-f74b-ea1f-291094707f23@crashcourse.ca>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi,

Please see my comments in-line.

On 24/01/2021 22:09, Robert P. J. Day wrote:
> On Sun, 24 Jan 2021, Monsees, Steven C (US) via lists.yoctoproject.org wrote:
> 
>> I added the following to my local.conf:
>>
>> INHERIT += "own-mirrors"
>>
>> SOURCE_MIRROR_URL = “file:///ede/tms/yocto/zeus/downloads/PATH”

I assume your sources are in /ede/tms/yocto/zeus/downloads/

Can you please try without the PATH at the end?

The manual does not mention anything like PATH at the end[1]

I do expose my per site premirror via a web server to all the machines 
like this:

SOURCE_MIRROR_URL = "http://mirror/source_mirror_gatesgarth"

[1] https://docs.yoctoproject.org/singleindex.html#term-SOURCE_MIRROR_URL

>>
>> But this does not appear to retrieve the tar-balls from from my local repository…
> 
>    not sure why that wouldn't work, it's what i've used for years.
> 
> rday

Regards,

Robert

> 
> 
> 
> 
> 

