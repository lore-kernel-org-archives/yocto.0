Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web10.509.1622050407394305989
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 May 2021 10:33:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JecRLU1X;
 spf=pass (domain: gmail.com, ip: 209.85.214.174, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f174.google.com with SMTP id n8so974578plf.7
        for <yocto@lists.yoctoproject.org>; Wed, 26 May 2021 10:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Yk8fcKUdCFUby0lwapx1YT1PfoxqEdPk60gtF68v2JE=;
        b=JecRLU1XXBjPClwo5UByA8SE3JVDEvuAst3bPUfpGHLTGeHsVgNp4iQQZ/+mAUm4Uv
         f13CbgoQFPVuLGnEuY8AFzqtE9QfrMFR+M7Zo4tjhuKIJQxU4kSlM3FsNdXl9ve2ZGcJ
         h3DkjXe0XpdciKoNxzuvJloZ6iGvYMD6Xamfx235VUr0pyEzLGNky2dEiC8IHwoc1RIx
         ZFVpIUkSRdEfOO1aYaNVrzouWPi646XsrMoz8NwY6L31iRY0NuWPTn8c9g/ETz/YkOSN
         9KDdAyYmtGoGYgzIckXQymexO2YTNjBPdloQm0GWHP0uQNjmFIhDe6X762gJqJXkd0Bc
         R7Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=Yk8fcKUdCFUby0lwapx1YT1PfoxqEdPk60gtF68v2JE=;
        b=BuWDMV1RAWMNeC+uM37NiJbe9Sxp5Y6SXtw9j0qUQgbek8Gn+vAN3aWmkn+/hKBfLl
         sIb10hTYrH40ok2a5kUnXfBdkmXkFCh5yIB0NPLmTiNKCul49zYQKm6r6kalMfj7IqP4
         4xxnSZ3eKy3kU4JaVZB3HA4+eRKQmJG6Yq17EWPKzIBG0jKu8uToMEzCI1P6gnGe6JIM
         CV0FcG/En8UArT5OG8RxLJYj/gQ4Udlbh757Gde1CDuDzA9jV+5ZnOgb6tKz3N/ymJDv
         aWgeWm8TUetlT3xebymWIMqRIoZyQZlZDFai9YySoCWMAZgM0rbzCTAK0PTlteqEr7ZT
         3QjQ==
X-Gm-Message-State: AOAM533C1HqFEj5We6knZtSwpvGSXkzu/RI7AnqaJ2Fo+wSWJB/RKXM0
	EUZBGFKEVo3Zx7zfyqarma7MhQoLK9bJxQ==
X-Google-Smtp-Source: ABdhPJyMwcqB+iRiE4mye4hWtVeEns3oE2/T4jQ/ISTwgFkrBZkfts7qhisaChz55SNfk6Tcj2qFQg==
X-Received: by 2002:a17:90a:990c:: with SMTP id b12mr5296875pjp.20.1622050406315;
        Wed, 26 May 2021 10:33:26 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:1d7:355f:d5bb:1bea? ([2601:646:9200:a0f0:1d7:355f:d5bb:1bea])
        by smtp.gmail.com with ESMTPSA id v18sm17042096pff.90.2021.05.26.10.33.25
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 May 2021 10:33:25 -0700 (PDT)
Subject: Re: [yocto] gstreamer-emements support fdkaacenc/fdkaacdec #yocto
To: yocto@lists.yoctoproject.org
References: <QKut.1622030511578871503.ojdZ@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <e9699625-d4cb-039e-a3ae-9edbd7a023ab@gmail.com>
Date: Wed, 26 May 2021 10:33:24 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <QKut.1622030511578871503.ojdZ@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 5/26/21 5:01 AM, sateesh m wrote:
> Hi Guys,
> 
>                  I need some support for gstreamer elements support 
> fdkaacenc/fdkaacdec . Currently I am using gstreamer 16.0.1 version OE 
> sources. I have added gstreamer bad,good,base,libav plugins Added in my 
> image.gstreamer-plugins-bad its not providing fdkaac support I tried to 
> enable but its not compiling my sources.
> I am using risc-v target machine . I am looking for  where I can get 
> sources can anybody knows please give suggestions  build procedure steps 
> . is i need to add any package related configuration in my local.conf 
> please suggest me.
> 
> Thanking you in advance.


see 
http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.16.3.bb?h=dunfell#n114

change that to -Dfdkaac=enabled

if it works, then perhaps turn that into packageconfig and send a patch 
as well if you can

> -- 
> Regards,
> Sateesh
> 
> 
> 
> 
