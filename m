Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.web12.6894.1628991570289403826
 for <yocto@lists.yoctoproject.org>;
 Sat, 14 Aug 2021 18:39:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=g2+eSHlq;
 spf=pass (domain: gmail.com, ip: 209.85.214.178, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f178.google.com with SMTP id d17so16659424plr.12
        for <yocto@lists.yoctoproject.org>; Sat, 14 Aug 2021 18:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=x1QholjM7BLrnxTpBSq4j+Tr94CraE2ttP/ImaqzwmQ=;
        b=g2+eSHlqQqchLSplfWFL+QNIajkwQz2ktB7sa1KxrlzaCMZtR9RJ/SPug7sUwyW6E9
         9nuyBE8fQB/BPF3EUcScaCSNpdRK2KTchMDtKuLfsXAfGfEGGjqmoBrlnrmjRfbbpPVK
         J8uZIfoOSQ3TFU6ZvakdJDFp/8t/ev/oLeVKoHcpjHh0THnD67ZI/VeyVDAmQ0CkzWsj
         VYc4qiusFYIKNWdFjXMcZG+UGm36mG4U767clwvIjecN+UYdOxTXOcY7DO/fumS1So/Z
         ZLpyS2CYClKWVZC+SpuG+JK+F+OGMoniCmY8XqLAM4LBYxARd6oHcx9s/VwMZVs3zK/7
         9LBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=x1QholjM7BLrnxTpBSq4j+Tr94CraE2ttP/ImaqzwmQ=;
        b=Y8/6V94x0661ZMTPEkpFw2nesoF/2VpGDFbHKiCF9q3psvvOuUqhWt7ZLqx54vS/7M
         BsrX/4pqa9bHVjVGXNsrDrY1EdzRCor9w1oQJbqPdFjGTzEElREat6L2oj5dHujZB+wu
         CSSKPDgIYTmxXmfP0p/g0Mhxrphslp8H0dVITJSmjFCqbTdWDZz4/eaWKIeSDnH/4jDh
         vws4BOYQjzQxossQQ3ekvpMMNDsMCFb6OWNTDt12lmKlRzDe7Bn8ub/VlT5NC+LI5HWi
         pr3Afv0N/F9wwe3lrHDtzCDxNDc2pKiFsHnAYu7uzvYk3RDUClHYWAemdNyJeFNG44l3
         MwDA==
X-Gm-Message-State: AOAM533kzQ7tTi9uNGmLZh1jx0SUzE0veVMMG40X6cwdxPTaaCP+yMRq
	aouk1uRokI3UA+OPu5xT9E/4f+SQ6ey8ZQ==
X-Google-Smtp-Source: ABdhPJzCrqQNrfvoJ7b6iSnsZNutJGvlLBDNVZaz3/YY0XBGinppuVAkIWJPREJfdJHDq+siyNWscg==
X-Received: by 2002:a63:c44:: with SMTP id 4mr9042816pgm.451.1628991569487;
        Sat, 14 Aug 2021 18:39:29 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0::f40b? ([2601:646:9200:a0f0::f40b])
        by smtp.gmail.com with ESMTPSA id j22sm7569798pgb.62.2021.08.14.18.39.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Aug 2021 18:39:28 -0700 (PDT)
Subject: Re: [yocto] Cannot build yocto anymore after updating all layers to current dunfell branch tips
To: Manuel Wagesreither <ManWag@FastMail.FM>,
 Steve Sakoman <steve@sakoman.com>
Cc: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
References: <d99fc23e-41bc-46ef-a61b-4e6d45fab47d@www.fastmail.com>
 <CAOSpxdZkLtjttE=q_uvq=0Tgm5H4KQNW=dvHE5J1fcH0EWg3AQ@mail.gmail.com>
 <7949dbde-1a12-4ca2-b71b-fd776c69e16a@www.fastmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <5e4dac64-bfcd-43f2-87d5-f9d289d8b24c@gmail.com>
Date: Sat, 14 Aug 2021 18:39:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <7949dbde-1a12-4ca2-b71b-fd776c69e16a@www.fastmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 8/14/21 5:29 AM, Manuel Wagesreither wrote:
> Am Fr, 13. Aug 2021, um 23:59, schrieb Steve Sakoman:
>> On Fri, Aug 13, 2021 at 11:29 AM Manuel Wagesreither <ManWag@fastmail.fm> wrote:
>>>
>>> Hello all,
>>>
>>> I updated the layers of my project to the current dunfell branch tips. See here: https://gitlab.com/manuel_wagesreither/bora-proj/-/commit/de631634d7556987d2551d0cedca8f67530bc78d
>>>
>>> Since then, the build is failing with the following message:
>>> ```
>>> ERROR: ParseError at /home/manuel/bora-proj/meta-openembedded/meta-oe/conf/layer.conf:104: unparsed line: 'DEFAULT_TEST_SUITES:pn-meta-oe-ptest-image = " ${PTESTTESTSUITE}"'
>>> ```
>>>
>>> Indeed this line, and even more the one after look strange.
>>> https://github.com/openembedded/meta-openembedded/blob/master/meta-oe/conf/layer.conf#L104
>>
>> Note that you are using the master branch of meta-oe              ^^^^^^^^
>>
>> If you use the dunfell branch you won't have this issue.
>>
>> Steve
>>
> I feel like an idiot right now. Thank you! With dunfell it builds indeed.
> 
> Now I have to deal with the following:
> ```
> ERROR: Layer multimedia-layer is not compatible with the core layer which only supports these series: dunfell (layer is compatible with honister)
> ```
> 

https://github.com/openembedded/meta-openembedded/blob/dunfell/meta-multimedia/conf/layer.conf#L34

says it works with dunfell releases and depends on core and meta-python 
layers. So I wonder what release are you using for core

> I guess I'll have to analyze the layers .conf file to see where that comes from.
> 
> Thanks, Manuel
> 
> 
> 
> 
> 
