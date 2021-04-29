Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web08.1036.1619662024609316905
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Apr 2021 19:07:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=b+sFkdhE;
 spf=pass (domain: gmail.com, ip: 209.85.214.174, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f174.google.com with SMTP id y1so18266078plg.11
        for <yocto@lists.yoctoproject.org>; Wed, 28 Apr 2021 19:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ffy33FoXtWR4HolB2uR4DgmQQDDcWEsu48GA5JiwoAo=;
        b=b+sFkdhELumLW7o0Slv8PVCzyi4OML4m7yl4kZ7EH+Q5pqX8xJSkUptsccExRdWtIw
         hE745XP7qWjVhUKZTECoQUuLuFHk8rfA/zAFwPPKq5vs4fU2za7Z7SfDDEitQR+AnLI0
         rENQcZVWEs37W1h2ufeUUk7vErqXK4Q7v6VtXugSnuzZQAiTLgFivoC8Jya0hZuS8k9a
         ZlUqHpoQsy4IwhJXUWYQHZLUjixE5c0Jtgus+k+EQEpUDREzqoJFxIicOeqycxyyhyTt
         DGndlH1L34V/7wAaVZAmNXNqeI+QO8Pr/9RhfRj5oFKYnjlNFV2fWLqrEUpAHbJ0KNIz
         BBpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=ffy33FoXtWR4HolB2uR4DgmQQDDcWEsu48GA5JiwoAo=;
        b=hSHjcoyI9eNvM/o+4Hd2h2GqKnMejaDXtT2KoXYUwxYNUd6j+OYFV8xnZwPmRGc9FJ
         vJYMMgfR82BW2/gnHXCrflgrR5Ny/Y6QXD6icSeSG74b0TBIp2/Y2ZVcELPhTN9mYStO
         wnngEOSovuPGDht0CkIQLl1t2S67t8Bi1KOnuN+DtWF1htETs8j5YWdtR59VtfYMesC3
         28bZykqajA/Ei5u/we6o5mjcaIujLWbB7IT0q9RwITFy4/07xD9aOMDxU4jHIrLJ3W4E
         65SFz7SM57UEkWLIUX8zeZqK8H6RIraTe17cRITTwzqLLn9uaoMBq95gGKpugWQNzYlS
         dZLQ==
X-Gm-Message-State: AOAM531kDSpKHzCrIm7vUzei/4mjL45ybc8cz0JVmJaVHndz3IJ37TWh
	xAGuOXZ/M0NKMMhXS+iiY2IoqQ/KRIMjAg==
X-Google-Smtp-Source: ABdhPJz/nH+KeSdd1LB/MOaq0OXX6ZTL6RIkkAKIjFKaCimAib/P93aA6JTVk9paGXyH+jS/LTCRMQ==
X-Received: by 2002:a17:90a:e615:: with SMTP id j21mr6948903pjy.43.1619662023813;
        Wed, 28 Apr 2021 19:07:03 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:8058:8c19:26cf:84fa? ([2601:646:9200:a0f0:8058:8c19:26cf:84fa])
        by smtp.gmail.com with ESMTPSA id x22sm818722pfa.24.2021.04.28.19.07.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 19:07:03 -0700 (PDT)
Subject: Re: [yocto] #yocto opencl
To: steven.monsees@baesystems.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <MADEUP.167A15D6303F863D.17467@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <158a82d4-064b-72fe-01c8-ae8e6ba5f69e@gmail.com>
Date: Wed, 28 Apr 2021 19:07:02 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <MADEUP.167A15D6303F863D.17467@lists.yoctoproject.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 4/28/21 10:30 AM, Monsees, Steven C (US) via lists.yoctoproject.org 
wrote:
> Can someone tell me is this supported under Yocto in any way?
> 
> meta-beignet/recipes-opencl at ross · rossburton/meta-beignet · GitHub 
> <https://github.com/rossburton/meta-beignet/tree/ross/recipes-opencl>
> 
> Any docs, or updates ?
> 
> Wanted to know if this would work under Zeus, with meta-clang ?
> 
> Looking to build opencl shared library support…

meta-intel has it see
https://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/dynamic-layers/clang-layer/recipes-opencl/opencl-clang?h=zeus

> 
> Thanks,
> 
> Steve
> 
> 
> 
> 
> 
