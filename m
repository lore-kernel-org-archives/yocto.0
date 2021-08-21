Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web12.607.1629565195019843941
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Aug 2021 09:59:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=m9nN+0VW;
 spf=pass (domain: gmail.com, ip: 209.85.128.45, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by mail-wm1-f45.google.com with SMTP id q11-20020a7bce8b0000b02902e6880d0accso11103601wmj.0
        for <yocto@lists.yoctoproject.org>; Sat, 21 Aug 2021 09:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=14laIvEAUhDsjHC1nMA/pKi4JLpGt+ps+T4lkDf05ng=;
        b=m9nN+0VW2s5/t+6nB81vQ9ipr6ElFlhTm4nUH0uCMDji5gmG0tW8itG8SoqtqsO/gW
         TActYEg0ik8F5ZrTsBel+E4iadeCJRPaX5C7CsPGB+FiBcWt9O7LIt583kvdPIYu8Lcm
         MTYe7NeWUCz8jEqc4X2ofAado6RiHb/sw0YmQFgyGuGgEa8fzDqr/Go9vIRlMZcSQqFy
         BNgal3kQ53zE9/SgipR9PHRFds70L2S724yR9xAnSpU5/lVPcqqAdNpwT9/z6Bhp8jEv
         0UtNo0MMUvuBXB32OFXxFzDKrK/4P+wnO375/yg4elTWpvISS2a5qBMbFxGwKKlf7+EC
         J3Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=14laIvEAUhDsjHC1nMA/pKi4JLpGt+ps+T4lkDf05ng=;
        b=MV9wNclmpl0fjRKpLi7ynFYsRlbxyzyjYAp3rJ3tP4POKTz5PkWicTLMjsTVdbd+71
         /TxpwZEKWyI20KEyp7A+LzgvnSuuTtHFxY+3yeIDf27UNOGbm6Yi/3PAkJdP+7qO3FCh
         9IjQDgvDORz3ZJp9ps7tJ9LaiXNiZ0t2j4g72gebCf13/b2OH6vEA9qhDy3D6I0sMnRr
         PIS8gGlFyRHsVVALt1pfAXs5KniFVoUH/iXd7F9bCkgtg1lTMU8536KfjKtoZARR1LyV
         s8b6H5StbWUYK3zRSgmJ1ZoxDsX0bkQPv5ivaLjv6Vaoh4SZIIisXvISZqeeXQkeFfqo
         s1ug==
X-Gm-Message-State: AOAM533CPFK8r2G3f0z/ScBJcZI+MgYE/Jete6utBpsmgldploASN3DZ
	wLnMLjCkLW+R1TEGAjSENeALUhsDDIk=
X-Google-Smtp-Source: ABdhPJzWpam6PWG1zd4XB0wN8C7fV5Qk22NlyjAAsLVLR1cIehuiWC0pXsvowfqe9F+hYrINGapwNQ==
X-Received: by 2002:a05:600c:4fcc:: with SMTP id o12mr9235728wmq.0.1629565193416;
        Sat, 21 Aug 2021 09:59:53 -0700 (PDT)
Return-Path: <robert.berger.yocto.user@gmail.com>
Received: from [192.168.42.52] (ppp-2-86-146-48.home.otenet.gr. [2.86.146.48])
        by smtp.gmail.com with ESMTPSA id a3sm9370591wrx.38.2021.08.21.09.59.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Aug 2021 09:59:52 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH 1/2] image-with-hardened-binaries: add class
To: Armin Kuster <akuster808@gmail.com>,
 Maximilian Blenk <Maximilian.Blenk@bmw.de>, yocto@lists.yoctoproject.org
References: <20210813131801.1258469-1-Maximilian.Blenk@bmw.de>
 <a3782aee-77c5-117a-12cf-e2d1cbf4e248@gmail.com>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <8c8973b3-0688-45e1-0492-edd56ab4c99a@gmail.com>
Date: Sat, 21 Aug 2021 19:59:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <a3782aee-77c5-117a-12cf-e2d1cbf4e248@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

On 21/08/2021 18:35, Armin Kuster wrote:
> 
> Regarding the selftest, is there test for failure?
> 
> I ran this against core-image-minimal and nothing was printed out. Does
> that mean its fine?
> 
> You may want to remove the ".py" from
> python3-checksec.py-native_0.6.1.bb, its not needed.

If you run checksec manually against some binary e.g. ls.coreutils it 
outputs something like this:

https://pastebin.com/JkeN1h3k

Not sure what this should output.

> 
> -armin
>>
